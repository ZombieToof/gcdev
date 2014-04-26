include '::mysql::server'
include '::mysql::client'

$phpbb_url_dir = "https://www.phpbb.com/files/release/"
$phpbb_release = "phpBB-3.0.12"
$phpbb_release_filename = "${phpbb_release}.tar.bz2"
$phpbb_url = "${phpbb_url_dir}/${phpbb_release_filename}"
$home_dir = "/home/vagrant"

# LAMP stack
package {['apache2',
          'php5',
          'php5-mysql',
          'php5-gd',
          'imagemagick']:
  ensure => 'latest'
  }

service {'apache2':
  ensure  => running,
  enable  => true,
  require => Package['apache2']
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
  "Copy ${phpbb_release_filename} to /var/www/html/forum":
    cwd     => "$home_dir",
    command => "/bin/rm -rf /var/www/html/* && cp -R ${home_dir}/${phpbb_release} /var/www/html/forum",
    creates  => "/var/www/html/forum/config.php",
    require => Exec["Extract ${phpbb_release_filename}"],
}


#
# Copy the content of the GCWeb repository over the installed forum
#

exec {
  "Copy GCWeb to /var/www/html/forum":
    cwd     => "$home_dir",
    command => "/bin/cp -R /vagrant/files/GCWeb/* /var/www/html/",
    creates  => "/var/www/html/library/includes/config.php",
    require => Exec["Copy ${phpbb_release_filename} to /var/www/html/forum"]
}


#
# Confure/"finish" the phpBB/ABC installation
#

file {'/var/www/html/forum/config.php':
   ensure => 'present',
   source => '/vagrant/files/phpbb_config.php',
   mode => '0777',
   require => Exec["Copy GCWeb to /var/www/html/forum"]
}

file {'/var/www/html/library/includes/config.php':
   ensure => 'present',
   source => '/vagrant/files/library_includes_config.php',
   mode => '0777',
   require => Exec["Copy GCWeb to /var/www/html/forum"]
}

exec {'Change phpbb ${phpbb_release} permissions':
  command => "/vagrant/files/phpbb_change_permissions.sh",
  require => File["/var/www/html/forum/config.php"],
  notify => Service["apache2"]
}

file {'/var/www/html/forum/install':
  ensure => 'absent',
  force => 'true'
}

mysql::db {'phpbb':
  user => 'phpbb',
  password => 'phpbb',
  host => 'localhost',
  grant => ['ALL'],
  sql => '/vagrant/files/phpbb_initial_data.sql'
}
  

#
# Install a Django and the django ABC into a vitual env
#

class { 'python':
  version    => 'system',
  dev        => true,
  virtualenv => true,
  gunicorn   => true,
}

python::virtualenv { '/home/vagrant/gcdjango':
  ensure       => present,
  version      => '3',
  owner        => 'vagrant',
  group        => 'vagrant',
  timeout      => 0,
}

python::pip { 'Django':
  pkgname       => 'https://www.djangoproject.com/download/1.7b2/tarball',
  virtualenv    => '/home/vagrant/gcdjango',
  owner         => 'vagrant',
  require       => Python::Virtualenv['/home/vagrant/gcdjango']
}

package {['python3-dev',
          'tcl-dev',
          'tk-dev',
          'libtiff4-dev',
          'libjpeg62-dev',
          'zlib1g-dev',
          'libfreetype6-dev',
          'liblcms2-dev',
          'python3-tk']:
  ensure => 'latest'
  }

python::pip { 'Pillow':
  pkgname       => 'Pillow',
  virtualenv    => '/home/vagrant/gcdjango',
  owner         => 'vagrant',
  require       => [Python::Virtualenv['/home/vagrant/gcdjango'],
                    Package['python3-dev'],
                    Package['tcl-dev'],
                    Package['tk-dev'],
                    Package['libtiff4-dev'],
                    Package['libjpeg62-dev'],
                    Package['zlib1g-dev'],
                    Package['libfreetype6-dev'],
                    Package['liblcms2-dev'],
                    Package['python3-tk']]
}
