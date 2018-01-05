FROM ubuntu:17.04
LABEL maintainer="extrawurst"
RUN apt-get update \
    && apt-get install -yy wget gcc libcurl3 git libevent-dev libevent-pthreads-2.0-5 libssl-dev
RUN wget http://downloads.dlang.org/releases/2018/dmd_2.078.0-0_amd64.deb
RUN dpkg -i /dmd_2.078.0-0_amd64.deb
RUN dmd --version \
    && dub --version
