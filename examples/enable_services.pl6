set_spl %( dev-archlinux-install => 'https://github.com/Spigell/archlinux-install' );

task-run "enable services", "dev-archlinux-install", %(
  main   => %( 
    install => 'false',
  ),
  grub  => %( 
    install => 'false',
  ),
  postinstall => %(
    enable-services => ('sshd NetworkManager');
  )
);
