#!/usr/bin/env bash

set -e

docker build --no-cache --platform linux/x86_64 -t hushmesh/sgx-rust:ubuntu-2204-sgx-2.19-dcap-1.16 .
