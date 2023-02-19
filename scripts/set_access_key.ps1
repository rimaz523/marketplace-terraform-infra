$env:ARM_ACCESS_KEY = $(az storage account keys list -g marketplace-admin-rg -n rmzmarketadmin --query [0].value -o tsv)
