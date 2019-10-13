# PowershellFrontend-emulators
Powershell frontend for PCSX2 or any other emulator

Setup:
1. Move/copy the frontend.PS1 to the folder the emulator.exe is in
2. Rename the frontend.PS1 to match the emulator.exe ("pcsx2.PS1" to launch "pcsx2.exe")
3. Edit with whatever text editor and set the ROM extension[$ext] (.zip, .iso, etc...)
4. Set the ROM directory[$roms]
5. Set a shortcut to open the .PS1 with Powershell/Powershell Core

"C:\Program Files\PowerShell\6.0.2\pwsh.exe" -File "...\pcsx2.PS1"
or
"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -File "...\pcsx2.PS1"
(Just "copy path" for the .PS1)


Use:
Arrow up&down to move selection (Steam Controller analog stick)
Enter/Return to load game (Steam Controller "A" button)
