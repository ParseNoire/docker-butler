FROM debian:12
LABEL author="parse@lf.dev"

# butler details
ARG BUTLER_PLATFORM="linux-amd64"
ARG BUTLER_VERSION="15.21.0"

# install dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    ca-certificates \
    wget \
    unzip \
    zip

# install butler
RUN wget https://broth.itch.zone/butler/$BUTLER_PLATFORM/$BUTLER_VERSION/archive/default -O butler.zip
RUN unzip butler.zip
RUN mv butler /usr/local/bin/butler
RUN chmod +x /usr/local/bin/butler
RUN rm -v butler.zip
