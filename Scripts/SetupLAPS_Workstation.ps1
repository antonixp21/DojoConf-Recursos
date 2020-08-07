## Configure AD for LAPS

Import-module AdmPwd.PS

Update-AdmPwdADSchema


## Creacion de Grupos de personal autorizado para leer contrasenas y para cambiar contrasenas
$WorkstationGroupPropsReset = @{
    Name = 'LAPSWorkstation_Reset'
    SamAccountName = 'LAPSWorkstation_Reset'
    Description = 'Members allowed to Reset LAPS attributes for Workstations'
    DisplayName = 'LAPSWorkstation_Reset'
    GroupCategory = 'Security'
    GroupScope= 'Global'
    Path = 'CN=Users,DC=PRACTICELABS,DC=COM'
}
New-ADGroup @WorkstationGroupPropsReset

$WorkstationGroupPropsRead = @{
    Name = 'LAPSWorkstation_Read'
    SamAccountName = 'LAPSWorkstation_Read'
    Description = 'Members allowed to read LAPS attributes for Workstations'
    DisplayName = 'LAPSWorkstation_Read'
    GroupCategory = 'Security'
    GroupScope= 'Global'
    Path = 'CN=Users,DC=PRACTICELABS,DC=COM'
}
New-ADGroup @WorkstationGroupPropsRead


## Prepare OU for computers’ objects with necessary permissions

## Workstation OU Array
$WorkstationOUGroupArray = @(
 # Laptops Groups
'CN=Computers,DC=PRACTICELABS,DC=COM'
)

ForEach ($WorkstationOUGroupItem in $WorkstationOUGroupArray)
 {
    TRY 
     { 
        Set-AdmPwdComputerSelfPermission -OrgUnit $WorkstationOUGroupItem

        Write-Host "Permisos otorgdos a la OU:  $WorkstationOUGroupItem exitosamente." -Fore Cyan

     }
    CATCH
     { Write-Warning "An error occured when attempting to Set-AdmPwdComputerSelfPermission on the ou $WorkstationOUGroupItem " }
    
    Write-Host ""
 }


## Identificacion de usuarios o grupos con permisos ExtendedRights

ForEach ($WorkstationOUGroupItem in $WorkstationOUGroupArray)
 {
    TRY 
     { 
        Write-Host "Usuario o Grupo con Permisos ExtendedRights en la OU:  $WorkstationOUGroupItem " -Fore Cyan

        Find-AdmPwdExtendedRights -Identity $WorkstationOUGroupItem | select-object -expandproperty ExtendedRightHolders

     }
    CATCH
     { Write-Warning "An error occured when attempting to Find-AdmPwdExtendedRights on the ou $WorkstationOUGroupItem " }
    
    Write-Host ""
 }

## Add rights to users/groups to allow them to retrieve a computer's password

 ForEach ($WorkstationOUGroupItem in $WorkstationOUGroupArray)
 {
    TRY 
     { 
        Set-AdmPwdReadPasswordPermission -OrgUnit $WorkstationOUGroupItem -AllowedPrincipals "LAPSWorkstation_Read"

        Write-Host "Permisos otorgdos al grupo LAPSWorkstation_Read de lectura a la OU:  $WorkstationOUGroupItem exitosamente." -Fore Cyan

     }
    CATCH
     { Write-Warning "An error occured when attempting to Set-AdmPwdReadPasswordPermission on the ou $WorkstationOUGroupItem " }
    
    Write-Host ""
 }

## Add rights to users/groups to allow them to reset a computer's password

 ForEach ($WorkstationOUGroupItem in $WorkstationOUGroupArray)
 {
    TRY 
     { 
        Set-AdmPwdResetPasswordPermission -OrgUnit $WorkstationOUGroupItem -AllowedPrincipals "LAPSWorkstation_Reset"

        Write-Host "Permisos otorgdos al grupo LAPSWorkstation_Reset de lectura a la OU:  $WorkstationOUGroupItem exitosamente." -Fore Cyan

     }
    CATCH
     { Write-Warning "An error occured when attempting to Set-AdmPwdReadPasswordPermission on the ou $WorkstationOUGroupItem " }
    
    Write-Host ""
 }

 