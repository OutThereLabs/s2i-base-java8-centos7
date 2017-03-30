# Source to image base Java 8 Centos 7

Source to image base for building Java 8 s2i images on Centos

## Installation

Pull from [Docker Hub](https://hub.docker.com/r/outtherelabs/s2i-base-java8-centos7/)

```shell
$ oc import-image outtherelabs/s2i-base-java8-centos7
```

Or build on your OpenShift cluster

```shell
$ oc process -f https://raw.githubusercontent.com/OutThereLabs/s2i-base-java8-centos7/master/template.yaml | oc create -f -
``