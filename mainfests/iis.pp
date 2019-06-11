node default{

$defaultwebsitepath='c:\temp\shivatest'

dsc_windowsfeature{ 'IIS':
  dsc_ensure=>'present',
  dsc_name =>'Web-Server'
} ->
dsc_windowsfeature{'IISManagementTools':
  dsc_ensure=>'present',
  dsc_name =>'Web-Mgmt-Tools',
} ->
dsc_xwebsite {'Stop DefaultSite':
  dsc_ensure=>'present',
  dsc_name=>'Default Web Site',
  dsc_state=>'Stopped',
  dsc_physicalpath=>$defaultwebsitepath,
}

}
