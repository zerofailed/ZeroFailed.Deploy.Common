# ZeroFailed.Deploy.Common

A [ZeroFailed](https://github.com/zerofailed/ZeroFailed) extension that provides fundamental building blocks for operational or deployment processes.

## Overview

| Component Type | Included | Notes                                                                                                                                              |
| -------------- | -------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tasks          | yes      |                                                                                                                                                    |
| Functions      | no       |                                                                                                                                                    |
| Processes      | yes      | Includes a generic logical deployment process designed to be integrated with by other extensions that provide the actual deployment functionality. |

For more information about the different component types, please refer to the [ZeroFailed documentation](https://github.com/zerofailed/ZeroFailed/blob/main/README.md#extensions).

This extension consists of the following feature groups, refer to the [HELP page](./HELP.md) for more details.

- Parses the environment-specific deployment configuration (see [here](https://github.com/corvus-dotnet/Corvus.deployment#configuration-tooling) for more details)

The diagram below shows the features provided by this extension and when they run as part of the deployment process [detailed below](#processes).

```mermaid
kanban
    init
        readConfig[Parse deploy config files]
    provision
    deploy
    test
```

## Pre-Requisites

Using this extension requires no other components to be already installed.

## Dependencies

| Extension                                                                          | Reference Type | Version |
| ---------------------------------------------------------------------------------- | -------------- | ------- |
| [ZeroFailed.DevOps.Common](https://github.com/zerofailed/ZeroFailed.DevOps.Common) | git            | `main`  |

## Processes

### deploy.process.ps1

This is a generic process designed to support deployment-related scenarios and is typically referenced by other other domain-specific ZeroFailed.Deploy.* extensions.

To use this process ensure that you reference to this extension includes the `Process` property as below:

```
$zeroFailedExtensions = @(
    @{
        Name = "ZeroFailed.Deploy.Common"
        Process = "tasks/deploy.process.ps1"
    }
)
```

***NOTE**: If using another `ZeroFailed.Deploy.*` extension, then typically these reference this process as part of their dependencies, in which case the above will be unnecessary.*

This models an opinionated abstract build process that is intended to be generic enough to support a variety of different technology stacks and toolchains, as can be seen in the diagram below.

```mermaid
graph LR
    init
    provision
    deploy
    test

    init --> provision
    provision --> deploy
    deploy --> test
```

Each of the above stages has `Pre` & `Post` tasks which are intended as extensibility points that can be used to customise the process as required. (e.g. `PreBuild`, `PostBuild`, `PrePackage` etc.)

For convenience, it also provides `RunFirst` & `RunLast` tasks that can be used when necessary.

Typically, these extensibility tasks will be referenced at the end of the script that runs your automated process. For example, below we see a custom task called `MyCustomPackagingTask` that is set as a dependency of the `PrePackage` task provided by this extension; this has the effect of running the custom task before other packaging-related tasks.

```
task PreProvision MyCustomProvisioningTask

task MyCustomProvisioningTask {
    # Do something special
}
```