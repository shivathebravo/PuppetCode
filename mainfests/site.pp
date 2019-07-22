
file { 'c:\\temp1\\hello.txt':  
  ensure  => file,
  content => "hello, world from shiva\n",
}

