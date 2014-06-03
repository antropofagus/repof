 #!/bin/bash
 
 VAR1=/sbin/lspci
 VAR2=/sbin/ifconfig
   
  echo "Hardware information"
  echo
  
  sudo $VAR1 | sed '/^ *#/d; /^ *$/d'

   
  echo "network"
  echo
  
  sudo $VAR2 -a

  
  echo "process"
  echo

  ps o pid,uid,c,tty,stime,%cpu,cmd,stat

  echo
   
  echo "end"
