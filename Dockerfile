FROM debian:jessie

# add "apt-transport-https" for images whose "/etc/apt/sources.list" uses "https"
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		apt-transport-https \
		ca-certificates \
	&& rm -rf /var/lib/apt/lists/*

COPY .scripts/*.sh /usr/local/bin/

CMD ["gather.sh"]
