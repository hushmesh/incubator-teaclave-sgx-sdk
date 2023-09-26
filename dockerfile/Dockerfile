FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
# First install packages listed at https://github.com/intel/linux-sgx
RUN apt install -y build-essential ocaml ocamlbuild automake autoconf libtool python-is-python3 libssl-dev git cmake perl
RUN apt install -y curl software-properties-common bsdmainutils
RUN rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH=/usr/lib:/usr/local/lib
ENV LD_RUN_PATH=/usr/lib:/usr/local/lib

ENV SDK_URL="https://download.01.org/intel-sgx/sgx-linux/2.19/distro/ubuntu22.04-server/sgx_linux_x64_sdk_2.19.100.3.bin"
ADD 03_sdk.sh /root
RUN bash /root/03_sdk.sh

# Sixth, PSW

ENV CODENAME        jammy
ENV VERSION         2.19.100.3-jammy1
ENV DCAP_VERSION    1.16.100.2-jammy1

ADD 04_psw.sh /root
RUN bash /root/04_psw.sh

# Seventh, Rust

ENV rust_toolchain  nightly-2022-10-21
ADD 05_rust.sh /root
RUN bash /root/05_rust.sh

ENV DEBIAN_FRONTEND=
ENV CODENAME=
ENV VERSION=
ENV DCAP_VERSION=

WORKDIR /root
