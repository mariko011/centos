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
-	[`haproxy:1.6.10`](#haproxy1610)
-	[`haproxy:1.6`](#haproxy16)
-	[`haproxy:1`](#haproxy1)
-	[`haproxy:latest`](#haproxylatest)
-	[`haproxy:1.6.10-alpine`](#haproxy1610-alpine)
-	[`haproxy:1.6-alpine`](#haproxy16-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:alpine`](#haproxyalpine)

## `haproxy:1.4.27`

```console
$ docker pull haproxy@sha256:648973af1d210936697a2e1a696b973c22692de593bb38b1e1fd51e50dcab1a1
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54559134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a1184a8e6d7cbad121d31c0cb1e654cb997f6320c1178d8ba36f1ba8ebde54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:43:31 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:43:31 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 08 Nov 2016 19:43:32 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 08 Nov 2016 19:43:39 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 08 Nov 2016 19:44:13 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 19:44:18 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 08 Nov 2016 19:44:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 19:44:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e314536c32dc0fd6759ef31dc1627d0b3911b7b5279616f04d77929d118c9d40`  
		Last Modified: Tue, 08 Nov 2016 19:44:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e716d7c5a3f09d0c7d4dcae0fb035e491a7605757b1a95e9e5eace72ee5dd52f`  
		Last Modified: Tue, 08 Nov 2016 19:44:31 GMT  
		Size: 3.2 MB (3201734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a04e07b362330c3e711ebb9741f1ad10f06cfece1c97bdcaab33bda6c65f47`  
		Last Modified: Tue, 08 Nov 2016 19:44:30 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4`

```console
$ docker pull haproxy@sha256:648973af1d210936697a2e1a696b973c22692de593bb38b1e1fd51e50dcab1a1
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54559134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a1184a8e6d7cbad121d31c0cb1e654cb997f6320c1178d8ba36f1ba8ebde54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:43:31 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:43:31 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 08 Nov 2016 19:43:32 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 08 Nov 2016 19:43:39 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 08 Nov 2016 19:44:13 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 19:44:18 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 08 Nov 2016 19:44:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 19:44:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e314536c32dc0fd6759ef31dc1627d0b3911b7b5279616f04d77929d118c9d40`  
		Last Modified: Tue, 08 Nov 2016 19:44:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e716d7c5a3f09d0c7d4dcae0fb035e491a7605757b1a95e9e5eace72ee5dd52f`  
		Last Modified: Tue, 08 Nov 2016 19:44:31 GMT  
		Size: 3.2 MB (3201734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a04e07b362330c3e711ebb9741f1ad10f06cfece1c97bdcaab33bda6c65f47`  
		Last Modified: Tue, 08 Nov 2016 19:44:30 GMT  
		Size: 213.0 B  
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
$ docker pull haproxy@sha256:98f200a25dbb5b9167e9c2f5f34ed569d0fa19d793fced837982e67de67436a7
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5.18` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57048537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02f2670658b21e34e8974641c51681f7e0555be29064240bc2c068b200baa07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:41:17 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:44:52 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 08 Nov 2016 19:44:53 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 08 Nov 2016 19:44:53 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 08 Nov 2016 19:45:35 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 19:45:35 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 08 Nov 2016 19:45:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 19:45:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf50e4075efc324ebc179dc3846c2487f280b0c4cd194a99df6d78d431836a8`  
		Last Modified: Tue, 08 Nov 2016 19:42:26 GMT  
		Size: 1.7 MB (1690386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb089f7ab0e94cab05ba337e4387b635353584fa215f7adfe433b6daaac05dc`  
		Last Modified: Tue, 08 Nov 2016 19:45:48 GMT  
		Size: 4.0 MB (4000817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1619e1c5cf3c18849fd056407556f4a9516a2fd6256aa0bd05d89d0ac4a798`  
		Last Modified: Tue, 08 Nov 2016 19:45:47 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:98f200a25dbb5b9167e9c2f5f34ed569d0fa19d793fced837982e67de67436a7
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57048537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02f2670658b21e34e8974641c51681f7e0555be29064240bc2c068b200baa07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:41:17 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:44:52 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 08 Nov 2016 19:44:53 GMT
ENV HAPROXY_VERSION=1.5.18
# Tue, 08 Nov 2016 19:44:53 GMT
ENV HAPROXY_MD5=21d35f114583ef731bc96af05b46c75a
# Tue, 08 Nov 2016 19:45:35 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 19:45:35 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 08 Nov 2016 19:45:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 19:45:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf50e4075efc324ebc179dc3846c2487f280b0c4cd194a99df6d78d431836a8`  
		Last Modified: Tue, 08 Nov 2016 19:42:26 GMT  
		Size: 1.7 MB (1690386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb089f7ab0e94cab05ba337e4387b635353584fa215f7adfe433b6daaac05dc`  
		Last Modified: Tue, 08 Nov 2016 19:45:48 GMT  
		Size: 4.0 MB (4000817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1619e1c5cf3c18849fd056407556f4a9516a2fd6256aa0bd05d89d0ac4a798`  
		Last Modified: Tue, 08 Nov 2016 19:45:47 GMT  
		Size: 345.0 B  
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

## `haproxy:1.6.10`

```console
$ docker pull haproxy@sha256:f6f6a1750376be4bd78c05db010f6dd968802e4ca94f1bd632c8e9b43b1da95c
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57397350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0560eebb1b46e517bde3c65ac16de5b16055ea7aac1acf662a1a4fdba8b1e5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:41:17 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:41:23 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 21 Nov 2016 20:23:53 GMT
ENV HAPROXY_VERSION=1.6.10
# Mon, 21 Nov 2016 20:23:53 GMT
ENV HAPROXY_MD5=6d47461c008b823a0088d19ec30dbe4e
# Mon, 21 Nov 2016 20:24:38 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 21 Nov 2016 20:24:39 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 21 Nov 2016 20:24:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Nov 2016 20:24:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf50e4075efc324ebc179dc3846c2487f280b0c4cd194a99df6d78d431836a8`  
		Last Modified: Tue, 08 Nov 2016 19:42:26 GMT  
		Size: 1.7 MB (1690386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73212120ba7c5c449186610bb935a844565a643eeb82b4471951de3c6d668ca7`  
		Last Modified: Mon, 21 Nov 2016 20:27:28 GMT  
		Size: 4.3 MB (4349630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32db04cc407d61f9477c8d8874d7146e6c8d2775d670727dbce43f5f278541e4`  
		Last Modified: Mon, 21 Nov 2016 20:27:27 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:f6f6a1750376be4bd78c05db010f6dd968802e4ca94f1bd632c8e9b43b1da95c
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57397350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0560eebb1b46e517bde3c65ac16de5b16055ea7aac1acf662a1a4fdba8b1e5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:41:17 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:41:23 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 21 Nov 2016 20:23:53 GMT
ENV HAPROXY_VERSION=1.6.10
# Mon, 21 Nov 2016 20:23:53 GMT
ENV HAPROXY_MD5=6d47461c008b823a0088d19ec30dbe4e
# Mon, 21 Nov 2016 20:24:38 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 21 Nov 2016 20:24:39 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 21 Nov 2016 20:24:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Nov 2016 20:24:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf50e4075efc324ebc179dc3846c2487f280b0c4cd194a99df6d78d431836a8`  
		Last Modified: Tue, 08 Nov 2016 19:42:26 GMT  
		Size: 1.7 MB (1690386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73212120ba7c5c449186610bb935a844565a643eeb82b4471951de3c6d668ca7`  
		Last Modified: Mon, 21 Nov 2016 20:27:28 GMT  
		Size: 4.3 MB (4349630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32db04cc407d61f9477c8d8874d7146e6c8d2775d670727dbce43f5f278541e4`  
		Last Modified: Mon, 21 Nov 2016 20:27:27 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1`

```console
$ docker pull haproxy@sha256:f6f6a1750376be4bd78c05db010f6dd968802e4ca94f1bd632c8e9b43b1da95c
```

-	Platforms:
	-	linux; amd64

### `haproxy:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57397350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0560eebb1b46e517bde3c65ac16de5b16055ea7aac1acf662a1a4fdba8b1e5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:41:17 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:41:23 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 21 Nov 2016 20:23:53 GMT
ENV HAPROXY_VERSION=1.6.10
# Mon, 21 Nov 2016 20:23:53 GMT
ENV HAPROXY_MD5=6d47461c008b823a0088d19ec30dbe4e
# Mon, 21 Nov 2016 20:24:38 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 21 Nov 2016 20:24:39 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 21 Nov 2016 20:24:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Nov 2016 20:24:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf50e4075efc324ebc179dc3846c2487f280b0c4cd194a99df6d78d431836a8`  
		Last Modified: Tue, 08 Nov 2016 19:42:26 GMT  
		Size: 1.7 MB (1690386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73212120ba7c5c449186610bb935a844565a643eeb82b4471951de3c6d668ca7`  
		Last Modified: Mon, 21 Nov 2016 20:27:28 GMT  
		Size: 4.3 MB (4349630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32db04cc407d61f9477c8d8874d7146e6c8d2775d670727dbce43f5f278541e4`  
		Last Modified: Mon, 21 Nov 2016 20:27:27 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:2bcbae2e1392add719a5404c3145926565c46c5e069553dde68660d423e814de
```

-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57392744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575bea0d948da809adfb41b5462347081b88382c35502727b09f707b461bef22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:41:17 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:41:23 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 08 Nov 2016 19:41:23 GMT
ENV HAPROXY_VERSION=1.6.9
# Tue, 08 Nov 2016 19:41:24 GMT
ENV HAPROXY_MD5=c52eee40eb66f290d6f089c339b9d2b3
# Tue, 08 Nov 2016 19:42:09 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 19:42:14 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 08 Nov 2016 19:42:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 19:42:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf50e4075efc324ebc179dc3846c2487f280b0c4cd194a99df6d78d431836a8`  
		Last Modified: Tue, 08 Nov 2016 19:42:26 GMT  
		Size: 1.7 MB (1690386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11ed8d0737d1e513ab77e424975bca7d0e0d3ea57db366d56333aea2859023e`  
		Last Modified: Tue, 08 Nov 2016 19:42:28 GMT  
		Size: 4.3 MB (4345024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192fc49a6abaa1494035520c7662e978ba323d25ceb41243d9b1cb233afa01fd`  
		Last Modified: Tue, 08 Nov 2016 19:42:25 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.10-alpine`

```console
$ docker pull haproxy@sha256:301ca90fe5a7b0a5c2a1bf3a4bcf9d7f122168d04be0a7b9d58055ecbd507175
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6.10-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d55c94da85ec1933167026ac4c954b0bc7e1e49bb4da719ee470882033c8b9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 21 Nov 2016 20:24:40 GMT
ENV HAPROXY_VERSION=1.6.10
# Mon, 21 Nov 2016 20:24:40 GMT
ENV HAPROXY_MD5=6d47461c008b823a0088d19ec30dbe4e
# Mon, 21 Nov 2016 20:25:20 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Mon, 21 Nov 2016 20:25:21 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 21 Nov 2016 20:25:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Nov 2016 20:25:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd09f6be35a57ce721e3e3dc4bf0a0fea2fa637f62b5a7af09dbd34b9eeb3753`  
		Last Modified: Mon, 21 Nov 2016 20:28:28 GMT  
		Size: 2.8 MB (2809955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a496f689c310a1e2981d33ba9c154e832efa9f1353aedf4cd3a9dff9c8cd2ef2`  
		Last Modified: Mon, 21 Nov 2016 20:28:27 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:301ca90fe5a7b0a5c2a1bf3a4bcf9d7f122168d04be0a7b9d58055ecbd507175
```

-	Platforms:
	-	linux; amd64

### `haproxy:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d55c94da85ec1933167026ac4c954b0bc7e1e49bb4da719ee470882033c8b9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 21 Nov 2016 20:24:40 GMT
ENV HAPROXY_VERSION=1.6.10
# Mon, 21 Nov 2016 20:24:40 GMT
ENV HAPROXY_MD5=6d47461c008b823a0088d19ec30dbe4e
# Mon, 21 Nov 2016 20:25:20 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Mon, 21 Nov 2016 20:25:21 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 21 Nov 2016 20:25:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Nov 2016 20:25:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd09f6be35a57ce721e3e3dc4bf0a0fea2fa637f62b5a7af09dbd34b9eeb3753`  
		Last Modified: Mon, 21 Nov 2016 20:28:28 GMT  
		Size: 2.8 MB (2809955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a496f689c310a1e2981d33ba9c154e832efa9f1353aedf4cd3a9dff9c8cd2ef2`  
		Last Modified: Mon, 21 Nov 2016 20:28:27 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:301ca90fe5a7b0a5c2a1bf3a4bcf9d7f122168d04be0a7b9d58055ecbd507175
```

-	Platforms:
	-	linux; amd64

### `haproxy:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d55c94da85ec1933167026ac4c954b0bc7e1e49bb4da719ee470882033c8b9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 21 Nov 2016 20:24:40 GMT
ENV HAPROXY_VERSION=1.6.10
# Mon, 21 Nov 2016 20:24:40 GMT
ENV HAPROXY_MD5=6d47461c008b823a0088d19ec30dbe4e
# Mon, 21 Nov 2016 20:25:20 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Mon, 21 Nov 2016 20:25:21 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 21 Nov 2016 20:25:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Nov 2016 20:25:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd09f6be35a57ce721e3e3dc4bf0a0fea2fa637f62b5a7af09dbd34b9eeb3753`  
		Last Modified: Mon, 21 Nov 2016 20:28:28 GMT  
		Size: 2.8 MB (2809955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a496f689c310a1e2981d33ba9c154e832efa9f1353aedf4cd3a9dff9c8cd2ef2`  
		Last Modified: Mon, 21 Nov 2016 20:28:27 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:301ca90fe5a7b0a5c2a1bf3a4bcf9d7f122168d04be0a7b9d58055ecbd507175
```

-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d55c94da85ec1933167026ac4c954b0bc7e1e49bb4da719ee470882033c8b9d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:18:00 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 21 Nov 2016 20:24:40 GMT
ENV HAPROXY_VERSION=1.6.10
# Mon, 21 Nov 2016 20:24:40 GMT
ENV HAPROXY_MD5=6d47461c008b823a0088d19ec30dbe4e
# Mon, 21 Nov 2016 20:25:20 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Mon, 21 Nov 2016 20:25:21 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 21 Nov 2016 20:25:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Nov 2016 20:25:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd09f6be35a57ce721e3e3dc4bf0a0fea2fa637f62b5a7af09dbd34b9eeb3753`  
		Last Modified: Mon, 21 Nov 2016 20:28:28 GMT  
		Size: 2.8 MB (2809955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a496f689c310a1e2981d33ba9c154e832efa9f1353aedf4cd3a9dff9c8cd2ef2`  
		Last Modified: Mon, 21 Nov 2016 20:28:27 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
