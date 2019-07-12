
FROM rust:1.36 as rust-builder
ADD . .
RUN cargo build --release
RUN cargo install --path .


FROM alpine:latest
COPY --from=rust-builder /usr/local/cargo/bin/docker-test /usr/local/bin
EXPOSE 80
CMD ["docker-test"]

