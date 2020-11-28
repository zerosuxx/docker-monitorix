FROM debian:stable-slim

RUN apt-get update && apt-get install -y monitorix

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
