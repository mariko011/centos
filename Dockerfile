FROM debian:jessie

COPY .scripts/*.sh /usr/local/bin/

CMD ["gather.sh"]
