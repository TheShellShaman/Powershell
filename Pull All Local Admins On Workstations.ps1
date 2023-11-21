# Get all administrators once
$adminAccounts = (Get-WMIObject -Class Win32_Group -Filter "SID='S-1-5-32-544'").GetRelated("Win32_Account","","","","PartComponent","GroupComponent",$FALSE,$NULL) | Select-Object -ExpandProperty SID

# Enumerate the users known to the WMI (both local and domain accounts)
Get-WmiObject -Class Win32_UserAccount | Where-Object { $adminAccounts -contains $_.SID } | ForEach-Object {

    # Output some friendly information
    write-host " Username: $($_.Name)"

    