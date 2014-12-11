class dhclient::config {

  $root_cfg = $::lsbdistcodename?{
    'trusty'  => '/etc/dhcp',
    default   => '/etc/dhcp3'
  }

  file {"${root_cfg}/dhclient.conf":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('dhclient/etc/dhclient.conf.erb'),
  }
}
