FROM jenkins:latest

USER root

RUN apt-get update && apt-get install -y maven && apt-get install -y openjdk-8-jdk