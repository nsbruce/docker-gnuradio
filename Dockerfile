# latest is the latest LTS
FROM ubuntu:18.04

# Getting ready
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:gnuradio/gnuradio-releases
RUN apt-get update

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

# UHD
RUN apt-get install -y libuhd-dev uhd-host

# GNU Radio and SDR support
RUN apt-get install -y gir1.2-gtk-3.0
RUN apt-get install -y gnuradio gnuradio-dev gr-osmosdr libhackrf-dev libuhd-dev
RUN apt-get install -y git cmake build-essential libboost-all-dev libusb-1.0-0.dev libssl-dev libcurl4-openssl-dev
RUN apt-get install -y ca-certificates expat libgomp1 fdkaac sox


RUN apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["gnuradio-companion"]