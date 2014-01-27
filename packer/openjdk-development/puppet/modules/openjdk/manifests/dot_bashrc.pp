class openjdk::dot_bashrc {

  group { 'admin': ensure  => present, }

  user { 'vagrant':
    ensure  => present,
    groups  => ['admin'],
    require => Group['admin'],
  }

  file  { '/home/openjdk/.bashrc':
    source => 'puppet:///modules/openjdk/dot_bashrc',
    owner  => 'openjdk',
    group  => 'openjdk',
  }

}
