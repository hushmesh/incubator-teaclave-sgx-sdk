echo "deb [signed-by=/etc/apt/keyrings/intel-sgx-keyring.asc arch=amd64] https://download.01.org/intel-sgx/sgx_repo/ubuntu $CODENAME main" | tee /etc/apt/sources.list.d/intel-sgx.list && \
curl -fsSL -O https://download.01.org/intel-sgx/sgx_repo/ubuntu/intel-sgx-deb.key && \
cat intel-sgx-deb.key | tee /etc/apt/keyrings/intel-sgx-keyring.asc > /dev/null && \
apt-get update && \
apt-get install -y \
	libsgx-ae-pce=$VERSION \
	libsgx-enclave-common-dev=$VERSION \
	libsgx-enclave-common=$VERSION \
	libsgx-headers=$VERSION \
	libsgx-launch=$VERSION \
	libsgx-quote-ex=$VERSION \
	libsgx-urts=$VERSION \
	sgx-aesm-service=$VERSION \
	libsgx-ae-id-enclave=$DCAP_VERSION \
	libsgx-ae-qe3=$DCAP_VERSION \
	libsgx-ae-qve=$DCAP_VERSION \
	libsgx-dcap-ql-dev=$DCAP_VERSION \
	libsgx-dcap-ql=$DCAP_VERSION \
	libsgx-dcap-default-qpl-dev=$DCAP_VERSION \
	libsgx-dcap-default-qpl=$DCAP_VERSION \
	libsgx-dcap-quote-verify-dev=$DCAP_VERSION \
	libsgx-dcap-quote-verify=$DCAP_VERSION \
	libsgx-pce-logic=$DCAP_VERSION \
	libsgx-qe3-logic=$DCAP_VERSION && \
mkdir /var/run/aesmd && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/apt/archives/*
