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
