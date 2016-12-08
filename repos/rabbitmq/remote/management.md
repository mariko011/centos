## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:4a3939aee42bde53ac2b4079722dd45a899fa663048fd1b45c8a17279acf5709
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86546052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac6f01b7d88d4d90503ae9b236ea7d45dd94c3a1f90d5da0d33e8b263cbe9c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:49:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 09 Nov 2016 00:49:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:49:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:49:20 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA
# Wed, 09 Nov 2016 00:49:21 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 09 Nov 2016 00:49:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:49:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 09 Nov 2016 00:49:50 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 09 Nov 2016 00:49:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 23 Nov 2016 21:52:34 GMT
ENV RABBITMQ_VERSION=3.6.6
# Wed, 23 Nov 2016 21:52:34 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Wed, 23 Nov 2016 21:52:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 21:52:42 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Dec 2016 21:57:04 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Dec 2016 21:57:06 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 08 Dec 2016 21:57:06 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Dec 2016 21:57:07 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Dec 2016 21:57:08 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 08 Dec 2016 21:57:09 GMT
COPY file:fca162435d150a902cf6ab801d156fab8d4b2765bdd1d1fac32fff47663cff1e in /usr/local/bin/ 
# Thu, 08 Dec 2016 21:57:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Dec 2016 21:57:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Dec 2016 21:57:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Dec 2016 21:57:12 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Dec 2016 21:57:15 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Dec 2016 21:57:16 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105459adf0de9c232e7d4758f2e752717f202a11351fca0e171b832ecd7267b3`  
		Last Modified: Wed, 09 Nov 2016 00:50:27 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89780495455e48a38ac759998ce64550c596d2cfade98e774b99d1dab79d218b`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 1.2 MB (1216442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2805642edf93c69c7bbc20d7a8750488c8375c9337d66637f0654a89b1da66`  
		Last Modified: Wed, 09 Nov 2016 00:50:26 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a44de4dc7c4ad7601d02c9aa9f1b1f7ee26ee6a87c0d9c9652d404527c0fa`  
		Last Modified: Wed, 09 Nov 2016 00:50:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133a4ca36f09aba61e88812c7936bd649218fbfd15398c96f07b9b80e3eb3974`  
		Last Modified: Wed, 09 Nov 2016 00:50:29 GMT  
		Size: 27.7 MB (27721124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b553e2d1e045bdf8f2832039e8881746f3e47f40b1a6c38b9497ed866147c`  
		Last Modified: Wed, 09 Nov 2016 00:50:24 GMT  
		Size: 5.3 KB (5342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccbfc375103d005767ced6fa1e3444afc3ed3b41a234416d6d0d3f806b29c15`  
		Last Modified: Wed, 09 Nov 2016 00:50:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b968ede33648fd475d1ff05896b63e9703290b26ae67675c46c2a7f6f6ddc72`  
		Last Modified: Wed, 23 Nov 2016 21:53:12 GMT  
		Size: 6.2 MB (6233437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44c62080219054b8d66137d2071f5ff6ccc6a28f5f96f4b05b3dbbfcbef370b`  
		Last Modified: Thu, 08 Dec 2016 21:57:29 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b164027b495e869b0a057d0b0a033e41ef2be9ebd64807066c6b05c9d61e87e`  
		Last Modified: Thu, 08 Dec 2016 21:57:29 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256436ac61612e92677303b19a8e7733ee8aee6805d83680541a0adc52c080f9`  
		Last Modified: Thu, 08 Dec 2016 21:57:29 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c6c456c28287ea4e2dd3759ff27a431af3eea5cc851076066f9c4ee5e125f7`  
		Last Modified: Thu, 08 Dec 2016 21:57:29 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3ba480122850e973182365855c2b17e2ec826983661bc57b4eec92f153f51a`  
		Last Modified: Thu, 08 Dec 2016 21:57:29 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365f225b399f3f70c5562878cbc349e33a26d06ad695fb770759eaa6587818b5`  
		Last Modified: Thu, 08 Dec 2016 21:58:35 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
