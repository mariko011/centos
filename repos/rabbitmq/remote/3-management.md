## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:c80fd9e3b5f8f53b48f4eb002d61587b4c28b70f3714f6eaaa6552e0b15acb41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:40a956f5198d4d2050d1545dc48bf38b5e0342c33d10bcd04c9e0a7e7bc851af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac724eab06670229b033f2516a2e3af2cdfb453495a9bbb040fea13b398ab5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:41:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:41:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:42:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:42:40 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:42:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:42:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:43:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:43:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:43:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 13 Oct 2017 23:40:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:40:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 23:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:40:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:40:45 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:40:56 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:40:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65f0b00e4cfb1535d0f4e7a63707172ae63483fb33140d777614f199afcb36`  
		Last Modified: Tue, 10 Oct 2017 02:43:59 GMT  
		Size: 4.5 MB (4498726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd803179890909fcae186044c0e6ca1bc1d34e5fc05ef1ccea823e7be97540`  
		Last Modified: Tue, 10 Oct 2017 02:43:57 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b05ca8302833edf783c50f03cd7ba0b8e12bc872b053eda3e3ae7e1f17e2b4b`  
		Last Modified: Tue, 10 Oct 2017 02:43:58 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb5a4bbcce5a040eb83057f9e93d17663bb123f4e98168457444497f7d17b70`  
		Last Modified: Tue, 10 Oct 2017 02:44:03 GMT  
		Size: 27.7 MB (27703883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf840d8999f6fe46a162974c82378c38b3cf3dcccbbaff848c0fb199988aebe0`  
		Last Modified: Tue, 10 Oct 2017 02:44:00 GMT  
		Size: 7.2 MB (7194403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be339ca44883b1990e52771487402163d398a279755a501fdd8891ec71cf09d0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35cd9f9b5b917868095b3b074dd23d18e0e266f3ee68ff95e2c61467299812`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe32a0a00d916ed4d632aae71d35d9d0baa5e5910d6bd179a24071c35bedb0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ca9e94eb4bfeb346ab10c602857525802c2279e7c6995fcdbc90269444a`  
		Last Modified: Fri, 13 Oct 2017 23:41:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03407a1aba1c0a89dffe960394aae639885702e3faa65271b918c36c7905cd`  
		Last Modified: Fri, 13 Oct 2017 23:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b908f008ac2afe6632caccd124e3ee9bffd5ebcdb8ca5ca84ae7e014305e460f`  
		Last Modified: Fri, 13 Oct 2017 23:42:01 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:07150eac8a231b8c043f29aba9a9ba3d81aa4cdd16c8e3387621deb4d8fdf1f4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00088686092d95f6db193285835d1af5662557d679f57a4c21d1d4ec648c0924`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:18:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:18:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:18:58 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:18:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:19:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:19:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:19:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:19:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:19:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 14 Oct 2017 14:14:24 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 14 Oct 2017 14:14:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 14 Oct 2017 14:14:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 14:14:25 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 14 Oct 2017 14:14:26 GMT
CMD ["rabbitmq-server"]
# Sat, 14 Oct 2017 14:14:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 14 Oct 2017 14:14:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb896fba83bd09a35c68457554b35289860c23c46f27a8c3ef42f13146ebba1`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 4.2 MB (4231979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61827a16c114b9741d761aa4c60a972ffe1e0b60147794e86b05653d67822e91`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877cd9511def30e56a5ce354e145e8a2b1a93daaae7eaaa42dc4219838aa1743`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 942.8 KB (942752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea9e378899e98c99e93ae2d0874bd5d89e24134bd14a19c285bdf39a0a42ade`  
		Last Modified: Tue, 10 Oct 2017 00:20:05 GMT  
		Size: 25.2 MB (25170810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc82a29314b16531aa2172ac523ba535e3678f85efdd699164fbb0241ab8b62`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 6.9 MB (6909811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c44a3d016cf9de95021782180a42d3660e20fc7d8e92a7fe5ce9ede7928ca2`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abfdcdd98b40291ad91791bea09bf277e75c3669c6607c7891b09130101bfa3`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a72811da4bf8ca8a2d06cdc182aa54116bb12133e8d82ef2b018a8de29ed74`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147d8cf0897dea9b024bf5c6efb6873db3d86dec857fca062b146f88b7b5a735`  
		Last Modified: Sat, 14 Oct 2017 14:14:43 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f355fd0b70caedf30aa384298307b8e40d922e9e341492dd3fde71f119fd7d7`  
		Last Modified: Sat, 14 Oct 2017 14:14:44 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dcaa76990445223000f8a5eb10485f94e82d4817f74f142f106b0a4dd9ad0c`  
		Last Modified: Sat, 14 Oct 2017 14:15:02 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:fd614ab6c12f667435a44d15efc85e1df7cd35a82a44babdebe883bcf077cbb1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55689827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aae51305eb10cf66a39afafc37272a36acebb2aebb221c6c38441ee2b1f4628`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:08:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:08:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:09:07 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:09:08 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:09:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:09:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:31 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:09:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:09:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 14 Oct 2017 13:07:27 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 14 Oct 2017 13:07:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 14 Oct 2017 13:07:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 13:07:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 14 Oct 2017 13:07:29 GMT
CMD ["rabbitmq-server"]
# Sat, 14 Oct 2017 13:07:39 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 14 Oct 2017 13:07:39 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb84cf14a797e0c36a5062e5815b71c4fd0093413f105b27624939375150f03b`  
		Last Modified: Tue, 10 Oct 2017 00:10:13 GMT  
		Size: 3.9 MB (3869005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cce9319434844ff1c14610356c4336192046612fdff57f5c8678595702002c`  
		Last Modified: Tue, 10 Oct 2017 00:10:11 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5463321259d892fda42d7201a40fbc05a78196e4895d7b17e06c85ecd091e62b`  
		Last Modified: Tue, 10 Oct 2017 00:10:12 GMT  
		Size: 926.5 KB (926471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bca1a117250e4e46e6d6aea3a4770f8119d72d505036090ee102abd9705e9b`  
		Last Modified: Tue, 10 Oct 2017 00:10:17 GMT  
		Size: 24.8 MB (24785804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9316ca3e99e9664fe5eb97360822a9f8191a29c3e5b7a7966b6254b889d7a`  
		Last Modified: Tue, 10 Oct 2017 00:10:15 GMT  
		Size: 6.8 MB (6820453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f593867a4cdb0f406669620054471236973b620f178316670b74fc83fb1359`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81744440a17e6df84509c55d5e0dae88230c113b348b511037cd38796c68d1`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4ed0a5303f5e5db5f73224fa321f58305866f346c7d59238dcbeca1e1b35f`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c5cf3b1b3ae76bcb279e09ca655b407cfc678e86dd9bbd6252ba3271db4f85`  
		Last Modified: Sat, 14 Oct 2017 13:07:51 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648d94f59c69d038a6cddf9a5971d6f692c0550aceb697bd9d0eceea02c3489b`  
		Last Modified: Sat, 14 Oct 2017 13:07:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd0936b2b06636949c7048090e19c2b351f50bf19e2165a9a92ca11ed9a1b62`  
		Last Modified: Sat, 14 Oct 2017 13:08:16 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:4ad104ab7b291ca9aea4bb42e18de213ae21ef6a655d909c3568e2b36f465074
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9356e7f3d3e445f04242803fb4b5afb70fad5f726388635b781f4814733c3af7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:57:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 04:57:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 04:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 04:58:35 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:58:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 04:58:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:58:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 04:58:38 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 05:00:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 05:00:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 05:00:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 05:00:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 05:00:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 14 Oct 2017 13:52:47 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 14 Oct 2017 13:52:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 14 Oct 2017 13:52:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 13:52:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 14 Oct 2017 13:52:51 GMT
CMD ["rabbitmq-server"]
# Sat, 14 Oct 2017 13:53:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 14 Oct 2017 13:53:09 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5e6d35928560b933b85b5a3f2a8e96b4520fbb8df138b3e739e56d0c1f355`  
		Last Modified: Tue, 10 Oct 2017 05:01:18 GMT  
		Size: 4.1 MB (4073554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862ab821b342790326492507ca5d70bfb7016bef765606193f1f7139f60c5ed`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92799a54920b79013733790e444f13d8c65faa29c79cbdaf1bc8af85f637a233`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 919.5 KB (919487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b119999eef1bcadabedd3a5319b03c6b83ede91ba8535059851547d3433b205`  
		Last Modified: Tue, 10 Oct 2017 05:01:19 GMT  
		Size: 25.0 MB (25042572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e62f8525a3a982a102aa37bb3313876195b15d8781cd253ed238dd2b9dff151`  
		Last Modified: Tue, 10 Oct 2017 05:01:15 GMT  
		Size: 6.9 MB (6894852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc028e70f04f6ea4365223a1cfe4e5c4384d5921acac419f3c170b148f7c7bf`  
		Last Modified: Tue, 10 Oct 2017 05:01:10 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e99faa03c2a8a272f56208c644c12b384b69dea50be6da9f6be400c14b945c`  
		Last Modified: Tue, 10 Oct 2017 05:01:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8fa260bcaa52d81ba20c11111f8d15bab954b17b48666724536c604220d94e`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306840de948d03472918a306c089409429606802ec8cf841e96dec707a2f7178`  
		Last Modified: Sat, 14 Oct 2017 13:53:27 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a7a978032478b38adb1f0107466d187e53380f7037d058c62e4937cd07fc09`  
		Last Modified: Sat, 14 Oct 2017 13:53:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3facaa930064fd14fbd9a077b63e5f3261d1e63bd15c3d1426575c6c4f8eca`  
		Last Modified: Sat, 14 Oct 2017 13:54:17 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:bdb9c4b5764658cd0d7ed1effc45ac279c025fde715e8324f1e387be3841e9da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63903146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4eb58493143027c3b8e083f0e7262253ee6156fe793d3232b9abd661fb52c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:25:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:25:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:25:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:26:18 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:26:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:27:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:12 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:27:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:27:15 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 14 Oct 2017 10:46:42 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 14 Oct 2017 10:46:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 14 Oct 2017 10:46:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 10:46:44 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 14 Oct 2017 10:46:44 GMT
CMD ["rabbitmq-server"]
# Sat, 14 Oct 2017 10:46:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 14 Oct 2017 10:46:52 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd56a7a1b23cba5ba31ffca4c1bd92c67baada83c1cccc6a39804b4bffccfde`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 4.8 MB (4803931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d99e72ac84835e308ec1af65659ef2c54b73366b5284dcf72ec2ae2a8be85`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 4.1 KB (4052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bb0b0cf4cc9d3eaa2a5d66c42a5887057caa974ed019f672c76359e5c56134`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 931.6 KB (931603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c01cd1734bd61603408f604f963f4b669d89bbd45ccc941246e0defadf8b0`  
		Last Modified: Tue, 10 Oct 2017 02:27:41 GMT  
		Size: 27.8 MB (27818777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c121037963c174b576775a6333c56a529233771314b4dd8b3eeb8ff17e0d`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 7.2 MB (7209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99a2b13764e2fa2df368b2aeb4d8a42ff3f6cb8baffb126e338f45afa13bb4d`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cdf701464766405898032d3f1dcd5f15f40b298781b771d58d825fbb54af3`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f77a46c316b539d74ca676c8dd927beb201a823d9a3b8ae19bdee9fb91cc5`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5618da619ab6a8541ea62e89a0abd5180fd49f10066a1de982f9ba62fadc391f`  
		Last Modified: Sat, 14 Oct 2017 10:47:01 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89431cf3158ba74d1684542785ee6ae624f94f361e5043e73c1561548e0070b`  
		Last Modified: Sat, 14 Oct 2017 10:47:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74033978bbc3c0c00afab8f1804e6a5353b8b80c067f48cd89561789a14fdcc`  
		Last Modified: Sat, 14 Oct 2017 10:47:29 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:00ceb5e869a5a0f6028d4468d687d0ed6e689f3eb0711b6aa7fb003051768f6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0ffa27f06518860ec31b0c072736e8908033775c961fde861ec20c94b242f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:53:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:53:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 06:53:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 07:01:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:01:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 07:01:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:01:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 07:01:22 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 07:01:25 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 07:01:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 07:04:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:04:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 07:05:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 07:05:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 07:05:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 07:05:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 14 Oct 2017 07:11:32 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 14 Oct 2017 07:11:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 14 Oct 2017 07:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Oct 2017 07:11:46 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 14 Oct 2017 07:11:55 GMT
CMD ["rabbitmq-server"]
# Sat, 14 Oct 2017 07:12:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 14 Oct 2017 07:12:11 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f956af621d487bb938f0c4ee79429b72e372b6090ef06ebebcbb559daace`  
		Last Modified: Tue, 10 Oct 2017 07:06:52 GMT  
		Size: 4.4 MB (4361267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aae6367725c08eba421b48b8f34430348bc57365851fe72accc2298bc51b8e`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957bc408190bc6f73bb44d2b0606243d737e03780189ad1baf3c05b028493f54`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 921.4 KB (921402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d46f79aaf675c9e2fda7e382e77ce88e43884f112038793c9e0e9d25f1a0828`  
		Last Modified: Tue, 10 Oct 2017 07:06:53 GMT  
		Size: 25.5 MB (25493330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626684a94b11097452c1b15def3c9d8802a40616032986b8b84a04d34dd1120a`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 6.9 MB (6854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf606bd05995800423fd3e922bd6efd3baf29c2d88b57db07c1098fe2451574`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15efc3e31f84b775c79b2aa119d68a48e6c3d7ce14f9187e5b0dddc6f9a358`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924fbba6050d17c40d7dd386e70e472517b4a2eec0d27ac4dbfe0023e38db6d`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932438d6d52b6e6b3d7172d2813bcef97bca004383a92954586022c8591c37e7`  
		Last Modified: Sat, 14 Oct 2017 07:12:24 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df112479d4c2d43ba88b0fa2410c8e80efa338baf27adae6b9e1bbcb28e43c53`  
		Last Modified: Sat, 14 Oct 2017 07:12:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5389bd7b45e955a682109e4df8063b00ee488ccc8124caf390fbd69c953bc32`  
		Last Modified: Sat, 14 Oct 2017 07:12:49 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:31f94a778a470be6cc97a7f74e2ddf1e8758ed90e12020ae4f54ec0d32997692
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6213df3f90e6dff86c41949235dea8c71ba5e48dde5c7317fc6c6b4f80d4e1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:08 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 09 Oct 2017 23:45:08 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:45:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:46:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:46:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 09 Oct 2017 23:46:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Thu, 12 Oct 2017 18:28:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 18:28:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 12 Oct 2017 18:28:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 12 Oct 2017 18:28:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 12 Oct 2017 18:28:25 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Thu, 12 Oct 2017 18:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 18:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 18:28:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 12 Oct 2017 18:28:26 GMT
CMD ["rabbitmq-server"]
# Thu, 12 Oct 2017 18:28:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 12 Oct 2017 18:28:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7bcde3ab4d109ca30e7e6be1a5401b63c4473f9291ca2356407b66a5954522`  
		Last Modified: Thu, 12 Oct 2017 18:28:47 GMT  
		Size: 4.5 MB (4530291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d4a53e870f537ea989232055702c6711b51f7e2dfb049e984c8c90dfd1ff`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0281f6547f5cfef34cf6e59c1935efd9423b30c49a97caa55b3299e965d3504`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 938.1 KB (938055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafa52e7299e0f68764a55b921d99192a861054cd9a421fce048ffa6787151ce`  
		Last Modified: Thu, 12 Oct 2017 18:28:49 GMT  
		Size: 25.6 MB (25619471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb1eb7de62ab431186ef3d571bec4f6364ebab824f5d662b4d0c3c36e36020b`  
		Last Modified: Thu, 12 Oct 2017 18:28:46 GMT  
		Size: 6.9 MB (6926912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40bc6f8cdb17c86c0d43fe9b56c730e09f20d6b1fa12fa0f6f0eaa27ec5b50`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462e482b612a854287aa487e8a3121c6b273608871a405c72bd80c0192d2818`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f7cbcbc2d86d2a53a53aee388820237f920bb3320490596a821948322a7317`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1251546aac265bb12405e223deb1e938190b57d03c8903038f920d9ae9c9bb62`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199db4d2641323733c96fd746db50df2d357ef80d6a38c8dbe5e2baebefbdb6`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cb5e3e86125cb37892a49c2202a242a302e8435ef9139e549ab9a53b026cd9`  
		Last Modified: Thu, 12 Oct 2017 18:29:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
