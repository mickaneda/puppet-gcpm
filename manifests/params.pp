class gcpm::params {
  $data = lookup('data',     { merge => hash, default_value => undef})
  $service      = lookup('service',      { default_value => true})
}
