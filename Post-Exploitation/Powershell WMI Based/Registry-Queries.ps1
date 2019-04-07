#-----------------------Registry Modifiers, query registry----------------------------
#Below is an alternate way of doing this
$x = Get-WmiObject -Namespace root\default -Class StdRegProv -List
$x.Methods
#Registry values
#Show C
Get-WmiObject -Namespace root\default -Class StdRegProv -List | select -ExpandProperty Methods

Invoke-WmiMethod -Namespace root\default -Class StdRegProv -Name Enumkey @(2147483649,"software\microsoft\internet explorer")


#The registry key value is retrieved (each visied url is sotred as url 1 , url2 etc on the system)
Invoke-WmiMethod -Namespace root\default -Class StdRegProv -Name GetStringValue @(2147483649,"software\microsoft\internet explorer\typedurls","url1")

Get-WmiObject -class Win32_TSGeneralSetting -Namespace root\cimv2\TerminalServices -Filter “TerminalName='RDP-tcp'”