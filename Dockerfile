FROM jenkins:latest

USER root

RUN apt-get update && apt-get install -y maven && install -y openjdk-8-jdk