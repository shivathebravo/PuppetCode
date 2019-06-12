node default{	
registery_key{'HKLM\Software\ShivaTest\PuppetOnWindows':
  		ensure=>'present',
	}
	registery_value{'HKLM\Software\ShivaTest\PuppetOnWindows':
  		ensure=>'present',
  		data=>'Registery Testing',
   		type=>'string',
	}
}
