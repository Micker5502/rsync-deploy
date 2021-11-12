FROM debian:9.5-slim

RUN apt update
RUN apt -yq install rsync openssh-client

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
