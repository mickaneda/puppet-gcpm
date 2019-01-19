class gcpm (
  $data   = $gcpm::params::data,
  $service      = $gcpm::params::service,
) inherits
::gcpm::params {
  class { 'gcpm::install': }
  Class['gcpm::install'] -> Class['gcpm::config']
  class { 'gcpm::config': }
  if $service {
    Class['gcpm::config'] -> Class['gcpm::service']
    class { 'gcpm::service': }
  }
}
