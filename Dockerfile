FROM nimbix/ubuntu-desktop-ppc64le:xenial
# Add CAPI tools
RUN apt-get update && apt-get -y install git build-essential vim
WORKDIR /tmp
RUN git clone https://github.com/ibm-capi/libcxl && cd libcxl && make && cp libcxl.h /usr/local/include && cp libcxl.so* /usr/local/lib
RUN cd /tmp && rm -rf libcxl
# Add NIMBIX Appdef
ADD AppDef.json /etc/NAE/AppDef.json
# Add FPGA binaries
COPY JARVICENAE-0A0A183A_SDRAM_ADKU3_13.tar.gz /etc/NAE/CAPI.tar.gz
COPY JARVICENAE-0A0A183A_SDRAM_ADKU3_13.signature.sha256 /etc/NAE/CAPI.signature.sha256
