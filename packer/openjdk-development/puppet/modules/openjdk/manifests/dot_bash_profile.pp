class openjdk::dot_bash_profile {

  group { 'admin': ensure  => present, }

  user { 'vagrant':
    ensure  => present,
    groups  => ['admin'],
    require => Group['admin'],
  }

  file  { '/home/openjdk/.bash_profile':
    source => 'puppet:///modules/openjdk/dot_bash_profile',
    owner  => 'openjdk',
    group  => 'openjdk',
  }

}
