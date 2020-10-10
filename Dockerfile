# syntax=docker/dockerfile:latest
FROM alpine:latest

# TODO: update to open containers labels
LABEL org.label-schema.name="docker-terraform" \
  org.label-schema.description="terraform and tflint on alpine" \
  org.label-schema.vcs-ref="latest" \
  org.label-schema.vcs-url="https://github.com/eagleusb/docker-terraform" \
  org.label-schema.schema-version="1.0"

ENV TFLINT_VERSION="v0.20.2"
ENV TERRAFORM_VERSION="0.13.4"

WORKDIR /usr/local/bin

RUN apk add --no-cache \
    tar xz

RUN wget https://github.com/terraform-linters/tflint/releases/download/${TFLINT_VERSION}/tflint_linux_amd64.zip && \
  unzip tflint*.zip && \
  rm tflint*.zip

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform*.zip && \
  rm terraform*.zip

# TODO: unprivileged user
# USER

CMD []
HEALTHCHECK NONE
