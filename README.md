# Demostración de herramientas de evaluación/Auditoria de cuentas privilegiadas y seguridad en AD



# Lista de Herramientas:
1. [**ACLight**](https://github.com/cyberark/ACLight) : A tool for advanced discovery of Privileged Accounts - including Shadow Admins.
[**clic aquí para ver la demostración:**](https://vimeo.com/user119347839/review/437427558/5eb223be08)

```
Pasos: (esto lo puede ejecutar con una cuenta estándar)
1) Descargar el archivo zip (https://github.com/cyberark/ACLight/archive/master.zip)  que contiene los scripts y descomprimirlos
2) Ir a las carpeta donde está el ejecutable "Execute-ACLight2.bat"
3) Ejecutar el ejecutable (doble clic) "Execute-ACLight2.bat" 
4) Revisar los archivos en la carpeta ACLight-master\Results
```
2. [**Ping Castle**](https://github.com/vletoux/pingcastle): is a tool designed to assess quickly the Active Directory security level with a methodology based on risk assessment and a maturity framework.
[**clic aquí para ver la demostración:**](https://vimeo.com/user119347839/review/437427934/d4318c64c9)
```
Pasos: (esto lo puede ejecutar con una cuenta estándar)
1) Descargar el archivo zip (https://github.com/vletoux/pingcastle/releases/tag/2.8.1.0 )  que contiene los scripts y descomprimirlos
2) Ir a las carpeta (PingCastle_2.8.1.0 ) donde está el ejecutable " PingCastle.exe"
3) Ejecutar el ejecutable (doble clic) "PingCastle.exe " 
4) seleccione la opcion 1- healthcheck-Score the risk of a domain luego presione enter
5) Revisare el archivo: ad_hc_<domain>.html
```
3. [**ADRecon**](https://github.com/sense-of-security/ADRecon): is a tool which gathers information about the Active Directory and generates a report.
[**clic aquí para ver la demostración:**](https://vimeo.com/user119347839/review/437427785/0f11089e4a)
```
Pasos: (esto lo puede ejecutar con una cuenta estándar)
1) Descargar el archivo zip (https://github.com/adrecon/ADRecon/archive/master.zip  )  que contiene los scripts y descomprimirlos
2) Ejecutar en PowerShell la siguinete politica:  "set-executionpolicy unrestricted"
3) Ir a las carpeta (ADRecon-master) donde está el PowerShell " ADRecon.ps1"
4) Ejecutar el PowerShell utilizando CMD o Windows PowerShell  " .\ADRecon.ps1" 
5) Revisar la carpeta ADRecon-master\ADRecon-Report-XXXXXX  que contiene CSV-Files y un Excel con un resumen  <Domain>-ADRecon-Report.xlsx
```
4. [**PowerView**](https://github.com/PowerShellMafia/PowerSploit/blob/master/Recon/PowerView.ps1): is a tool to enumerate permissions in AD.
5. [**RiskySPNs**](https://github.com/cyberark/RiskySPN): is a collection of PowerShell scripts focused on detecting and abusing accounts associated with SPNs (Service Principal Name)
[**clic aquí para ver la demostración:**](https://vimeo.com/user119347839/review/437428603/90def9c0e1)
```
Pasos: (esto lo puede ejecutar con una cuenta estándar)
1) Descargar el archivo zip (https://github.com/cyberark/RiskySPN/archive/master.zip)  que contiene los scripts y descomprimirlos
2) Ejecutar en PowerShell la siguinete politica:  "set-executionpolicy unrestricted"
3) Ir a las carpeta (RiskySPN-master) e importar el módulo RiskySPNs "Import-Module .\RiskySPNs.psm1"
4) Ejecutar el PowerShell utilizando CMD o Windows PowerShell  "Find-PotentiallyCrackableAccounts -Sensitive -Stealth -GetSPNs" 
5) Revisar las cuentas con SPN
```
6. [**BloodHound**](https://github.com/BloodHoundAD/BloodHound): is a tool to enumerate permissions in AD.
[**clic aquí para ver la demostración:**](https://vimeo.com/user119347839/review/437428959/77da42f349)
```
Pasos: (esto lo puede ejecutar con una cuenta estándar)
1) Descargar el archivo zip (https://github.com/BloodHoundAD/BloodHound/archive/master.zip)  que contiene los scripts y descomprimirlos
2) Ejecutar en PowerShell la siguinete politica:  "set-executionpolicy unrestricted"
3) Ir a las carpeta (BloodHound-master\Ingestors) e importar el módulo SharpHound  " .\SharpHound.ps1"
4) Ejecutar el PowerShell utilizando CMD o Windows PowerShell  " Invoke-BloodHound -CollectionMethod All -Domain PRACTICELABS.COM" 
5) Revisar  el archivo zip generado  XXXXXXXX_BloodHound.zip e importarlo a  la consola de BloodHound 
```
7. [**Invoke-TrimarcADChecks**](https://www.hub.trimarcsecurity.com/post/securing-active-directory-performing-an-active-directory-security-review): is a tool which gathers information about potential security issues.
[**clic aquí para ver la demostración:**](https://vimeo.com/user119347839/review/437428819/c67e9b0a30)
```
Pasos: (esto lo puede ejecutar con una cuenta estándar)
1) Descargar el archivo zip (https://www.hub.trimarcsecurity.com/post/securing-active-directory-performing-an-active-directory-security-review)  que contiene los scripts  llamado Invoke-TrimarcADChecks
2) Ejecutar en PowerShell la siguinete politica:  "set-executionpolicy unrestricted"
3) Ejecutar el PowerShell utilizando CMD o Windows PowerShell  " .\Invoke-TrimarcADChecks
4) Revisar  los csv e informes en txt generados por la herramientas de los principales errores de configuración en AD.
```
8. [**AD ACL Scanner**](https://github.com/canix1/ADACLScanner): is a tool to enumerate permissions in AD.

