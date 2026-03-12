# 1. Configuration
$infPath = "C:\Temp\ROB114_Printer\DocuPrint_M225\install\driver\gdi\32_64\FFPRM13A.inf"
$modelName = "FF Q506p for DocuPrint M225 dw" # Replace with your choice

# 2. Stage the driver folder to the Windows Driver Store
# This allows Windows to 'see' the files.
pnputil.exe /add-driver $infPath /install

# 3. Add the driver to the Print Spooler
# This registers the specific model name you selected.
Add-PrinterDriver -Name $modelName

Write-Host "Successfully installed: $modelName"
