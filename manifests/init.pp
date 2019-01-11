class gcpm (
  $config_dir   = $gcpm::config_dir,
  $oatuh_file   = $gcpm::oatuh_file,
  $service_account_file = $gcpm::service_account_file,
  $project      = $gcpm::project,
  $zone         = $gcpm::zone,
  $machines     = $gcpm::machines,
  $max_cores    = $gcpm::max_cores,
  $static       = $gcpm::static,
  $prefix       = $gcpm::prefix,
  $preemptible  = $gcpm::preemptible,
  $off_timer    = $gcpm::off_timer,
  $network_tag  = $gcpm::network_tag,
  $reuse        = $gcpm::reuse,
  $interval     = $gcpm::interval,
  $head_info    = $gcpm::head_info,
  $head         = $gcpm::head,
  $port         = $gcpm::port,
  $domain       = $gcpm::domain,
  $admin        = $gcpm::admin,
  $owner        = $gcpm::owner,
  $wait_cmd     = $gcpm::wait_cmd,
  $bucket       = $gcpm::bucket,
  $storageClass = $gcpm::storageClass,
  $location     = $gcpm::location,
  $log_file     = $gcpm::log_file,
  $log_level    = $gcpm::log_level,
  $service      = $gcpm::service,
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
