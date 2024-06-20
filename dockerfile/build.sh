#!/usr/bin/env bash

if [ -z "${CONTAINER_REGISTRY}" ]; then
	echo "CONTAINER_REGISTRY environment variable not set"
	exit
fi

set -e

case $1 in
   "runtime")
       docker build --no-cache  --build-arg runtimeOnly=1 --platform linux/x86_64 -t "${CONTAINER_REGISTRY}/sgx-rust/ubuntu-2204:sgx-2.19-dcap-1.16-runtime" .
       ;;
   *)
       docker build --no-cache --platform linux/x86_64 -t "${CONTAINER_REGISTRY}/sgx-rust/ubuntu-2204:sgx-2.19-dcap-1.16-sccache" .
       ;;
esac
