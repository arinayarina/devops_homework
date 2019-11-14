exec {"apt-get update":
  path => "/usr/bin",
}

package {"apache2":
  ensure => present,
  require => Exec["apt-get update"],
}

service { "apache2":
  ensure => "running",
  enable  => true,
  require => Package["apache2"]
}



