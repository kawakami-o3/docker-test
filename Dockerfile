
FROM rust:1.36 AS rust-builder
ADD . .
RUN cargo build --release --target x86_64-unknown-linux-gnu

COPY --from=rust-builder /home/rust/src/target/x86_64-unknown-linux-gnu/release/docker-test /usr/local/bin
CMD ["docker-test"]
