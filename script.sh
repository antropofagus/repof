 #!/bin/bash
 
 VAR1=lspci
 VAR2=ifconfig
 ROOT_UID=0
 E_NOTROOT=67
 if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Для работы сценария требуются права root."
  exit $E_NOTROOT
fi
   
  echo "Hardware information"
  echo
  
  $VAR1 | sed -r 's/^[0-9:.a-z]+\s//'

   
  echo "network"
  echo
  
  $VAR2 -a

  
  echo "process"
  echo

  ps o pid,uid,c,tty,stime,%cpu,cmd,stat

  echo
   
  echo "end"
