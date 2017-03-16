## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:16708e83e8d632530a733f2eba14e74a0655ec04c337acd54677467982dc60e2
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86063702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ba5905147a443f29b1afcb2c09284aa9b5efa05e6f03387ef63300b6003d5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:41:06 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 28 Feb 2017 22:41:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:41:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 22:41:21 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:22 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 28 Feb 2017 22:41:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:41:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 28 Feb 2017 22:41:51 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:52 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 16 Mar 2017 18:57:00 GMT
ENV RABBITMQ_VERSION=3.6.7
# Thu, 16 Mar 2017 18:57:01 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.7-1
# Thu, 16 Mar 2017 18:57:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Mar 2017 18:57:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Mar 2017 18:57:11 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 16 Mar 2017 18:57:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 16 Mar 2017 18:57:14 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 16 Mar 2017 18:57:15 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 16 Mar 2017 18:57:17 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 16 Mar 2017 18:57:18 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Thu, 16 Mar 2017 18:57:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 16 Mar 2017 18:57:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Mar 2017 18:57:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 16 Mar 2017 18:57:21 GMT
CMD ["rabbitmq-server"]
# Thu, 16 Mar 2017 18:57:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 16 Mar 2017 18:57:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb18686cc4689922b4c163307e9b8858bf524d63cebf6de1095266ef32a07dc`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae00e0021d4f4536d0170d615a009107db87a8adf42b095a63418b181667c7d8`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 1.2 MB (1216851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b0d0b2a9eda9c873e116e61276f084cde49109eeb634f96beafb89811b31`  
		Last Modified: Thu, 02 Mar 2017 03:33:10 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb8e146207ab4eb7c881a48d5d94f52c76c74154afcc5d8a1a945c0ea12fb78`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d218990416b505e468dacd33f81026177387047c261de79b7fc980e1931e4fd`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 27.8 MB (27823799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a2b2fe78c09ea4468a9533b6364979eab630b97002e679bf3f17090f3470f0`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 3.1 KB (3096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9045f6bf09cdd5946d05d3280e45ddf0188910531da96500c9c0a51d2b928c`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7074c0fe33782b7b40e6b4f96b47cf80200089c11de3a710d5a651cf49e46a14`  
		Last Modified: Thu, 16 Mar 2017 18:58:09 GMT  
		Size: 5.6 MB (5643727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6e1e6e03bc858b4295658c86327adfc3691c4c2d3890d2caf600a68f81d376`  
		Last Modified: Thu, 16 Mar 2017 18:58:06 GMT  
		Size: 2.3 KB (2286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09826c4f6382be431863fc29c8f69dd84c34ef3ea6e71467470e7b5b9e1c4e8`  
		Last Modified: Thu, 16 Mar 2017 18:58:06 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6642646f2633c7c023edb804947ced9ebe5bd6432b23d59e5e3507d2fa5b2e4`  
		Last Modified: Thu, 16 Mar 2017 18:58:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df93ff95dccca6e112e55305370b59ab5ed7aa9d8a7c2616e8b8f6c074b18481`  
		Last Modified: Thu, 16 Mar 2017 18:58:06 GMT  
		Size: 2.7 KB (2713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e039ffd1aa3421350e7da992891fd6d9e5053fd91289dc40f8e5df5721150b`  
		Last Modified: Thu, 16 Mar 2017 18:58:07 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05430f7202c821edd08b14114d43cb5df7b139b556407af3e62b63bb8718f1cf`  
		Last Modified: Thu, 16 Mar 2017 18:59:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
