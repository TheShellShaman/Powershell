(Get-ADObject -Filter 'objectClass -eq "msFVE-RecoveryInformation"' -SearchBase (Get-ADComputer -Identity "COMPUTERNAMEHERE").DistinguishedName -Properties msFVE-RecoveryPassword)
