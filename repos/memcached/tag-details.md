<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.33`](#memcached1433)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.33-alpine`](#memcached1433-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.33`

```console
$ docker pull memcached@sha256:373e69e1a0532145614eb7a6bfa5a67ff8dd2b2137de6f794cae7141fb7ae1b1
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.33` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52230299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e78755495e199c007d2ba13306fbbfa32e707166679e5ca3d0dbff184f53a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:37:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 08 Nov 2016 20:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:37:26 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 08 Nov 2016 20:37:26 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 08 Nov 2016 20:37:54 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:37:54 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 08 Nov 2016 20:37:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 20:37:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:37:56 GMT
USER [memcache]
# Tue, 08 Nov 2016 20:37:57 GMT
EXPOSE 11211/tcp
# Tue, 08 Nov 2016 20:37:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8789ca7e77ad6c589824f1a6263949869d6a781b39711ca5045bad3b11d07307`  
		Last Modified: Tue, 08 Nov 2016 20:38:08 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1daf0972a96b8fc9d0d14367e36cbad9a3ae056eee82aca1d8bdc8be22bbea4`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 237.8 KB (237849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16eb7f22dd1e202710be5c36789cd4882b368dc3fbaaf0a750e4f99a92b288d`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 633.0 KB (633007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6276d4adb86b560779932ff21add6c82ab222eb41d47a774b31fc6d58241c9`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b06fa9ef30cee09e9b04a77cb53f20ea5a86b3ab101ae6f7dfa730fb2d8a9e2`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:9cfbcc6988622e75827d8dc8a1826aa8b088ca5f3f94ae60074149cf6bea3679
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52226121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdd5c36cc9a5b9cc962dc091d0c4b20f729ba2f1e654fa477ec3e2fe4ff30c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:39:50 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 21 Oct 2016 20:39:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 23:27:44 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 01 Nov 2016 23:27:44 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 01 Nov 2016 23:28:12 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 23:28:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:28:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:28:14 GMT
USER [memcache]
# Tue, 01 Nov 2016 23:28:15 GMT
EXPOSE 11211/tcp
# Tue, 01 Nov 2016 23:28:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b25e9455e95f58fccd1d83a551892751c947971463c861740fb66283a26005`  
		Last Modified: Fri, 21 Oct 2016 20:40:33 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2ca9ff2c6144b4c19f9dd559987e81669305e5a9a93df3585f203ce296a79`  
		Last Modified: Fri, 21 Oct 2016 20:40:35 GMT  
		Size: 237.6 KB (237574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a4a67353df7a851eb8c9ee71c92ab8082ee179d4cfd9c56aee083fec9f36c`  
		Last Modified: Tue, 01 Nov 2016 23:28:46 GMT  
		Size: 633.0 KB (632964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2519305ba509b864f32a548dd496108a6734e3c0b1a6e92fd17c71fd61306e5b`  
		Last Modified: Tue, 01 Nov 2016 23:28:45 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a26be6b8ee80d83b1538d88e5a491fd4e7f2e50795aba1c41469867196d3a0`  
		Last Modified: Tue, 01 Nov 2016 23:28:46 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:373e69e1a0532145614eb7a6bfa5a67ff8dd2b2137de6f794cae7141fb7ae1b1
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52230299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e78755495e199c007d2ba13306fbbfa32e707166679e5ca3d0dbff184f53a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:37:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 08 Nov 2016 20:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:37:26 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 08 Nov 2016 20:37:26 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 08 Nov 2016 20:37:54 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:37:54 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 08 Nov 2016 20:37:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 20:37:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:37:56 GMT
USER [memcache]
# Tue, 08 Nov 2016 20:37:57 GMT
EXPOSE 11211/tcp
# Tue, 08 Nov 2016 20:37:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8789ca7e77ad6c589824f1a6263949869d6a781b39711ca5045bad3b11d07307`  
		Last Modified: Tue, 08 Nov 2016 20:38:08 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1daf0972a96b8fc9d0d14367e36cbad9a3ae056eee82aca1d8bdc8be22bbea4`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 237.8 KB (237849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16eb7f22dd1e202710be5c36789cd4882b368dc3fbaaf0a750e4f99a92b288d`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 633.0 KB (633007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6276d4adb86b560779932ff21add6c82ab222eb41d47a774b31fc6d58241c9`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b06fa9ef30cee09e9b04a77cb53f20ea5a86b3ab101ae6f7dfa730fb2d8a9e2`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:373e69e1a0532145614eb7a6bfa5a67ff8dd2b2137de6f794cae7141fb7ae1b1
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52230299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e78755495e199c007d2ba13306fbbfa32e707166679e5ca3d0dbff184f53a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:37:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 08 Nov 2016 20:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libevent-2.0-5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:37:26 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 08 Nov 2016 20:37:26 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 08 Nov 2016 20:37:54 GMT
RUN buildDeps=' 		gcc 		libc6-dev 		libevent-dev 		make 		perl 		wget 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(nproc) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 08 Nov 2016 20:37:54 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 08 Nov 2016 20:37:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 08 Nov 2016 20:37:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 20:37:56 GMT
USER [memcache]
# Tue, 08 Nov 2016 20:37:57 GMT
EXPOSE 11211/tcp
# Tue, 08 Nov 2016 20:37:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8789ca7e77ad6c589824f1a6263949869d6a781b39711ca5045bad3b11d07307`  
		Last Modified: Tue, 08 Nov 2016 20:38:08 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1daf0972a96b8fc9d0d14367e36cbad9a3ae056eee82aca1d8bdc8be22bbea4`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 237.8 KB (237849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16eb7f22dd1e202710be5c36789cd4882b368dc3fbaaf0a750e4f99a92b288d`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 633.0 KB (633007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6276d4adb86b560779932ff21add6c82ab222eb41d47a774b31fc6d58241c9`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b06fa9ef30cee09e9b04a77cb53f20ea5a86b3ab101ae6f7dfa730fb2d8a9e2`  
		Last Modified: Tue, 08 Nov 2016 20:38:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.33-alpine`

```console
$ docker pull memcached@sha256:715d22ff6ff55412d0327147b1b6df7c3c8aadfd6eb3d8c6018aea22a19efb48
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.33-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3144641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d11822044cb4a1b3d871fe3fc26a3ceb564e650e832f3c6b6945f42849bc22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:40:04 GMT
RUN adduser -D memcache
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 01 Nov 2016 23:28:31 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 01 Nov 2016 23:28:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:28:34 GMT
USER [memcache]
# Tue, 01 Nov 2016 23:28:34 GMT
EXPOSE 11211/tcp
# Tue, 01 Nov 2016 23:28:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d26aef1141b9e4fe2b84250163510b81fd1c927fe18de872ecbe4cba158b8b1`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a688e2c13cf14f5dd42e6f477d59c43956f5f5c0f281e31aae3301ccc8d53bec`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 830.0 KB (830021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84e0477b7057906c5f8bb6201b20d56f24d77565d5aaa573f1f7e74b8d6191`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70caa559e9c96a3c9a0d9aee5c3a0da9a792a1e7b4101bb0b7ac3e09ac783354`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:715d22ff6ff55412d0327147b1b6df7c3c8aadfd6eb3d8c6018aea22a19efb48
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3144641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d11822044cb4a1b3d871fe3fc26a3ceb564e650e832f3c6b6945f42849bc22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:40:04 GMT
RUN adduser -D memcache
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 01 Nov 2016 23:28:31 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 01 Nov 2016 23:28:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:28:34 GMT
USER [memcache]
# Tue, 01 Nov 2016 23:28:34 GMT
EXPOSE 11211/tcp
# Tue, 01 Nov 2016 23:28:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d26aef1141b9e4fe2b84250163510b81fd1c927fe18de872ecbe4cba158b8b1`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a688e2c13cf14f5dd42e6f477d59c43956f5f5c0f281e31aae3301ccc8d53bec`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 830.0 KB (830021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84e0477b7057906c5f8bb6201b20d56f24d77565d5aaa573f1f7e74b8d6191`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70caa559e9c96a3c9a0d9aee5c3a0da9a792a1e7b4101bb0b7ac3e09ac783354`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:715d22ff6ff55412d0327147b1b6df7c3c8aadfd6eb3d8c6018aea22a19efb48
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3144641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d11822044cb4a1b3d871fe3fc26a3ceb564e650e832f3c6b6945f42849bc22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:40:04 GMT
RUN adduser -D memcache
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 01 Nov 2016 23:28:31 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 01 Nov 2016 23:28:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:28:34 GMT
USER [memcache]
# Tue, 01 Nov 2016 23:28:34 GMT
EXPOSE 11211/tcp
# Tue, 01 Nov 2016 23:28:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d26aef1141b9e4fe2b84250163510b81fd1c927fe18de872ecbe4cba158b8b1`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a688e2c13cf14f5dd42e6f477d59c43956f5f5c0f281e31aae3301ccc8d53bec`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 830.0 KB (830021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84e0477b7057906c5f8bb6201b20d56f24d77565d5aaa573f1f7e74b8d6191`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70caa559e9c96a3c9a0d9aee5c3a0da9a792a1e7b4101bb0b7ac3e09ac783354`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:715d22ff6ff55412d0327147b1b6df7c3c8aadfd6eb3d8c6018aea22a19efb48
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3144641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d11822044cb4a1b3d871fe3fc26a3ceb564e650e832f3c6b6945f42849bc22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:40:04 GMT
RUN adduser -D memcache
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_VERSION=1.4.33
# Tue, 01 Nov 2016 23:28:16 GMT
ENV MEMCACHED_SHA1=e343530c55946ccbdd78c488355b02eaf90b3b46
# Tue, 01 Nov 2016 23:28:31 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "http://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps
# Tue, 01 Nov 2016 23:28:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 01 Nov 2016 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 01 Nov 2016 23:28:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 23:28:34 GMT
USER [memcache]
# Tue, 01 Nov 2016 23:28:34 GMT
EXPOSE 11211/tcp
# Tue, 01 Nov 2016 23:28:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d26aef1141b9e4fe2b84250163510b81fd1c927fe18de872ecbe4cba158b8b1`  
		Last Modified: Tue, 18 Oct 2016 23:40:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a688e2c13cf14f5dd42e6f477d59c43956f5f5c0f281e31aae3301ccc8d53bec`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 830.0 KB (830021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84e0477b7057906c5f8bb6201b20d56f24d77565d5aaa573f1f7e74b8d6191`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70caa559e9c96a3c9a0d9aee5c3a0da9a792a1e7b4101bb0b7ac3e09ac783354`  
		Last Modified: Tue, 01 Nov 2016 23:29:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
