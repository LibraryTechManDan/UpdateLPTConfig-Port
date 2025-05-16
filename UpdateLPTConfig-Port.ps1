$path = "C:\ProgramData\EnvisionWare\lptone\lptclient\config\lptclient.properties"
$newIP = "10.11.12.13"

(Get-Content $path) | ForEach-Object {
    if ($_ -like "jqe.host=*") {
        "jqe.host=$newIP"
    } else {
        $_
    }
} | Set-Content $path -Encoding UTF8

# Show popup
Add-Type -AssemblyName Microsoft.VisualBasic
[Microsoft.VisualBasic.Interaction]::MsgBox("IP updated to $newIP", "OKOnly,Information", "Config Updated")
