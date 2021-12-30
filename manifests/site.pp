node default {
  file { 'root/README':
    ensure => file,
    content => 'This is a readme',
    owner => 'root',
  }
}
node 'ip-172-31-87-48.ec2.internal' {
  include role::master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
