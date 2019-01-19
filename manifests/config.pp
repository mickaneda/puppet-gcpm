class gcpm::config {
  $data   = $gcpm::data

  if $data {
    file { '/etc/gcpm.yml':
      content => template("${module_name}/gcpm.yml.erb"),
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
    }
  }
}
