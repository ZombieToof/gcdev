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
  "Copy ${phpbb_release_filename} to /var/www":
    cwd     => "$home_dir",
    command => "/bin/rm -rf /var/www/html/* && cp -R ${home_dir}/${phpbb_release}/* /var/www/html",
    creates  => "/var/www/html/config.php",
    require => Exec["Extract ${phpbb_release_filename}"],
}

file {'/var/www/html/config.php':
  ensure => 'present',
  source => '/vagrant/files/phpbb_config.php',
  mode => '0777',
  require => Exec["Copy ${phpbb_release_filename} to /var/www"]
}

file {'/home/vagrant/phpbb_change_permissions.sh':
  ensure => 'present',
  source => '/vagrant/files/phpbb_change_permissions.sh',
  mode => '0766'
}

exec {'Change phpbb ${phpbb_release} permissions':
  command => "/home/vagrant/phpbb_change_permissions.sh",
  require => File["/var/www/html/config.php"],
  notify => Service["apache2"]
}

mysql::db {'phpbb':
  user => 'phpbb',
  password => 'phpbb',
  host => 'localhost',
  grant => ['ALL'],
  sql => '/vagrant/files/phpbb_initial_data.sql'
  }
  