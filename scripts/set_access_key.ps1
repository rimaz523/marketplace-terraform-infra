az login
az account set --subscription "Marketplace"
$env:ARM_ACCESS_KEY = $(az storage account keys list -g marketplace-admin-rg -n mktadminstore --query [0].value -o tsv)
