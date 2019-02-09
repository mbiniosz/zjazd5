#!/usr/bin/python

adres = "127.0.0.1"
login = "tester"
haslo = "tester"

import paramiko
serwer=paramiko.SSHClient()
serwer.set_missing_host_key_policy(paramiko.AutoAddPolicy())
serwer.connect(adres, username=login, password=haslo)
a,b,c=serwer.exec_command("cat /etc/passwd")
wynik=b.read()
print wynik
if 'myownuser' in wynik:
    print "jest myownuser"
else:
    print "nie ma myownuser"
if 'tester' in wynik:
    print "jest tester"
else:
    print"nie ma testera"
