FROM debian:12.10

LABEL maintainer="Dennis Boeckmann <dev@dbck.de>"
LABEL description="This image has just bind for dns resolution installed."

ARG TARGETPLATFORM
ARG BUILDPLATFORM

RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

WORKDIR /

RUN apt-get update
RUN apt-get install -y bind9 bind9utils

COPY root/docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 755 /docker-entrypoint.sh

EXPOSE 53/udp
EXPOSE 53/tcp

ENTRYPOINT ["/docker-entrypoint.sh"]