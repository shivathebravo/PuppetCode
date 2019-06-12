node default{
  file{'c:/temp/puppetcode/test.txt':
  ensure=>present,
  content=>'This is test'
  }
  file {['c:/temp/puppetcode/accounts','c:/temp/puppetcode//2019','c:/temp/puppetcode/2018/feb']:
    ensure=>directory,
  }
  acl { 'c:/temp/puppetcode/accounts':
    permissions=>[
    {identity => 'pspagentadmin',right =>['full']},
    {identity =>'Users', rights=>['read','execute']}   
    ],
  }
}
