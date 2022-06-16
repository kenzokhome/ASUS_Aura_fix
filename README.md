# ASUS_Aura_fix
Aura fix in case of various plugins

In case you've got corsair iCUE or any other lighting app that messes up your Aura Armory Crate settings, I've created this script that runs on startup and fixes the lighting mode.

The script will not run if your execution policy is restricted. You need to run in a PowerShell window:

set-executionpolicy remotesigned

More about this here: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.2

In order to use it, please follow the steps.
1) Go to Task Scheduler, right click on Task Scheduler Library and create a new folder
2) Right click on the new folder and select Create a basic task
3) Give it a name, and a description
4) Trigger must be set to Log On
5) Action is start a program and select PowerShell from the browse list (normally the path is: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe) and set as arguments:
-ExecutionPolicy Bypass <full_path_downloaded_script.ps1>
6) click on Finish
7) Now, we need to edit the new created task. Right click on it, and go to Properties. On the general tab, select Run with highest privileges and set the configuration for Windows 10.
8) In Settings, I set the run on demand, running if start is missed and forced to stop in case of task not ending when requested.
