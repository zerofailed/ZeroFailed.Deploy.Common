# <copyright file="configuration.properties.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

$DeploymentConfig = @{}

# Synopsis: When true, the deployment configuration will not be processed.
$SkipReadConfiguration = property ZF_DEPLOY_SKIP_READ_CONFIGURATION $false

# Synopsis: The path to the folder containing  deployment configuration files for the environments.
$ConfigPath = property ZF_DEPLOY_CONFIG_PATH ((Test-Path variable:/here) ? (Join-Path $here "config") : "./config")
