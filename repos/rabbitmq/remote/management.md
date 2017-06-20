## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:1d0bce4964b933eb9bcd6fc715a32b568c78bfb778c7fd487f62c5080979262c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62620648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d7424103511443506ab67f893b63712d3bedb1cef1671f6718ebf7c8213d8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:50:38 GMT
ADD file:459661a8014d2183d9d0db1ecf6d4abd2a4419447e5f757b8d99aaf53fda13bc in / 
# Wed, 07 Jun 2017 17:50:38 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 22:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:41:55 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:41:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Jun 2017 22:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Jun 2017 22:42:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:43:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:43:10 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Jun 2017 22:43:36 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Mon, 19 Jun 2017 22:43:37 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:43:38 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Mon, 19 Jun 2017 22:43:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:43:48 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:43:49 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:43:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:43:54 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:43:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:44:22 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 19 Jun 2017 22:44:48 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:44:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Jun 2017 22:44:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:44:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:44:55 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Jun 2017 22:45:27 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 19 Jun 2017 22:45:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cde19930ff63994cea33a84153c5dfdf7dbd261302ee5e8521a572b1207e0899`  
		Last Modified: Wed, 07 Jun 2017 18:10:49 GMT  
		Size: 22.5 MB (22487001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e4203d9f3e21c794b6c1eadf1e95ae0a108bb0c6a47d7c85e037fc70aca20`  
		Last Modified: Mon, 19 Jun 2017 22:56:34 GMT  
		Size: 4.3 MB (4311807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d364f53d15f82222a9a84f61fcc6b1327f812767be0a3f8b4b2aa8e48027e8`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af4ee3e43d2d06175ff4ce4415ca89ce5bfc43e79ad280cb942e6c971dd554`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 951.9 KB (951895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7630dc6a4b5f2c55eee06394b94e439894a9f9520e08925df78d198a9e3e0c7`  
		Last Modified: Mon, 19 Jun 2017 22:56:37 GMT  
		Size: 27.7 MB (27696679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d177b3fedbe20dc5057ebb474ad24c602669ea822e8fca54cff2f82237b36f71`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f33f31dbf7e3a710660aa2f50e5dcce207df4130ca6520ff9fc121b5a0cc385`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5b871223f7ce79e0c5b28f1062924ba6b5fd7f5a94bca1d72da63da7623360`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 7.2 MB (7159033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8215174207a786727f884ac0679fa04a6eb30cd6aa47ae6f7db584f0c3836af2`  
		Last Modified: Mon, 19 Jun 2017 22:56:28 GMT  
		Size: 2.2 KB (2242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d4db56428489a7fe3e6cbcfcbca95951602375d73f2a161c99ee5c5f996667`  
		Last Modified: Mon, 19 Jun 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1903576006f1c441a0a8ea292b25efe1ec762d4b2e3ae4473189164f1a3dbaac`  
		Last Modified: Mon, 19 Jun 2017 22:56:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae1330202e4a1eb86dfcc0fadf6e5c2c7e11639d8ee426649e728034018bbb3`  
		Last Modified: Mon, 19 Jun 2017 22:56:28 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe593180bf527876412ae6ba6fe9639c6df300fbdc60ce249c75befe599d1626`  
		Last Modified: Mon, 19 Jun 2017 22:56:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc06bafd864baabbcfe43465799449bbd3e9bb92a7bc678dfac50b5ca8f6d03`  
		Last Modified: Mon, 19 Jun 2017 22:58:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
