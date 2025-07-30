# <copyright file="deploy.process.properties.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

# Synopsis: When true, the 'Init' stage of the deployment process will not be run
$SkipInit = [Convert]::ToBoolean((property ZF_DEPLOY_SKIP_INIT $false))

# Synopsis: When true, the 'Provision' stage of the deployment process will not be run
$SkipProvision = [Convert]::ToBoolean((property ZF_DEPLOY_SKIP_PROVISION $false))

# Synopsis: When true, the 'Deploy' stage of the deployment process will not be run
$SkipDeploy = [Convert]::ToBoolean((property ZF_DEPLOY_SKIP_DEPLOY $false))

# Synopsis: When true, the 'Test' stage of the deployment process will not be run
$SkipTest = [Convert]::ToBoolean((property ZF_DEPLOY_SKIP_TEST $false))
