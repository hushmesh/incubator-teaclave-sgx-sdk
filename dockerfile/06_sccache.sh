# Use net.git-fetch-with-cli to avoid OOM on arm64:
# https://github.com/rust-lang/cargo/issues/10583#issuecomment-1129997984

export CARGO_HOME=/opt/cargo
source /opt/cargo/env
/opt/cargo/bin/cargo install sccache --locked
