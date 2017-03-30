## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:b592bfd7047ec18aaaef6cfebde0a76909ac6fedfb90ed1fec2cfe2fe84dc958
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86338434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f349336a0a49296091c4c82369bcd67533afb51391ba3e622579aeacc97d0bdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:55:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 21 Mar 2017 23:55:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:55:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:55:58 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:55:59 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 21 Mar 2017 23:56:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 21 Mar 2017 23:56:28 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:56:29 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Thu, 30 Mar 2017 22:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Mar 2017 22:06:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:06:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:06:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:06:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 30 Mar 2017 22:06:59 GMT
COPY file:d113d7e85a6c3d8fcb33e2c1d33a5fa7e3335c73501b8e577c53c0462198a3ff in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 30 Mar 2017 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:03 GMT
CMD ["rabbitmq-server"]
# Thu, 30 Mar 2017 22:07:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 30 Mar 2017 22:07:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4bdc20139db8db58fec0f4a518b99398d45daf9441718486d45d9db598433`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7e941d26a17bc9c96b6a521a3158cbaaf2ea3aca820b592c48a3f161e00ad4`  
		Last Modified: Fri, 24 Mar 2017 00:24:06 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3820e0134b494cc49b4021fbf5a3e96585cbda482c3000eb7a3daaca0fea1b`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf50c361a52b8fe4a1278089842b2366cc93ff43cd62f59c9008d80538e619`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe921a0db61127d93a2f75076ac5157d71720477ff223fcee62b2bd09f4a1d`  
		Last Modified: Fri, 24 Mar 2017 00:24:10 GMT  
		Size: 27.9 MB (27929946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45725958e87d117a7c30ad77199e3e9d9d3b1cfa1ee05478f77891e1eb875bf`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 3.1 KB (3101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e6d2a1c35119945183bdbb31c9333c34193bad77e51981547853c07dfdb73f`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043dd583fc3ed60ee63b2d1d3653d587e16971825aea72862f83ce784368353c`  
		Last Modified: Thu, 30 Mar 2017 22:07:51 GMT  
		Size: 5.7 MB (5664781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd466083e3a045869f712113b9158b5aaa4e9957e7f96487044824d3c8307a5`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 2.3 KB (2288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83499077ade59140ca1a64f12aa9c4d35597bb66ff3a306d5e7a8bab91bfb22d`  
		Last Modified: Thu, 30 Mar 2017 22:07:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab70d372f4d78a57c77879d913dd6e152eecf00062e3aee9c7a9d1d3cc34fe0`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f395dedd39ae17421733f0cfca74404d5e3852d900a1265c4dd9de9afe324`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e26ae94ed786c8f3d9a10368095dc8dc9a7d44dad9fe14674d418003ded85`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c696706a5280b74dfeb06c4bddc294fc7c500ed4fed7b9dcffc9dfd086ddc09`  
		Last Modified: Thu, 30 Mar 2017 22:09:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
