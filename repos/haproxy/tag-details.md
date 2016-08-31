<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

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
$ docker pull haproxy@sha256:53db3bcf2e2cbde516f02ca344c78d970ea91d946b1b08d4986c3f0cd1351555
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54569591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cb494d5683e3078873eab4f153304ac4e1becb41d3e67e1ef044d44cb05793`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:42:19 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:42:19 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 30 Aug 2016 21:42:20 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 30 Aug 2016 21:42:20 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 30 Aug 2016 21:42:54 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:42:54 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 30 Aug 2016 21:42:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:42:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb6b48b80c4327f8b2f233bd8111204ac14778fb449f74f71f503677dba8c22`  
		Last Modified: Wed, 31 Aug 2016 17:07:53 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1994e815ee495090fc015773469679679e77c8011587133deaa3b3578b2a2a2c`  
		Last Modified: Wed, 31 Aug 2016 17:07:54 GMT  
		Size: 3.2 MB (3201911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac080dd6435859a1d9279f38f6289e7ea5433900751467878fea21689aa90ba`  
		Last Modified: Wed, 31 Aug 2016 17:07:53 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4`

```console
$ docker pull haproxy@sha256:53db3bcf2e2cbde516f02ca344c78d970ea91d946b1b08d4986c3f0cd1351555
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54569591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cb494d5683e3078873eab4f153304ac4e1becb41d3e67e1ef044d44cb05793`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:42:19 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:42:19 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 30 Aug 2016 21:42:20 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 30 Aug 2016 21:42:20 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 30 Aug 2016 21:42:54 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:42:54 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 30 Aug 2016 21:42:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:42:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb6b48b80c4327f8b2f233bd8111204ac14778fb449f74f71f503677dba8c22`  
		Last Modified: Wed, 31 Aug 2016 17:07:53 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1994e815ee495090fc015773469679679e77c8011587133deaa3b3578b2a2a2c`  
		Last Modified: Wed, 31 Aug 2016 17:07:54 GMT  
		Size: 3.2 MB (3201911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac080dd6435859a1d9279f38f6289e7ea5433900751467878fea21689aa90ba`  
		Last Modified: Wed, 31 Aug 2016 17:07:53 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4.27-alpine`

```console
$ docker pull haproxy@sha256:2258b81ecd86cf0beed4af7878099e239c13bff97476ef6e523c67985d8e265d
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3559097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b385d70c889654fa75569ef58f87f4e5f7b08161f18c97b9540d4df1766b15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:26:53 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 30 Aug 2016 00:26:53 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 30 Aug 2016 00:26:53 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 30 Aug 2016 00:27:11 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:27:11 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 30 Aug 2016 00:27:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 00:27:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f586994281cb82040b2a6d94a523b2c417c7fbcc0aa7b0f41939f38dd188529`  
		Last Modified: Wed, 31 Aug 2016 17:08:14 GMT  
		Size: 1.2 MB (1248599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2d873c4b789be887b0eb888cd58caa42c0a46285b198d41739e47e089823d3`  
		Last Modified: Wed, 31 Aug 2016 17:08:13 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4-alpine`

```console
$ docker pull haproxy@sha256:2258b81ecd86cf0beed4af7878099e239c13bff97476ef6e523c67985d8e265d
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3559097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b385d70c889654fa75569ef58f87f4e5f7b08161f18c97b9540d4df1766b15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:26:53 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 30 Aug 2016 00:26:53 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 30 Aug 2016 00:26:53 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 30 Aug 2016 00:27:11 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:27:11 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 30 Aug 2016 00:27:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 00:27:11 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f586994281cb82040b2a6d94a523b2c417c7fbcc0aa7b0f41939f38dd188529`  
		Last Modified: Wed, 31 Aug 2016 17:08:14 GMT  
		Size: 1.2 MB (1248599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2d873c4b789be887b0eb888cd58caa42c0a46285b198d41739e47e089823d3`  
		Last Modified: Wed, 31 Aug 2016 17:08:13 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.18`

```console
$ docker pull haproxy@sha256:b32f39c36e9a7c5db32fba274656fdbe9197d020a381be018826b17b9d12a5fb
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57058418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a0cc19a6a59c7e0dbe37b1de3f7885defdd0ed6d420688df6cadfad5d2d5e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:43:01 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:43:01 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 30 Aug 2016 21:43:01 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 30 Aug 2016 21:43:02 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 30 Aug 2016 21:43:44 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:43:45 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 30 Aug 2016 21:43:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:43:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1707a087439221a1cddafeef27eb15cb84b371c94667d046cab26ee3a09c73`  
		Last Modified: Wed, 31 Aug 2016 17:08:36 GMT  
		Size: 1.7 MB (1689979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b443042e62ba3ebce3ad7441f8bc5f37eb395d5a5df1332c4ffd92c67d1c2c`  
		Last Modified: Wed, 31 Aug 2016 17:08:38 GMT  
		Size: 4.0 MB (4000826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2338e29734f6524abd81ef32be90701217dd03ee8da06beee29499577879b2`  
		Last Modified: Wed, 31 Aug 2016 17:08:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:b32f39c36e9a7c5db32fba274656fdbe9197d020a381be018826b17b9d12a5fb
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57058418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a0cc19a6a59c7e0dbe37b1de3f7885defdd0ed6d420688df6cadfad5d2d5e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:43:01 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:43:01 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 30 Aug 2016 21:43:01 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 30 Aug 2016 21:43:02 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 30 Aug 2016 21:43:44 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 30 Aug 2016 21:43:45 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 30 Aug 2016 21:43:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:43:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1707a087439221a1cddafeef27eb15cb84b371c94667d046cab26ee3a09c73`  
		Last Modified: Wed, 31 Aug 2016 17:08:36 GMT  
		Size: 1.7 MB (1689979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b443042e62ba3ebce3ad7441f8bc5f37eb395d5a5df1332c4ffd92c67d1c2c`  
		Last Modified: Wed, 31 Aug 2016 17:08:38 GMT  
		Size: 4.0 MB (4000826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2338e29734f6524abd81ef32be90701217dd03ee8da06beee29499577879b2`  
		Last Modified: Wed, 31 Aug 2016 17:08:36 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.18-alpine`

```console
$ docker pull haproxy@sha256:1baea31b4340622344818f1fd8c339125ebac7ebd79c88e4a859684d6515fd55
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5.18-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4752500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f121f177b64734feb63011a7bf57df9976c240406c7ce83a1fb1d7ee74d841d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:28:02 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 30 Aug 2016 00:28:03 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 30 Aug 2016 00:28:03 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 30 Aug 2016 00:28:33 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:28:33 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 30 Aug 2016 00:28:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 00:28:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b58d56dc0835f59fcf0240d68dccb8baa0d276b3da08ec87ce2f1014baf919`  
		Last Modified: Wed, 31 Aug 2016 17:08:59 GMT  
		Size: 2.4 MB (2441868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d0f74e636477ca86937ff88f88bd008e3266cf287d155169fd291f5d76a3fa`  
		Last Modified: Wed, 31 Aug 2016 17:08:57 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:1baea31b4340622344818f1fd8c339125ebac7ebd79c88e4a859684d6515fd55
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4752500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f121f177b64734feb63011a7bf57df9976c240406c7ce83a1fb1d7ee74d841d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:28:02 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 30 Aug 2016 00:28:03 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 30 Aug 2016 00:28:03 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 30 Aug 2016 00:28:33 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:28:33 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 30 Aug 2016 00:28:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 00:28:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b58d56dc0835f59fcf0240d68dccb8baa0d276b3da08ec87ce2f1014baf919`  
		Last Modified: Wed, 31 Aug 2016 17:08:59 GMT  
		Size: 2.4 MB (2441868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d0f74e636477ca86937ff88f88bd008e3266cf287d155169fd291f5d76a3fa`  
		Last Modified: Wed, 31 Aug 2016 17:08:57 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.9`

```console
$ docker pull haproxy@sha256:a25d7907e176e58f0dc7241e6ffd0a5dbc4946e680a5c6f1fa4b71b631534a69
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57402620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65599e2ea3f2172b601863aa0ff18047515b29c506a4817ac2c29548babdbabf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:43:01 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:43:45 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_VERSION=1.6.9
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Wed, 31 Aug 2016 17:07:01 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 17:07:02 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 31 Aug 2016 17:07:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:07:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1707a087439221a1cddafeef27eb15cb84b371c94667d046cab26ee3a09c73`  
		Last Modified: Wed, 31 Aug 2016 17:08:36 GMT  
		Size: 1.7 MB (1689979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856796a2282e062a27a3543c1791433c770b23bb9c18eb9b3037ece97744232`  
		Last Modified: Wed, 31 Aug 2016 17:09:22 GMT  
		Size: 4.3 MB (4345029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3064379351b9741fc8e754fcf8d39977046a805bab9ef8db35b3da4076f1848`  
		Last Modified: Wed, 31 Aug 2016 17:09:20 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:a25d7907e176e58f0dc7241e6ffd0a5dbc4946e680a5c6f1fa4b71b631534a69
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57402620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65599e2ea3f2172b601863aa0ff18047515b29c506a4817ac2c29548babdbabf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:43:01 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:43:45 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_VERSION=1.6.9
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Wed, 31 Aug 2016 17:07:01 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 17:07:02 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 31 Aug 2016 17:07:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:07:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1707a087439221a1cddafeef27eb15cb84b371c94667d046cab26ee3a09c73`  
		Last Modified: Wed, 31 Aug 2016 17:08:36 GMT  
		Size: 1.7 MB (1689979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856796a2282e062a27a3543c1791433c770b23bb9c18eb9b3037ece97744232`  
		Last Modified: Wed, 31 Aug 2016 17:09:22 GMT  
		Size: 4.3 MB (4345029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3064379351b9741fc8e754fcf8d39977046a805bab9ef8db35b3da4076f1848`  
		Last Modified: Wed, 31 Aug 2016 17:09:20 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1`

```console
$ docker pull haproxy@sha256:a25d7907e176e58f0dc7241e6ffd0a5dbc4946e680a5c6f1fa4b71b631534a69
```

-	Platforms:
	-	linux; amd64

### `haproxy:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57402620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65599e2ea3f2172b601863aa0ff18047515b29c506a4817ac2c29548babdbabf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:43:01 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:43:45 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_VERSION=1.6.9
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Wed, 31 Aug 2016 17:07:01 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 17:07:02 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 31 Aug 2016 17:07:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:07:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1707a087439221a1cddafeef27eb15cb84b371c94667d046cab26ee3a09c73`  
		Last Modified: Wed, 31 Aug 2016 17:08:36 GMT  
		Size: 1.7 MB (1689979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856796a2282e062a27a3543c1791433c770b23bb9c18eb9b3037ece97744232`  
		Last Modified: Wed, 31 Aug 2016 17:09:22 GMT  
		Size: 4.3 MB (4345029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3064379351b9741fc8e754fcf8d39977046a805bab9ef8db35b3da4076f1848`  
		Last Modified: Wed, 31 Aug 2016 17:09:20 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:a25d7907e176e58f0dc7241e6ffd0a5dbc4946e680a5c6f1fa4b71b631534a69
```

-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57402620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65599e2ea3f2172b601863aa0ff18047515b29c506a4817ac2c29548babdbabf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:43:01 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:43:45 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_VERSION=1.6.9
# Wed, 31 Aug 2016 17:06:05 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Wed, 31 Aug 2016 17:07:01 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 17:07:02 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 31 Aug 2016 17:07:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:07:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1707a087439221a1cddafeef27eb15cb84b371c94667d046cab26ee3a09c73`  
		Last Modified: Wed, 31 Aug 2016 17:08:36 GMT  
		Size: 1.7 MB (1689979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856796a2282e062a27a3543c1791433c770b23bb9c18eb9b3037ece97744232`  
		Last Modified: Wed, 31 Aug 2016 17:09:22 GMT  
		Size: 4.3 MB (4345029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3064379351b9741fc8e754fcf8d39977046a805bab9ef8db35b3da4076f1848`  
		Last Modified: Wed, 31 Aug 2016 17:09:20 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.9-alpine`

```console
$ docker pull haproxy@sha256:14e362a0a24517416c9fca1c3a48aa97bd137c205e92f1b9ba0385353d8d1629
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5117562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087e3210f6120a839393b6b80ca80980740c1ebf13ad61ee723427c7b666a207`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:29:23 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 31 Aug 2016 17:07:03 GMT
ENV HAPROXY_VERSION=1.6.9
# Wed, 31 Aug 2016 17:07:03 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Wed, 31 Aug 2016 17:07:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 31 Aug 2016 17:07:47 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 31 Aug 2016 17:07:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:07:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f54f31fa0b258b3a390e81ea2bda3c2af9207c44227f9329d51538cd384d46`  
		Last Modified: Wed, 31 Aug 2016 17:10:04 GMT  
		Size: 2.8 MB (2806933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd30e4ecb5a8462153d2af9448745d994b4dad1501541c0f1c398adae1c5b40d`  
		Last Modified: Wed, 31 Aug 2016 17:10:00 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:14e362a0a24517416c9fca1c3a48aa97bd137c205e92f1b9ba0385353d8d1629
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5117562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087e3210f6120a839393b6b80ca80980740c1ebf13ad61ee723427c7b666a207`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:29:23 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 31 Aug 2016 17:07:03 GMT
ENV HAPROXY_VERSION=1.6.9
# Wed, 31 Aug 2016 17:07:03 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Wed, 31 Aug 2016 17:07:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 31 Aug 2016 17:07:47 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 31 Aug 2016 17:07:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:07:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f54f31fa0b258b3a390e81ea2bda3c2af9207c44227f9329d51538cd384d46`  
		Last Modified: Wed, 31 Aug 2016 17:10:04 GMT  
		Size: 2.8 MB (2806933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd30e4ecb5a8462153d2af9448745d994b4dad1501541c0f1c398adae1c5b40d`  
		Last Modified: Wed, 31 Aug 2016 17:10:00 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:14e362a0a24517416c9fca1c3a48aa97bd137c205e92f1b9ba0385353d8d1629
```

-	Platforms:
	-	linux; amd64

### `haproxy:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5117562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087e3210f6120a839393b6b80ca80980740c1ebf13ad61ee723427c7b666a207`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:29:23 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 31 Aug 2016 17:07:03 GMT
ENV HAPROXY_VERSION=1.6.9
# Wed, 31 Aug 2016 17:07:03 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Wed, 31 Aug 2016 17:07:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 31 Aug 2016 17:07:47 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 31 Aug 2016 17:07:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:07:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f54f31fa0b258b3a390e81ea2bda3c2af9207c44227f9329d51538cd384d46`  
		Last Modified: Wed, 31 Aug 2016 17:10:04 GMT  
		Size: 2.8 MB (2806933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd30e4ecb5a8462153d2af9448745d994b4dad1501541c0f1c398adae1c5b40d`  
		Last Modified: Wed, 31 Aug 2016 17:10:00 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:14e362a0a24517416c9fca1c3a48aa97bd137c205e92f1b9ba0385353d8d1629
```

-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5117562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087e3210f6120a839393b6b80ca80980740c1ebf13ad61ee723427c7b666a207`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:29:23 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 31 Aug 2016 17:07:03 GMT
ENV HAPROXY_VERSION=1.6.9
# Wed, 31 Aug 2016 17:07:03 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Wed, 31 Aug 2016 17:07:46 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 31 Aug 2016 17:07:47 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 31 Aug 2016 17:07:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:07:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f54f31fa0b258b3a390e81ea2bda3c2af9207c44227f9329d51538cd384d46`  
		Last Modified: Wed, 31 Aug 2016 17:10:04 GMT  
		Size: 2.8 MB (2806933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd30e4ecb5a8462153d2af9448745d994b4dad1501541c0f1c398adae1c5b40d`  
		Last Modified: Wed, 31 Aug 2016 17:10:00 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
