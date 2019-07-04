FROM hardwario/gcc-arm-embedded:6-2017-q2-update

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python2.7 python-pip && \
    pip install nrfutil && \
    wget "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-10-x-x/nRFCommandLineTools1021Linuxamd64tar.gz" -O nRFCommandLineTools1021Linuxamd64tar.gz && \
    tar xvzf nRFCommandLineTools1021Linuxamd64tar.gz && \
    dpkg -i nRF-Command-Line-Tools_10_2_1_Linux-amd64.deb && \
    dpkg -i JLink_Linux_V644e_x86_64.deb && \
    rm JLink_Linux_V644e_x86_64* && \
    rm nRF-Command-Line-Tools_10_2_1_Linux-amd64* && \
    rm nRFCommandLineTools1021Linuxamd64tar.gz && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    apt-get clean
