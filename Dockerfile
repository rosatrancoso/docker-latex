FROM ubuntu:latest
MAINTAINER Rosa <rosatrancoso@gmail.com>

RUN apt-get -y update &&\
    apt-get install -y latexmk &&\
    apt-get remove -y texlive-latex-base-doc &&\
    apt-get -y clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

