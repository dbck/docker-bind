FROM debian:13.4-slim

LABEL maintainer="Dennis Boeckmann <dev@dbck.de>"
LABEL description="This image has just bind for dns resolution installed."

ARG TARGETPLATFORM
ARG BUILDPLATFORM

ENV DEBIAN_FRONTEND="noninteractive"

RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

WORKDIR /

RUN apt-get update && \
    apt-get -q -y --no-install-recommends install bind9 bind9utils && \
    rm -rf /var/lib/apt/lists/*

COPY root/docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 755 /docker-entrypoint.sh

EXPOSE 53/udp
EXPOSE 53/tcp

ENTRYPOINT ["/docker-entrypoint.sh"]