# <copyright file="setup.properties.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

# Synopsis: When true, configuring the Azure connection context will be skipped. Default is false.
$SkipConnectAzure = property ZF_DEPLOY_SKIP_CONNECTAZURE $false

# Synopsis: When set to true, configuring the Azure PowerShell connection context will be skipped. Default is false.
$SkipConnectAzurePowerShell = property ZF_DEPLOY_SKIP_CONNECTAZURE_PS $false

# Synopsis: When set to true, configuring the Azure CLI connection context will be skipped. Default is true.
$SkipConnectAzureCli = property ZF_DEPLOY_SKIP_CONNECTAZURE_CLI $false

# Synopsis: A hashtable of PowerShell modules to install and import. The keys are the module names and the values are hashtables with the following properties: version, repository.
# $RequiredPowerShellModules = property ZF_REQUIRED_PS_MODULES @{
#     "Corvus.Deployment" = @{
#         version = '[0.4.14,1.0)'
#         repository = 'PSGallery'
#     }
# }