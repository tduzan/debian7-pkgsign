#debian7-pkgsign
#Dockerfile for building a package signing environment for use with dpkg-sig
#Builds on top of tduzan/debian7-build

FROM tduzan/debian7-build

#Update base system
RUN apt-get update
RUN apt-get upgrade -y

#Install package signing tools
RUN apt-get install -y debian-keyring gnupg2 dpkg-sig