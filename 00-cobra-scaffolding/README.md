# Cobra Scaffold
From the [cobra repo](https://github.com/spf13/cobra):

Cobra is built on a structure of commands, arguments, and flags. 

**Commands** represent actions, **arguments** represent things, and **flags**
are modifiers for those actions.

The best applications will read like sentences when used.
Users will know how to use the application because they will natively
understand how to use it.

The pattern to follow is `APPNAME VERB NOUN --ADJECTIVE` or 
`APPNAME COMMAND ARG --FLAG`


## Getting Started
To install cobra, run:
```
go get -u github.com/spf13/cobra/cobra
```


Typically a cobra-based app will have the following organization:
```
▾ appName/
    ▾ cmd/
        add.go
        your.go
        commands.go
        here.go
    main.go
```

Usually, the main go file is pretty bare,
```go
package main

import (
    "fmt"
    "os"

    "{pathToYourApp}/cmd"
)

func main() {
    cmd.Execute()
}
```


We will use cobra's generator to add a cli
```
cobra init github.com/alejandrox1/my-minikube/00-cobra-scaffolding/cli
```

Clean out the root command file and give it a try by running `main.go`:
```
 $ go run main.go 
Minikube is a CLI tool that provisions and manages single-node Kubernetes
clusters optimized for development workflows.

```
