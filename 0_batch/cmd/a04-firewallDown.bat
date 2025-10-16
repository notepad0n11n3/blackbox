@echo off

:: go to c:\Windows\system32    netsh firewall si deprecated, user 'netsh advfirewall firewall' :u 
netsh firewall set opmode disable
