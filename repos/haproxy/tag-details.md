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
$ docker pull haproxy@sha256:c25893eaac606a74158a0dab9cb237e6a21218d8177ccf9e1d21f04f01885ff0
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb09c54c605b9c3695f96f01433726f4d36dd00052f160214dcf07b42f86342`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:04:31 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 20 Sep 2016 00:04:31 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 20 Sep 2016 00:04:32 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 20 Sep 2016 00:04:56 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:04:56 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 20 Sep 2016 00:04:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 00:04:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6f713d55fe3ac50eae99944615fc26cca6ba1324f0cdd30cbf1d263aa09714`  
		Last Modified: Tue, 20 Sep 2016 00:05:05 GMT  
		Size: 869.2 KB (869196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a105ebd8c025e0259eefc581b2e70adb363985843eb70c85f35189ef4e73e6d0`  
		Last Modified: Tue, 20 Sep 2016 00:05:04 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4-alpine`

```console
$ docker pull haproxy@sha256:c25893eaac606a74158a0dab9cb237e6a21218d8177ccf9e1d21f04f01885ff0
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb09c54c605b9c3695f96f01433726f4d36dd00052f160214dcf07b42f86342`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:04:31 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 20 Sep 2016 00:04:31 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 20 Sep 2016 00:04:32 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 20 Sep 2016 00:04:56 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:04:56 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 20 Sep 2016 00:04:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 00:04:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6f713d55fe3ac50eae99944615fc26cca6ba1324f0cdd30cbf1d263aa09714`  
		Last Modified: Tue, 20 Sep 2016 00:05:05 GMT  
		Size: 869.2 KB (869196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a105ebd8c025e0259eefc581b2e70adb363985843eb70c85f35189ef4e73e6d0`  
		Last Modified: Tue, 20 Sep 2016 00:05:04 GMT  
		Size: 211.0 B  
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
$ docker pull haproxy@sha256:bae7c588460dcfee17d795f5653a57f91a5d07143f56ec5da13d53a74929c0c0
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5.18-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4373779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fb8bc926f191e8ae2628204d7b2f8813a9d688e89404b28ac60d685e79be2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:07:04 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 20 Sep 2016 00:07:04 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 20 Sep 2016 00:07:05 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 20 Sep 2016 00:07:56 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:07:57 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 20 Sep 2016 00:07:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 00:07:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00140b676c283274e710dab63657b846d4de63707e535f90e07426dd39b7140`  
		Last Modified: Tue, 20 Sep 2016 00:08:09 GMT  
		Size: 2.1 MB (2062381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a262b9edde39041701e036471841fd5990edc6d31699ccd42119ee1f86e12a`  
		Last Modified: Tue, 20 Sep 2016 00:08:06 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:bae7c588460dcfee17d795f5653a57f91a5d07143f56ec5da13d53a74929c0c0
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4373779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fb8bc926f191e8ae2628204d7b2f8813a9d688e89404b28ac60d685e79be2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:07:04 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 20 Sep 2016 00:07:04 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 20 Sep 2016 00:07:05 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 20 Sep 2016 00:07:56 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:07:57 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 20 Sep 2016 00:07:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 00:07:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00140b676c283274e710dab63657b846d4de63707e535f90e07426dd39b7140`  
		Last Modified: Tue, 20 Sep 2016 00:08:09 GMT  
		Size: 2.1 MB (2062381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a262b9edde39041701e036471841fd5990edc6d31699ccd42119ee1f86e12a`  
		Last Modified: Tue, 20 Sep 2016 00:08:06 GMT  
		Size: 345.0 B  
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
$ docker pull haproxy@sha256:da938b7082c4fc29e05a77ff16ede8cf2d882fff4fd6f1298a1838251e30de0b
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4739872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a2feb3aab8adfb7abc9c0d42e870506624cb46bf8f7e075cb1cc6247b2b64d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:05:21 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 20 Sep 2016 00:05:22 GMT
ENV HAPROXY_VERSION=1.6.9
# Tue, 20 Sep 2016 00:05:22 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Tue, 20 Sep 2016 00:06:19 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:06:20 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 20 Sep 2016 00:06:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 00:06:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8e5892f9d6e9bad24a9001c3acc527659d14789a7932aaa7e7062c191b7500`  
		Last Modified: Tue, 20 Sep 2016 00:06:30 GMT  
		Size: 2.4 MB (2428476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9c228c673ada0a3aba39e15b83fa9ec9f30952ad3faab40f297577b2022cd1`  
		Last Modified: Tue, 20 Sep 2016 00:06:29 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:da938b7082c4fc29e05a77ff16ede8cf2d882fff4fd6f1298a1838251e30de0b
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4739872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a2feb3aab8adfb7abc9c0d42e870506624cb46bf8f7e075cb1cc6247b2b64d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:05:21 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 20 Sep 2016 00:05:22 GMT
ENV HAPROXY_VERSION=1.6.9
# Tue, 20 Sep 2016 00:05:22 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Tue, 20 Sep 2016 00:06:19 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:06:20 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 20 Sep 2016 00:06:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 00:06:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8e5892f9d6e9bad24a9001c3acc527659d14789a7932aaa7e7062c191b7500`  
		Last Modified: Tue, 20 Sep 2016 00:06:30 GMT  
		Size: 2.4 MB (2428476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9c228c673ada0a3aba39e15b83fa9ec9f30952ad3faab40f297577b2022cd1`  
		Last Modified: Tue, 20 Sep 2016 00:06:29 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:da938b7082c4fc29e05a77ff16ede8cf2d882fff4fd6f1298a1838251e30de0b
```

-	Platforms:
	-	linux; amd64

### `haproxy:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4739872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a2feb3aab8adfb7abc9c0d42e870506624cb46bf8f7e075cb1cc6247b2b64d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:05:21 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 20 Sep 2016 00:05:22 GMT
ENV HAPROXY_VERSION=1.6.9
# Tue, 20 Sep 2016 00:05:22 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Tue, 20 Sep 2016 00:06:19 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:06:20 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 20 Sep 2016 00:06:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 00:06:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8e5892f9d6e9bad24a9001c3acc527659d14789a7932aaa7e7062c191b7500`  
		Last Modified: Tue, 20 Sep 2016 00:06:30 GMT  
		Size: 2.4 MB (2428476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9c228c673ada0a3aba39e15b83fa9ec9f30952ad3faab40f297577b2022cd1`  
		Last Modified: Tue, 20 Sep 2016 00:06:29 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:da938b7082c4fc29e05a77ff16ede8cf2d882fff4fd6f1298a1838251e30de0b
```

-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4739872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a2feb3aab8adfb7abc9c0d42e870506624cb46bf8f7e075cb1cc6247b2b64d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:05:21 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 20 Sep 2016 00:05:22 GMT
ENV HAPROXY_VERSION=1.6.9
# Tue, 20 Sep 2016 00:05:22 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Tue, 20 Sep 2016 00:06:19 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Tue, 20 Sep 2016 00:06:20 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 20 Sep 2016 00:06:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 00:06:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8e5892f9d6e9bad24a9001c3acc527659d14789a7932aaa7e7062c191b7500`  
		Last Modified: Tue, 20 Sep 2016 00:06:30 GMT  
		Size: 2.4 MB (2428476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9c228c673ada0a3aba39e15b83fa9ec9f30952ad3faab40f297577b2022cd1`  
		Last Modified: Tue, 20 Sep 2016 00:06:29 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
