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
$ docker pull haproxy@sha256:1d6b9459af3cb5a071b050ac5a695f8ebf61cc34b2302b9c32cd8fcf82d9d9a6
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54565782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01753e6a330e4b4b02d079671b5e434bfe7236bdceff04188eb9e1e520bdcae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:28:18 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:28:19 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 13 Dec 2016 23:28:19 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 13 Dec 2016 23:28:19 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 13 Dec 2016 23:28:53 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 13 Dec 2016 23:28:53 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 13 Dec 2016 23:28:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:28:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041b3681745f99ae1aa9b0683fb9cb5fd4213c40103d15a459bdbefba263e690`  
		Last Modified: Wed, 14 Dec 2016 02:53:10 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52de5f38784bc7033ea59175bb122e73655d933be87577d13b1e4054ed3e9317`  
		Last Modified: Wed, 14 Dec 2016 02:53:12 GMT  
		Size: 3.2 MB (3202243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f154fc3f4a5ff34be70b2eb6c344f3ea0ae6593ae0a1201520a32e66a270fcdd`  
		Last Modified: Wed, 14 Dec 2016 02:53:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4`

```console
$ docker pull haproxy@sha256:1d6b9459af3cb5a071b050ac5a695f8ebf61cc34b2302b9c32cd8fcf82d9d9a6
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54565782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01753e6a330e4b4b02d079671b5e434bfe7236bdceff04188eb9e1e520bdcae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:28:18 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:28:19 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 13 Dec 2016 23:28:19 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 13 Dec 2016 23:28:19 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 13 Dec 2016 23:28:53 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 13 Dec 2016 23:28:53 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 13 Dec 2016 23:28:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:28:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041b3681745f99ae1aa9b0683fb9cb5fd4213c40103d15a459bdbefba263e690`  
		Last Modified: Wed, 14 Dec 2016 02:53:10 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52de5f38784bc7033ea59175bb122e73655d933be87577d13b1e4054ed3e9317`  
		Last Modified: Wed, 14 Dec 2016 02:53:12 GMT  
		Size: 3.2 MB (3202243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f154fc3f4a5ff34be70b2eb6c344f3ea0ae6593ae0a1201520a32e66a270fcdd`  
		Last Modified: Wed, 14 Dec 2016 02:53:10 GMT  
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
$ docker pull haproxy@sha256:36929cf22cd00b05f11eb39b629584c1775e7f6dcae1c74cd170ef485833773d
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5.19` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57056588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3a3b58899b29dd6bb9a14b2c28cf5cd28bafc66f4e0332dc7bd2980b0311f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:27:21 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:28:54 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 31 Dec 2016 00:27:11 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 31 Dec 2016 00:27:12 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 31 Dec 2016 00:27:54 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:27:55 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Sat, 31 Dec 2016 00:27:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:27:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfdc5b7fa15603aa34b375428a10690bd64f2ea59a431b709d04ec257070d86`  
		Last Modified: Wed, 14 Dec 2016 02:54:18 GMT  
		Size: 1.7 MB (1690918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89344c11d5cdca80b3a0682d4a69d82a8f077fc0d6961917d29b0bfbb907c7f5`  
		Last Modified: Sat, 31 Dec 2016 00:31:09 GMT  
		Size: 4.0 MB (4002202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6783a2fdd3183b704a85abdbfc3cc9660ffe2959d9fe6afe0608d096a55a0d27`  
		Last Modified: Sat, 31 Dec 2016 00:31:08 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:36929cf22cd00b05f11eb39b629584c1775e7f6dcae1c74cd170ef485833773d
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57056588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3a3b58899b29dd6bb9a14b2c28cf5cd28bafc66f4e0332dc7bd2980b0311f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:27:21 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:28:54 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 31 Dec 2016 00:27:11 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 31 Dec 2016 00:27:12 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 31 Dec 2016 00:27:54 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:27:55 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Sat, 31 Dec 2016 00:27:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:27:55 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfdc5b7fa15603aa34b375428a10690bd64f2ea59a431b709d04ec257070d86`  
		Last Modified: Wed, 14 Dec 2016 02:54:18 GMT  
		Size: 1.7 MB (1690918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89344c11d5cdca80b3a0682d4a69d82a8f077fc0d6961917d29b0bfbb907c7f5`  
		Last Modified: Sat, 31 Dec 2016 00:31:09 GMT  
		Size: 4.0 MB (4002202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6783a2fdd3183b704a85abdbfc3cc9660ffe2959d9fe6afe0608d096a55a0d27`  
		Last Modified: Sat, 31 Dec 2016 00:31:08 GMT  
		Size: 343.0 B  
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
$ docker pull haproxy@sha256:e696809ec8febca5f7dd03d71bb338032dfe966e18a368a7631e020aaf43f0c1
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57388622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b53734fd5c8408e85c0fb056e7f2730d7a8d757c05da6b3a2d1216b0709c22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:27:21 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:29:36 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 31 Dec 2016 00:28:29 GMT
ENV HAPROXY_VERSION=1.6.11
# Sat, 31 Dec 2016 00:28:29 GMT
ENV HAPROXY_MD5=844da4b553c887833550a008692e7a74
# Sat, 31 Dec 2016 00:29:16 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:29:16 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Sat, 31 Dec 2016 00:29:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:29:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfdc5b7fa15603aa34b375428a10690bd64f2ea59a431b709d04ec257070d86`  
		Last Modified: Wed, 14 Dec 2016 02:54:18 GMT  
		Size: 1.7 MB (1690918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72406a47aa003eaa22b7d396c984b840ab696621922892f10ae0a23dad833bcf`  
		Last Modified: Sat, 31 Dec 2016 00:32:14 GMT  
		Size: 4.3 MB (4334236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23aa5bc98d9afe7df33504efa9e6849655c84ab12ff1c41aea27c30533a589c`  
		Last Modified: Sat, 31 Dec 2016 00:32:13 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:e696809ec8febca5f7dd03d71bb338032dfe966e18a368a7631e020aaf43f0c1
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57388622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b53734fd5c8408e85c0fb056e7f2730d7a8d757c05da6b3a2d1216b0709c22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:27:21 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:29:36 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 31 Dec 2016 00:28:29 GMT
ENV HAPROXY_VERSION=1.6.11
# Sat, 31 Dec 2016 00:28:29 GMT
ENV HAPROXY_MD5=844da4b553c887833550a008692e7a74
# Sat, 31 Dec 2016 00:29:16 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:29:16 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Sat, 31 Dec 2016 00:29:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:29:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfdc5b7fa15603aa34b375428a10690bd64f2ea59a431b709d04ec257070d86`  
		Last Modified: Wed, 14 Dec 2016 02:54:18 GMT  
		Size: 1.7 MB (1690918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72406a47aa003eaa22b7d396c984b840ab696621922892f10ae0a23dad833bcf`  
		Last Modified: Sat, 31 Dec 2016 00:32:14 GMT  
		Size: 4.3 MB (4334236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23aa5bc98d9afe7df33504efa9e6849655c84ab12ff1c41aea27c30533a589c`  
		Last Modified: Sat, 31 Dec 2016 00:32:13 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.11-alpine`

```console
$ docker pull haproxy@sha256:a429c35bd74e2507593f8c0e05b53eccf936434b88144c3bdabbaa9cb33faf56
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.11-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5828745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f42cd85d92e87ee55890cdd4f15de11e192998af33aaf78a0a969e54ae8bdc5`
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
# Wed, 04 Jan 2017 21:10:02 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:10:03 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 04 Jan 2017 21:10:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:10:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442345c8c22580e08b9b41beb16cec53f96d377fcfc9cfc3ae5487c2346ea598`  
		Last Modified: Thu, 05 Jan 2017 00:02:03 GMT  
		Size: 3.9 MB (3926339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd5edbad51cd399552d8ad430256f7196edfe2e38867a2da1056586993c8f6`  
		Last Modified: Thu, 05 Jan 2017 00:02:01 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:a429c35bd74e2507593f8c0e05b53eccf936434b88144c3bdabbaa9cb33faf56
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5828745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f42cd85d92e87ee55890cdd4f15de11e192998af33aaf78a0a969e54ae8bdc5`
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
# Wed, 04 Jan 2017 21:10:02 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:10:03 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 04 Jan 2017 21:10:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:10:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442345c8c22580e08b9b41beb16cec53f96d377fcfc9cfc3ae5487c2346ea598`  
		Last Modified: Thu, 05 Jan 2017 00:02:03 GMT  
		Size: 3.9 MB (3926339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd5edbad51cd399552d8ad430256f7196edfe2e38867a2da1056586993c8f6`  
		Last Modified: Thu, 05 Jan 2017 00:02:01 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.2`

**does not exist** (yet?)

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:6d7a503e62deeb887d0b3e8e4daa29a62e2accc2466a7e3b3ca3b7d7541ed89e
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57825500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a3eb080707b1d20606f888754f3866f45783253870db0856f4d0ad7e5cd8d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:27:21 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:27:21 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Dec 2016 02:33:29 GMT
ENV HAPROXY_VERSION=1.7.1
# Wed, 14 Dec 2016 02:37:06 GMT
ENV HAPROXY_MD5=d0acaae02e444039e11892ea31dde478
# Wed, 14 Dec 2016 02:37:57 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 02:38:01 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 14 Dec 2016 02:38:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfdc5b7fa15603aa34b375428a10690bd64f2ea59a431b709d04ec257070d86`  
		Last Modified: Wed, 14 Dec 2016 02:54:18 GMT  
		Size: 1.7 MB (1690918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d8e6b5f509d4265aac6d4ad5d3cf98a153dd73b642235f9a94ee0ecf11888`  
		Last Modified: Wed, 14 Dec 2016 02:56:33 GMT  
		Size: 4.8 MB (4771112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c474d4e1ba3aa200caa05f79cc99e2cd1b2c8136a64c6d303aecc955edfff4`  
		Last Modified: Wed, 14 Dec 2016 02:56:30 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1`

```console
$ docker pull haproxy@sha256:6d7a503e62deeb887d0b3e8e4daa29a62e2accc2466a7e3b3ca3b7d7541ed89e
```

-	Platforms:
	-	linux; amd64

### `haproxy:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57825500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a3eb080707b1d20606f888754f3866f45783253870db0856f4d0ad7e5cd8d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:27:21 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:27:21 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Dec 2016 02:33:29 GMT
ENV HAPROXY_VERSION=1.7.1
# Wed, 14 Dec 2016 02:37:06 GMT
ENV HAPROXY_MD5=d0acaae02e444039e11892ea31dde478
# Wed, 14 Dec 2016 02:37:57 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 02:38:01 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 14 Dec 2016 02:38:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfdc5b7fa15603aa34b375428a10690bd64f2ea59a431b709d04ec257070d86`  
		Last Modified: Wed, 14 Dec 2016 02:54:18 GMT  
		Size: 1.7 MB (1690918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d8e6b5f509d4265aac6d4ad5d3cf98a153dd73b642235f9a94ee0ecf11888`  
		Last Modified: Wed, 14 Dec 2016 02:56:33 GMT  
		Size: 4.8 MB (4771112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c474d4e1ba3aa200caa05f79cc99e2cd1b2c8136a64c6d303aecc955edfff4`  
		Last Modified: Wed, 14 Dec 2016 02:56:30 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:6d7a503e62deeb887d0b3e8e4daa29a62e2accc2466a7e3b3ca3b7d7541ed89e
```

-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57825500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a3eb080707b1d20606f888754f3866f45783253870db0856f4d0ad7e5cd8d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:27:21 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:27:21 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 14 Dec 2016 02:33:29 GMT
ENV HAPROXY_VERSION=1.7.1
# Wed, 14 Dec 2016 02:37:06 GMT
ENV HAPROXY_MD5=d0acaae02e444039e11892ea31dde478
# Wed, 14 Dec 2016 02:37:57 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Dec 2016 02:38:01 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 14 Dec 2016 02:38:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfdc5b7fa15603aa34b375428a10690bd64f2ea59a431b709d04ec257070d86`  
		Last Modified: Wed, 14 Dec 2016 02:54:18 GMT  
		Size: 1.7 MB (1690918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d8e6b5f509d4265aac6d4ad5d3cf98a153dd73b642235f9a94ee0ecf11888`  
		Last Modified: Wed, 14 Dec 2016 02:56:33 GMT  
		Size: 4.8 MB (4771112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c474d4e1ba3aa200caa05f79cc99e2cd1b2c8136a64c6d303aecc955edfff4`  
		Last Modified: Wed, 14 Dec 2016 02:56:30 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.2-alpine`

**does not exist** (yet?)

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:b4fe7fb65170db47c9570fe549cbb1bbcaf79d01e104c64d17d72c3e4bc8f7d9
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6233131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee7415cf5a8a12a89acb72226b37d235dc98accc4b0cbda6191c72f5da19454`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_VERSION=1.7.1
# Wed, 04 Jan 2017 21:10:05 GMT
ENV HAPROXY_MD5=d0acaae02e444039e11892ea31dde478
# Wed, 04 Jan 2017 21:10:47 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:10:47 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 04 Jan 2017 21:10:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:10:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88442e9b8f36c85e67c0e914f4b136919b66823bb7ee90e9a848c481786862cb`  
		Last Modified: Thu, 05 Jan 2017 00:03:49 GMT  
		Size: 4.3 MB (4330724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7735e2b61a4801f3473c75ebddc09c6b8e8445407af67de52fbee15f702a4952`  
		Last Modified: Thu, 05 Jan 2017 00:03:47 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:b4fe7fb65170db47c9570fe549cbb1bbcaf79d01e104c64d17d72c3e4bc8f7d9
```

-	Platforms:
	-	linux; amd64

### `haproxy:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6233131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee7415cf5a8a12a89acb72226b37d235dc98accc4b0cbda6191c72f5da19454`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_VERSION=1.7.1
# Wed, 04 Jan 2017 21:10:05 GMT
ENV HAPROXY_MD5=d0acaae02e444039e11892ea31dde478
# Wed, 04 Jan 2017 21:10:47 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:10:47 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 04 Jan 2017 21:10:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:10:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88442e9b8f36c85e67c0e914f4b136919b66823bb7ee90e9a848c481786862cb`  
		Last Modified: Thu, 05 Jan 2017 00:03:49 GMT  
		Size: 4.3 MB (4330724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7735e2b61a4801f3473c75ebddc09c6b8e8445407af67de52fbee15f702a4952`  
		Last Modified: Thu, 05 Jan 2017 00:03:47 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:b4fe7fb65170db47c9570fe549cbb1bbcaf79d01e104c64d17d72c3e4bc8f7d9
```

-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6233131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee7415cf5a8a12a89acb72226b37d235dc98accc4b0cbda6191c72f5da19454`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_MAJOR=1.7
# Wed, 04 Jan 2017 21:10:04 GMT
ENV HAPROXY_VERSION=1.7.1
# Wed, 04 Jan 2017 21:10:05 GMT
ENV HAPROXY_MD5=d0acaae02e444039e11892ea31dde478
# Wed, 04 Jan 2017 21:10:47 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 04 Jan 2017 21:10:47 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Wed, 04 Jan 2017 21:10:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:10:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88442e9b8f36c85e67c0e914f4b136919b66823bb7ee90e9a848c481786862cb`  
		Last Modified: Thu, 05 Jan 2017 00:03:49 GMT  
		Size: 4.3 MB (4330724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7735e2b61a4801f3473c75ebddc09c6b8e8445407af67de52fbee15f702a4952`  
		Last Modified: Thu, 05 Jan 2017 00:03:47 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
