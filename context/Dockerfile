FROM debian:buster-20191224
LABEL maintainer "Andrea Zuccherelli <andrea@zuccherelli.net>"
RUN apt-get install -y \
    build-essential \
    ca-certificates \
    git \
    golang-go \
    --no-install-recommends
RUN mkdir -p /usr/local/lib/go
ENV GOPATH=/usr/local/lib/go
ENV VER="v1.45"
RUN git clone -b "${VER}" --depth 1 https://github.com/ncw/rclone \
    && cd rclone \
    && go install \
    && cd .. \
    && rm -rf rclone
RUN useradd -m rcloner
USER rcloner
ENV HOME /home/rcloner
RUN mkdir /home/rcloner/gdrive
WORKDIR /home/rcloner/gdrive
ENTRYPOINT ["/usr/local/lib/go/bin/rclone"]
