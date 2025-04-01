# <copyright file="configuration.properties.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

$ConfigPath = property ZF_DEPLOY_CONFIG_PATH ((Test-Path variable:/here) ? (Join-Path $here "config") : "./config")
