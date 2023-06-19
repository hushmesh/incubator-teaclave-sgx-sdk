#!/usr/bin/env bash

set -e

docker push --platform linux/x86_64 hushmesh/sgx-rust:ubuntu-2204-sgx-2.19-dcap-1.16
