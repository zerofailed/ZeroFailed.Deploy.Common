# <copyright file="deploy.process.ps1" company="Endjin Limited">
# Copyright (c) Endjin Limited. All rights reserved.
# </copyright>

. $PSScriptRoot/deploy.process.properties.ps1

# Define a logical deployment process that extensions can attach to

task PreInit
task InitCore
task PostInit
# Synopsis: Runs steps to prepare the deployment process.
task Init -If {!$SkipInit} PreInit,InitCore,PostInit

task PreProvision
task ProvisionCore
task PostProvision
# Synopsis: Runs steps to provision any infrastructure components.
task Provision -If {!$SkipProvision} Init,PreProvision,ProvisionCore,PostProvision

task PreDeploy
task DeployCore
task PostDeploy
# Synopsis: Runs steps to deploy any application or other workload components.
task Deploy -If {!$SkipDeploy} Init,Provision,PreDeploy,DeployCore,PostDeploy

task PreTest
task TestCore
task PostTest
# Synopsis: Runs steps to perform any post-deployment testing.
task Test -If {!$SkipTest} Init,PreTest,TestCore,PostTest

task RunFirst
task RunLast

# Synopsis: Run the full deployment process
task FullDeployment RunFirst,
                Init,
                Provision,
                Deploy,
                Test,
                RunLast
