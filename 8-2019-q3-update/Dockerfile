FROM hardwario/gcc-arm-embedded:8-2019-q3-update

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y libusb-1.0-0 && \
    pip3 install pc-ble-driver-py nrfutil && \
    nrfutil version && \
    wget "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-10-x-x/nRFCommandLineTools1060Linuxamd64tar.gz" -O nRFCommandLineTools1060Linuxamd64tar.gz && \
    tar xvzf nRFCommandLineTools1060Linuxamd64tar.gz && \
    dpkg -i nRF-Command-Line-Tools_10_6_0_Linux-amd64.deb && \
    dpkg -i JLink_Linux_V660e_x86_64.deb && \
    rm JLink_Linux_V660e_x86_64* && \
    rm nRF-Command-Line-Tools_10_6_0_Linux-amd64* && \
    rm nRFCommandLineTools1060Linuxamd64tar.gz && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    apt-get clean
