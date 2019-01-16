class gcpm (
  $config_dir   = $gcpm::params::config_dir,
  $oatuh_file   = $gcpm::params::oatuh_file,
  $service_account_file = $gcpm::params::service_account_file,
  $project      = $gcpm::params::project,
  $zone         = $gcpm::params::zone,
  $max_cores    = $gcpm::params::max_cores,
  $machines     = $gcpm::params::machines,
  $static_wns   = $gcpm::params::static_wns,
  $required_machines = $gcpm::params::required_machines,
  $prefix       = $gcpm::params::prefix,
  $preemptible  = $gcpm::params::preemptible,
  $off_timer    = $gcpm::params::off_timer,
  $network_tag  = $gcpm::params::network_tag,
  $reuse        = $gcpm::params::reuse,
  $interval     = $gcpm::params::interval,
  $head_info    = $gcpm::params::head_info,
  $head         = $gcpm::params::head,
  $port         = $gcpm::params::port,
  $domain       = $gcpm::params::domain,
  $admin        = $gcpm::params::admin,
  $owner        = $gcpm::params::owner,
  $wait_cmd     = $gcpm::params::wait_cmd,
  $bucket       = $gcpm::params::bucket,
  $storageClass = $gcpm::params::storageClass,
  $location     = $gcpm::params::location,
  $log_file     = $gcpm::params::log_file,
  $log_level    = $gcpm::params::log_level,
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
