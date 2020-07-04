# Demostración de herramientas de evaluación/Auditoria de cuentas privilegiadas y seguridad en AD

# Lista de Herramientas:
1. [**ACLight**](https://github.com/cyberark/ACLight) : A tool for advanced discovery of Privileged Accounts - including Shadow Admins.
```
Pasos: (esto lo puede ejecutar con una cuenta estándar)
1) Descargar el archivo zip (https://github.com/cyberark/ACLight/archive/master.zip)  que contiene los scripts y descomprimirlos
2) Ir a las carpeta donde está el ejecutable "Execute-ACLight2.bat"
3) Ejecutar el ejecutable (doble clic) "Execute-ACLight2.bat" 
4) Revisar los archivos en la carpeta ACLight-master\Results
```
2. [**Ping Castle**](https://github.com/vletoux/pingcastle): is a tool designed to assess quickly the Active Directory security level with a methodology based on risk assessment and a maturity framework.
```
Pasos: (esto lo puede ejecutar con una cuenta estándar)
1) Descargar el archivo zip (https://github.com/vletoux/pingcastle/releases/tag/2.8.1.0 )  que contiene los scripts y descomprimirlos
2) Ir a las carpeta (PingCastle_2.8.1.0 ) donde está el ejecutable " PingCastle.exe"
3) Ejecutar el ejecutable (doble clic) "PingCastle.exe " 
4) seleccione la opcion 1- healthcheck-Score the risk of a domain luego presione enter
5) Revisare el archivo: ad_hc_<domain>.html
```
3. [**ADRecon**](https://github.com/sense-of-security/ADRecon): is a tool which gathers information about the Active Directory and generates a report.
4. [**PowerView**](https://github.com/PowerShellMafia/PowerSploit/blob/master/Recon/PowerView.ps1): is a tool to enumerate permissions in AD.
5. [**RiskySPNs**](https://github.com/cyberark/RiskySPN): is a collection of PowerShell scripts focused on detecting and abusing accounts associated with SPNs (Service Principal Name)
6. [**BloodHound**](https://github.com/BloodHoundAD/BloodHound): is a tool to enumerate permissions in AD.
7. [**Invoke-TrimarcADChecks**](https://www.hub.trimarcsecurity.com/post/securing-active-directory-performing-an-active-directory-security-review): is a tool which gathers information about potential security issues.
8. [**AD ACL Scanner**](https://github.com/canix1/ADACLScanner): is a tool to enumerate permissions in AD.

