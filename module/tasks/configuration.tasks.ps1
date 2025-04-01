# <copyright file="configuration.tasks.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

. $PSScriptRoot/configuration.properties.ps1

# Synopsis: Parses the specified environment's configuration, using the Corvus.Deployment conventions, from the specified path.
task readConfiguration setupModules,{

    $script:deploymentConfig = Read-CorvusDeploymentConfig `
                                    -ConfigPath $ConfigPath  `
                                    -EnvironmentConfigName $EnvironmentConfigName
    
    $script:parametersWithValues = @{}
    $script:deploymentConfig.Keys |
        Where-Object {
            !([string]::IsNullOrEmpty($script:deploymentConfig[$_])) -and $_ -notin $configKeysToIgnore
        } |
        ForEach-Object {
            $script:parametersWithValues += @{ $_ = $script:deploymentConfig[$_]
        }
    }
    $script:parametersWithValues | Format-Table | out-string | Write-Host
}
