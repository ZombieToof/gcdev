include '::mysql::server'
include '::mysql::client'

$phpbb_url_dir = "https://www.phpbb.com/files/release/"
$phpbb_release = "phpBB-3.0.11"
$phpbb_release_filename = "phpBB-3.0.11.tar.bz2"
$phpbb_url = "http://iweb.dl.sourceforge.net/project/phpbb/phpBB%203/phpBB%203.0.11/phpBB-3.0.11.tar.bz2"
$home_dir = "/home/vagrant"

# LAMP stack
package {['php5',
          'php5-mysql',
          'php5-gd',
          'imagemagick']:
  ensure => 'latest'
  }

class {'apache':
  default_vhost => false,
  mpm_module => 'prefork'
}

class { 'apache::mod::rewrite': }
class { 'apache::mod::php': }
class { 'apache::mod::proxy': }
class { 'apache::mod::proxy_http': }


apache::vhost { 'GCWeb':
  port => '80',
  docroot => '/vagrant/projects/GCWeb',
#  rewrites => [{ rewrite_rule => []}]
  proxy_pass => [{path => '/djangoadmin/',
                  url => 'http://localhost:8000/djangoadmin/'},
                 {path => '/static/',
                  url => 'http://localhost:8000/static/'},
                 {path => '/abc/',
                  url => 'http://localhost:8000/abc/'}]
}


#
# Configure GCWeb/phpbb
#

file {'/vagrant/projects/GCWeb/forum/config.php':
   ensure => 'present',
   source => '/vagrant/files/phpbb_config.php',
   mode => '0777',  # mode does not work in synced folder
   notify => Service["apache2"]
}

file {'/vagrant/projects/GCWeb/library/includes/config.php':
   ensure => 'present',
   source => '/vagrant/files/library_includes_config.php',
   mode => '0777',  # mode does not work in synced folder
   notify => Service["apache2"]
}

# The files are located in a synced folder now. Changing permissions
# isn't possible from within the VM. Moved this to Vagrantfile
# exec {'Change phpbb $ permissions':
#   command => "/vagrant/files/phpbb_change_permissions.sh",
#   require => File["/vagrant/projects/GCWeb/forum/config.php"],
# }

file {'/vagrant/projects/GCWeb/forum/install':
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

python::pip { 'Django':
  pkgname       => 'https://www.djangoproject.com/download/1.7b1/tarball',
  virtualenv    => '/home/vagrant/gcdjango',
  owner         => 'vagrant',
  require       => Python::Virtualenv['/home/vagrant/gcdjango']
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
          'libmysqlclient-dev']:
  ensure => 'latest'
  }

python::requirements { '/vagrant/projects/gcabc/abcapp/requirements.txt':
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
                    Package['python-tk']]
}
