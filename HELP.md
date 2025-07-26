# ZeroFailed.Deploy.Common - Reference Sheet

<!-- START_GENERATED_HELP -->

## Configuration

This group contains functionality for interacting with configuration used as part of a deployment process (e.g. environment-specific configuration settings).

### Properties

| Name                    | Default Value | ENV Override                        | Description                                                                             |
| ----------------------- | ------------- | ----------------------------------- | --------------------------------------------------------------------------------------- |
| `ConfigPath`            | "./config"    | `ZF_DEPLOY_CONFIG_PATH`             | The path to the folder containing  deployment configuration files for the environments. |
| `SkipReadConfiguration` | $false        | `ZF_DEPLOY_SKIP_READ_CONFIGURATION` | When true, the deployment configuration will not be processed.                          |

### Tasks

| Name                | Description                                                                                                         |
| ------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `readConfiguration` | Parses the specified environment's configuration, using the Corvus.Deployment conventions, from the specified path. |


<!-- END_GENERATED_HELP -->
