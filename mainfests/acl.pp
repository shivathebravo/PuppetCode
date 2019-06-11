node default{
  file{'c:/test.txt':
  ensure=>present,
  content=>'This is test'
  }
  file{['c:/accounts','c:/accounts/2019','c:/accounts/2018/feb']:
    ensure=>directory,
  }
  acl{ 'c:/accounts':
    permissions=>[
    {identity => 'pspagentadmin',right =>['full']},
    {identity =>'Users', rights=>['read','execute']}   
    ],
  }
}
