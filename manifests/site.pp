include '::mysql::client'

$home_dir = "/home/vagrant"
$phpbb_url_dir = "https://www.phpbb.com/files/release/"
$phpbb_release = "phpBB-3.1.3"
$phpbb_release_filename = "${phpbb_release}.tar.bz2"
$phpbb_source_dir = "${home_dir}/${phpbb_release}"
$phpbb_url = "https://www.phpbb.com/files/release/${phpbb_release_filename}"
$apache_doc_root = "/var/www/html"
$phppb_install_dir = $apache_doc_root

# LAMP stack
package {['php5',
          'php5-mysql',
          'php5-gd',
          'libapache2-mod-php5',
          'imagemagick']:
  ensure => 'latest'
  }

# make sure suphp is not installed (abandoned)
package {['libapache2-mod-suphp']:
  ensure => 'absent'
  }

class {'apache':
  default_vhost => false,
  mpm_module => 'prefork'
}

include 'apache::mod::php'
include 'apache::mod::rewrite'
include 'apache::mod::proxy'
include 'apache::mod::proxy_http'


apache::vhost { 'GCWeb':
  port => '80',
  docroot => $apache_doc_root,
#  rewrites => [{ rewrite_rule => []}]
  proxy_pass => [{path => '/djangoadmin/',
                  url => 'http://localhost:8000/djangoadmin/'},
                 {path => '/static/',
                  url => 'http://localhost:8000/static/'},
                 {path => '/abc/',
                  url => 'http://localhost:8000/abc/'}],
}

#
# Download and install phpbb
#

exec {
  "Retrieve ${phpbb_url}":
    cwd     => "$home_dir",
    command => "/usr/bin/wget $phpbb_url",
    creates => "${home_dir}/${phpbb_release_filename}",
    timeout => 3600,
}


exec {
  "Extract ${phpbb_release_filename}":
    cwd     => "$home_dir",
    command => "/bin/tar xjf ${phpbb_release_filename} && mv /home/vagrant/phpBB3 /home/vagrant/${phpbb_release}",
    creates  => "${home_dir}/${phpbb_release}",
    require => Exec["Retrieve ${phpbb_url}"],
}

exec {
  "Copy ${phpbb_release_filename} to ${phpbb_install_dir}":
    cwd     => "$home_dir",
    command => "/bin/rm -rf /var/www/html/* && cp -R ${phpbb_source_dir}/* ${phpbb_source_dir}/.htaccess ${apache_doc_root} && chown -R www-data:www-data ${apache_doc_root}",
    creates  => "/var/www/html/config.php",
    require => Exec["Extract ${phpbb_release_filename}"],
}

  file { "${apache_doc_root}/config.php":
    ensure => present,
    owner => 'www-data',
    group => 'www-data',
    mode => '660',
    source => '/vagrant/files/phpbb_config.php',
    require => Exec[ "Copy ${phpbb_release_filename} to ${phpbb_install_dir}"];
  }

  file { "${apache_doc_root}/images/avatars/upload":
    ensure => directory,
    owner => 'www-data',
    group => 'www-data',
    mode => '2660',
    require => Exec[ "Copy ${phpbb_release_filename} to ${phpbb_install_dir}"];
  }

  file { "${apache_doc_root}/files":
    ensure => directory,
    owner => 'www-data',
    group => 'www-data',
    mode => '2770',
    require => Exec[ "Copy ${phpbb_release_filename} to ${phpbb_install_dir}"];
  }

  file { "${apache_doc_root}/cache":
    ensure => directory,
    owner => 'www-data',
    group => 'www-data',
    mode => '2770',
    require => Exec[ "Copy ${phpbb_release_filename} to ${phpbb_install_dir}"];
  }

  file { "${apache_doc_root}/store":
    ensure => directory,
    owner => 'www-data',
    group => 'www-data',
    mode => '2770',
    require => Exec[ "Copy ${phpbb_release_filename} to ${phpbb_install_dir}"];
  }

#
# Install mysql and create the phpbb users and databases
#

class { '::mysql::server':
  override_options => { 'mysqld' => { 'bind-address' => '0.0.0.0' } },
  databases => {
    'phpbb' => {
      ensure  => 'present',
    }
  },
  users => {
    'phpbb@localhost' => {
      ensure => 'present',
      password_hash => mysql_password('phpbb'),
    },
    'phpbb@%' => {
      ensure => 'present',
      password_hash => mysql_password('phpbb'),
    },
  },
  grants => {
    'phpbb@%/test_phpbb.*' => {
      privileges => ['ALL'],
      user       => "phpbb@%",
      table      => "test_phpbb.*",
    },
    'phpbb@%/phpbb.*' => {
      privileges => ['ALL'],
      user       => "phpbb@%",
      table      => "phpbb.*",
    },
    'phpbb@localhost/test_phpbb.*' => {
      privileges => ['ALL'],
      user       => "phpbb@localhost",
      table      => "test_phpbb.*",
    },
    'phpbb@localhost/phpbb.*' => {
      privileges => ['ALL'],
      user       => "phpbb@localhost",
      table      => "phpbb.*",
    },
  },
}
  

#
# Install a Django and the django ABC into a vitual env
#

class { 'python':
  version    => '2.7',
  dev        => true,
  virtualenv => true,
  gunicorn   => true,
}

python::virtualenv { '/home/vagrant/gcdjango':
  ensure       => present,
  version      => '2.7',
  owner        => 'vagrant',
  group        => 'vagrant',
  timeout      => 0,
}

package {['python-dev',
          'tcl-dev',
          'tk-dev',
          'libtiff4-dev',
          'libjpeg62-dev',
          'zlib1g-dev',
          'libfreetype6-dev',
          'liblcms2-dev',
          'python-tk',
          'libmysqlclient-dev',
          'graphviz-dev',
          'git',
          'emacs24',
          'acl']:
  ensure => 'latest'
  }

python::requirements { '/vagrant/src/gcabc/abcapp/requirements.txt':
  virtualenv    => '/home/vagrant/gcdjango',
  owner         => 'vagrant',
  require       => [Python::Virtualenv['/home/vagrant/gcdjango'],
                    Package['python-dev'],
                    Package['tcl-dev'],
                    Package['tk-dev'],
                    Package['libtiff4-dev'],
                    Package['libjpeg62-dev'],
                    Package['zlib1g-dev'],
                    Package['libfreetype6-dev'],
                    Package['liblcms2-dev'],
                    Package['python-tk'],
                    Package['git']]
}
