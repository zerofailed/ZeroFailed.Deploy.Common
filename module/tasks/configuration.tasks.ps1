# <copyright file="configuration.tasks.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

. $PSScriptRoot/configuration.properties.ps1

task ensureCorvusDeploymentModule -If { !$SkipReadConfiguration } -Before setupModules {

    if (!$RequiredPowerShellModules.ContainsKey('Corvus.Deployment')) {
        $script:RequiredPowerShellModules += @{
            'Corvus.Deployment' = @{
                version = '[0.4.14,1.0)'
                repository = 'PSGallery'
            }
        }
    }
}

# Synopsis: Parses the specified environment's configuration, using the Corvus.Deployment conventions, from the specified path.
task readConfiguration -If { !$SkipReadConfiguration } -After InitCore ensureCorvusDeploymentModule,setupModules,{

    $script:DeploymentConfig = Read-CorvusDeploymentConfig `
                                    -ConfigPath $EnvironmentConfigPath  `
                                    -EnvironmentConfigName $EnvironmentConfigName
}
