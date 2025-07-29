# ZeroFailed.Deploy.Common - Reference Sheet


<!-- START_GENERATED_HELP -->

## Configuration

This group contains functionality for interacting with configuration used as part of a deployment process (e.g. environment-specific configuration settings).

### Properties

| Name | Default Value | ENV Override | Description |
|------|---------------|--------------|-------------|
| `EnvironmentConfigName` | N/A | `ZF_DEPLOY_ENVIRONMENT_CONFIG_NAME` | Use this to override the name of the file containing the configuration settings for the target environment, when it isn't the same as the environment name. |
| `EnvironmentConfigPath` | N/A | `ZF_DEPLOY_ENVIRONMENT_CONFIG_PATH` | The path to the folder containing  deployment configuration files for the environments. |
| `EnvironmentName` | N/A | `ZF_DEPLOY_ENVIRONMENT_NAME` | The name of the environment that is the target of the deployment. Typically this matches the filename containing the configuration settings for this environment. |
| `SkipReadConfiguration` | $false | `ZF_DEPLOY_SKIP_READ_CONFIGURATION` | When true, the deployment configuration will not be processed. |

### Tasks

| Name | Description |
|------|-------------|
| `readConfiguration` | Parses the specified environment's configuration, using the Corvus.Deployment conventions, from the specified path. |

## Deploy.process

This group contains properties affecting the behaviour of the logical deployment process.

### Properties

| Name | Default Value | ENV Override | Description |
|------|---------------|--------------|-------------|
| `SkipDeploy` | $false | `ZF_DEPLOY_SKIP_DEPLOY` | When true, the 'Deploy' stage of the deployment process will not be run |
| `SkipInit` | $false | `ZF_DEPLOY_SKIP_INIT` | When true, the 'Init' stage of the deployment process will not be run |
| `SkipProvision` | $false | `ZF_DEPLOY_SKIP_PROVISION` | When true, the 'Provision' stage of the deployment process will not be run |
| `SkipTest` | $false | `ZF_DEPLOY_SKIP_TEST` | When true, the 'Test' stage of the deployment process will not be run |


<!-- END_GENERATED_HELP -->
