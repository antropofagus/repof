#! /usr/bin/env python
import os
import subprocess
def check_root():
	if os.geteuid() != 0:
		print ('you are not root')
		exit()
	else:
		print ("")            
def pci():
	subprocess.call("lspci -tv", shell=True)
def network_func():
	VAR2 = "ifconfig"
	VAR2_arg = "-a"
	print "Gathering network information with %s command:\n" %VAR2
	subprocess.call([VAR2 ,VAR2_arg])
def proc_func():
	proc= "ps"
	proc_arg= "o"
	proc_arg_o= "pid,uid,c,tty,stime,%cpu,cmd,stat"
	print "Gathering process information with %s command:\n" %proc
	subprocess.call([ proc, proc_arg, proc_arg_o ])
def main():
	pci()
	network_func()
	proc_func()
check_root()
main()
