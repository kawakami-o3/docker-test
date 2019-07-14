
FROM rust:1.36 as rust-builder

WORKDIR /app
COPY . /app

#ADD . .
#RUN cargo build
RUN cargo build --release
#RUN cargo install --path .

#ENTRYPOINT ["/usr/local/bin/docker-test"]
#ENTRYPOINT ["target/debug/docker-test"]
EXPOSE 80
#CMD ["target/debug/docker-test"]
CMD ["target/release/docker-test"]

#FROM alpine:latest
#COPY --from=rust-builder /usr/local/cargo/bin/docker-test /usr/local/bin
#RUN set -ex && apk --no-cache add sudo
#EXPOSE 80
##CMD ["sudo","/usr/local/bin/docker-test"]
#CMD ["/usr/local/bin/docker-test"]

