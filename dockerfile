FROM jenkins/jenkins:alpine

USER root

RUN apk add --no-cache ansible openssh-client

USER jenkins
