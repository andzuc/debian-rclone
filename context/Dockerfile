FROM debian:buster
LABEL maintainer "Andrea Zuccherelli <andrea.zuccherelli@gmail.com>"
RUN apt-get -y update && apt-get install -y \
    ca-certificates \
    git \
    golang-go \
    --no-install-recommends
RUN mkdir -p /usr/local/lib/go
ENV GOPATH=/usr/local/lib/go
RUN go get -u -v github.com/ncw/rclone
RUN useradd -m rcloner
USER rcloner
ENV HOME /home/rcloner
RUN mkdir /home/rcloner/gdrive
WORKDIR /home/rcloner/gdrive
ENTRYPOINT ["/usr/local/lib/go/bin/rclone"]
