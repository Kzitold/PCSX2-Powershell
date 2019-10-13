$path = split-path -parent $MyInvocation.MyCommand.Definition

$ext = "..."
$roms = "$path\ROMs"
$emxt = ".exe"

$emu = (split-path $MyInvocation.MyCommand.Definition -Leaf).replace(".PS1", "$emxt")
$list = dir $roms

($list | where {$_.extension -eq $ext}).Name | foreach {"   " + $_} > list.txt

$line = 0
$end = 25

$max = (Get-Content $path\list.txt).count
if ($max -lt $end) {
$end = $max}
$bg = $Host.UI.RawUI.BackgroundColor

$start = {

if ($line -eq $max) {
$line = 0}

if ($line -eq -1) {
$line = $max - 1}

Clear-Host
$rep = ($list | where {$_.extension -eq $ext}).Name | select -first 1 -skip ($line)

$Host.UI.RawUI.BackgroundColor = "DarkGray"
(((Get-Content list.txt).replace("   $rep", "-> $rep")) | select -first 1 -skip ($line))
$Host.UI.RawUI.BackgroundColor = $bg
(((Get-Content list.txt)) | select -first ($end - 1) -skip ($line + 1))

if (([int]$max) - ([int]$line) -lt $end) {
(Get-Content list.txt) | select -first ($end - ($max -$line))}

$num = $host.UI.RawUI.ReadKey()

if ($num.VirtualKeyCode -eq 38) {
$line = ([int]$line) - 1}

if ($num.VirtualKeyCode -eq 40) {
$line = ([int]$line) + 1}

if ($num.VirtualKeyCode -eq 13) {
Clear-Host
Get-Variable rep
& "$path\$emu" "$roms\$rep"
exit}

&$start
}
&$start
