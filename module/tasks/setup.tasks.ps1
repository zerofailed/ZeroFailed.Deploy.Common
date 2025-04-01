# <copyright file="setup.tasks.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

. $PSScriptRoot/setup.properties.ps1

# Synopsis: Sets up the Azure context for the deployment
task connectAzure -If { !$SkipConnectAzure } readConfiguration,{
    Connect-CorvusAzure `
        -SubscriptionId $deploymentConfig.azureSubscriptionId `
        -AadTenantId $deploymentConfig.AzureTenantId `
        -SkipAzPowerShell:$SkipConnectAzurePowerShell `
        -SkipAzureCli:$SkipConnectAzureCli
}
