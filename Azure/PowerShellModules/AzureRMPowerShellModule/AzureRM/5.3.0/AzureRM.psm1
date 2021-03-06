#  
# Module manifest for module 'AzureRM'  
#  
# Generated by: Microsoft Corporation  
#  
# Generated on: 02/09/2018 06:45:43
#  

$PSDefaultParameterValues.Clear()
Set-StrictMode -Version Latest

Import-Module AzureRM.Profile -RequiredVersion 4.3.0
Import-Module Azure.Storage -RequiredVersion 4.1.1
Import-Module AzureRM.AnalysisServices -RequiredVersion 0.6.3
Import-Module Azure.AnalysisServices -RequiredVersion 0.5.0
Import-Module AzureRM.ApiManagement -RequiredVersion 5.1.0
Import-Module AzureRM.ApplicationInsights -RequiredVersion 0.1.1
Import-Module AzureRM.Automation -RequiredVersion 4.2.0
Import-Module AzureRM.Backup -RequiredVersion 4.0.2
Import-Module AzureRM.Batch -RequiredVersion 4.0.4
Import-Module AzureRM.Billing -RequiredVersion 0.14.0
Import-Module AzureRM.Cdn -RequiredVersion 4.1.0
Import-Module AzureRM.CognitiveServices -RequiredVersion 0.9.1
Import-Module AzureRM.Compute -RequiredVersion 4.3.0
Import-Module AzureRM.Consumption -RequiredVersion 0.3.0
Import-Module AzureRM.ContainerInstance -RequiredVersion 0.2.2
Import-Module AzureRM.ContainerRegistry -RequiredVersion 1.0.2
Import-Module AzureRM.DataFactories -RequiredVersion 4.1.0
Import-Module AzureRM.DataFactoryV2 -RequiredVersion 0.5.0
Import-Module AzureRM.DataLakeAnalytics -RequiredVersion 4.2.1
Import-Module AzureRM.DataLakeStore -RequiredVersion 5.1.1
Import-Module AzureRM.DevTestLabs -RequiredVersion 4.0.1
Import-Module AzureRM.Dns -RequiredVersion 4.0.1
Import-Module AzureRM.EventGrid -RequiredVersion 0.3.1
Import-Module AzureRM.EventHub -RequiredVersion 0.6.0
Import-Module AzureRM.HDInsight -RequiredVersion 4.0.2
Import-Module AzureRM.Insights -RequiredVersion 4.0.2
Import-Module AzureRM.IotHub -RequiredVersion 3.1.0
Import-Module AzureRM.KeyVault -RequiredVersion 4.1.1
Import-Module AzureRM.LogicApp -RequiredVersion 4.0.1
Import-Module AzureRM.MachineLearning -RequiredVersion 0.17.0
Import-Module AzureRM.MachineLearningCompute -RequiredVersion 0.4.0
Import-Module AzureRM.MarketplaceOrdering -RequiredVersion 0.2.0
Import-Module AzureRM.Media -RequiredVersion 0.9.0
Import-Module AzureRM.Network -RequiredVersion 5.1.1
Import-Module AzureRM.NotificationHubs -RequiredVersion 4.1.0
Import-Module AzureRM.OperationalInsights -RequiredVersion 4.2.0
Import-Module AzureRM.PowerBIEmbedded -RequiredVersion 4.1.2
Import-Module AzureRM.RecoveryServices -RequiredVersion 4.0.2
Import-Module AzureRM.RecoveryServices.Backup -RequiredVersion 4.1.0
Import-Module AzureRM.RecoveryServices.SiteRecovery -RequiredVersion 0.2.1
Import-Module AzureRM.RedisCache -RequiredVersion 4.1.0
Import-Module AzureRM.Relay -RequiredVersion 0.3.1
Import-Module AzureRM.Resources -RequiredVersion 5.3.0
Import-Module AzureRM.Scheduler -RequiredVersion 0.16.1
Import-Module AzureRM.ServerManagement -RequiredVersion 4.1.0
Import-Module AzureRM.ServiceBus -RequiredVersion 0.6.1
Import-Module AzureRM.ServiceFabric -RequiredVersion 0.3.1
Import-Module AzureRM.SiteRecovery -RequiredVersion 5.0.4
Import-Module AzureRM.Sql -RequiredVersion 4.2.0
Import-Module AzureRM.Storage -RequiredVersion 4.2.0
Import-Module AzureRM.StreamAnalytics -RequiredVersion 4.0.2
Import-Module AzureRM.Tags -RequiredVersion 4.0.0
Import-Module AzureRM.TrafficManager -RequiredVersion 4.0.1
Import-Module AzureRM.UsageAggregates -RequiredVersion 4.0.1
Import-Module AzureRM.Websites -RequiredVersion 4.1.0


if (Test-Path -Path "$PSScriptRoot\StartupScripts")
{
    Get-ChildItem "$PSScriptRoot\StartupScripts" | ForEach-Object {
        . $_.FullName
    }
}

if ($PSVersionTable.PSVersion.Major -ge 5)
{
    $completerCommands = @()
    
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
else
{
    
}

$FilteredCommands = @()

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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAogo0BSy8iY4Q2
# Ztdi/NvZyBms/iwsG0KTlrSxfjK3sqCCDYMwggYBMIID6aADAgECAhMzAAAAxOmJ
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
# CisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCBm9aGX
# yikeJP09h3r7vAllf3/Iy0pd4jyfzKahV+PRoDBgBgorBgEEAYI3AgEMMVIwUKA2
# gDQATQBpAGMAcgBvAHMAbwBmAHQAIABBAHoAdQByAGUAIABQAG8AdwBlAHIAUwBo
# AGUAbABsoRaAFGh0dHA6Ly9Db2RlU2lnbkluZm8gMA0GCSqGSIb3DQEBAQUABIIB
# AAea7B1FrQKoMqmwDR26LrxVjyvFL0w6grkmdjY21pZm45M8ftG8BJGbgV30eJa8
# Y36oEKY/a2Ucpb4KuAEx3Hv9F3x8NEltchBijd9APXicMuUiXYL2EY+ZwH+7eRzA
# RKmItZTK2n9PFMzEzhvdVH+0qCtW0lVnUOdhiLyfiZZDTl8Z69sLLsbeV0H3U+YG
# 8+uMnsxFbCzhzbKrL/u+F52BmYCWYH08a7yuVL+Lezm8snlSKq6AhPKbj1zP5CTz
# 0OV2ZCo1v1WlspC3/1rMm8hXZgrQl+iR+9eAVyK/94NkYFkfOgypaxaZ71uSc2/7
# 4pbllE/fmakJo/wDqcI5P3+hghNDMIITPwYKKwYBBAGCNwMDATGCEy8wghMrBgkq
# hkiG9w0BBwKgghMcMIITGAIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBOwYLKoZIhvcN
# AQkQAQSgggEqBIIBJjCCASICAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEF
# AAQgovon/RVJV3vYbn+ofvwYoac6oDGfJFq7Q6hFwFk1M40CBlp7Wf7r6xgTMjAx
# ODAyMDkwNjQ2NDMuNjYxWjAHAgEBgAIB9KCBt6SBtDCBsTELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEMMAoGA1UECxMDQU9DMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjo5NkZGLTRCQzUtQTdEQzElMCMGA1UEAxMcTWljcm9zb2Z0
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
# MIIDwKADAgECAhMzAAAAtotHQ7LMrR8EAAAAAAC2MA0GCSqGSIb3DQEBCwUAMHwx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1p
# Y3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMB4XDTE3MTAwMjIzMDA1MloXDTE5
# MDEwMjIzMDA1MlowgbExCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xDDAKBgNVBAsTA0FPQzEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046OTZGRi00
# QkM1LUE3REMxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Uw
# ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDYiWcXSEsIt0QbkxHDOs9u
# QUCmqFxiY7JbI0QzNfWe3f3AcsuLSWwweyEAZZKWKUSnDHtTP1lOIHuWbrJYEO+u
# PRGHfDVmKm+1/K/QwkpyrT/OEOPXEAnF5RLjX85g6Nv4akltPyWgaVGno9Ys/EPh
# QglKND1USEokv3zh3aZnC95ssVK4x8jSEZsmdP6cd2AaZmMsDD/YAQTfvnkzCsnq
# P7ulFHY1hxLZd10yFvHu8vdtYF0ofSdmaR1JF+SV7fgO/rhnm/+8uu0d16Twewmw
# KARqSnMRJNXzyjUTbFbFxhxw1hO1s0YGtCyqSUTnmJUPFbvTpS15CAGAHw2mTMEx
# AgMBAAGjggEbMIIBFzAdBgNVHQ4EFgQU823CkAEnINqPMxzAX2hq34EDhdAwHwYD
# VR0jBBgwFoAU1WM6XIoxkPNDe3xGG8UzaFqFbVUwVgYDVR0fBE8wTTBLoEmgR4ZF
# aHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljVGlt
# U3RhUENBXzIwMTAtMDctMDEuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcw
# AoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNUaW1TdGFQ
# Q0FfMjAxMC0wNy0wMS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEF
# BQcDCDANBgkqhkiG9w0BAQsFAAOCAQEAL9fV6r6YjngcusMqQ6RNTMxlMyhHFeU6
# lt4W5dc6uz08KkDGIyK4QNnY/FFkUhE4g8bvSvnCCCmZgS6WhWUynEXg7Kgdhppr
# Kd24sQT/t9/5SijbEPASLMyX+dm0qihiyLAqg+ul9dDoCuHqUkLNrEQHKRnuXjGW
# P/h1t+XY7kR8zI/ZRwzWwOjrEI8fyo2wXh+ojmp7qzbk9fMzDHXfKS9kyJ7d230G
# wxnWNJNpDwdaS6BUlcAeeU2RaiiXp9VGVHSbuWn1HgM6nGY6t2jrzCfCA4sa6EEF
# hWGSSZKSAflzZPmtDP7d3dK/H2K+utKHVxJTQAeE20zDrlq3tqxkSKGCA3MwggJb
# AgEBMIHhoYG3pIG0MIGxMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMQwwCgYDVQQLEwNBT0MxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjk2RkYt
# NEJDNS1BN0RDMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNl
# oiUKAQEwCQYFKw4DAhoFAAMVAP8WK+8VXLPVtZYrvghLIfxNdAABoIHBMIG+pIG7
# MIG4MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMQwwCgYDVQQL
# EwNBT0MxJzAlBgNVBAsTHm5DaXBoZXIgTlRTIEVTTjoyNjY1LTRDM0YtQzVERTEr
# MCkGA1UEAxMiTWljcm9zb2Z0IFRpbWUgU291cmNlIE1hc3RlciBDbG9jazANBgkq
# hkiG9w0BAQUFAAIFAN4nJ30wIhgPMjAxODAyMDgxOTQ2MDVaGA8yMDE4MDIwOTE5
# NDYwNVowdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA3icnfQIBADAHAgEAAgII2DAH
# AgEAAgIWBTAKAgUA3ih4/QIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZ
# CgMBoAowCAIBAAIDFuNgoQowCAIBAAIDHoSAMA0GCSqGSIb3DQEBBQUAA4IBAQAU
# d1JJvlcWlk7bqEq+nqELUEOixKgk85u3ojBZsZEpewePcfG61aHs9ICXZ8Akj6SS
# HSXuuKTavjAzya/F8YOJas/Fz6zyQs0T6rU0CDYPnjsOwULgdjG+LmazTmg5f3rj
# ZgaEpVCRtlUC2+uZGkpYOHb5NzutsOfyGmMwk/uRmfEOHqczrLO1Gxq6WQGiAr5e
# Y+WyQ6XMNi46p/snUiQFcFdqs2QQJgnDj7+kroEEHHYp40i0rqVHkXjjWwS0l98/
# PMT8FdIxFBsZlKzVejS+H9jLlG7WULe3Y5DhH5dRVCYvbuFUpcvkPRWMAi9ONKkW
# Nr0df039HTocTL0pN42hMYIC9TCCAvECAQEwgZMwfDELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3Rh
# bXAgUENBIDIwMTACEzMAAAC2i0dDssytHwQAAAAAALYwDQYJYIZIAWUDBAIBBQCg
# ggEyMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQg
# 1p4Wylv/EzH08G5koywerbLb5t4k8+POWwvJt8waHykwgeIGCyqGSIb3DQEJEAIM
# MYHSMIHPMIHMMIGxBBT/FivvFVyz1bWWK74ISyH8TXQAATCBmDCBgKR+MHwxCzAJ
# BgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25k
# MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAAtotHQ7LMrR8EAAAAAAC2MBYE
# FKDMDcGZE2vDvQKjxGjAYYxeyqmTMA0GCSqGSIb3DQEBCwUABIIBALj8UuGQedWm
# z5yYwBgHBCNFyBrvoiB9ma4Xgg12a841lxn4qHVqKV1ly/an17Pq0L6miH1EGEMj
# rce2AP1r839KwxlTlcCkP4T1iXQYBQJuJlc1Z+ioQZIASZNFCQNOZX2B2por41/C
# TYf1C/KeqNAwhldbn1R2dV8Jup59jMSY013u1wPLBOzxRwZNNJIKVr1Pv7upcuRJ
# nTK9LQGkjxEyz5Rv+vCk+P0WE0u3VpQWbMJKH02Sf4J4yphKRle/07tDO37li/GC
# 3QwoYLsggi8WIcrQDoF+2ViylLq9dcWAz3P2u03ir9RxW1Hf4WqleDGmigHtUxHt
# zCfa7bPmT+E=
# SIG # End signature block
