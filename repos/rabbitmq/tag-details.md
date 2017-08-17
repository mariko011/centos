<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.11`](#rabbitmq3611)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.11-management`](#rabbitmq3611-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:3.6.11-alpine`](#rabbitmq3611-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:3.6.11-management-alpine`](#rabbitmq3611-management-alpine)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3.6.11`

**does not exist** (yet?)

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:7f8fe778a897bbfd66c76e464a3ba08d01769d00a856a1c638a5ddbcdf6468e0
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62625313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad16bdb4e74fbd79e713bac77847c53ffd63ed479817373959832bf3cf77147`
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
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Wed, 26 Jul 2017 09:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 09:08:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 26 Jul 2017 09:08:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 26 Jul 2017 09:08:59 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 26 Jul 2017 09:08:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 26 Jul 2017 09:09:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 09:09:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 09:09:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 26 Jul 2017 09:09:01 GMT
CMD ["rabbitmq-server"]
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
	-	`sha256:f6a196e88b0ee208959579597321318fc5b81fef336bd2d50d97de48d8004fea`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 7.2 MB (7159101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c744056dd6b7e7d4575d45955a4b2ed77ddb1a70ca23528d0ba997e0303d0d`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9866ec7451b922e78df5bd431fc93ce5cbdf3ccda7322d0e0c0bb6fe7af6950`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9725f550c5e8f3d5448854fc1cef6057414bceb50df44e43358b134a92b007e8`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62833a2c636805738b6d2dfe61e52d2e7ed58bfb7937f5b6f606aedb1a1cec5f`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5787da173e3455c2e3461170ef338d09d5510905a9559a1a2dae5c14d428eb`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:7f8fe778a897bbfd66c76e464a3ba08d01769d00a856a1c638a5ddbcdf6468e0
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62625313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad16bdb4e74fbd79e713bac77847c53ffd63ed479817373959832bf3cf77147`
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
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Wed, 26 Jul 2017 09:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 09:08:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 26 Jul 2017 09:08:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 26 Jul 2017 09:08:59 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 26 Jul 2017 09:08:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 26 Jul 2017 09:09:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 09:09:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 09:09:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 26 Jul 2017 09:09:01 GMT
CMD ["rabbitmq-server"]
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
	-	`sha256:f6a196e88b0ee208959579597321318fc5b81fef336bd2d50d97de48d8004fea`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 7.2 MB (7159101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c744056dd6b7e7d4575d45955a4b2ed77ddb1a70ca23528d0ba997e0303d0d`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9866ec7451b922e78df5bd431fc93ce5cbdf3ccda7322d0e0c0bb6fe7af6950`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9725f550c5e8f3d5448854fc1cef6057414bceb50df44e43358b134a92b007e8`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62833a2c636805738b6d2dfe61e52d2e7ed58bfb7937f5b6f606aedb1a1cec5f`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5787da173e3455c2e3461170ef338d09d5510905a9559a1a2dae5c14d428eb`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:7f8fe778a897bbfd66c76e464a3ba08d01769d00a856a1c638a5ddbcdf6468e0
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62625313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad16bdb4e74fbd79e713bac77847c53ffd63ed479817373959832bf3cf77147`
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
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Wed, 26 Jul 2017 09:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 09:08:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 26 Jul 2017 09:08:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 26 Jul 2017 09:08:59 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 26 Jul 2017 09:08:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 26 Jul 2017 09:09:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 09:09:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 09:09:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 26 Jul 2017 09:09:01 GMT
CMD ["rabbitmq-server"]
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
	-	`sha256:f6a196e88b0ee208959579597321318fc5b81fef336bd2d50d97de48d8004fea`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 7.2 MB (7159101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c744056dd6b7e7d4575d45955a4b2ed77ddb1a70ca23528d0ba997e0303d0d`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9866ec7451b922e78df5bd431fc93ce5cbdf3ccda7322d0e0c0bb6fe7af6950`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9725f550c5e8f3d5448854fc1cef6057414bceb50df44e43358b134a92b007e8`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62833a2c636805738b6d2dfe61e52d2e7ed58bfb7937f5b6f606aedb1a1cec5f`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5787da173e3455c2e3461170ef338d09d5510905a9559a1a2dae5c14d428eb`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.11-management`

**does not exist** (yet?)

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:cc438a2ef2645aabf75831f9ff77b7f514691963b1a6b0bdabd1960bdc1c68f7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62625499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10fce4f4bb8ffb08a9455f4daf47e56ecb88cef03a90dbe03f343575e636907`
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
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Wed, 26 Jul 2017 09:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 09:08:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 26 Jul 2017 09:08:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 26 Jul 2017 09:08:59 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 26 Jul 2017 09:08:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 26 Jul 2017 09:09:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 09:09:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 09:09:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 26 Jul 2017 09:09:01 GMT
CMD ["rabbitmq-server"]
# Wed, 26 Jul 2017 09:09:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 26 Jul 2017 09:09:05 GMT
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
	-	`sha256:f6a196e88b0ee208959579597321318fc5b81fef336bd2d50d97de48d8004fea`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 7.2 MB (7159101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c744056dd6b7e7d4575d45955a4b2ed77ddb1a70ca23528d0ba997e0303d0d`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9866ec7451b922e78df5bd431fc93ce5cbdf3ccda7322d0e0c0bb6fe7af6950`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9725f550c5e8f3d5448854fc1cef6057414bceb50df44e43358b134a92b007e8`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62833a2c636805738b6d2dfe61e52d2e7ed58bfb7937f5b6f606aedb1a1cec5f`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5787da173e3455c2e3461170ef338d09d5510905a9559a1a2dae5c14d428eb`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944262f629644d6f64062a6ea0cd9d558cb673b0523712da323338a24f205f4`  
		Last Modified: Wed, 26 Jul 2017 09:09:43 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:cc438a2ef2645aabf75831f9ff77b7f514691963b1a6b0bdabd1960bdc1c68f7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62625499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10fce4f4bb8ffb08a9455f4daf47e56ecb88cef03a90dbe03f343575e636907`
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
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Wed, 26 Jul 2017 09:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 09:08:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 26 Jul 2017 09:08:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 26 Jul 2017 09:08:59 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 26 Jul 2017 09:08:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 26 Jul 2017 09:09:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 09:09:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 09:09:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 26 Jul 2017 09:09:01 GMT
CMD ["rabbitmq-server"]
# Wed, 26 Jul 2017 09:09:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 26 Jul 2017 09:09:05 GMT
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
	-	`sha256:f6a196e88b0ee208959579597321318fc5b81fef336bd2d50d97de48d8004fea`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 7.2 MB (7159101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c744056dd6b7e7d4575d45955a4b2ed77ddb1a70ca23528d0ba997e0303d0d`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9866ec7451b922e78df5bd431fc93ce5cbdf3ccda7322d0e0c0bb6fe7af6950`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9725f550c5e8f3d5448854fc1cef6057414bceb50df44e43358b134a92b007e8`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62833a2c636805738b6d2dfe61e52d2e7ed58bfb7937f5b6f606aedb1a1cec5f`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5787da173e3455c2e3461170ef338d09d5510905a9559a1a2dae5c14d428eb`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944262f629644d6f64062a6ea0cd9d558cb673b0523712da323338a24f205f4`  
		Last Modified: Wed, 26 Jul 2017 09:09:43 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:cc438a2ef2645aabf75831f9ff77b7f514691963b1a6b0bdabd1960bdc1c68f7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62625499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10fce4f4bb8ffb08a9455f4daf47e56ecb88cef03a90dbe03f343575e636907`
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
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 26 Jul 2017 09:08:51 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Wed, 26 Jul 2017 09:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 09:08:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 26 Jul 2017 09:08:57 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 26 Jul 2017 09:08:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 26 Jul 2017 09:08:59 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 26 Jul 2017 09:08:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 26 Jul 2017 09:09:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Jul 2017 09:09:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 09:09:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 26 Jul 2017 09:09:01 GMT
CMD ["rabbitmq-server"]
# Wed, 26 Jul 2017 09:09:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 26 Jul 2017 09:09:05 GMT
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
	-	`sha256:f6a196e88b0ee208959579597321318fc5b81fef336bd2d50d97de48d8004fea`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 7.2 MB (7159101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c744056dd6b7e7d4575d45955a4b2ed77ddb1a70ca23528d0ba997e0303d0d`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 2.2 KB (2241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9866ec7451b922e78df5bd431fc93ce5cbdf3ccda7322d0e0c0bb6fe7af6950`  
		Last Modified: Wed, 26 Jul 2017 09:09:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9725f550c5e8f3d5448854fc1cef6057414bceb50df44e43358b134a92b007e8`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62833a2c636805738b6d2dfe61e52d2e7ed58bfb7937f5b6f606aedb1a1cec5f`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5787da173e3455c2e3461170ef338d09d5510905a9559a1a2dae5c14d428eb`  
		Last Modified: Wed, 26 Jul 2017 09:09:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f944262f629644d6f64062a6ea0cd9d558cb673b0523712da323338a24f205f4`  
		Last Modified: Wed, 26 Jul 2017 09:09:43 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.11-alpine`

**does not exist** (yet?)

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:6909e5c87f577320f794a5e9b09bd956db1f399b1c240484854969bb06598c7c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e7b6de0ebb3a8da2a55138dca9a06845fc84ea74cfcd887441878a7b255e10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 28 Jun 2017 22:12:45 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 28 Jun 2017 22:12:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 28 Jun 2017 22:12:54 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 28 Jun 2017 22:12:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 28 Jun 2017 22:12:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 28 Jun 2017 22:12:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 28 Jun 2017 22:12:59 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 28 Jun 2017 22:13:00 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 28 Jun 2017 22:13:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a4909e74e36222e7bc3db02d77079812b61a7ec19cbdab9afc8efd0924a556`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 5.0 MB (4975147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec0566f796805025d814d209814324a5f79469d7f9951a89983a9d4c0fa1866`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b829637e87775f08f864008646d1dc8d58572cf9bc78501dc59586f9624b7482`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422751327de1bc1a7eb7c1513d9d078d5ed67db609b1d72f4e7bee559a4deaab`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3910da26c462b7e20fc099f25979cf9d510ed66a280da6aa0f169f9b6e5eac3`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:6909e5c87f577320f794a5e9b09bd956db1f399b1c240484854969bb06598c7c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e7b6de0ebb3a8da2a55138dca9a06845fc84ea74cfcd887441878a7b255e10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 28 Jun 2017 22:12:45 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 28 Jun 2017 22:12:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 28 Jun 2017 22:12:54 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 28 Jun 2017 22:12:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 28 Jun 2017 22:12:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 28 Jun 2017 22:12:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 28 Jun 2017 22:12:59 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 28 Jun 2017 22:13:00 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 28 Jun 2017 22:13:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a4909e74e36222e7bc3db02d77079812b61a7ec19cbdab9afc8efd0924a556`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 5.0 MB (4975147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec0566f796805025d814d209814324a5f79469d7f9951a89983a9d4c0fa1866`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b829637e87775f08f864008646d1dc8d58572cf9bc78501dc59586f9624b7482`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422751327de1bc1a7eb7c1513d9d078d5ed67db609b1d72f4e7bee559a4deaab`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3910da26c462b7e20fc099f25979cf9d510ed66a280da6aa0f169f9b6e5eac3`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:6909e5c87f577320f794a5e9b09bd956db1f399b1c240484854969bb06598c7c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e7b6de0ebb3a8da2a55138dca9a06845fc84ea74cfcd887441878a7b255e10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 28 Jun 2017 22:12:45 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 28 Jun 2017 22:12:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 28 Jun 2017 22:12:54 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 28 Jun 2017 22:12:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 28 Jun 2017 22:12:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 28 Jun 2017 22:12:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 28 Jun 2017 22:12:59 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 28 Jun 2017 22:13:00 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 28 Jun 2017 22:13:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a4909e74e36222e7bc3db02d77079812b61a7ec19cbdab9afc8efd0924a556`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 5.0 MB (4975147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec0566f796805025d814d209814324a5f79469d7f9951a89983a9d4c0fa1866`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b829637e87775f08f864008646d1dc8d58572cf9bc78501dc59586f9624b7482`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422751327de1bc1a7eb7c1513d9d078d5ed67db609b1d72f4e7bee559a4deaab`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3910da26c462b7e20fc099f25979cf9d510ed66a280da6aa0f169f9b6e5eac3`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.11-management-alpine`

**does not exist** (yet?)

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:a82f60bcde44591ead0f58014f184f1de95b21a0db252a0aaaa359d8caf8aaf1
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4252c89a92808f4aa43bcade875d3d5a6a357cbd9c709480caebfd2ea1e59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 28 Jun 2017 22:12:45 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 28 Jun 2017 22:12:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 28 Jun 2017 22:12:54 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 28 Jun 2017 22:12:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 28 Jun 2017 22:12:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 28 Jun 2017 22:12:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 28 Jun 2017 22:12:59 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 28 Jun 2017 22:13:00 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 28 Jun 2017 22:13:02 GMT
CMD ["rabbitmq-server"]
# Wed, 28 Jun 2017 22:13:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 28 Jun 2017 22:13:31 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a4909e74e36222e7bc3db02d77079812b61a7ec19cbdab9afc8efd0924a556`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 5.0 MB (4975147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec0566f796805025d814d209814324a5f79469d7f9951a89983a9d4c0fa1866`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b829637e87775f08f864008646d1dc8d58572cf9bc78501dc59586f9624b7482`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422751327de1bc1a7eb7c1513d9d078d5ed67db609b1d72f4e7bee559a4deaab`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3910da26c462b7e20fc099f25979cf9d510ed66a280da6aa0f169f9b6e5eac3`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c881d9908369150f593baf788d9c98b7c98d562c8809e086e2005b8229a77`  
		Last Modified: Fri, 30 Jun 2017 00:41:25 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:a82f60bcde44591ead0f58014f184f1de95b21a0db252a0aaaa359d8caf8aaf1
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4252c89a92808f4aa43bcade875d3d5a6a357cbd9c709480caebfd2ea1e59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 28 Jun 2017 22:12:45 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 28 Jun 2017 22:12:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 28 Jun 2017 22:12:54 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 28 Jun 2017 22:12:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 28 Jun 2017 22:12:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 28 Jun 2017 22:12:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 28 Jun 2017 22:12:59 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 28 Jun 2017 22:13:00 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 28 Jun 2017 22:13:02 GMT
CMD ["rabbitmq-server"]
# Wed, 28 Jun 2017 22:13:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 28 Jun 2017 22:13:31 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a4909e74e36222e7bc3db02d77079812b61a7ec19cbdab9afc8efd0924a556`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 5.0 MB (4975147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec0566f796805025d814d209814324a5f79469d7f9951a89983a9d4c0fa1866`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b829637e87775f08f864008646d1dc8d58572cf9bc78501dc59586f9624b7482`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422751327de1bc1a7eb7c1513d9d078d5ed67db609b1d72f4e7bee559a4deaab`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3910da26c462b7e20fc099f25979cf9d510ed66a280da6aa0f169f9b6e5eac3`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c881d9908369150f593baf788d9c98b7c98d562c8809e086e2005b8229a77`  
		Last Modified: Fri, 30 Jun 2017 00:41:25 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:a82f60bcde44591ead0f58014f184f1de95b21a0db252a0aaaa359d8caf8aaf1
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4252c89a92808f4aa43bcade875d3d5a6a357cbd9c709480caebfd2ea1e59e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 28 Jun 2017 22:12:45 GMT
ENV RABBITMQ_VERSION=3.6.10
# Wed, 28 Jun 2017 22:12:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 28 Jun 2017 22:12:54 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 28 Jun 2017 22:12:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 28 Jun 2017 22:12:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 28 Jun 2017 22:12:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 28 Jun 2017 22:12:59 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 28 Jun 2017 22:13:00 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 28 Jun 2017 22:13:02 GMT
CMD ["rabbitmq-server"]
# Wed, 28 Jun 2017 22:13:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 28 Jun 2017 22:13:31 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a4909e74e36222e7bc3db02d77079812b61a7ec19cbdab9afc8efd0924a556`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 5.0 MB (4975147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec0566f796805025d814d209814324a5f79469d7f9951a89983a9d4c0fa1866`  
		Last Modified: Fri, 30 Jun 2017 00:38:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b829637e87775f08f864008646d1dc8d58572cf9bc78501dc59586f9624b7482`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422751327de1bc1a7eb7c1513d9d078d5ed67db609b1d72f4e7bee559a4deaab`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3910da26c462b7e20fc099f25979cf9d510ed66a280da6aa0f169f9b6e5eac3`  
		Last Modified: Fri, 30 Jun 2017 00:38:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6c881d9908369150f593baf788d9c98b7c98d562c8809e086e2005b8229a77`  
		Last Modified: Fri, 30 Jun 2017 00:41:25 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
