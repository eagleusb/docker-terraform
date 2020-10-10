# docker-terraform

Terraform tooling mainly for CI.

- [tflint](https://github.com/terraform-linters/tflint) version v0.20.2
- [terraform](https://github.com/hashicorp/terraform) version v0.13.4

## build

```shell
$ export DOCKER_BUILDKIT=1
$ docker image build --pull --rm --tag docker.pkg.github.com/eagleusb/docker-terraform/terraform:latest .
$ docker container run docker.pkg.github.com/eagleusb/docker-terraform/terraform:latest terraform version
Terraform v0.13.4
```
