#requires -Version 5.1
<# Created by Dewald Pretorius #>
param([string]$OutputPath)
if(-not $OutputPath){$OutputPath="$([Environment]::GetFolderPath('Desktop'))\Project_Resource_Cost_Reports"};New-Item $OutputPath -ItemType Directory -Force|Out-Null
$proc=Get-Process WINPROJ -ErrorAction SilentlyContinue;$office=Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration' -ErrorAction SilentlyContinue
@('MICROSOFT PROJECT RESOURCE AND COST TROUBLESHOOTER','Created by Dewald Pretorius',"Generated: $(Get-Date)","Running: $([bool]$proc)","Office version: $($office.VersionToReport)",'Guidance: review resource calendars, max units, assignment units, work versus duration, cost rates, fixed costs, accrual, leveling, and baseline variance.')|Set-Content (Join-Path $OutputPath 'Report.txt') -Encoding UTF8