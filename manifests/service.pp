class gcpm::service (
  $service = true
){
  if $service {
    exec {"install gcpm service":
      command => "/usr/bin/gcpm install",
      before  => Service['gcpm'],
    }
    service { 'gcpm':
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => true,
    }
  } else {
    service { 'gcpm':
      ensure     => stopped,
      enable     => false,
      hasrestart => true,
      hasstatus  => true,
      before     => Exec['uninstall gcpm service'],
    }
    exec {"uninstall gcpm service":
      command => "/usr/bin/gcpm uninstall"
    }
  }
}
