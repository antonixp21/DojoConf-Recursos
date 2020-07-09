
# Deshabilitar el protocolo LLMNR a través de Políticas de grupos (GPO)
![LLMNR](https://github.com/antonixp21/DojoConf-Recursos/blob/master/Imagenes/LLMNR.png)
# Deshabilitar el protocolo NBT-NS 
Disabling NetBIOS over TCP/IP can be done through the registry:

Go to HKLM:SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces
For each connection, then set NetbiosOptions = 2

```
Write-Host("----- Disable NetBIOS by updating Registry -----")

$key = "HKLM:SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces"

Get-ChildItem $key |
foreach { 
Write-Host("Modify $key\$($_.pschildname)")
$NetbiosOptions_Value = (Get-ItemProperty "$key\$($_.pschildname)").NetbiosOptions
Write-Host("NetbiosOptions updated value is $NetbiosOptions_Value")
}

Write-Host("----- NetBIOS is now disabled -----")
```
# Deshabilitar el protocolo Web Proxy Auto-Discovery (WPAD) mediante Política de grupo (GPO)

# Habilitar SMB signing (Require SMB Signing) a través de Política de grupo (GPO)
a nivel de Cleinte:
![LLMNR](https://github.com/antonixp21/DojoConf-Recursos/blob/master/Imagenes/SMB-Signing-Cliente.png)

a Nivel de Servidor:
![LLMNR](https://github.com/antonixp21/DojoConf-Recursos/blob/master/Imagenes/SMB-Signing-Server.png)
# Habilitar LDAP Signing & LDAP Channel Binding  over TLS (Require LDAP Signing) a través de Política de grupo (GPO)
# Aplicar políticas a nivel de Firewall para bloquear el tráfico LLMNR / NetBIOS
# Deshabilitar el protocolo LM/NTLMv1 a través de Políticas de grupos (GPO)
