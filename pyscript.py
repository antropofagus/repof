#! /usr/bin/env python
import subprocess
def network_func():
	VAR2 = "/sbin/ifconfig"
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
	network_func()
	proc_func()
	
main()
