cd /root && \
curl -o sdk.sh $SDK_URL && \
chmod a+x /root/sdk.sh && \
echo -e 'no\n/opt' | ./sdk.sh && \
echo 'source /opt/sgxsdk/environment' >> /root/.bashrc && \
cd /root && \
rm ./sdk.sh
