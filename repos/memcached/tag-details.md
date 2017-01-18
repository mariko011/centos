<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.34`](#memcached1434)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.34-alpine`](#memcached1434-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.34`

```console
$ docker pull memcached@sha256:2f5402d8f6f8b359f186e211448b857b6b715a87b2879b9b68aee8fb0e44c164
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.34` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52237175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b578fa744cd9a9bcc9f704b528505afff06cfb5a92620a4ee3a362139f17cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:19:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jan 2017 17:19:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:19:38 GMT
ENV MEMCACHED_VERSION=1.4.34
# Tue, 17 Jan 2017 17:19:38 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Tue, 17 Jan 2017 17:20:05 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 17:20:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jan 2017 17:20:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 17:20:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:20:07 GMT
USER [memcache]
# Tue, 17 Jan 2017 17:20:08 GMT
EXPOSE 11211/tcp
# Tue, 17 Jan 2017 17:20:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c4c0dfd870a87d4e8bfffe33f72fa321a4aaceb1f643ca3522ee48930de6d7`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313b14b8f0390136513e2d900f7f13f3511a0d993a3d8e9612a63211d9895580`  
		Last Modified: Wed, 18 Jan 2017 04:33:03 GMT  
		Size: 237.7 KB (237654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141dea2c19622f755c0430b1fc0c18fa26b3325dbcf996af95aa4d181349b8f9`  
		Last Modified: Wed, 18 Jan 2017 04:33:03 GMT  
		Size: 635.9 KB (635857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6686d5ea39f82e6a018600c5ba1d69325b090385e77e3581448b6d40e9fc8d6`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75428fc0ad4336128ca82a942c53247a483db24f3525f7e83bc93fe8061de39c`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:2f5402d8f6f8b359f186e211448b857b6b715a87b2879b9b68aee8fb0e44c164
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52237175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b578fa744cd9a9bcc9f704b528505afff06cfb5a92620a4ee3a362139f17cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:19:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jan 2017 17:19:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:19:38 GMT
ENV MEMCACHED_VERSION=1.4.34
# Tue, 17 Jan 2017 17:19:38 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Tue, 17 Jan 2017 17:20:05 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 17:20:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jan 2017 17:20:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 17:20:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:20:07 GMT
USER [memcache]
# Tue, 17 Jan 2017 17:20:08 GMT
EXPOSE 11211/tcp
# Tue, 17 Jan 2017 17:20:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c4c0dfd870a87d4e8bfffe33f72fa321a4aaceb1f643ca3522ee48930de6d7`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313b14b8f0390136513e2d900f7f13f3511a0d993a3d8e9612a63211d9895580`  
		Last Modified: Wed, 18 Jan 2017 04:33:03 GMT  
		Size: 237.7 KB (237654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141dea2c19622f755c0430b1fc0c18fa26b3325dbcf996af95aa4d181349b8f9`  
		Last Modified: Wed, 18 Jan 2017 04:33:03 GMT  
		Size: 635.9 KB (635857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6686d5ea39f82e6a018600c5ba1d69325b090385e77e3581448b6d40e9fc8d6`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75428fc0ad4336128ca82a942c53247a483db24f3525f7e83bc93fe8061de39c`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:2f5402d8f6f8b359f186e211448b857b6b715a87b2879b9b68aee8fb0e44c164
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52237175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b578fa744cd9a9bcc9f704b528505afff06cfb5a92620a4ee3a362139f17cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:19:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jan 2017 17:19:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:19:38 GMT
ENV MEMCACHED_VERSION=1.4.34
# Tue, 17 Jan 2017 17:19:38 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Tue, 17 Jan 2017 17:20:05 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 17:20:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jan 2017 17:20:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 17:20:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:20:07 GMT
USER [memcache]
# Tue, 17 Jan 2017 17:20:08 GMT
EXPOSE 11211/tcp
# Tue, 17 Jan 2017 17:20:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c4c0dfd870a87d4e8bfffe33f72fa321a4aaceb1f643ca3522ee48930de6d7`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313b14b8f0390136513e2d900f7f13f3511a0d993a3d8e9612a63211d9895580`  
		Last Modified: Wed, 18 Jan 2017 04:33:03 GMT  
		Size: 237.7 KB (237654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141dea2c19622f755c0430b1fc0c18fa26b3325dbcf996af95aa4d181349b8f9`  
		Last Modified: Wed, 18 Jan 2017 04:33:03 GMT  
		Size: 635.9 KB (635857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6686d5ea39f82e6a018600c5ba1d69325b090385e77e3581448b6d40e9fc8d6`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75428fc0ad4336128ca82a942c53247a483db24f3525f7e83bc93fe8061de39c`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:2f5402d8f6f8b359f186e211448b857b6b715a87b2879b9b68aee8fb0e44c164
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52237175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b578fa744cd9a9bcc9f704b528505afff06cfb5a92620a4ee3a362139f17cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:19:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jan 2017 17:19:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:19:38 GMT
ENV MEMCACHED_VERSION=1.4.34
# Tue, 17 Jan 2017 17:19:38 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Tue, 17 Jan 2017 17:20:05 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jan 2017 17:20:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jan 2017 17:20:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 17:20:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:20:07 GMT
USER [memcache]
# Tue, 17 Jan 2017 17:20:08 GMT
EXPOSE 11211/tcp
# Tue, 17 Jan 2017 17:20:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c4c0dfd870a87d4e8bfffe33f72fa321a4aaceb1f643ca3522ee48930de6d7`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313b14b8f0390136513e2d900f7f13f3511a0d993a3d8e9612a63211d9895580`  
		Last Modified: Wed, 18 Jan 2017 04:33:03 GMT  
		Size: 237.7 KB (237654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141dea2c19622f755c0430b1fc0c18fa26b3325dbcf996af95aa4d181349b8f9`  
		Last Modified: Wed, 18 Jan 2017 04:33:03 GMT  
		Size: 635.9 KB (635857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6686d5ea39f82e6a018600c5ba1d69325b090385e77e3581448b6d40e9fc8d6`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75428fc0ad4336128ca82a942c53247a483db24f3525f7e83bc93fe8061de39c`  
		Last Modified: Wed, 18 Jan 2017 04:33:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.34-alpine`

```console
$ docker pull memcached@sha256:97317346fde08f06ca1e6aa8efa7b96fd6349ed18d103eb900f8dac75a577ac8
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.34-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2372452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfdef622d405cb35c466aa29ea7411fd594e7985127bec4e8080572d7ef45cfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Fri, 13 Jan 2017 18:10:54 GMT
ENV MEMCACHED_VERSION=1.4.34
# Fri, 13 Jan 2017 18:10:55 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Fri, 13 Jan 2017 18:11:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 13 Jan 2017 18:11:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 13 Jan 2017 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 13 Jan 2017 18:11:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 18:11:08 GMT
USER [memcache]
# Fri, 13 Jan 2017 18:11:08 GMT
EXPOSE 11211/tcp
# Fri, 13 Jan 2017 18:11:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57076bf87737c2f448e75324ceba121b3b90372ab913f604f928a40da4ebddc7`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665bd0ffc53b125e42c7ace50d4b788885bdaf57ac1348014e5cc35600a61d0b`  
		Last Modified: Fri, 13 Jan 2017 18:12:27 GMT  
		Size: 468.7 KB (468749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2072bc4567e1f13081af323d046f39453f010471701fa11fc50b786b60512e99`  
		Last Modified: Fri, 13 Jan 2017 18:12:27 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33066afa1dbb37ce114b2ebafe9702cea9a26c8901da38201bfcdcff17d3d190`  
		Last Modified: Fri, 13 Jan 2017 18:12:26 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:97317346fde08f06ca1e6aa8efa7b96fd6349ed18d103eb900f8dac75a577ac8
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2372452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfdef622d405cb35c466aa29ea7411fd594e7985127bec4e8080572d7ef45cfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Fri, 13 Jan 2017 18:10:54 GMT
ENV MEMCACHED_VERSION=1.4.34
# Fri, 13 Jan 2017 18:10:55 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Fri, 13 Jan 2017 18:11:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 13 Jan 2017 18:11:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 13 Jan 2017 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 13 Jan 2017 18:11:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 18:11:08 GMT
USER [memcache]
# Fri, 13 Jan 2017 18:11:08 GMT
EXPOSE 11211/tcp
# Fri, 13 Jan 2017 18:11:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57076bf87737c2f448e75324ceba121b3b90372ab913f604f928a40da4ebddc7`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665bd0ffc53b125e42c7ace50d4b788885bdaf57ac1348014e5cc35600a61d0b`  
		Last Modified: Fri, 13 Jan 2017 18:12:27 GMT  
		Size: 468.7 KB (468749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2072bc4567e1f13081af323d046f39453f010471701fa11fc50b786b60512e99`  
		Last Modified: Fri, 13 Jan 2017 18:12:27 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33066afa1dbb37ce114b2ebafe9702cea9a26c8901da38201bfcdcff17d3d190`  
		Last Modified: Fri, 13 Jan 2017 18:12:26 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:97317346fde08f06ca1e6aa8efa7b96fd6349ed18d103eb900f8dac75a577ac8
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2372452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfdef622d405cb35c466aa29ea7411fd594e7985127bec4e8080572d7ef45cfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Fri, 13 Jan 2017 18:10:54 GMT
ENV MEMCACHED_VERSION=1.4.34
# Fri, 13 Jan 2017 18:10:55 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Fri, 13 Jan 2017 18:11:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 13 Jan 2017 18:11:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 13 Jan 2017 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 13 Jan 2017 18:11:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 18:11:08 GMT
USER [memcache]
# Fri, 13 Jan 2017 18:11:08 GMT
EXPOSE 11211/tcp
# Fri, 13 Jan 2017 18:11:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57076bf87737c2f448e75324ceba121b3b90372ab913f604f928a40da4ebddc7`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665bd0ffc53b125e42c7ace50d4b788885bdaf57ac1348014e5cc35600a61d0b`  
		Last Modified: Fri, 13 Jan 2017 18:12:27 GMT  
		Size: 468.7 KB (468749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2072bc4567e1f13081af323d046f39453f010471701fa11fc50b786b60512e99`  
		Last Modified: Fri, 13 Jan 2017 18:12:27 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33066afa1dbb37ce114b2ebafe9702cea9a26c8901da38201bfcdcff17d3d190`  
		Last Modified: Fri, 13 Jan 2017 18:12:26 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:97317346fde08f06ca1e6aa8efa7b96fd6349ed18d103eb900f8dac75a577ac8
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2372452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfdef622d405cb35c466aa29ea7411fd594e7985127bec4e8080572d7ef45cfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:39 GMT
RUN adduser -D memcache
# Fri, 13 Jan 2017 18:10:54 GMT
ENV MEMCACHED_VERSION=1.4.34
# Fri, 13 Jan 2017 18:10:55 GMT
ENV MEMCACHED_SHA1=7c7214f5183c6e20c22b243e21ed1ffddb91497e
# Fri, 13 Jan 2017 18:11:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Fri, 13 Jan 2017 18:11:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 13 Jan 2017 18:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 13 Jan 2017 18:11:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 18:11:08 GMT
USER [memcache]
# Fri, 13 Jan 2017 18:11:08 GMT
EXPOSE 11211/tcp
# Fri, 13 Jan 2017 18:11:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57076bf87737c2f448e75324ceba121b3b90372ab913f604f928a40da4ebddc7`  
		Last Modified: Thu, 05 Jan 2017 00:08:35 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665bd0ffc53b125e42c7ace50d4b788885bdaf57ac1348014e5cc35600a61d0b`  
		Last Modified: Fri, 13 Jan 2017 18:12:27 GMT  
		Size: 468.7 KB (468749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2072bc4567e1f13081af323d046f39453f010471701fa11fc50b786b60512e99`  
		Last Modified: Fri, 13 Jan 2017 18:12:27 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33066afa1dbb37ce114b2ebafe9702cea9a26c8901da38201bfcdcff17d3d190`  
		Last Modified: Fri, 13 Jan 2017 18:12:26 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
