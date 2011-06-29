@echo off
rem echo 'Iniciando Array'
rem "C:\Program Files (x86)\Array Networks\VpnApp\VPNApp.exe" -connect vpn.sea01.softlayer.com 443 <usuario> <senha> 1
rem pause
echo 'Configurando rede'
route delete 10.0.0.0 mask 255.0.0.0
route delete  10.0.5.0 mask 255.255.255.0 10.1.8.1
route delete 10.8.0.1  mask 255.255.255.255 10.1.8.1
route delete 10.8.0.144 mask 255.255.255.252 10.1.8.1
route delete 10.8.0.147 mask 255.255.255.255 10.1.8.1
route add 10.28.37.0 mask 255.255.255.0 10.1.8.1
route add 10.0.80.11 mask 255.255.255.255 10.1.8.1
route add 10.0.80.12 mask 255.255.255.255 10.1.8.1

netsh interface ipv4 set dnsservers "Local Area Connection" static 10.67.60.27 both
rem Codigo para ativar proxy - não está funcionando
rem netsh winhttp reset proxy
rem netsh winhttp set proxy 192.168.200.1:3128 "<local>"