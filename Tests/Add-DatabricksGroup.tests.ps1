Set-Location $PSScriptRoot
Import-Module "..\azure.databricks.cicd.Tools.psd1" -Force
$BearerToken = Get-Content "MyBearerToken.txt"  # Create this file in the Tests folder with just your bearer token in
$Region = "westeurope"

Describe "Add-DatabricksGroup" {
    It "Simple create"{
        Add-DatabricksGroup -BearerToken $BearerToken -Region $Region -GroupName "TestGroup"
    }
}


    