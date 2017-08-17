## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:2d8c4e82023e4cbe76ebfc1695d849854678fbe8faa8d7f22c0bc49efce4bfdd
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb11f4e0a6b6fa0d04d5a997ac9ad91c3950dfe8954e30f541fae35de7a02cc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:08:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 26 Jul 2017 09:08:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 09:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 09:08:47 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 26 Jul 2017 09:08:50 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 09:08:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 17 Aug 2017 18:48:35 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:48:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Thu, 17 Aug 2017 18:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 18:48:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Aug 2017 18:48:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:48:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:48:54 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 17 Aug 2017 18:48:55 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:48:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 17 Aug 2017 18:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:48:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:48:57 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Aug 2017 18:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 17 Aug 2017 18:49:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecab2d521afa730d497092c8a05df7f598ecc8205fd51ca06c0bfed72e17638`  
		Last Modified: Wed, 26 Jul 2017 09:09:16 GMT  
		Size: 4.3 MB (4311817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f2fa34a0bae8728ab33be7200f23e264e43ecfbc254d64fc3945c278b59e3d`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06d3b56ae43299298bdd3bc0a0c2284ec1b6f303fa19babb7188e8f1410d1a7`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 951.9 KB (951893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210ab29dcdfe406f4d3ef599250963b2d9539242c8087b96f0cb3a9ce3ea178c`  
		Last Modified: Wed, 26 Jul 2017 09:09:17 GMT  
		Size: 27.7 MB (27696712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3917c93893a59eabdc25d0cf1b22fd05642fd25c9bccf66195d773b536a034ca`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee922bf953e11f03f04962128cf7fc03b290990716c757c23474d33aeaf1a5a4`  
		Last Modified: Wed, 26 Jul 2017 09:09:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dab6bd81fdb89538db6646b37f897221bec0362bb352b7666796c1cdcd708ee`  
		Last Modified: Thu, 17 Aug 2017 18:49:53 GMT  
		Size: 7.2 MB (7190409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4504dcd8bc823ab8816a34eaa014afa84ef284f9cd47803bcee45d8b7ce15`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dea9fa5e8d4ca55f9ee4293c8f0982d1c6b7686ae0836e66e04fb7b8c01e0`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41713395954d148412bc548a6e3f12dcaf866e7ef74d33cdb1077a7f7bce5b24`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442299bf13f0411441d132403dc1329f68b98a362333cdbe022868e23a99b9f`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d73cddbdbd07f39787585391ea12d8b1bdd9cdcaf30d09299be257cfd464df`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2694c0d87540041de4f1930c78f71c86c342a304a92cfe82989d5b44c6b8460d`  
		Last Modified: Thu, 17 Aug 2017 18:50:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
