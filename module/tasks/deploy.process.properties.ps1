# <copyright file="deploy.process.properties.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

# Synopsis: When true, the 'Init' stage of the deployment process will not be run
$SkipInit = [bool]([string](property ZF_DEPLOY_SKIP_INIT $false) -match '^(1|true|yes)$')

# Synopsis: When true, the 'Provision' stage of the deployment process will not be run
$SkipProvision = [bool]([string](property ZF_DEPLOY_SKIP_PROVISION $false) -match '^(1|true|yes)$')

# Synopsis: When true, the 'Deploy' stage of the deployment process will not be run
$SkipDeploy = [bool]([string](property ZF_DEPLOY_SKIP_DEPLOY $false) -match '^(1|true|yes)$')

# Synopsis: When true, the 'Test' stage of the deployment process will not be run
$SkipTest = [bool]([string](property ZF_DEPLOY_SKIP_TEST $false) -match '^(1|true|yes)$')
