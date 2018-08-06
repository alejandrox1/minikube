# Start a Host VM

For this to work you'll need to have `virtualbox` and `docker-machine`
installed. For Debian, you can use the following scripts: 
* [install docker-machine](https://github.com/alejandrox1/dev_env/blob/master/docker/docker-machine_install.sh)

* [install virutalbox](https://github.com/alejandrox1/dev_env/blob/master/vm-orchestration/virtualbox_install.sh)


This subdirectory shows a direct test of the new command added to the cli
related to [starting a local K8s cluster](../cli/cluster).

Run as follows:
```
$ go run main.go
```

If you get the following:
```
 $ go run main.go
2018/08/06 10:01:38 Error getting host: Error getting new host: Driver "virtualbox" not found. Do you have the plugin binary "docker-machine" accessible in your PATH?
panic: Error getting host: Error getting new host: Driver "virtualbox" not found. Do you have the plugin binary "docker-machine" accessible in your PATH?

goroutine 1 [running]:
log.Panicf(0x106b2d9, 0x16, 0xc4201b9f48, 0x1, 0x1)
	/usr/lib/go-1.10/src/log/log.go:333 +0xda
main.main()
	/home/user/go/src/github.com/alejandrox1/my-minikube/01-cobra_vmcommand/local_tests/main.go:153 +0x2da
exit status 2
```

Then you'll need to install
[docker-machine](https://docs.docker.com/machine/install-machine/).


Otherwise, you should see something like this:
```
(mymachine) Trying to access option swarm-master which does not exist
(mymachine) THIS ***WILL*** CAUSE UNEXPECTED BEHAVIOR
(mymachine) Type assertion did not go smoothly to bool for key swarm-master
(mymachine) Trying to access option swarm-host which does not exist
(mymachine) THIS ***WILL*** CAUSE UNEXPECTED BEHAVIOR
(mymachine) Type assertion did not go smoothly to string for key swarm-host
Creating CA: /home/user/go/src/testsing_grounds/machine_tests/start_cluster/minikube/certs/ca.pem
(mymachine) Trying to access option swarm-discovery which does not exist
(mymachine) THIS ***WILL*** CAUSE UNEXPECTED BEHAVIOR
(mymachine) Type assertion did not go smoothly to string for key swarm-discovery
(mymachine) Type assertion did not go smoothly to bool for key virtualbox-host-dns-resolver
(mymachine) Type assertion did not go smoothly to bool for key virtualbox-hostonly-no-dhcp
(mymachine) Type assertion did not go smoothly to bool for key virtualbox-no-share
(mymachine) Type assertion did not go smoothly to bool for key virtualbox-no-dns-proxy
(mymachine) Type assertion did not go smoothly to bool for key virtualbox-no-vtx-check
Creating client certificate: /home/user/go/src/testsing_grounds/machine_tests/start_cluster/minikube/certs/cert.pem
Running pre-create checks...
(mymachine) Image cache directory does not exist, creating it at /home/go/src/testsing_grounds/machine_tests/start_cluster/minikube/cache...
Creating machine...
(mymachine) Downloading /home/go/src/testsing_grounds/machine_tests/start_cluster/minikube/cache/boot2docker.iso from https://storage.googleapis.com/tinykube/boot2docker.iso...
(mymachine) 0%....10%....20%....30%....40%....50%....60%....70%....80%....90%....100%
(mymachine) Creating VirtualBox VM...
(mymachine) Creating SSH key...
(mymachine) Starting the VM...
(mymachine) Check network to re-create if needed...
(mymachine) Waiting for an IP...
Waiting for machine to be running, this may take a few minutes...
Detecting operating system of created instance...
Waiting for SSH to be available...
Detecting the provisioner...
Provisioning with boot2docker...
Copying certs to the local machine directory...
Copying certs to the remote machine...
Setting Docker configuration on the remote daemon...
Checking connection to Docker...
Docker is up and running!
Creating localkube container...
Localkube image 'redspreadapps/localkube:latest' not found, pulling now:
latest: Pulling from redspreadapps/localkube

2aec2af31a: Pull complete
1b7340007c: Pull complete
60a12f1875: Pull complete
706e2b2f31: Pull complete
a0d2295286: Pull complete
3f19949486: Pull complete
ed561f84bb: Pull complete
ef3b693704: Pull complete
37a78e1c91: Pull complete
046cb4263e: Pull complete
9feeb13c1e: Pull complete
1fb7afa1f7: Pull complete
03dca466f4: Pull complete
d54e7ba13a: Pull complete
f8171c136d: Pull complete
71711bff45: Pull complete
9d457aec14: Pull complete
Digest: sha256:b2928a42df168ab823bbf9314fb85fab23ec14aed1
Status: Downloaded newer image for redspreadapps/localkube:latest
Creating localkube container...
Starting localkube container...
2018/07/17 15:33:13 Kubernetes is available at http://152.132.9.2:8080.
2018/07/17 15:33:13 Run this command to use the cluster:
2018/07/17 15:33:13 kubectl config set-cluster localkube --insecure-skip-tls-verify=true --server=http://152.132.9.2:8080
```
