 $iis_features = ['Web-WebServer','Web-Scripting-Tools']

  iis_feature { $iis_features:
    ensure => 'present',
  }

  iis_application_pool { 'minimal_site_app_pool':
    ensure                  => 'present',
    state                   => 'started',
    managed_pipeline_mode   => 'Integrated',
    managed_runtime_version => 'v4.0',
  }

  -> iis_site { 'minimal':
    ensure          => 'started',
    physicalpath    => 'c:\\inetpub\\minimal',
    applicationpool => 'minimal_site_app_pool',
    require         => File['minimal'],
    bindings        => [
      {
        'bindinginformation' => "*:8888:${facts['fqdn']}",
        'protocol'           => 'http',
      },
    ],
  }

  file { 'minimal':
    ensure => 'directory',
    path   => 'c:\\inetpub\\minimal',
  }

  file { 'index.html':
    ensure  => 'file',
    path    => 'c:\\inetpub\\minimal\\index.html',
    content => 'Hello!!',
  }

}
