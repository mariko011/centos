## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:74de2b9d328a3f88487540e5c5d8f076af7ae16351b4c5e03b37ff9ffd3d276b
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

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:ae31fefe10a3e172b264e47206a2310fb6927f5e5849d91b0b56013f7a0307bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62851425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2c6f8376d903a180d201467e56204e94dde7e5c8090041c508084c80208fa9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:46:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 04 Nov 2017 17:46:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 17:46:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:46:49 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 17:46:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Sat, 04 Nov 2017 17:47:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:47:09 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 04 Nov 2017 17:47:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 04 Nov 2017 17:47:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 04 Nov 2017 17:47:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 04 Nov 2017 17:47:11 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 04 Nov 2017 17:47:11 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 04 Nov 2017 17:47:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 17:47:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 17:47:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 04 Nov 2017 17:47:13 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a230aa37269c12703c5faa3deb792f9ad4b64056beb9bcbc1ae43c522a8040`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 4.5 MB (4498370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9190ffbd22711342d4d9be34c22d639f1f0f3abfe997a5c93cf50107b7a58a81`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e829d8f0d28e827108c1c6ff25405743e10cb6acb364dc1ab04670d23c45ee`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 951.9 KB (951943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404945c98d3c39a18e3d83787ade2526a1d476b140ad4ca470618135830f5a5`  
		Last Modified: Sat, 04 Nov 2017 17:47:43 GMT  
		Size: 27.7 MB (27703766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761545cf558dd9c467387a876eaf968788bb20830cf6a7d90fef5c15bb51daf7`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 7.2 MB (7194241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bde6c4284bd70608abe0ff147aa7e06a0758debd67680fef924fc3d58be499`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686684e391946154c23e874efaa6302d5bee6127ec05af72cfb1766d5174878f`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f585063d9211243e0de92c707b7e263e8dd2f0a35a29ff94fe4659abea8b61`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f5e892f69c68d62c971aa3da62c0278bc140200b4e7d18be19a662c93b8abd`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1841d1c0fea87c731bee87f4952a119956e777b5b192760fc820a38c2786ce70`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:f7cc0c0f4107399acaad4768261771753fd850acc3d3b53bac0da496e7e4516f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58431245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed04003b49a0885369a1091e198ea3856b2838bbda3363d9f527c625957d9759`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:14:44 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 14:14:44 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:15:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:15:50 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:15:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 14:15:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_VERSION=3.6.12
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Fri, 03 Nov 2017 14:15:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Sat, 04 Nov 2017 14:14:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:14:56 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 04 Nov 2017 14:14:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 04 Nov 2017 14:14:57 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 04 Nov 2017 14:14:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 04 Nov 2017 14:14:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 04 Nov 2017 14:14:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:15:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 14:15:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:15:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 04 Nov 2017 14:15:01 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab996b3d7a101ba6bf42115b4f156db847e321da9af52d5d686d82aa736b585`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 4.2 MB (4231333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17684896b3ee5196333b6fa48ce590caddf46e21d82a5c5ef0f1a171360a6e17`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828368257290f3ec36ef92643180012d362674e933b84c2db3c17c07f71d2629`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 942.5 KB (942454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fd4a06dc148e5a9a0ca56e46f45a376b486ca2b6c2c542f69e1f95927a7347`  
		Last Modified: Sat, 04 Nov 2017 14:15:31 GMT  
		Size: 25.2 MB (25170644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31337555aced087d4af40ceaf31602c735deb7c7b080f8f3d8ad58f2d0cd025a`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 6.9 MB (6909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52521bb6814f28ba54b8e3029235b078b0e0318d573d79f5bfa3d001b3522109`  
		Last Modified: Sat, 04 Nov 2017 14:15:24 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6212de44a13961eea927f30084c63a1a1694b019299e7b6657de53c8d1c630`  
		Last Modified: Sat, 04 Nov 2017 14:15:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b835adeb573edceef7ab9adfcb8abfef2050d9976219f0195a93f3fee5df5c0`  
		Last Modified: Sat, 04 Nov 2017 14:15:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b243c87c7b228070f05891fa88ebf5b3f6ac0c26bd2846a4a04b01b41092ce`  
		Last Modified: Sat, 04 Nov 2017 14:15:25 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be57193265a02fa0f34f2b43ff605bd1f14c937ecc965398a849e3aa2eed0f03`  
		Last Modified: Sat, 04 Nov 2017 14:15:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:c5a07be740a1d956343d5881d8827cb9e3d6dcceda2d8ce954cf187ab9be9abc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55688150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c4235a850985eab3d39e30563f87f78348a6425ec30388363f9d372c082855e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:07:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:07:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 13:07:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 13:08:17 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:17 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 13:08:17 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_VERSION=3.6.12
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Fri, 03 Nov 2017 13:08:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:39 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 03 Nov 2017 13:08:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 03 Nov 2017 13:08:41 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 03 Nov 2017 13:08:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 03 Nov 2017 13:08:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 03 Nov 2017 13:08:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 03 Nov 2017 13:08:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Nov 2017 13:08:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 13:08:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 03 Nov 2017 13:08:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037b99f3c3dc51e8ace39aed9971155f34f325ac4f0a1e56a07c4d6c02f5ae6`  
		Last Modified: Fri, 03 Nov 2017 13:09:18 GMT  
		Size: 3.9 MB (3868347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368172ea96bda944832762ad29b52dfe17ec5e6fae96eee37adc4e9d68674a5`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cc1ae60f8bf72ac3020ccc60b22d9e0ad0cb0647e15bc4847d08c8985eee2`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 926.1 KB (926097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13220cc1a683014bda9cfae7f7ee7015a26b28048f90f5aa3ed8b6a96f4b2813`  
		Last Modified: Fri, 03 Nov 2017 13:09:20 GMT  
		Size: 24.8 MB (24785610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f4e069126132643c1c0be1faf600d55ff15e870066c527d03181904d99c5d`  
		Last Modified: Fri, 03 Nov 2017 13:09:17 GMT  
		Size: 6.8 MB (6820180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ae244f4f610a339fcbddf37612a15ec7b7f6674e3d888c3c4d36302283418e`  
		Last Modified: Fri, 03 Nov 2017 13:09:15 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce7d85327b7bc7d59a7b54222a3e6babd7f8afd8eb080becb77fc52aed5a751`  
		Last Modified: Fri, 03 Nov 2017 13:09:15 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dfa32e4b49700ed0130ebd563f40a2c381393983b571a9886435813102ad0c`  
		Last Modified: Fri, 03 Nov 2017 13:09:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba15cd885dc21f438d366b40d0d9f595f2c25e063c60fa590ab4c0f6233ff94`  
		Last Modified: Fri, 03 Nov 2017 13:09:14 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978a8434497fcb8e08cefc7484b515ac34fe23c281fb869d015f62b54673028c`  
		Last Modified: Fri, 03 Nov 2017 13:09:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:3d9b2aee2786ff5328bb6b1195f2938e251fdfe7c183ffac1ead7ffe6f234d03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9e28302480b775a117eda9fd3d2e8897ee8a4ed19ceac66f0afaab1e5f8609`
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

### `rabbitmq:latest` - linux; 386

```console
$ docker pull rabbitmq@sha256:900c25b037b878974bb75f9d056b5278794f96586c9d03f619af9905a6cf5229
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a993d7c3c104c0e9f2ed42d750b907890291a9a2693d23f166744b9fb8e9265d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 10:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:45:12 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 10:45:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 10:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 10:46:03 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 10:46:04 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Fri, 03 Nov 2017 10:46:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:25 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 03 Nov 2017 10:46:26 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 03 Nov 2017 10:46:27 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 03 Nov 2017 10:46:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 03 Nov 2017 10:46:28 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 03 Nov 2017 10:46:28 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 03 Nov 2017 10:46:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Nov 2017 10:46:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 10:46:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 03 Nov 2017 10:46:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d407b136da0731f5f38279001e9dd426217937443cad0f16e1f242366290773`  
		Last Modified: Fri, 03 Nov 2017 10:47:13 GMT  
		Size: 4.8 MB (4803637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93817e78345b4b5070c81e5a37d02afc2b5fe347a1a4bf59e09f6084814fd2`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.1 KB (4057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97eae59c75f8f814ab781f5239ac2e132b7b65c77e75b35023c603c539ca54f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 931.5 KB (931524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed670dee19fde6946658d7129e13520c1a0747f8b80b6f92dac5f6d974ae52`  
		Last Modified: Fri, 03 Nov 2017 10:47:24 GMT  
		Size: 27.8 MB (27818690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b61d6d0b60ec18280aeba946a05d62817afbe030f277af85b5f434021e90c9`  
		Last Modified: Fri, 03 Nov 2017 10:47:16 GMT  
		Size: 7.2 MB (7208985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec7d4cc3b5497bbbd6b2d1e9574dbedb6c7ad11805cff4c287ea444ddc2e298`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eec554591344f78e35e3976d002d617623a52d123fc71e65d33c4d533d2b2e7`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e433f73af1167eff0dee1984c095bf5be36593fcead5b8cc820e2cb829aaed0`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8d6e0dbdbb04b44f7a0972fce6b0b1b19262e4fc5416bd1589af560f16c99f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bab08cf9b00d8109139e1cb1cdec448b71fdae7d7f1260d4175771416a5f80`  
		Last Modified: Fri, 03 Nov 2017 10:47:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:63dcce5fe70ba7b07c27b3af47248ad1f0609ca79e98e01a2ea0cb4e5357cc55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929ca14b97313f42a819bb7e089422aea0fa6d6a7428046a573c11937059499d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 07:12:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:12:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 07:12:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 07:13:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 07:15:26 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:15:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 07:15:29 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 07:15:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 03 Nov 2017 07:15:33 GMT
ENV RABBITMQ_VERSION=3.6.12
# Fri, 03 Nov 2017 07:15:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Fri, 03 Nov 2017 07:15:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Fri, 03 Nov 2017 07:16:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:16:55 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 03 Nov 2017 07:17:00 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 03 Nov 2017 07:17:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 03 Nov 2017 07:17:06 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 03 Nov 2017 07:17:11 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 03 Nov 2017 07:17:13 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 03 Nov 2017 07:17:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Nov 2017 07:17:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 07:17:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 03 Nov 2017 07:17:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebe4c87dcd1f7ef11d4d21752831bf4095ac42afe041706c35f1d7d4d0ca4f2`  
		Last Modified: Fri, 03 Nov 2017 07:18:05 GMT  
		Size: 4.4 MB (4360529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e5365525084de1c85fa29ef33d37c38b5f80621f5bcb26bb4882d71598c6f7`  
		Last Modified: Fri, 03 Nov 2017 07:18:03 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600c3853740b7f4cff9cc799ae478f669bd54277a8dd375479a34ed1bb47a803`  
		Last Modified: Fri, 03 Nov 2017 07:18:02 GMT  
		Size: 920.7 KB (920695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993868ec534130e348e45aa6d64b471fa46eafbf061836cc9d2a56edf73e9382`  
		Last Modified: Fri, 03 Nov 2017 07:18:06 GMT  
		Size: 25.5 MB (25492533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca1b92e212aaef163244d5fdd9e135fdb8be8c9dbbb626061ee2882d941a553`  
		Last Modified: Fri, 03 Nov 2017 07:18:03 GMT  
		Size: 6.9 MB (6853702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f483f96d1f500f9f69170bc6927d599a7f0cd1550f96b6ee3f90eb4185a1bffb`  
		Last Modified: Fri, 03 Nov 2017 07:17:59 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b433db63f40c7cab3080cf36bd7beabbdf7d9eece3f2dc16a65b900c61180`  
		Last Modified: Fri, 03 Nov 2017 07:17:59 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93971551a2c911c34ca2e9af47495efb2f27e2922e567d93dd94dfb9b773bd3`  
		Last Modified: Fri, 03 Nov 2017 07:17:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5494bb8bcc45452a84c216edffedb3103a15c3e209aba0561dfbc70e4312192e`  
		Last Modified: Fri, 03 Nov 2017 07:17:59 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56b2a4f9f8d7b11831a8f1952fe2c02613bcb014ab9d756b70b3b398b37269`  
		Last Modified: Fri, 03 Nov 2017 07:17:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:c5e29e37ac52898d26c2d63c4e0506afbaf0fa3862456c04c425429dae26248a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60364776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b9f437096f93b98ba60e922a7e6c52ff1e8a75593833f81fa03b4a035a3f50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 17:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:06:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 02 Nov 2017 17:06:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 17:07:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 17:07:43 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 02 Nov 2017 17:07:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_VERSION=3.6.12
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Thu, 02 Nov 2017 17:07:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Fri, 03 Nov 2017 17:07:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 17:07:48 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 03 Nov 2017 17:07:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 03 Nov 2017 17:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 03 Nov 2017 17:07:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 03 Nov 2017 17:07:53 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 03 Nov 2017 17:07:54 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 03 Nov 2017 17:07:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Nov 2017 17:07:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 17:07:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 03 Nov 2017 17:07:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae61f12be6f01ba06573d9393712e91821cd5496302310f550fe5842dea557`  
		Last Modified: Fri, 03 Nov 2017 17:08:41 GMT  
		Size: 4.5 MB (4529879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca307103ce923e7e89d35185be4df8e54c3c0b54d259b8880aa7bae107d4952`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16320f9fc35ea20ba7fb9b21f88e3f0f06c52d416682319f3b2a85a345a3d5`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 938.0 KB (938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801205b182b8d6f7acf36200b2ba07ed52ea224dfefe792b525224e4aacb4d4a`  
		Last Modified: Fri, 03 Nov 2017 17:08:48 GMT  
		Size: 25.6 MB (25619372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9cb605e6242f5ab505cbd229c7b2fdf2935a6254130070c12c4d8413616024`  
		Last Modified: Fri, 03 Nov 2017 17:08:40 GMT  
		Size: 6.9 MB (6926791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799e1b1479136fbb3c3ba6df318d449990a3cf5fc3293a14142cde0d9f51980`  
		Last Modified: Fri, 03 Nov 2017 17:08:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a6d5de3e6aaa1c06122a1b5cda3b4bcb98d54e5dc23f38896fc81e98cea769`  
		Last Modified: Fri, 03 Nov 2017 17:08:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa2e52818dcedf69c727f6790f0f9744f8538da3f4222602aaa0ab9fa82c0`  
		Last Modified: Fri, 03 Nov 2017 17:08:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c734f2707800c1189521a51409fed1508fb7e36c6e67eca5537d03c4b24ef0d`  
		Last Modified: Fri, 03 Nov 2017 17:08:37 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e7d712f1155d66243480cd441ec04e084a8e7e2d6a0653e27138b31b56d2ae`  
		Last Modified: Fri, 03 Nov 2017 17:08:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
