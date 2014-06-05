 #!/bin/bash
 
 VAR1=/sbin/lspci
 VAR2=/sbin/ifconfig
   
  echo "Hardware information"
  echo
  
  $VAR1 | sed -r 's/^[0-9:.]+\s//'

   
  echo "network"
  echo
  
  $VAR2 -a

  
  echo "process"
  echo

  ps o pid,uid,c,tty,stime,%cpu,cmd,stat

  echo
   
  echo "end"
