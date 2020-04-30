FROM phusion/baseimage

# Getting ready
RUN apt update
# UHD
RUN apt install -y libuhd-dev libuhd003 uhd-host
# GNU Radio and SDR support
RUN apt install -y gnuradio gnuradio-dev gr-osmosdr libhackrf-dev libuhd-dev
RUN apt install -y git cmake build-essential libboost-all-dev libusb-1.0-0.dev libssl-dev libcurl4-openssl-dev
RUN apt install -y ca-certificates expat libgomp1 fdkaac sox

# install necessary locales
RUN apt install -y locales \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen

RUN apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]