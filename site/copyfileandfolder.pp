node default {
  file { 'C:\inetpub\minimal':  #destination
      ensure  => present,
      recurse=>true,
      source=> "C:\inetpub\wwwroot", #source
    }
}
