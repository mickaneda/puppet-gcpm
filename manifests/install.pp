class gcpm::install {
  python::pip { 'gcpm' :
    pkgname => 'gcpm',
    timeout => 1800,
    ensure  => 'present'
    notify  => Exec['install_gcpm_service']
  }
  exec {"install_gcpm_service":
    command => "/usr/bin/gcpm install",
  }
}
