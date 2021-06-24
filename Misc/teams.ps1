Install-module MicrosoftTeams
Update-Module MicrosoftTeams

Connect-MicrosoftTeams

Get-CsTeamsMeetingPolicy -Identity "Global"

Set-CsTeamsMeetingPolicy -Identity "Global" -AllowEngagementReport "Enabled"
