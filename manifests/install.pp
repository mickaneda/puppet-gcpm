class gcpm::install {
  python::pip { 'gcpm' :
    pkgname       => 'gcpm',
    timeout       => 1800,
  }
}
