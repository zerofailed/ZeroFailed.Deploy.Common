# <copyright file="configuration.tasks.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

. $PSScriptRoot/configuration.properties.ps1

# Synopsis: Parses the specified environment's configuration, using the Corvus.Deployment conventions, from the specified path.
task readConfiguration -If { !$SkipReadConfiguration } setupModules,{

    $script:DeploymentConfig = Read-CorvusDeploymentConfig `
                                    -ConfigPath $ConfigPath  `
                                    -EnvironmentConfigName $EnvironmentConfigName
}
