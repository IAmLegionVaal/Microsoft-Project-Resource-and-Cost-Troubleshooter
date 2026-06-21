# Microsoft Project Resource and Cost Troubleshooter

Created by **Dewald Pretorius**.

The repository includes the original diagnostics and a guarded `Repair.ps1` helper.

Supported actions:

- `Diagnose`
- `ResetOfficeCache`
- `RepairOffice`

```powershell
.\Repair.ps1 -Action Diagnose
.\Repair.ps1 -Action ResetOfficeCache -WhatIf
.\Repair.ps1 -Action RepairOffice -Confirm
```

Close Microsoft Project before cache repair. Existing cache data is preserved as a timestamped backup. The workflow is source-reviewed for PowerShell 5.1 and has not been runtime-tested against every Project or Office build.
