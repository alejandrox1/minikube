# Minikube From Scratch 

## History
### Third Commit: `00-cobra-scaffolding`
```
commit b2b63b5e2ff54a1ae48e0a1fb2cbfd586e672388
Author: dlorenc <dlorenc@google.com>
Date:   Mon Apr 18 10:40:41 2016 -0700

    Initial commit of CLI using cobra scaffolding.

    This commit adds a root CLI with no commands yet. This was generated
    using "cobra init", with only a few modifications:

    - License fixes.
    - Removal of viper config loading.
    - Help text modifications.
```

The important parts are in the [`cmd`](00-cobra-scaffolding/cli/cmd/) subdir. In this subdirectory we
hae the infrastructure imposed by `spf13/cobra` and the package implements a
simle entrypoint giving information about the package:

```
 $ go run main.go 
Minikube is a CLI tool that provisions and manages single-node Kubernetes
clusters optimized for development workflows.
```


### Fourth Commit: `01-cobra_vmcommand`
```
commit e8a60b9cdf2323d242a5acb223cebbbb964aae4c
Author: dlorenc <dlorenc@google.com>
Date:   Tue Apr 19 11:21:57 2016 -0700

    Initial prototype using libmachine and localkubectrl.

    go run cli/main.go start will bring up a VM with localkube
    running and print out instructions on how to use it.

    Lots to do still:
    - This is not very safe to re-run, but it will attempt to reuse a VM
    if it already exists
    - Commands for stopping/restarting/deleting
```
