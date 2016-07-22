FROM ubuntu:latest
MAINTAINER Rosa <rosatrancoso@gmail.com>

RUN apt-get -y update &&\
    apt-get install -y unzip wget vim imagemagick &&\
            latexmk texlive-latex-extra  texlive-generic-extra &&\
    apt-get remove -y texlive-latex-base-doc &&\
    apt-get -y clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

RUN cd /tmp &&\
	wget -q http://tug.org/fonts/getnonfreefonts/install-getnonfreefonts &&\
 	texlua ./install-getnonfreefonts &&\
 	getnonfreefonts arial-urw &&\
 	rm -rf /tmp/*

RUN cd /tmp &&\
    wget http://mirrors.ctan.org/macros/latex/contrib/titlesec.zip &&\
    unzip titlesec.zip  &&\
    cp -rpv titlesec/* /usr/share/texlive/texmf-dist/tex/latex/titlesec/  
    rm -rf /tmp/*






