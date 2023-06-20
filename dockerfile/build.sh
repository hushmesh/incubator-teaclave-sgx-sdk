#!/usr/bin/env bash

if [ -z "${CONTAINER_REGISTRY}" ]; then
	echo "CONTAINER_REGISTRY environment variable not set"
	exit
fi

set -e

docker build --no-cache --platform linux/x86_64 -t "${CONTAINER_REGISTRY}/sgx-rust:ubuntu-2204-sgx-2.19-dcap-1.16" .
