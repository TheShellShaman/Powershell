Import-Module ActiveDirectory
Get-ADUser -Filter * -SearchBase "Searchbase Here" | ForEach-Object {
    $newDisplayName = $_.GivenName + " " + $_.Surname
    Set-ADUser $_ -DisplayName $newDisplayName
}
