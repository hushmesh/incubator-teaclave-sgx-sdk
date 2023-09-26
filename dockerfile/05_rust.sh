# Use net.git-fetch-with-cli to avoid OOM on arm64:
# https://github.com/rust-lang/cargo/issues/10583#issuecomment-1129997984

export CARGO_HOME=/opt/cargo
export RUSTUP_HOME=/opt/rustup

cd /root && \
curl 'https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init' --output /root/rustup-init && \
chmod +x /root/rustup-init && \
echo '1' | /root/rustup-init --default-toolchain ${rust_toolchain} && \
/opt/cargo/bin/rustup component add rust-src rls rust-analysis clippy rustfmt && \
/opt/cargo/bin/cargo --config "net.git-fetch-with-cli = true" install xargo
ln -s /opt/rustup /root/.rustup
