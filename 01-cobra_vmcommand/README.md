#

When we generated the cli via `cobra init` the `RootCmd` variable had a message
of this sort:
```go
var RootCmd = &cobra.Command{
    Use:   "cli",
    Short: "Minikube is a tool for managing local Kubernetes clusters.",
    Long: `Minikube is a CLI tool that provisions and manages single-node Kubernetes
clusters optimized for development workflows.
    `,
    // Uncomment the following line if your bare application
    // has an action associated with it:
    //  Run: func(cmd *cobra.Command, args []string) { },
}
```


## PreRun and PostRun Hooks
From the [cobra repo](https://github.com/spf13/cobra):
It is possible to run functions before or after the main `Run` function of your command. 
The `PersistentPreRun` and `PreRun` functions will be executed before `Run`. 
`PersistentPostRun` and `PostRun` will be executed after `Run`.  
The `Persistent*Run` functions will be inherited by children if they do not declare their own.  
These functions are run in the following order:

- `PersistentPreRun`
- `PreRun`
- `Run`
- `PostRun`
- `PersistentPostRun`
