node default{
file{'/root/Readme',
    ensure=>file,
    content=>'This is a readme',    
    }
}
