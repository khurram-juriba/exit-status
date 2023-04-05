REM WScript.Echo("Hello World!")

Dim Fso
Dim WshShell

Dim CurrentDirectory
Dim WaitSeconds
Dim NeededCode

Dim Command
Dim ExitCode

Set Fso = WScript.CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("WScript.Shell")

CurrentDirectory = Fso.GetAbsolutePathName(".")
WaitSeconds = 2
NeededCode = 10

Command = CurrentDirectory & "\second-app\bin\Debug\second-app.exe " & WaitSeconds & " " & NeededCode
ExitCode = WshShell.Run(Command, 1, True)

MsgBox(ExitCode)

Dim ReturnValue

REM We can have our custom logic here
ReturnValue = ExitCode

WScript.Quit(ReturnValue)
