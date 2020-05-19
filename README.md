# PowershellFrontend-emulators
Powershell frontend for PCSX2 or any other emulator

Setup:
1. Move/copy the frontend.PS1 to the folder the emulator.exe is in
2. Rename the frontend.PS1 to match the emulator.exe ("pcsx2.PS1" to launch "pcsx2.exe")
3. Edit with whatever text editor and set the ROM extension `$ext` (.zip, .iso, etc...)
4. Set the ROM directory `$roms`
5. Set a shortcut to open the .PS1 with Powershell/Powershell Core

`"C:\Program Files\PowerShell\...\pwsh.exe" -File "...\pcsx2.PS1"`  
or  
`"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -File "...\pcsx2.PS1"`  
(Just "copy path" for the .PS1)

6. If needed, set launch options (--fullboot) under `if -eq 13`
7. Launch BIOS or "no game" under `if -eq 9`

Use:
- Arrow up&down (38 & 40) to move selection (Steam Controller analog stick)
- Enter/Return (13) to load game (Steam Controller "A" button)
- Tab (9) to launch BIOS or "no game" (Steam Controller "Back" button)
- Space (32) to cancel (Steam Controller "B" button)

If you need help, my Discord is Kzitold#4852

Launch options depends on the emulator, so I would need to tinker and/or bug the dev's for each.
