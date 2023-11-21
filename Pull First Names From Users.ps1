# Define the OU to search in
$ou = 'SPECIFY OU LOCATION HERE'

# Get AD Users from the OU
$users = Get-ADUser -Filter * -SearchBase $ou -Property GivenName

# Display the first names of the users
foreach ($user in $users) {
    $user.GivenName
}
