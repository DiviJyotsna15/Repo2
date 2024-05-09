Get-CimClass *Desktop*
Get-CimInstance -ClassName Win32_Desktop
Get-CimInstance -ClassName Win32_NetworkAdapter
Get-CimInstance -ClassName Win32_BIOS
Get-CimInstance -ClassName Win32_Processor
Get-CimInstance -ClassName Win32_ComputerSystem |Select-Object -Property SystemType >> C:\Wileytech\reports\jyotsna.txt
Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -Property AdminStatus >> C:\Wileytech\reports\AdminStatus.txt
Get-CimInstance -ClassName Win32_OperatingSystem  >> C:\Wileytech\reports\OperatingSystem.txt
Get-CimInstance -ClassName Win32_BIOS >> C:\Wileytech\reports\jyotsna.txt
Get-CimInstance -ClassName Win32_Service >> C:\Wileytech\reports\Service.txt
Get-CimInstance -ClassName Win32_Service | Format-Table -Property Status, Name, DisplayName -AutoSize -Wrap >> C:\Wileytech\reports\Services.txt
Get-CimInstance -ClassName Win32_LogicalDisk  >> C:\Wileytech\reports\LogicalDisk.txt
Get-CimInstance -ClassName Win32_LogonSession >> C:\Wileytech\reports\LogonSession.txt
Get-CimInstance -ClassName Win32_LocalTime >> C:\Wileytech\reports\Locaktime.txt
$datestring=(Get-Date).ToString("s").Replace(":","-")
$datestring
Get-CimInstance -ClassName Win32_Processor >> C:\Wileytech\reports\Processor.txt
Write-Output "Listing Computer System Type" >> C:\wileytech\reports\Systemt$datestring.txt
Write-Output "Listing BIOS Information" >> C:\wileytech\reports\bios$datestring.txt  
Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property  BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion >> C:\wileytech\reports\computer$datestring.txt
Write-Output "Listing Local Users and Owner" >> C:\wileytech\reports\computer$datestring.txt
Get-CimInstance	-ClassName	Win32_OperatingSystem |	Select-Object	-Property NumberOfLicensedUsers,NumberOfUsers,RegisteredUser >> C:\wileytech\reports\systeminfo$datestring.txt
Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property  BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion >> C:\wileytech\reports\computer$datestring.txt
Get-CimInstance	-ClassName	Win32_OperatingSystem |	Select-Object	-Property NumberOfLicensedUsers,NumberOfUsers,RegisteredUser >> C:\wileytech\reports\systeminfo$datestring.txt
Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" >> C:\wileytech\reports\driver$datestring.txt
Get-CimInstance	-ClassName	Win32_ComputerSystem	-Property	UserName	>>  C:\wileytech\reports\driver$datestring.txt
Get-CimInstance -ClassName Win32_LocalTime >> C:\wileytech\reports\driver$datestring.txt
Get-InstalledScript 
Get-help
 




