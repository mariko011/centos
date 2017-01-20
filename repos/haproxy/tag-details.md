<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haproxy`

-	[`haproxy:1.4.27`](#haproxy1427)
-	[`haproxy:1.4`](#haproxy14)
-	[`haproxy:1.4.27-alpine`](#haproxy1427-alpine)
-	[`haproxy:1.4-alpine`](#haproxy14-alpine)
-	[`haproxy:1.5.19`](#haproxy1519)
-	[`haproxy:1.5`](#haproxy15)
-	[`haproxy:1.5.19-alpine`](#haproxy1519-alpine)
-	[`haproxy:1.5-alpine`](#haproxy15-alpine)
-	[`haproxy:1.6.11`](#haproxy1611)
-	[`haproxy:1.6`](#haproxy16)
-	[`haproxy:1.6.11-alpine`](#haproxy1611-alpine)
-	[`haproxy:1.6-alpine`](#haproxy16-alpine)
-	[`haproxy:1.7.2`](#haproxy172)
-	[`haproxy:1.7`](#haproxy17)
-	[`haproxy:1`](#haproxy1)
-	[`haproxy:latest`](#haproxylatest)
-	[`haproxy:1.7.2-alpine`](#haproxy172-alpine)
-	[`haproxy:1.7-alpine`](#haproxy17-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:alpine`](#haproxyalpine)

## `haproxy:1.4.27`

```console
$ docker pull haproxy@sha256:5381cfc94cc675c4da8de94b6442547be4fdc5a7ccdb27c473ce59c0d60b2c17
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54564305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a82bfb28cd33c43a9499c82ef7faf01c766a353e0b7f4b0e37bbb2843f91b4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:42:38 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:42:38 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 17 Jan 2017 00:42:38 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 17 Jan 2017 00:42:39 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 17 Jan 2017 00:43:13 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 00:43:13 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 17 Jan 2017 00:43:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:43:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef54ff3563b8d5a83063be8cdcf39d9c56c7e159e34df5cbe68457cc767a0dab`  
		Last Modified: Wed, 18 Jan 2017 03:54:48 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c45809a8800ce77d3f4d75c5fb31afd331ec83beebb3669b62701c86174dd03`  
		Last Modified: Wed, 18 Jan 2017 03:54:49 GMT  
		Size: 3.2 MB (3202683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3c813c630a37dc761c742bd1cdafcfddf7813b9a8ff982e0a7c99035412782`  
		Last Modified: Wed, 18 Jan 2017 03:54:48 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4`

```console
$ docker pull haproxy@sha256:5381cfc94cc675c4da8de94b6442547be4fdc5a7ccdb27c473ce59c0d60b2c17
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54564305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a82bfb28cd33c43a9499c82ef7faf01c766a353e0b7f4b0e37bbb2843f91b4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:42:38 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:42:38 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 17 Jan 2017 00:42:38 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 17 Jan 2017 00:42:39 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 17 Jan 2017 00:43:13 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 00:43:13 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 17 Jan 2017 00:43:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:43:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef54ff3563b8d5a83063be8cdcf39d9c56c7e159e34df5cbe68457cc767a0dab`  
		Last Modified: Wed, 18 Jan 2017 03:54:48 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c45809a8800ce77d3f4d75c5fb31afd331ec83beebb3669b62701c86174dd03`  
		Last Modified: Wed, 18 Jan 2017 03:54:49 GMT  
		Size: 3.2 MB (3202683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3c813c630a37dc761c742bd1cdafcfddf7813b9a8ff982e0a7c99035412782`  
		Last Modified: Wed, 18 Jan 2017 03:54:48 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4.27-alpine`

```console
$ docker pull haproxy@sha256:1c9df6d8b0a5788e0bde4502e033447680773d0b83325d7e644e1a536ba35224
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2817906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de14d6886c4f3f10e2c3f93a5bb562e6f4971b6d86a87c6c33efcd83f6d5665`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:08:25 GMT
ENV HAPROXY_MAJOR=1.4
# Wed, 04 Jan 2017 21:08:25 GMT
ENV HAPROXY_VERSION=1.4.27
# Wed, 04 Jan 2017 21:08:25 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Wed, 04 Jan 2017 21:08:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:08:45 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Wed, 04 Jan 2017 21:08:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:08:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d6ae6ac33e87a15979355c02a7942d4a7085d87576e3f7f39492c99f013b1f`  
		Last Modified: Wed, 04 Jan 2017 23:59:36 GMT  
		Size: 915.6 KB (915630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda27fa51fd9188d43fd9a1f78a9df6588f82909968be24117d3ba922ff771b6`  
		Last Modified: Wed, 04 Jan 2017 23:59:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4-alpine`

```console
$ docker pull haproxy@sha256:1c9df6d8b0a5788e0bde4502e033447680773d0b83325d7e644e1a536ba35224
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2817906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de14d6886c4f3f10e2c3f93a5bb562e6f4971b6d86a87c6c33efcd83f6d5665`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:08:25 GMT
ENV HAPROXY_MAJOR=1.4
# Wed, 04 Jan 2017 21:08:25 GMT
ENV HAPROXY_VERSION=1.4.27
# Wed, 04 Jan 2017 21:08:25 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Wed, 04 Jan 2017 21:08:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:08:45 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Wed, 04 Jan 2017 21:08:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:08:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d6ae6ac33e87a15979355c02a7942d4a7085d87576e3f7f39492c99f013b1f`  
		Last Modified: Wed, 04 Jan 2017 23:59:36 GMT  
		Size: 915.6 KB (915630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda27fa51fd9188d43fd9a1f78a9df6588f82909968be24117d3ba922ff771b6`  
		Last Modified: Wed, 04 Jan 2017 23:59:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19`

```console
$ docker pull haproxy@sha256:4d85a08a1d0e8a38c362febef5c58fced26bb810e00f6a468649f1fb1486362a
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5.19` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57054566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba05d6e4aa7262ee3c9b18362c07dfe88e4f7b9c6ead87e6a42525dfdff0564`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:41:48 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:43:14 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 17 Jan 2017 00:43:15 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 17 Jan 2017 00:43:15 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Tue, 17 Jan 2017 00:43:58 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 00:43:59 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 17 Jan 2017 00:43:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:44:00 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532bc2237a5b5f25740a9413b8cd9d89cd2a7fe9086124a9059a56f9adcc064f`  
		Last Modified: Wed, 18 Jan 2017 03:55:22 GMT  
		Size: 1.7 MB (1690627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190479325f980ddfc6054e4c125ed5b4f45f6c426dc2755d951024aa0691501a`  
		Last Modified: Wed, 18 Jan 2017 03:55:23 GMT  
		Size: 4.0 MB (4002385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3433f52843a59dd67e27af66be2c4f9206ea5f6d31758089f871081b2174be8`  
		Last Modified: Wed, 18 Jan 2017 03:55:21 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:4d85a08a1d0e8a38c362febef5c58fced26bb810e00f6a468649f1fb1486362a
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57054566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba05d6e4aa7262ee3c9b18362c07dfe88e4f7b9c6ead87e6a42525dfdff0564`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:41:48 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:43:14 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 17 Jan 2017 00:43:15 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 17 Jan 2017 00:43:15 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Tue, 17 Jan 2017 00:43:58 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 00:43:59 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 17 Jan 2017 00:43:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:44:00 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532bc2237a5b5f25740a9413b8cd9d89cd2a7fe9086124a9059a56f9adcc064f`  
		Last Modified: Wed, 18 Jan 2017 03:55:22 GMT  
		Size: 1.7 MB (1690627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190479325f980ddfc6054e4c125ed5b4f45f6c426dc2755d951024aa0691501a`  
		Last Modified: Wed, 18 Jan 2017 03:55:23 GMT  
		Size: 4.0 MB (4002385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3433f52843a59dd67e27af66be2c4f9206ea5f6d31758089f871081b2174be8`  
		Last Modified: Wed, 18 Jan 2017 03:55:21 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19-alpine`

```console
$ docker pull haproxy@sha256:da8717243c91e921a34e3413607b77e4bf5a8ec604d608a51f2d32cf685360f6
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5.19-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5438915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4563969133809cc60ee5119554d2145d035fb346dbc0891ceb3d02c782f6f65c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:08:46 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 04 Jan 2017 21:08:47 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 04 Jan 2017 21:08:47 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 04 Jan 2017 21:09:21 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:09:21 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 04 Jan 2017 21:09:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:09:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d784e0939d730de94dbbd6602e3e94e691a33db0d9810fae8d45083204d0f4a`  
		Last Modified: Thu, 05 Jan 2017 00:00:48 GMT  
		Size: 3.5 MB (3536508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5f1def38203818325f2498d8eb86819840424a75e61abe56631ef9a087df3a`  
		Last Modified: Thu, 05 Jan 2017 00:00:46 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:da8717243c91e921a34e3413607b77e4bf5a8ec604d608a51f2d32cf685360f6
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5438915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4563969133809cc60ee5119554d2145d035fb346dbc0891ceb3d02c782f6f65c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:08:46 GMT
ENV HAPROXY_MAJOR=1.5
# Wed, 04 Jan 2017 21:08:47 GMT
ENV HAPROXY_VERSION=1.5.19
# Wed, 04 Jan 2017 21:08:47 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Wed, 04 Jan 2017 21:09:21 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:09:21 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 04 Jan 2017 21:09:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:09:22 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d784e0939d730de94dbbd6602e3e94e691a33db0d9810fae8d45083204d0f4a`  
		Last Modified: Thu, 05 Jan 2017 00:00:48 GMT  
		Size: 3.5 MB (3536508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5f1def38203818325f2498d8eb86819840424a75e61abe56631ef9a087df3a`  
		Last Modified: Thu, 05 Jan 2017 00:00:46 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.11`

```console
$ docker pull haproxy@sha256:b1bf07aa4af07927e9eca7f8a80ecffbcca4dff0592723bb3082ce27c2234a50
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55709661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af74e109d004059979b03f114bed42f89abeeb721bfb4fc729042f1f01d093c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 20 Jan 2017 21:58:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:58:56 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 20 Jan 2017 21:58:56 GMT
ENV HAPROXY_VERSION=1.6.11
# Fri, 20 Jan 2017 21:58:56 GMT
ENV HAPROXY_MD5=844da4b553c887833550a008692e7a74
# Fri, 20 Jan 2017 21:59:27 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Jan 2017 21:59:28 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 21:59:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 21:59:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181ad950f1fbca580da6902b6c94ddfa3cf8b8f669df4042b97f5af89914261`  
		Last Modified: Fri, 20 Jan 2017 22:03:33 GMT  
		Size: 1.9 MB (1901383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d166ce2bcc5d741d41f6b9c77c2a7f610340c6ff30acd2e6ed85b0f30010b89`  
		Last Modified: Fri, 20 Jan 2017 22:03:36 GMT  
		Size: 2.4 MB (2446508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4f045a75864b15f29afb0e064071f48572823319b7ac76c7f7627f3c636e8e`  
		Last Modified: Fri, 20 Jan 2017 22:03:32 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:b1bf07aa4af07927e9eca7f8a80ecffbcca4dff0592723bb3082ce27c2234a50
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55709661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af74e109d004059979b03f114bed42f89abeeb721bfb4fc729042f1f01d093c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 20 Jan 2017 21:58:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:58:56 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 20 Jan 2017 21:58:56 GMT
ENV HAPROXY_VERSION=1.6.11
# Fri, 20 Jan 2017 21:58:56 GMT
ENV HAPROXY_MD5=844da4b553c887833550a008692e7a74
# Fri, 20 Jan 2017 21:59:27 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Jan 2017 21:59:28 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 21:59:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 21:59:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181ad950f1fbca580da6902b6c94ddfa3cf8b8f669df4042b97f5af89914261`  
		Last Modified: Fri, 20 Jan 2017 22:03:33 GMT  
		Size: 1.9 MB (1901383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d166ce2bcc5d741d41f6b9c77c2a7f610340c6ff30acd2e6ed85b0f30010b89`  
		Last Modified: Fri, 20 Jan 2017 22:03:36 GMT  
		Size: 2.4 MB (2446508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4f045a75864b15f29afb0e064071f48572823319b7ac76c7f7627f3c636e8e`  
		Last Modified: Fri, 20 Jan 2017 22:03:32 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.11-alpine`

```console
$ docker pull haproxy@sha256:d4bc6e14b20e2278e0944f71b455394509f4bcbafe5a9a1a727acdf86b5e76f1
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.11-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6117570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0226d145d455a95adc6242d939a74c4bb0283d13e35ab8574a1c95da0059169`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:09:22 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 04 Jan 2017 21:09:23 GMT
ENV HAPROXY_VERSION=1.6.11
# Wed, 04 Jan 2017 21:09:23 GMT
ENV HAPROXY_MD5=844da4b553c887833550a008692e7a74
# Fri, 20 Jan 2017 21:59:29 GMT
ENV LUA_VERSION=5.3.3 LUA_SHA1=a0341bc3d1415b814cc738b2ec01ae56045d64ef
# Fri, 20 Jan 2017 21:59:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Jan 2017 21:59:58 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 21:59:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 21:59:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068b4b2efce5da8d5e4a62dddceec6aa3fc5c00c50d7d35dd160345c89fe6c5`  
		Last Modified: Fri, 20 Jan 2017 22:04:10 GMT  
		Size: 4.2 MB (4215163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b823b115d3ce9919dfbb612829b38812554e2ea421b8612e2e65abb25bb51ee`  
		Last Modified: Fri, 20 Jan 2017 22:04:08 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:d4bc6e14b20e2278e0944f71b455394509f4bcbafe5a9a1a727acdf86b5e76f1
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6117570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0226d145d455a95adc6242d939a74c4bb0283d13e35ab8574a1c95da0059169`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:09:22 GMT
ENV HAPROXY_MAJOR=1.6
# Wed, 04 Jan 2017 21:09:23 GMT
ENV HAPROXY_VERSION=1.6.11
# Wed, 04 Jan 2017 21:09:23 GMT
ENV HAPROXY_MD5=844da4b553c887833550a008692e7a74
# Fri, 20 Jan 2017 21:59:29 GMT
ENV LUA_VERSION=5.3.3 LUA_SHA1=a0341bc3d1415b814cc738b2ec01ae56045d64ef
# Fri, 20 Jan 2017 21:59:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Jan 2017 21:59:58 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 21:59:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 21:59:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068b4b2efce5da8d5e4a62dddceec6aa3fc5c00c50d7d35dd160345c89fe6c5`  
		Last Modified: Fri, 20 Jan 2017 22:04:10 GMT  
		Size: 4.2 MB (4215163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b823b115d3ce9919dfbb612829b38812554e2ea421b8612e2e65abb25bb51ee`  
		Last Modified: Fri, 20 Jan 2017 22:04:08 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.2`

```console
$ docker pull haproxy@sha256:32be2bd1ec0e8cea7a990e18bd0069b09f23781e9004b20cd7e473b23e146f23
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.7.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56198026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cb0bec9b3098d81eed730f8eef603e3832aad7e9d706e730de9071c89ad088`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 20 Jan 2017 21:58:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:59:59 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 20 Jan 2017 22:00:00 GMT
ENV HAPROXY_VERSION=1.7.2
# Fri, 20 Jan 2017 22:00:00 GMT
ENV HAPROXY_MD5=7330b36f3764ebe409e9305803dc30e2
# Fri, 20 Jan 2017 22:00:45 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Jan 2017 22:00:46 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 22:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:00:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181ad950f1fbca580da6902b6c94ddfa3cf8b8f669df4042b97f5af89914261`  
		Last Modified: Fri, 20 Jan 2017 22:03:33 GMT  
		Size: 1.9 MB (1901383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae42c679040715e075ad383a9f95a7dde7ccabf9b88349b07d1b8c7b8711ae`  
		Last Modified: Fri, 20 Jan 2017 22:04:44 GMT  
		Size: 2.9 MB (2934873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea5adf19ff4e93ae853b33f52d5eb7bb34b39fbcc13c24a2ee1bc22d4113715`  
		Last Modified: Fri, 20 Jan 2017 22:04:43 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:32be2bd1ec0e8cea7a990e18bd0069b09f23781e9004b20cd7e473b23e146f23
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56198026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cb0bec9b3098d81eed730f8eef603e3832aad7e9d706e730de9071c89ad088`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 20 Jan 2017 21:58:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:59:59 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 20 Jan 2017 22:00:00 GMT
ENV HAPROXY_VERSION=1.7.2
# Fri, 20 Jan 2017 22:00:00 GMT
ENV HAPROXY_MD5=7330b36f3764ebe409e9305803dc30e2
# Fri, 20 Jan 2017 22:00:45 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Jan 2017 22:00:46 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 22:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:00:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181ad950f1fbca580da6902b6c94ddfa3cf8b8f669df4042b97f5af89914261`  
		Last Modified: Fri, 20 Jan 2017 22:03:33 GMT  
		Size: 1.9 MB (1901383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae42c679040715e075ad383a9f95a7dde7ccabf9b88349b07d1b8c7b8711ae`  
		Last Modified: Fri, 20 Jan 2017 22:04:44 GMT  
		Size: 2.9 MB (2934873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea5adf19ff4e93ae853b33f52d5eb7bb34b39fbcc13c24a2ee1bc22d4113715`  
		Last Modified: Fri, 20 Jan 2017 22:04:43 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1`

```console
$ docker pull haproxy@sha256:32be2bd1ec0e8cea7a990e18bd0069b09f23781e9004b20cd7e473b23e146f23
```

-	Platforms:
	-	linux; amd64

### `haproxy:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56198026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cb0bec9b3098d81eed730f8eef603e3832aad7e9d706e730de9071c89ad088`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 20 Jan 2017 21:58:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:59:59 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 20 Jan 2017 22:00:00 GMT
ENV HAPROXY_VERSION=1.7.2
# Fri, 20 Jan 2017 22:00:00 GMT
ENV HAPROXY_MD5=7330b36f3764ebe409e9305803dc30e2
# Fri, 20 Jan 2017 22:00:45 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Jan 2017 22:00:46 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 22:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:00:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181ad950f1fbca580da6902b6c94ddfa3cf8b8f669df4042b97f5af89914261`  
		Last Modified: Fri, 20 Jan 2017 22:03:33 GMT  
		Size: 1.9 MB (1901383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae42c679040715e075ad383a9f95a7dde7ccabf9b88349b07d1b8c7b8711ae`  
		Last Modified: Fri, 20 Jan 2017 22:04:44 GMT  
		Size: 2.9 MB (2934873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea5adf19ff4e93ae853b33f52d5eb7bb34b39fbcc13c24a2ee1bc22d4113715`  
		Last Modified: Fri, 20 Jan 2017 22:04:43 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:32be2bd1ec0e8cea7a990e18bd0069b09f23781e9004b20cd7e473b23e146f23
```

-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56198026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cb0bec9b3098d81eed730f8eef603e3832aad7e9d706e730de9071c89ad088`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 20 Jan 2017 21:58:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:59:59 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 20 Jan 2017 22:00:00 GMT
ENV HAPROXY_VERSION=1.7.2
# Fri, 20 Jan 2017 22:00:00 GMT
ENV HAPROXY_MD5=7330b36f3764ebe409e9305803dc30e2
# Fri, 20 Jan 2017 22:00:45 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 20 Jan 2017 22:00:46 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 22:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:00:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181ad950f1fbca580da6902b6c94ddfa3cf8b8f669df4042b97f5af89914261`  
		Last Modified: Fri, 20 Jan 2017 22:03:33 GMT  
		Size: 1.9 MB (1901383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae42c679040715e075ad383a9f95a7dde7ccabf9b88349b07d1b8c7b8711ae`  
		Last Modified: Fri, 20 Jan 2017 22:04:44 GMT  
		Size: 2.9 MB (2934873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea5adf19ff4e93ae853b33f52d5eb7bb34b39fbcc13c24a2ee1bc22d4113715`  
		Last Modified: Fri, 20 Jan 2017 22:04:43 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.2-alpine`

```console
$ docker pull haproxy@sha256:94b918b5b2c15715441685204524e6c6d4d12ee21856897db61085c472f8f3b9
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.7.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11689e6f9be20bdcde04275e1f935cbdac2b6d244ee10f4ae2547aea583ea145`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_VERSION=1.7.2
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_MD5=7330b36f3764ebe409e9305803dc30e2
# Fri, 20 Jan 2017 22:00:48 GMT
ENV LUA_VERSION=5.3.3 LUA_SHA1=a0341bc3d1415b814cc738b2ec01ae56045d64ef
# Fri, 20 Jan 2017 22:01:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Jan 2017 22:01:19 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 22:01:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:01:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e47250884af7e6b7c31375c67577531dcdb097e44d5f37483289383c20acb7e`  
		Last Modified: Fri, 20 Jan 2017 22:05:47 GMT  
		Size: 4.7 MB (4678752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a733aaa15c101837af023a9e962c029f68dcb4427301ffd3176f70cb456bbf`  
		Last Modified: Fri, 20 Jan 2017 22:05:44 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:94b918b5b2c15715441685204524e6c6d4d12ee21856897db61085c472f8f3b9
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11689e6f9be20bdcde04275e1f935cbdac2b6d244ee10f4ae2547aea583ea145`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_VERSION=1.7.2
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_MD5=7330b36f3764ebe409e9305803dc30e2
# Fri, 20 Jan 2017 22:00:48 GMT
ENV LUA_VERSION=5.3.3 LUA_SHA1=a0341bc3d1415b814cc738b2ec01ae56045d64ef
# Fri, 20 Jan 2017 22:01:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Jan 2017 22:01:19 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 22:01:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:01:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e47250884af7e6b7c31375c67577531dcdb097e44d5f37483289383c20acb7e`  
		Last Modified: Fri, 20 Jan 2017 22:05:47 GMT  
		Size: 4.7 MB (4678752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a733aaa15c101837af023a9e962c029f68dcb4427301ffd3176f70cb456bbf`  
		Last Modified: Fri, 20 Jan 2017 22:05:44 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:94b918b5b2c15715441685204524e6c6d4d12ee21856897db61085c472f8f3b9
```

-	Platforms:
	-	linux; amd64

### `haproxy:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11689e6f9be20bdcde04275e1f935cbdac2b6d244ee10f4ae2547aea583ea145`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_VERSION=1.7.2
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_MD5=7330b36f3764ebe409e9305803dc30e2
# Fri, 20 Jan 2017 22:00:48 GMT
ENV LUA_VERSION=5.3.3 LUA_SHA1=a0341bc3d1415b814cc738b2ec01ae56045d64ef
# Fri, 20 Jan 2017 22:01:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Jan 2017 22:01:19 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 22:01:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:01:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e47250884af7e6b7c31375c67577531dcdb097e44d5f37483289383c20acb7e`  
		Last Modified: Fri, 20 Jan 2017 22:05:47 GMT  
		Size: 4.7 MB (4678752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a733aaa15c101837af023a9e962c029f68dcb4427301ffd3176f70cb456bbf`  
		Last Modified: Fri, 20 Jan 2017 22:05:44 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:94b918b5b2c15715441685204524e6c6d4d12ee21856897db61085c472f8f3b9
```

-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11689e6f9be20bdcde04275e1f935cbdac2b6d244ee10f4ae2547aea583ea145`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_VERSION=1.7.2
# Fri, 13 Jan 2017 22:44:39 GMT
ENV HAPROXY_MD5=7330b36f3764ebe409e9305803dc30e2
# Fri, 20 Jan 2017 22:00:48 GMT
ENV LUA_VERSION=5.3.3 LUA_SHA1=a0341bc3d1415b814cc738b2ec01ae56045d64ef
# Fri, 20 Jan 2017 22:01:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Fri, 20 Jan 2017 22:01:19 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 20 Jan 2017 22:01:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:01:20 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e47250884af7e6b7c31375c67577531dcdb097e44d5f37483289383c20acb7e`  
		Last Modified: Fri, 20 Jan 2017 22:05:47 GMT  
		Size: 4.7 MB (4678752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a733aaa15c101837af023a9e962c029f68dcb4427301ffd3176f70cb456bbf`  
		Last Modified: Fri, 20 Jan 2017 22:05:44 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
