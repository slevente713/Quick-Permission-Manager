Write-Host "Welcome in Quick Permission manager!" -ForegroundColor Blue

    $isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    if (-not $isAdmin) {
        Write-Host "[WARNING]: You didn't run this script as administrator. Some features may not work properly." -ForegroundColor Red
        Write-Host "Do you want to restart the script as administrator?"
        $admin = Read-Host "[Y/n]"
            if ($admin -match "n") {
                Write-Host "You can't run this script without administrator priviliges!" -ForegroundColor Red
            }
            else {
                Start-Process powershell -Verb RunAs -ArgumentList "-File `"$PSCommandPath`""
                exit
            }

        }
    else {

    }

Write-Host "Looking for the AppPrivacy Registry key..." -FeregroundColor Gray
$regpath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy"
if (-not (Test-Path $regpath)) {
    Write-Host "Creating Registry Key..." -ForegroundColor Cyan
    New-Item -Path $regpath -Force | Out-Null
    Write-Host "Successfully Created Registry Key." -ForegroundColor Green
}
else {
    Write-Host "Successfully found the AppPrivacy Registry key." -ForegroundColor Green
}
Write-Host "What permission do you want to disable?" -ForegroundColor White
Write-Host "( [C]amera / [M]icrophone / [L]ocation / [A]pp diagnostic / [V]oice activation / C[o]ntacts / [EXIT] )" -ForegroundColor Blue
$chooseAnOption1 = Read-Host ":"

    if ($chooseAnOption1 -match "c") {
        Write-Host "Disabling the Camera permission, in the entire operating system..." -ForegroundColor Cyan
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessCamera" -Value 2 -Type DWord
        Write-Host "Successfully disabled the Camera permission in the entire operating system." -ForegroundColor Green
        }
    else {

    }

    if ($chooseAnOption1 -match "m") {
        Write-Host "Disabling the Microphone permission, in the entire operating system..." -ForegroundColor Cyan
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessMicrophone" -Value 2 -Type DWord
        Write-Host "Successfully disabled the Microphone permission in the entire operating system." -ForegroundColor Green
        }
    else {

    }

    if ($chooseAnOption1 -match "l") {
        Write-Host "Disabling the Location permission, in the entire operating system..." -ForegroundColor Cyan
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessLocation" -Value 2 -Type DWord
        Write-Host "Successfully disabled the Location permission in the entire operating system." -ForegroundColor Green
    }
    else {

    }

    if ($chooseAnOption1 -match "a") {
        Write-Host "Disableng the App Diagnostics, in the entire operating system..." -ForegroundColor Cyan
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessAppDiagnostics" -Value 2 -Type DWord
        Write-Host "Successfully disabled App diagnostics in the entire operating system." -ForegroundColor Green
    }
    else {

    }

    if ($chooseAnOption1 -match "v") {
        Write-Host "Disabling the Voice Activation, in the entire operating system..." -ForegroundColor Cyan
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsActivateWithVoice" -Value 2 -Type DWord
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsActivateWithVoiceAboveLock" -Value 2 -Type DWord
        Write-Host "Successfully disabled Voice Activation in the entire operating system." -ForegroundColor Green
    }
    else {

    }

    if ($chooseAnOption1 -match "o") {
        Write-Host "Disabling the Contacts permission, in the entire operating system..." -ForegroundColor Cyan
        Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" -Name "LetAppsAccessContacts" -Value 2 -Type DWord
        Write-Host "Successfully disabled the Contacts permission in the entire operating system." -ForegroundColor Green
    }
    else {

    }

    if ($chooseAnOption1 -match "exit") {
        echo "Bye!"
        exit
    }
    else {

    }

pause
