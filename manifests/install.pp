class gcpm::install {
  python::pip { 'gcpm' :
    pkgname       => 'gcpm',
    timeout       => 1800,
  }
  exec {"install gcpm service":
    command => "/usr/bin/gcpm install"
  }
}
