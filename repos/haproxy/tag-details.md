<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haproxy`

-	[`haproxy:1.4.27`](#haproxy1427)
-	[`haproxy:1.4`](#haproxy14)
-	[`haproxy:1.4.27-alpine`](#haproxy1427-alpine)
-	[`haproxy:1.4-alpine`](#haproxy14-alpine)
-	[`haproxy:1.5.18`](#haproxy1518)
-	[`haproxy:1.5`](#haproxy15)
-	[`haproxy:1.5.18-alpine`](#haproxy1518-alpine)
-	[`haproxy:1.5-alpine`](#haproxy15-alpine)
-	[`haproxy:1.6.9`](#haproxy169)
-	[`haproxy:1.6`](#haproxy16)
-	[`haproxy:1`](#haproxy1)
-	[`haproxy:latest`](#haproxylatest)
-	[`haproxy:1.6.9-alpine`](#haproxy169-alpine)
-	[`haproxy:1.6-alpine`](#haproxy16-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:alpine`](#haproxyalpine)

## `haproxy:1.4.27`

```console
$ docker pull haproxy@sha256:24461bf801bc15753b29a98d1fbaea29295a19919c2bcc7a6a1cf8dbc63a9ff6
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54556402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22da1440065dc9b8c4f6512597711f752a79a896d344c2e63cbee5670fc8abda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:11:52 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:11:52 GMT
ENV HAPROXY_MAJOR=1.4
# Fri, 23 Sep 2016 19:11:53 GMT
ENV HAPROXY_VERSION=1.4.27
# Fri, 23 Sep 2016 19:11:53 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Fri, 23 Sep 2016 19:12:26 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:12:26 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Fri, 23 Sep 2016 19:12:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:12:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55976900aa93f60d36e8403d58a9a4f3b1b3832b93edc687524817d5d0dd24ea`  
		Last Modified: Fri, 23 Sep 2016 19:12:34 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847469328fde207fc8b347a1863df16e1c676796d4fa127d47bcf0ec80695149`  
		Last Modified: Fri, 23 Sep 2016 19:12:35 GMT  
		Size: 3.2 MB (3201630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b9c2f6c78be9c95ce823a19c4b7b073f9dcf4525ba86ef63e918afa787d280`  
		Last Modified: Fri, 23 Sep 2016 19:12:34 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4`

```console
$ docker pull haproxy@sha256:24461bf801bc15753b29a98d1fbaea29295a19919c2bcc7a6a1cf8dbc63a9ff6
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54556402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22da1440065dc9b8c4f6512597711f752a79a896d344c2e63cbee5670fc8abda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:11:52 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:11:52 GMT
ENV HAPROXY_MAJOR=1.4
# Fri, 23 Sep 2016 19:11:53 GMT
ENV HAPROXY_VERSION=1.4.27
# Fri, 23 Sep 2016 19:11:53 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Fri, 23 Sep 2016 19:12:26 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:12:26 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Fri, 23 Sep 2016 19:12:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:12:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55976900aa93f60d36e8403d58a9a4f3b1b3832b93edc687524817d5d0dd24ea`  
		Last Modified: Fri, 23 Sep 2016 19:12:34 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847469328fde207fc8b347a1863df16e1c676796d4fa127d47bcf0ec80695149`  
		Last Modified: Fri, 23 Sep 2016 19:12:35 GMT  
		Size: 3.2 MB (3201630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b9c2f6c78be9c95ce823a19c4b7b073f9dcf4525ba86ef63e918afa787d280`  
		Last Modified: Fri, 23 Sep 2016 19:12:34 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4.27-alpine`

```console
$ docker pull haproxy@sha256:b0a93f5bde6dfb88a1a92dac7d29d9af6da2f2e937ab29eff4dbaa7c23bc0a71
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3182371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231c98b1e8778ad698a7839827d05ab4803c043452b91b2f663c681ad743a28f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:19:40 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 18 Oct 2016 23:19:40 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 18 Oct 2016 23:19:40 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 18 Oct 2016 23:20:02 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:20:03 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 18 Oct 2016 23:20:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:20:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2579580b473a752d87571625d5a1f99c68bc81d796364aa0646a8f1fd3244b9`  
		Last Modified: Tue, 18 Oct 2016 23:20:13 GMT  
		Size: 869.2 KB (869202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c35b525297bdd4515f0809602900a44b3c01462fd6662de8f6ad912410129`  
		Last Modified: Tue, 18 Oct 2016 23:20:13 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4-alpine`

```console
$ docker pull haproxy@sha256:b0a93f5bde6dfb88a1a92dac7d29d9af6da2f2e937ab29eff4dbaa7c23bc0a71
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3182371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231c98b1e8778ad698a7839827d05ab4803c043452b91b2f663c681ad743a28f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:19:40 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 18 Oct 2016 23:19:40 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 18 Oct 2016 23:19:40 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 18 Oct 2016 23:20:02 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:20:03 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 18 Oct 2016 23:20:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:20:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2579580b473a752d87571625d5a1f99c68bc81d796364aa0646a8f1fd3244b9`  
		Last Modified: Tue, 18 Oct 2016 23:20:13 GMT  
		Size: 869.2 KB (869202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c35b525297bdd4515f0809602900a44b3c01462fd6662de8f6ad912410129`  
		Last Modified: Tue, 18 Oct 2016 23:20:13 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.18`

```console
$ docker pull haproxy@sha256:f7638884af5cd96c17ea354ea13b85b4d3956edc5740cc3318fa7dcdc873bade
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57045398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12644b10e94b3f7c9d75d4817936b405ae823462ef7b6c09180011cf9d272646`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:10:18 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:12:52 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 23 Sep 2016 19:12:52 GMT
ENV HAPROXY_VERSION=1.5.18
# Fri, 23 Sep 2016 19:12:53 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Fri, 23 Sep 2016 19:13:37 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:13:38 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 23 Sep 2016 19:13:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:13:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5f8a537fb0028923572765222a67d8a406ac3c5226d98190cd7c9568e1cae1`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 1.7 MB (1690194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692770411c4146c7f1cc301f3e353240247527b3cae8831c95c82b073d209fc2`  
		Last Modified: Fri, 23 Sep 2016 19:13:47 GMT  
		Size: 4.0 MB (4000496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5cffcc25c0e2a107d41a998c077b4640e039281004f431dc8071a4cfb0d6ee`  
		Last Modified: Fri, 23 Sep 2016 19:13:46 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:f7638884af5cd96c17ea354ea13b85b4d3956edc5740cc3318fa7dcdc873bade
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57045398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12644b10e94b3f7c9d75d4817936b405ae823462ef7b6c09180011cf9d272646`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:10:18 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:12:52 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 23 Sep 2016 19:12:52 GMT
ENV HAPROXY_VERSION=1.5.18
# Fri, 23 Sep 2016 19:12:53 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Fri, 23 Sep 2016 19:13:37 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:13:38 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 23 Sep 2016 19:13:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:13:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5f8a537fb0028923572765222a67d8a406ac3c5226d98190cd7c9568e1cae1`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 1.7 MB (1690194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692770411c4146c7f1cc301f3e353240247527b3cae8831c95c82b073d209fc2`  
		Last Modified: Fri, 23 Sep 2016 19:13:47 GMT  
		Size: 4.0 MB (4000496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5cffcc25c0e2a107d41a998c077b4640e039281004f431dc8071a4cfb0d6ee`  
		Last Modified: Fri, 23 Sep 2016 19:13:46 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.18-alpine`

```console
$ docker pull haproxy@sha256:9e3d9d493de95e33355d3ada265443019efbfdd384acbc4d4b17ca36de32e83b
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5.18-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4375590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d1c6028f7383cee56ee74693d9f984953258eb48423f66e8b7e1f09275384d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:20:32 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 18 Oct 2016 23:20:32 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 18 Oct 2016 23:20:33 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 18 Oct 2016 23:21:10 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:21:17 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 18 Oct 2016 23:21:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:21:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c42b43081acdc1c977ed68f6d498c71c0b03b122acca484f358970d1aaf671`  
		Last Modified: Tue, 18 Oct 2016 23:21:29 GMT  
		Size: 2.1 MB (2062288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a0fa298b48c7efbb66cb63fab41e14764adbc3ea20e59c68638a9e3dd8048b`  
		Last Modified: Tue, 18 Oct 2016 23:21:27 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:9e3d9d493de95e33355d3ada265443019efbfdd384acbc4d4b17ca36de32e83b
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4375590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d1c6028f7383cee56ee74693d9f984953258eb48423f66e8b7e1f09275384d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:20:32 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 18 Oct 2016 23:20:32 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 18 Oct 2016 23:20:33 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 18 Oct 2016 23:21:10 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:21:17 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 18 Oct 2016 23:21:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:21:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c42b43081acdc1c977ed68f6d498c71c0b03b122acca484f358970d1aaf671`  
		Last Modified: Tue, 18 Oct 2016 23:21:29 GMT  
		Size: 2.1 MB (2062288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a0fa298b48c7efbb66cb63fab41e14764adbc3ea20e59c68638a9e3dd8048b`  
		Last Modified: Tue, 18 Oct 2016 23:21:27 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.9`

```console
$ docker pull haproxy@sha256:7330244c633fdc09f5eb0e22a100bd19d1bb6ac81b530aedf1e5801da0504124
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57389533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024224f87983c3bc29811d49188647e1b1292810b9faa45a2254d4356da2b6e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:10:18 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:10:18 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 23 Sep 2016 19:10:18 GMT
ENV HAPROXY_VERSION=1.6.9
# Fri, 23 Sep 2016 19:10:19 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Fri, 23 Sep 2016 19:11:03 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:11:04 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 23 Sep 2016 19:11:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:11:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5f8a537fb0028923572765222a67d8a406ac3c5226d98190cd7c9568e1cae1`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 1.7 MB (1690194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8e58825d83ba6dcbeec4ea24a588ceac71c238faae19ad90c59ba1d05f4bc`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 4.3 MB (4344632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305cef75d38818f2f341e532bd6e4f9eae2d55a0551f5fcdde2b508ad0be5768`  
		Last Modified: Fri, 23 Sep 2016 19:11:12 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:7330244c633fdc09f5eb0e22a100bd19d1bb6ac81b530aedf1e5801da0504124
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57389533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024224f87983c3bc29811d49188647e1b1292810b9faa45a2254d4356da2b6e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:10:18 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:10:18 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 23 Sep 2016 19:10:18 GMT
ENV HAPROXY_VERSION=1.6.9
# Fri, 23 Sep 2016 19:10:19 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Fri, 23 Sep 2016 19:11:03 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:11:04 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 23 Sep 2016 19:11:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:11:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5f8a537fb0028923572765222a67d8a406ac3c5226d98190cd7c9568e1cae1`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 1.7 MB (1690194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8e58825d83ba6dcbeec4ea24a588ceac71c238faae19ad90c59ba1d05f4bc`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 4.3 MB (4344632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305cef75d38818f2f341e532bd6e4f9eae2d55a0551f5fcdde2b508ad0be5768`  
		Last Modified: Fri, 23 Sep 2016 19:11:12 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1`

```console
$ docker pull haproxy@sha256:7330244c633fdc09f5eb0e22a100bd19d1bb6ac81b530aedf1e5801da0504124
```

-	Platforms:
	-	linux; amd64

### `haproxy:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57389533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024224f87983c3bc29811d49188647e1b1292810b9faa45a2254d4356da2b6e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:10:18 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:10:18 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 23 Sep 2016 19:10:18 GMT
ENV HAPROXY_VERSION=1.6.9
# Fri, 23 Sep 2016 19:10:19 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Fri, 23 Sep 2016 19:11:03 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:11:04 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 23 Sep 2016 19:11:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:11:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5f8a537fb0028923572765222a67d8a406ac3c5226d98190cd7c9568e1cae1`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 1.7 MB (1690194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8e58825d83ba6dcbeec4ea24a588ceac71c238faae19ad90c59ba1d05f4bc`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 4.3 MB (4344632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305cef75d38818f2f341e532bd6e4f9eae2d55a0551f5fcdde2b508ad0be5768`  
		Last Modified: Fri, 23 Sep 2016 19:11:12 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:7330244c633fdc09f5eb0e22a100bd19d1bb6ac81b530aedf1e5801da0504124
```

-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57389533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024224f87983c3bc29811d49188647e1b1292810b9faa45a2254d4356da2b6e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:10:18 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:10:18 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 23 Sep 2016 19:10:18 GMT
ENV HAPROXY_VERSION=1.6.9
# Fri, 23 Sep 2016 19:10:19 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Fri, 23 Sep 2016 19:11:03 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 19:11:04 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 23 Sep 2016 19:11:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 19:11:04 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5f8a537fb0028923572765222a67d8a406ac3c5226d98190cd7c9568e1cae1`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 1.7 MB (1690194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8e58825d83ba6dcbeec4ea24a588ceac71c238faae19ad90c59ba1d05f4bc`  
		Last Modified: Fri, 23 Sep 2016 19:11:13 GMT  
		Size: 4.3 MB (4344632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305cef75d38818f2f341e532bd6e4f9eae2d55a0551f5fcdde2b508ad0be5768`  
		Last Modified: Fri, 23 Sep 2016 19:11:12 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.9-alpine`

```console
$ docker pull haproxy@sha256:cb880648a22f6a0229e3fc5d4daac8e6121c38f44db229bdc600c3434b9eff27
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4741767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd58e0d7bd0705ee3b07844742693ef337c5e5101e47c531ec05b2b3a09c1e79`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_VERSION=1.6.9
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Tue, 18 Oct 2016 23:18:43 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:18:48 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 18 Oct 2016 23:18:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:18:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173001f8c2dd269f76f4eae2c28e4f7298e2dd54ba1e89ea12de8516fb98c4c2`  
		Last Modified: Tue, 18 Oct 2016 23:19:01 GMT  
		Size: 2.4 MB (2428464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6edb48c29ae05141be28aede63621ae9973cf9eff716a2c1d5c61e2a1cc8f9`  
		Last Modified: Tue, 18 Oct 2016 23:18:59 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:cb880648a22f6a0229e3fc5d4daac8e6121c38f44db229bdc600c3434b9eff27
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4741767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd58e0d7bd0705ee3b07844742693ef337c5e5101e47c531ec05b2b3a09c1e79`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_VERSION=1.6.9
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Tue, 18 Oct 2016 23:18:43 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:18:48 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 18 Oct 2016 23:18:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:18:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173001f8c2dd269f76f4eae2c28e4f7298e2dd54ba1e89ea12de8516fb98c4c2`  
		Last Modified: Tue, 18 Oct 2016 23:19:01 GMT  
		Size: 2.4 MB (2428464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6edb48c29ae05141be28aede63621ae9973cf9eff716a2c1d5c61e2a1cc8f9`  
		Last Modified: Tue, 18 Oct 2016 23:18:59 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:cb880648a22f6a0229e3fc5d4daac8e6121c38f44db229bdc600c3434b9eff27
```

-	Platforms:
	-	linux; amd64

### `haproxy:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4741767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd58e0d7bd0705ee3b07844742693ef337c5e5101e47c531ec05b2b3a09c1e79`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_VERSION=1.6.9
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Tue, 18 Oct 2016 23:18:43 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:18:48 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 18 Oct 2016 23:18:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:18:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173001f8c2dd269f76f4eae2c28e4f7298e2dd54ba1e89ea12de8516fb98c4c2`  
		Last Modified: Tue, 18 Oct 2016 23:19:01 GMT  
		Size: 2.4 MB (2428464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6edb48c29ae05141be28aede63621ae9973cf9eff716a2c1d5c61e2a1cc8f9`  
		Last Modified: Tue, 18 Oct 2016 23:18:59 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:cb880648a22f6a0229e3fc5d4daac8e6121c38f44db229bdc600c3434b9eff27
```

-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4741767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd58e0d7bd0705ee3b07844742693ef337c5e5101e47c531ec05b2b3a09c1e79`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_VERSION=1.6.9
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Tue, 18 Oct 2016 23:18:43 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:18:48 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 18 Oct 2016 23:18:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:18:49 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173001f8c2dd269f76f4eae2c28e4f7298e2dd54ba1e89ea12de8516fb98c4c2`  
		Last Modified: Tue, 18 Oct 2016 23:19:01 GMT  
		Size: 2.4 MB (2428464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6edb48c29ae05141be28aede63621ae9973cf9eff716a2c1d5c61e2a1cc8f9`  
		Last Modified: Tue, 18 Oct 2016 23:18:59 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
