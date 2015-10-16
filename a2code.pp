node 'https://ec2-52-64-144-10.ap-southeast-2.compute.amazonaws.com/#/node_groups/inventory/node/ec2-52-64-144-10.ap-southeast-2.compute.amazonaws.com'{

puppet apply -e "user { 'becca': ensure => present, }"
puppet apply -e "group { 'web': ensure => present, }"
puppet resource -e group sysadmin
puppet resource -e group cars

group { 'sysadmin':
  ensure => 'present',
  gid    => '501',
     }

group { 'cars':
  ensure => 'present',
  gid    => '502',
     }

user { 'becca':
  ensure => 'present',
  gid => '501',
  gid => '501',
  home => '/home/becca',
  managehome => true,
  password   => 'defualtpass',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '10012198',
     }


}


