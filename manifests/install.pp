class gcpm::install {
  package { 'python2-pip':
    ensure => installed
  }
  python::pip { 'gcpm' :
    pkgname => 'gcpm',
    timeout => 1800,
    ensure  => 'present',
    require  => Package['python2-pip'],
    notify  => Exec['install_gcpm_service']
  }
  exec {"install_gcpm_service":
    command => "/usr/bin/gcpm install",
  }
}
