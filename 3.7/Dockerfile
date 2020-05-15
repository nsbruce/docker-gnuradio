# latest is the latest LTS
FROM phusion/baseimage

# Getting ready
RUN apt-get update
# RUN apt-get install -y software-properties-common
# RUN add-apt-repository ppa:gnuradio/gnuradio-releases-3.7
# RUN apt-get update

# UHD
RUN apt-get install -y libuhd-dev uhd-host

# GNU Radio and SDR support
RUN apt-get install -y gnuradio gnuradio-dev gr-osmosdr libhackrf-dev libuhd-dev
RUN apt-get install -y git cmake build-essential libboost-all-dev libusb-1.0-0.dev libssl-dev libcurl4-openssl-dev
RUN apt-get install -y ca-certificates expat libgomp1 fdkaac sox

# Trying to make gtk apps look okay over X
RUN apt-get install -y light-themes ttf-ubuntu-font-family
RUN echo "gtk-icon-theme-name = \"ubuntu-mono-dark\"" > ~/.gtkrc-2.0 
RUN echo "gtk-theme-name = \"Ambiance\"" >> ~/.gtkrc-2.0 
RUN echo "gtk-font-name = \"Ubuntu Regular 11\"" >> ~/.gtkrc-2.0

RUN apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["gnuradio-companion"]