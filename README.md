## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/ubi-minimal-java/blob/1.8/Dockerfile">1.8</a>
- <a href="https://github.com/ngacareer/ubi-minimal-java/blob/blob/main/Dockerfile">latest (11)</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/ubi-minimal-java/issues">https://github.com/ngacareer/ubi-minimal-java/issues</a>

## What is ubi-minimal-java ? 

The image is created from <a href="https://catalog.redhat.com/software/containers/ubi8/ubi-minimal/5c359a62bed8bd75a2c3fba8?container-tabs=overview&gti-tabs=red-hat-login">The Universal Base Image Minimal</a> by Red Hat. UBI can take advantage of Red hat Container Certification and Red Hat OpenShift Operator Certification for continuous verification of software deployed on a Red Hat platform like <a href="https://www.openshift.com/">OpenShift</a>, It has been integrated openssl and jdk. we can use openssl and run java application.

Image supports version of Java : 1.8.0 and 11 (lastest)

## How to use this image
- On Docker 
```
docker run -itd --name ubi-minimal-java ngacareer/ubi-minimal-java
docker exec -it ubi-minimal-java bin/sh
# java -version
# javac -version
 ```
- On Kubernetes
 ```
kubectl run ubi-minimal-java --image=ngacareer/ubi-minimal-java
kubectl exec -it pod/ubi-minimal-java bin/sh
# java -version
# javac -version
 ```
- On OpenShift
 ```
oc new-app --docker-image=ngacareer/ubi-minimal-java --name=ubi-minimal-java
oc exec -it $(oc get pod -l app=ubi-minimal-java -o jsonpath="{.items[0].metadata.name}") bin/sh
$ java -version
$ javac -version
 ```
## License

Copyright © 2021 Ngacareer

All contents licensed under the [MIT License](LICENSE)
