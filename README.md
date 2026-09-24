# Quick-Permission-Manager
Manage your Windows permissions, with PowerShell!

## What permissions can you disable with it?
- *Voice Activation*
- *Contacts*
- *Location*
- *Camera*
- *Microphone*
- *App diagnostics*

## How to use?

### Step 1.
Start Windows PowerShell or PowerShell 7, **as administrator**.

### Step 2.
Change the Execution Policy to Bypass, for the current session, like this:
```sh
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
```

### Step 3.
Navigate to that directory, **where you downloaded my script**, using ```cd```
E.g: If you downloaded it to the Downloads folder, type this:
```sh
cd $env:USERPROFILE\Downloads
```
(*$env:USERPROFILE* is an environment variable for the user account that is currently logged in.)

### Step 4.
Start the script, with:
```sh
./QuickPermissionManager1_0.ps1
```
Then, start using it.

