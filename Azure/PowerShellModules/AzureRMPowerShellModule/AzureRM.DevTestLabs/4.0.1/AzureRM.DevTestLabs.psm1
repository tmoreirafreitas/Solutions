#  
# Module manifest for module 'AzureRM.DevTestLabs'  
#  
# Generated by: Microsoft Corporation  
#  
# Generated on: 01/23/2018 05:09:59
#  

$PSDefaultParameterValues.Clear()
Set-StrictMode -Version Latest

$module = Get-Module AzureRM.Profile 
if ($module -ne $null -and $module.Version.ToString().CompareTo("4.2.0") -lt 0) 
{ 
    Write-Error "This module requires AzureRM.Profile version 4.2.0. An earlier version of AzureRM.Profile is imported in the current PowerShell session. Please open a new session before importing this module. This error could indicate that multiple incompatible versions of the Azure PowerShell cmdlets are installed on your system. Please see https://aka.ms/azps-version-error for troubleshooting information." -ErrorAction Stop 
} 
elseif ($module -eq $null) 
{ 
    Import-Module AzureRM.Profile -MinimumVersion 4.2.0 -Scope Global 
}
Import-Module (Join-Path -Path $PSScriptRoot -ChildPath Microsoft.Azure.Commands.DevTestLabs.dll)


if (Test-Path -Path "$PSScriptRoot\StartupScripts")
{
    Get-ChildItem "$PSScriptRoot\StartupScripts" | ForEach-Object {
        . $_.FullName
    }
}

if ($PSVersionTable.PSVersion.Major -ge 5)
{
    $completerCommands = @(@{'Command' = 'Get-AzureRmDtlAllowedVMSizesPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()},@{'Command' = 'Get-AzureRmDtlAutoShutdownPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()},@{'Command' = 'Get-AzureRmDtlAutoStartPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()},@{'Command' = 'Get-AzureRmDtlVMsPerLabPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()},@{'Command' = 'Get-AzureRmDtlVMsPerUserPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()},@{'Command' = 'Set-AzureRmDtlAutoStartPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()},@{'Command' = 'Set-AzureRmDtlAutoShutdownPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()},@{'Command' = 'Set-AzureRmDtlVMsPerUserPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()},@{'Command' = 'Set-AzureRmDtlAllowedVMSizesPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()},@{'Command' = 'Set-AzureRmDtlVMsPerLabPolicy'; 'Parameter' = 'ResourceGroupName'; 'AttributeType' = 'Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleterAttribute'; 'ArgumentList' = @()})
    
    $completerCommands | ForEach-Object {
        $type = $_.AttributeType
        $args = "@()"
        if ($_.ArgumentList.Count -ne 0) {
		    $temp = $_.ArgumentList -join "`", `"" 
            $args = "@(`"" + $temp + "`")" 
        }
        $sb = [scriptblock]::Create("param(`$commandName, `$parameterName, `$wordToComplete, `$commandAst, `$fakeBoundParameter) `
        `$completerObject = New-Object $type -ArgumentList $args `
        `$arguments = `$completerObject.GetCompleterValues() `
        `$wordToCompleteTrimQuote = `$wordToComplete.Trim(`"'`")
        `$wordToCompleteTrimmed = `$wordToCompleteTrimQuote.Trim(`"```"`")
        `$arguments | Where-Object { (`$_ -Like `"`$wordToComplete*`")  -or (`$_ -Like `"```'`$wordToCompleteTrimmed*```'`") } | ForEach-Object { [System.Management.Automation.CompletionResult]::new(`$_, `$_, 'ParameterValue', `$_) }")
        Register-ArgumentCompleter -CommandName $_.Command -ParameterName $_.Parameter -ScriptBlock $sb
    }
}

$FilteredCommands = @('Get-AzureRmDtlAllowedVMSizesPolicy:ResourceGroupName','Get-AzureRmDtlAutoShutdownPolicy:ResourceGroupName','Get-AzureRmDtlAutoStartPolicy:ResourceGroupName','Get-AzureRmDtlVMsPerLabPolicy:ResourceGroupName','Get-AzureRmDtlVMsPerUserPolicy:ResourceGroupName','Set-AzureRmDtlAutoStartPolicy:ResourceGroupName','Set-AzureRmDtlAutoShutdownPolicy:ResourceGroupName','Set-AzureRmDtlVMsPerUserPolicy:ResourceGroupName','Set-AzureRmDtlAllowedVMSizesPolicy:ResourceGroupName','Set-AzureRmDtlVMsPerLabPolicy:ResourceGroupName')

$FilteredCommands | ForEach-Object {
	$global:PSDefaultParameterValues.Add($_,
		{
			$context = Get-AzureRmContext
			if (($context -ne $null) -and $context.ExtendedProperties.ContainsKey("Default Resource Group")) {
				$context.ExtendedProperties["Default Resource Group"]
			} 
		})
}

# SIG # Begin signature block
# MIIkBAYJKoZIhvcNAQcCoIIj9TCCI/ECAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCC/abLGx6Ls7tEv
# 7rWjFsaURRL8muMGxGhaw9pqalL4eKCCDYMwggYBMIID6aADAgECAhMzAAAAxOmJ
# +HqBUOn/AAAAAADEMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMTcwODExMjAyMDI0WhcNMTgwODExMjAyMDI0WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQCIirgkwwePmoB5FfwmYPxyiCz69KOXiJZGt6PLX4kvOjMuHpF4+nypH4IBtXrL
# GrwDykbrxZn3+wQd8oUK/yJuofJnPcUnGOUoH/UElEFj7OO6FYztE5o13jhwVG87
# 7K1FCTBJwb6PMJkMy3bJ93OVFnfRi7uUxwiFIO0eqDXxccLgdABLitLckevWeP6N
# +q1giD29uR+uYpe/xYSxkK7WryvTVPs12s1xkuYe/+xxa8t/CHZ04BBRSNTxAMhI
# TKMHNeVZDf18nMjmWuOF9daaDx+OpuSEF8HWyp8dAcf9SKcTkjOXIUgy+MIkogCy
# vlPKg24pW4HvOG6A87vsEwvrAgMBAAGjggGAMIIBfDAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUy9ZihM9gOer/Z8Jc0si7q7fDE5gw
# UgYDVR0RBEswSaRHMEUxDTALBgNVBAsTBE1PUFIxNDAyBgNVBAUTKzIzMDAxMitj
# ODA0YjVlYS00OWI0LTQyMzgtODM2Mi1kODUxZmEyMjU0ZmMwHwYDVR0jBBgwFoAU
# SG5k5VAF04KqFzc3IrVtqMp1ApUwVAYDVR0fBE0wSzBJoEegRYZDaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraW9wcy9jcmwvTWljQ29kU2lnUENBMjAxMV8yMDEx
# LTA3LTA4LmNybDBhBggrBgEFBQcBAQRVMFMwUQYIKwYBBQUHMAKGRWh0dHA6Ly93
# d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY2VydHMvTWljQ29kU2lnUENBMjAxMV8y
# MDExLTA3LTA4LmNydDAMBgNVHRMBAf8EAjAAMA0GCSqGSIb3DQEBCwUAA4ICAQAG
# Fh/bV8JQyCNPolF41+34/c291cDx+RtW7VPIaUcF1cTL7OL8mVuVXxE4KMAFRRPg
# mnmIvGar27vrAlUjtz0jeEFtrvjxAFqUmYoczAmV0JocRDCppRbHukdb9Ss0i5+P
# WDfDThyvIsoQzdiCEKk18K4iyI8kpoGL3ycc5GYdiT4u/1cDTcFug6Ay67SzL1BW
# XQaxFYzIHWO3cwzj1nomDyqWRacygz6WPldJdyOJ/rEQx4rlCBVRxStaMVs5apao
# pIhrlihv8cSu6r1FF8xiToG1VBpHjpilbcBuJ8b4Jx/I7SCpC7HxzgualOJqnWmD
# oTbXbSD+hdX/w7iXNgn+PRTBmBSpwIbM74LBq1UkQxi1SIV4htD50p0/GdkUieeN
# n2gkiGg7qceATibnCCFMY/2ckxVNM7VWYE/XSrk4jv8u3bFfpENryXjPsbtrj4Ns
# h3Kq6qX7n90a1jn8ZMltPgjlfIOxrbyjunvPllakeljLEkdi0iHv/DzEMQv3Lz5k
# pTdvYFA/t0SQT6ALi75+WPbHZ4dh256YxMiMy29H4cAulO2x9rAwbexqSajplnbI
# vQjE/jv1rnM3BrJWzxnUu/WUyocc8oBqAU+2G4Fzs9NbIj86WBjfiO5nxEmnL9wl
# iz1e0Ow0RJEdvJEMdoI+78TYLaEEAo5I+e/dAs8DojCCB3owggVioAMCAQICCmEO
# kNIAAAAAAAMwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmlj
# YXRlIEF1dGhvcml0eSAyMDExMB4XDTExMDcwODIwNTkwOVoXDTI2MDcwODIxMDkw
# OVowfjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UE
# AxMfTWljcm9zb2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMTCCAiIwDQYJKoZIhvcN
# AQEBBQADggIPADCCAgoCggIBAKvw+nIQHC6t2G6qghBNNLrytlghn0IbKmvpWlCq
# uAY4GgRJun/DDB7dN2vGEtgL8DjCmQawyDnVARQxQtOJDXlkh36UYCRsr55JnOlo
# XtLfm1OyCizDr9mpK656Ca/XllnKYBoF6WZ26DJSJhIv56sIUM+zRLdd2MQuA3Wr
# aPPLbfM6XKEW9Ea64DhkrG5kNXimoGMPLdNAk/jj3gcN1Vx5pUkp5w2+oBN3vpQ9
# 7/vjK1oQH01WKKJ6cuASOrdJXtjt7UORg9l7snuGG9k+sYxd6IlPhBryoS9Z5JA7
# La4zWMW3Pv4y07MDPbGyr5I4ftKdgCz1TlaRITUlwzluZH9TupwPrRkjhMv0ugOG
# jfdf8NBSv4yUh7zAIXQlXxgotswnKDglmDlKNs98sZKuHCOnqWbsYR9q4ShJnV+I
# 4iVd0yFLPlLEtVc/JAPw0XpbL9Uj43BdD1FGd7P4AOG8rAKCX9vAFbO9G9RVS+c5
# oQ/pI0m8GLhEfEXkwcNyeuBy5yTfv0aZxe/CHFfbg43sTUkwp6uO3+xbn6/83bBm
# 4sGXgXvt1u1L50kppxMopqd9Z4DmimJ4X7IvhNdXnFy/dygo8e1twyiPLI9AN0/B
# 4YVEicQJTMXUpUMvdJX3bvh4IFgsE11glZo+TzOE2rCIF96eTvSWsLxGoGyY0uDW
# iIwLAgMBAAGjggHtMIIB6TAQBgkrBgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQUSG5k
# 5VAF04KqFzc3IrVtqMp1ApUwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYD
# VR0PBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUci06AjGQQ7kU
# BU7h6qfHMdEjiTQwWgYDVR0fBFMwUTBPoE2gS4ZJaHR0cDovL2NybC5taWNyb3Nv
# ZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0MjAxMV8yMDExXzAz
# XzIyLmNybDBeBggrBgEFBQcBAQRSMFAwTgYIKwYBBQUHMAKGQmh0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0MjAxMV8yMDExXzAz
# XzIyLmNydDCBnwYDVR0gBIGXMIGUMIGRBgkrBgEEAYI3LgMwgYMwPwYIKwYBBQUH
# AgEWM2h0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvZG9jcy9wcmltYXJ5
# Y3BzLmh0bTBABggrBgEFBQcCAjA0HjIgHQBMAGUAZwBhAGwAXwBwAG8AbABpAGMA
# eQBfAHMAdABhAHQAZQBtAGUAbgB0AC4gHTANBgkqhkiG9w0BAQsFAAOCAgEAZ/KG
# pZjgVHkaLtPYdGcimwuWEeFjkplCln3SeQyQwWVfLiw++MNy0W2D/r4/6ArKO79H
# qaPzadtjvyI1pZddZYSQfYtGUFXYDJJ80hpLHPM8QotS0LD9a+M+By4pm+Y9G6XU
# tR13lDni6WTJRD14eiPzE32mkHSDjfTLJgJGKsKKELukqQUMm+1o+mgulaAqPypr
# WEljHwlpblqYluSD9MCP80Yr3vw70L01724lruWvJ+3Q3fMOr5kol5hNDj0L8giJ
# 1h/DMhji8MUtzluetEk5CsYKwsatruWy2dsViFFFWDgycScaf7H0J/jeLDogaZiy
# WYlobm+nt3TDQAUGpgEqKD6CPxNNZgvAs0314Y9/HG8VfUWnduVAKmWjw11SYobD
# HWM2l4bf2vP48hahmifhzaWX0O5dY0HjWwechz4GdwbRBrF1HxS+YWG18NzGGwS+
# 30HHDiju3mUv7Jf2oVyW2ADWoUa9WfOXpQlLSBCZgB/QACnFsZulP0V3HjXG0qKi
# n3p6IvpIlR+r+0cjgPWe+L9rt0uX4ut1eBrs6jeZeRhL/9azI2h15q/6/IvrC4Dq
# aTuv/DDtBEyO3991bWORPdGdVk5Pv4BXIqF4ETIheu9BCrE/+6jMpF3BoYibV3FW
# TkhFwELJm3ZbCoBIa/15n8G9bW1qyVJzEw16UM0xghXXMIIV0wIBATCBlTB+MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYDVQQDEx9NaWNy
# b3NvZnQgQ29kZSBTaWduaW5nIFBDQSAyMDExAhMzAAAAxOmJ+HqBUOn/AAAAAADE
# MA0GCWCGSAFlAwQCAQUAoIHMMBkGCSqGSIb3DQEJAzEMBgorBgEEAYI3AgEEMBwG
# CisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCChB14/
# 7gAxcsQx7QDGsM6MgFTJuAMOrkvKTKQDS9+HpTBgBgorBgEEAYI3AgEMMVIwUKA2
# gDQATQBpAGMAcgBvAHMAbwBmAHQAIABBAHoAdQByAGUAIABQAG8AdwBlAHIAUwBo
# AGUAbABsoRaAFGh0dHA6Ly9Db2RlU2lnbkluZm8gMA0GCSqGSIb3DQEBAQUABIIB
# AGYz5muZox7aoFYDTGiVLQ0B2YsPRHJfMvpZ2PMnL+Yu8y0pGFma/rBTdrW0PC2/
# l/cnezcREW5VmQzt5pxezs2GrjxXmv7UCU8WFnVDPY+XGtiyaugyrGAcRYivCgii
# Xr0CzSDdiAImflYbe9B0dpMewgexkF23td4G9I8KK92yb5H16ZblaS1cJ/TpqYDG
# bjXmer4VarQLQpFFAhZywXOb0KxcwTeSgZm7uIcMlFxYcJ/qLKChydOP7DzEsxz5
# wshvH7mhzEClKzgB9n8lyJtuKrCo/gGASD0ystf0zA/zzIyhWv/qj5UQX5k7PN9Q
# yOwCIvvkiCKdNN6Kul+zsomhghNDMIITPwYKKwYBBAGCNwMDATGCEy8wghMrBgkq
# hkiG9w0BBwKgghMcMIITGAIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBOwYLKoZIhvcN
# AQkQAQSgggEqBIIBJjCCASICAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEF
# AAQglBTQ2XGtTEsadVAktfb5h9rjanynUW1yjf5YQQBFFGYCBlpOz4DpABgTMjAx
# ODAxMjMwNTExMzAuMDA0WjAHAgEBgAIB9KCBt6SBtDCBsTELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEMMAoGA1UECxMDQU9DMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjpDM0IwLTBGNkEtNDExMTElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZaCCDsgwggZxMIIEWaADAgECAgphCYEqAAAAAAAC
# MA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRo
# b3JpdHkgMjAxMDAeFw0xMDA3MDEyMTM2NTVaFw0yNTA3MDEyMTQ2NTVaMHwxCzAJ
# BgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25k
# MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
# MIIBCgKCAQEAqR0NvHcRijog7PwTl/X6f2mUa3RUENWlCgCChfvtfGhLLF/Fw+Vh
# wna3PmYrW/AVUycEMR9BGxqVHc4JE458YTBZsTBED/FgiIRUQwzXTbg4CLNC3ZOs
# 1nMwVyaCo0UN0Or1R4HNvyRgMlhgRvJYR4YyhB50YWeRX4FUsc+TTJLBxKZd0WET
# bijGGvmGgLvfYfxGwScdJGcSchohiq9LZIlQYrFd/XcfPfBXday9ikJNQFHRD5wG
# Pmd/9WbAA5ZEfu/QS/1u5ZrKsajyeioKMfDaTgaRtogINeh4HLDpmc085y9Euqf0
# 3GS9pAHBIAmTeM38vMDJRF1eFpwBBU8iTQIDAQABo4IB5jCCAeIwEAYJKwYBBAGC
# NxUBBAMCAQAwHQYDVR0OBBYEFNVjOlyKMZDzQ3t8RhvFM2hahW1VMBkGCSsGAQQB
# gjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/
# MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJ
# oEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01p
# Y1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYB
# BQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9v
# Q2VyQXV0XzIwMTAtMDYtMjMuY3J0MIGgBgNVHSABAf8EgZUwgZIwgY8GCSsGAQQB
# gjcuAzCBgTA9BggrBgEFBQcCARYxaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL1BL
# SS9kb2NzL0NQUy9kZWZhdWx0Lmh0bTBABggrBgEFBQcCAjA0HjIgHQBMAGUAZwBh
# AGwAXwBQAG8AbABpAGMAeQBfAFMAdABhAHQAZQBtAGUAbgB0AC4gHTANBgkqhkiG
# 9w0BAQsFAAOCAgEAB+aIUQ3ixuCYP4FxAz2do6Ehb7Prpsz1Mb7PBeKp/vpXbRkw
# s8LFZslq3/Xn8Hi9x6ieJeP5vO1rVFcIK1GCRBL7uVOMzPRgEop2zEBAQZvcXBf/
# XPleFzWYJFZLdO9CEMivv3/Gf/I3fVo/HPKZeUqRUgCvOA8X9S95gWXZqbVr5MfO
# 9sp6AG9LMEQkIjzP7QOllo9ZKby2/QThcJ8ySif9Va8v/rbljjO7Yl+a21dA6fHO
# mWaQjP9qYn/dxUoLkSbiOewZSnFjnXshbcOco6I8+n99lmqQeKZt0uGc+R38ONiU
# 9MalCpaGpL2eGq4EQoO4tYCbIjggtSXlZOz39L9+Y1klD3ouOVd2onGqBooPiRa6
# YacRy5rYDkeagMXQzafQ732D8OE7cQnfXXSYIghh2rBQHm+98eEA3+cxB6STOvdl
# R3jo+KhIq/fecn5ha293qYHLpwmsObvsxsvYgrRyzR30uIUBHoD7G4kqVDmyW9rI
# DVWZeodzOwjmmC3qjeAzLhIp9cAvVCch98isTtoouLGp25ayp0Kiyc8ZQU3ghvkq
# mqMRZjDTu3QyS99je/WZii8bxyGvWbWu3EQ8l1Bx16HSxVXjad5XwdHeMMD9zOZN
# +w2/XU/pnR4ZOC+8z1gFLu8NoFA12u8JJxzVs341Hgi62jbb01+P3nSISRIwggTY
# MIIDwKADAgECAhMzAAAArYAjN2XEWiNqAAAAAACtMA0GCSqGSIb3DQEBCwUAMHwx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1p
# Y3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMB4XDTE2MDkwNzE3NTY1NVoXDTE4
# MDkwNzE3NTY1NVowgbExCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xDDAKBgNVBAsTA0FPQzEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046QzNCMC0w
# RjZBLTQxMTExJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Uw
# ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDtsw3+ZRrdjbFV70cpvihU
# 4xUCwcs6tloenowDcczbSqznjVS/XqH6NQEUIvxck+9Hmpe46mrv0eqnqiW5R1zm
# yWvTtAeaBvLnsjTIixh72HW1eGlFDNdSIoyxEBKpuyZaPr9GUho5YUgLlFp4om6p
# KFxxQa0+g1aDJCyh1anwxb5v3PbvElanMuvpy8epJH5Rm3n6B2u3JgoDMKyotjO6
# RK0aN4OXVyuEkGg0wYB/HlFgydV+Ngqyqfk+tH633oT3m/FPqCYI5himKgJZcczB
# l/gpYnnX1s5Nds//wRUB5pOYYJHTagWJLCABh9wQPTrLdqyDnRAJ/IcNnK5cmf2n
# AgMBAAGjggEbMIIBFzAdBgNVHQ4EFgQUZCG6wC+s+JzHDJTl5x/JCta8/WswHwYD
# VR0jBBgwFoAU1WM6XIoxkPNDe3xGG8UzaFqFbVUwVgYDVR0fBE8wTTBLoEmgR4ZF
# aHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljVGlt
# U3RhUENBXzIwMTAtMDctMDEuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcw
# AoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNUaW1TdGFQ
# Q0FfMjAxMC0wNy0wMS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEF
# BQcDCDANBgkqhkiG9w0BAQsFAAOCAQEAEoVHudSdmMR8ZG61qrhNU4oihtx2lXVd
# Io83dTxe9qVvOo0Zf7vqlDT+IKZqVDZPNFT/AAOVVCbzeWfv8cAY+um3MO13/2l0
# 2jOEEQ6Tr4EYxyVauIXWYKG0a1szo/60hhgk2CGVW+6QFcbZY+7UpNj55HrdS7Jz
# rBa5oMAEFu81dTtQPPlhdtwB6AsfZlAa3apZT0yD2MWHBEIid6jK902lrhqRxccd
# IHwhWHVTr08luuLMuHBw41phXVys42v8jNOsOD9iPyZgw3mmlXX8j/zmLSyUfQLR
# G+7Df6TB2aRGIjfXr3+Yul73d5NdqwuvFFBO6WZBLznqhOMXeflcVKGCA3MwggJb
# AgEBMIHhoYG3pIG0MIGxMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMQwwCgYDVQQLEwNBT0MxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkMzQjAt
# MEY2QS00MTExMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNl
# oiUKAQEwCQYFKw4DAhoFAAMVAJwY5hrfGwOIF10cxscsS5qv4TDZoIHBMIG+pIG7
# MIG4MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMQwwCgYDVQQL
# EwNBT0MxJzAlBgNVBAsTHm5DaXBoZXIgTlRTIEVTTjoyNjY1LTRDM0YtQzVERTEr
# MCkGA1UEAxMiTWljcm9zb2Z0IFRpbWUgU291cmNlIE1hc3RlciBDbG9jazANBgkq
# hkiG9w0BAQUFAAIFAN4Q2S8wIhgPMjAxODAxMjIyMTQyMDdaGA8yMDE4MDEyMzIx
# NDIwN1owdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA3hDZLwIBADAHAgEAAgIjYDAH
# AgEAAgIUezAKAgUA3hIqrwIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZ
# CgMBoAowCAIBAAIDFuNgoQowCAIBAAIDHoSAMA0GCSqGSIb3DQEBBQUAA4IBAQBK
# G3c8tik0Pj7Mav5bdY4ggZG4qXJh8+KOacZbXhYmzGyFK0RnlmqikFcxVU3FmIVZ
# KzvTqaFJOxQ/eLrrhX0BykHPmGNFC5owqog9hfIHZDeC7s09AuGroarQaQLzwdIt
# 59hb7V64ebebCvL2f12vNWpZ/6JW3gfuJguFzcFlwrYqAEeVt5rBhj4J+8PLcbMh
# 5XJ6Y9MumHqZmmd9MfbZD0H3KaFezq1tJImWA28VApyyrBiXGL3LSjzQGY1gFY/u
# 5tDyOtggmlXeHdop8ioOuvbOcVk51cj7Ws6MXVTybYqmhVX0pmEG2Qi7wx213s/9
# M7YyxSv/7Rlf2tZgtEl/MYIC9TCCAvECAQEwgZMwfDELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3Rh
# bXAgUENBIDIwMTACEzMAAACtgCM3ZcRaI2oAAAAAAK0wDQYJYIZIAWUDBAIBBQCg
# ggEyMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQg
# hxN7CraB1kbo9HzvH+jywAhiruX/grb4qjUHhbiWqAgwgeIGCyqGSIb3DQEJEAIM
# MYHSMIHPMIHMMIGxBBScGOYa3xsDiBddHMbHLEuar+Ew2TCBmDCBgKR+MHwxCzAJ
# BgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25k
# MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAArYAjN2XEWiNqAAAAAACtMBYE
# FL8dT4+xZ0vNs6tPRBkeuNDyYxItMA0GCSqGSIb3DQEBCwUABIIBACkaY4R4sKdn
# urwJUh2mbQiWizLAdikZDhNhLgb9R7kAD3qSObz7vusqy3YSPOajNkJjv7/9tHak
# XDxogVroKBmOoYCk9W7jiM4TeYeY5X5tKkd1v/NSukFOSDd+8NkDFBEyDxWcZ6Po
# 5eCFWOJBQbRn/e/kCnfF9Q1RvNLYn26/3xAe1vWqw8oxplEFe1AZQv9RijxnZMor
# t5ZF4vZQb3YKobv0XHwKT1QbD/UyVGXP4k88Qhlau9C7fUMwgf5YLvO4scmDS1o5
# 7FgS+ljY65YX5etP3ItIyEa/zeD0nG58R9QDIoKvj8wF6Q+iUm9sAmH0undvDp3L
# mccyV9NoX0Y=
# SIG # End signature block
