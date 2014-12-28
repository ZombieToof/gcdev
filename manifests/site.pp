include '::mysql::server'
include '::mysql::client'

$phpbb_url_dir = "https://www.phpbb.com/files/release/"
$phpbb_release = "phpBB-3.0.11"
$phpbb_release_filename = "phpBB-3.0.11.tar.bz2"
$phpbb_url = "http://iweb.dl.sourceforge.net/project/phpbb/phpBB%203/phpBB%203.0.11/phpBB-3.0.11.tar.bz2"
$home_dir = "/home/vagrant"

# LAMP stack
package {['apache2',
          'php5',
          'php5-mysql',
          'php5-gd',
          'libapache2-mod-suphp',
          'imagemagick']:
  ensure => 'latest'
  }

# suphp is tricky to configur if modphp is loaded.
# make sure it is not installed
package {['libapache2-mod-php5']:
  ensure => 'absent'
  }

class {'apache':
  default_vhost => false,
  mpm_module => 'prefork'
}

class { 'apache::mod::suphp': }
class { 'apache::mod::rewrite': }
class { 'apache::mod::pph': }
class { 'apache::mod::proxy': }
class { 'apache::mod::proxy_http': }


apache::vhost { 'GCWeb':
  port => '80',
  docroot => '/vagrant/src/GCWeb',
#  rewrites => [{ rewrite_rule => []}]
  proxy_pass => [{path => '/djangoadmin/',
                  url => 'http://localhost:8000/djangoadmin/'},
                 {path => '/static/',
                  url => 'http://localhost:8000/static/'},
                 {path => '/abc/',
                  url => 'http://localhost:8000/abc/'}],
  suphp_addhandler    => 'x-httpd-php',
  suphp_engine        => 'on',
  suphp_configpath    => '/etc/php5/apache2',
}


file {'/etc/suphp/suphp.conf':
   ensure => 'present',
   source => '/vagrant/files/suphp.conf',
   mode => '0411',  # mode does not work in synced folder
   owner => 'root',
   group => 'root',
   notify => Service["apache2"],
}

#
# Configure GCWeb/phpbb
#

# file {'/vagrant/src/GCWeb/forum/config.php':
#    ensure => 'present',
#    source => '/vagrant/files/phpbb_config.php',
#    mode => '0777',  # mode does not work in synced folder
#    notify => Service["apache2"]
# }

# file {'/vagrant/src/GCWeb/library/includes/config.php':
#    ensure => 'present',
#    source => '/vagrant/files/library_includes_config.php',
#    mode => '0777',  # mode does not work in synced folder
#    notify => Service["apache2"]
# }

# # The files are located in a synced folder now. Changing permissions
# # isn't possible from within the VM. Moved this to Vagrantfile
# # exec {'Change phpbb $ permissions':
# #   command => "/vagrant/files/phpbb_change_permissions.sh",
# #   require => File["/vagrant/src/GCWeb/forum/config.php"],
# # }

# file {'/vagrant/src/GCWeb/forum/install':
#   ensure => 'absent',
#   force => 'true'
# }

mysql::db {'phpbb':
  user => 'phpbb',
  password => 'phpbb',
  host => 'localhost',
  grant => ['ALL'],
  sql => '/vagrant/files/phpbb_initial_data.sql'
} -> mysql_grant { "phpbb@localhost/test_phpbb.*":
    privileges => ['ALL'],
    provider   => 'mysql',
    user       => "phpbb@localhost",
    table      => "test_phpbb.*",
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
