# <copyright file="configuration.properties.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

$DeploymentConfig = @{}

# Synopsis: When true, the deployment configuration will not be processed.
$SkipReadConfiguration = [Convert]::ToBoolean((property ZF_DEPLOY_SKIP_READ_CONFIGURATION $false))

# Synopsis: The path to the folder containing  deployment configuration files for the environments.
$EnvironmentConfigPath ??= property ZF_DEPLOY_ENVIRONMENT_CONFIG_PATH ((Test-Path variable:/here) ? (Join-Path $here "config") : "./config")

# Synopsis: The name of the environment that is the target of the deployment. Typically this matches the filename containing the configuration settings for this environment.
$EnvironmentName ??= property ZF_DEPLOY_ENVIRONMENT_NAME ''

# Synopsis: Use this to override the name of the file containing the configuration settings for the target environment, when it isn't the same as the environment name.
$EnvironmentConfigName ??= property ZF_DEPLOY_ENVIRONMENT_CONFIG_NAME $EnvironmentName
