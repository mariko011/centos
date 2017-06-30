<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.38`](#memcached1438)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.38-alpine`](#memcached1438-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.38`

```console
$ docker pull memcached@sha256:d83af2b8bd40c12e0bc91c969bed27c7a1631939c7bb73f95f11dfe00395d224
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.38` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31117653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add80e4f412033ab9689848b423df58c62a7e5c99b59c93ac47610875265365b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:34:12 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 30 Jun 2017 16:52:53 GMT
ENV MEMCACHED_VERSION=1.4.38
# Fri, 30 Jun 2017 16:52:54 GMT
ENV MEMCACHED_SHA1=68f8df44f2a215d9f9767e76bf8ef03d9134ffb4
# Fri, 30 Jun 2017 16:53:33 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Fri, 30 Jun 2017 16:53:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 30 Jun 2017 16:53:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 30 Jun 2017 16:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Jun 2017 16:54:05 GMT
USER [memcache]
# Fri, 30 Jun 2017 16:54:06 GMT
EXPOSE 11211/tcp
# Fri, 30 Jun 2017 16:54:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7ee474d4e29f3f904bb5e806678aa444f4b4e6e6c0bbe3e8e2035887b6a6ac`  
		Last Modified: Sat, 24 Jun 2017 12:56:33 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60705a3644521e4953da2315517912b9ae8dd05aad7ae1b6e61a3e59648bd3`  
		Last Modified: Fri, 30 Jun 2017 16:57:45 GMT  
		Size: 984.9 KB (984891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1864db441db8afb514c2831c8c5a78f7a089162eb14b9bd7155a62f448e51939`  
		Last Modified: Fri, 30 Jun 2017 16:57:44 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90398aacff88f17b196e655baa1c2990e23bace7e9044a64bb730934597ed393`  
		Last Modified: Fri, 30 Jun 2017 16:57:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:d83af2b8bd40c12e0bc91c969bed27c7a1631939c7bb73f95f11dfe00395d224
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31117653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add80e4f412033ab9689848b423df58c62a7e5c99b59c93ac47610875265365b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:34:12 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 30 Jun 2017 16:52:53 GMT
ENV MEMCACHED_VERSION=1.4.38
# Fri, 30 Jun 2017 16:52:54 GMT
ENV MEMCACHED_SHA1=68f8df44f2a215d9f9767e76bf8ef03d9134ffb4
# Fri, 30 Jun 2017 16:53:33 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Fri, 30 Jun 2017 16:53:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 30 Jun 2017 16:53:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 30 Jun 2017 16:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Jun 2017 16:54:05 GMT
USER [memcache]
# Fri, 30 Jun 2017 16:54:06 GMT
EXPOSE 11211/tcp
# Fri, 30 Jun 2017 16:54:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7ee474d4e29f3f904bb5e806678aa444f4b4e6e6c0bbe3e8e2035887b6a6ac`  
		Last Modified: Sat, 24 Jun 2017 12:56:33 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60705a3644521e4953da2315517912b9ae8dd05aad7ae1b6e61a3e59648bd3`  
		Last Modified: Fri, 30 Jun 2017 16:57:45 GMT  
		Size: 984.9 KB (984891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1864db441db8afb514c2831c8c5a78f7a089162eb14b9bd7155a62f448e51939`  
		Last Modified: Fri, 30 Jun 2017 16:57:44 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90398aacff88f17b196e655baa1c2990e23bace7e9044a64bb730934597ed393`  
		Last Modified: Fri, 30 Jun 2017 16:57:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:d83af2b8bd40c12e0bc91c969bed27c7a1631939c7bb73f95f11dfe00395d224
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31117653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add80e4f412033ab9689848b423df58c62a7e5c99b59c93ac47610875265365b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:34:12 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 30 Jun 2017 16:52:53 GMT
ENV MEMCACHED_VERSION=1.4.38
# Fri, 30 Jun 2017 16:52:54 GMT
ENV MEMCACHED_SHA1=68f8df44f2a215d9f9767e76bf8ef03d9134ffb4
# Fri, 30 Jun 2017 16:53:33 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Fri, 30 Jun 2017 16:53:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 30 Jun 2017 16:53:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 30 Jun 2017 16:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Jun 2017 16:54:05 GMT
USER [memcache]
# Fri, 30 Jun 2017 16:54:06 GMT
EXPOSE 11211/tcp
# Fri, 30 Jun 2017 16:54:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7ee474d4e29f3f904bb5e806678aa444f4b4e6e6c0bbe3e8e2035887b6a6ac`  
		Last Modified: Sat, 24 Jun 2017 12:56:33 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60705a3644521e4953da2315517912b9ae8dd05aad7ae1b6e61a3e59648bd3`  
		Last Modified: Fri, 30 Jun 2017 16:57:45 GMT  
		Size: 984.9 KB (984891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1864db441db8afb514c2831c8c5a78f7a089162eb14b9bd7155a62f448e51939`  
		Last Modified: Fri, 30 Jun 2017 16:57:44 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90398aacff88f17b196e655baa1c2990e23bace7e9044a64bb730934597ed393`  
		Last Modified: Fri, 30 Jun 2017 16:57:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:d83af2b8bd40c12e0bc91c969bed27c7a1631939c7bb73f95f11dfe00395d224
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31117653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add80e4f412033ab9689848b423df58c62a7e5c99b59c93ac47610875265365b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:34:12 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 30 Jun 2017 16:52:53 GMT
ENV MEMCACHED_VERSION=1.4.38
# Fri, 30 Jun 2017 16:52:54 GMT
ENV MEMCACHED_SHA1=68f8df44f2a215d9f9767e76bf8ef03d9134ffb4
# Fri, 30 Jun 2017 16:53:33 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Fri, 30 Jun 2017 16:53:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 30 Jun 2017 16:53:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 30 Jun 2017 16:54:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Jun 2017 16:54:05 GMT
USER [memcache]
# Fri, 30 Jun 2017 16:54:06 GMT
EXPOSE 11211/tcp
# Fri, 30 Jun 2017 16:54:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7ee474d4e29f3f904bb5e806678aa444f4b4e6e6c0bbe3e8e2035887b6a6ac`  
		Last Modified: Sat, 24 Jun 2017 12:56:33 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60705a3644521e4953da2315517912b9ae8dd05aad7ae1b6e61a3e59648bd3`  
		Last Modified: Fri, 30 Jun 2017 16:57:45 GMT  
		Size: 984.9 KB (984891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1864db441db8afb514c2831c8c5a78f7a089162eb14b9bd7155a62f448e51939`  
		Last Modified: Fri, 30 Jun 2017 16:57:44 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90398aacff88f17b196e655baa1c2990e23bace7e9044a64bb730934597ed393`  
		Last Modified: Fri, 30 Jun 2017 16:57:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.38-alpine`

```console
$ docker pull memcached@sha256:acf5cfae75498336bae59337c4c5f9ecf7efcfad5b7f2616c75c9b348b51f329
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.38-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc55b8eae1ac0fbc63ffed29768462b57feb33e15bf1b2ee1c8a2116cbb85738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Fri, 30 Jun 2017 16:55:23 GMT
ENV MEMCACHED_VERSION=1.4.38
# Fri, 30 Jun 2017 16:55:24 GMT
ENV MEMCACHED_SHA1=68f8df44f2a215d9f9767e76bf8ef03d9134ffb4
# Fri, 30 Jun 2017 16:55:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Fri, 30 Jun 2017 16:55:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 30 Jun 2017 16:55:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 30 Jun 2017 16:56:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Jun 2017 16:56:23 GMT
USER [memcache]
# Fri, 30 Jun 2017 16:56:24 GMT
EXPOSE 11211/tcp
# Fri, 30 Jun 2017 16:56:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d36b64b634cad262a0f488b3b63c44b860da8482605b7d17ca656f421c32ec`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e08b3debad0b5abd1e48c680845a52d9523d3b81d2f20f171fd13062a9eae9e`  
		Last Modified: Fri, 30 Jun 2017 17:01:05 GMT  
		Size: 1.3 MB (1299403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf4516664318239ece9efb75976a6304a2d26283ab6cd756a3c80146ace5701`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32ade7515f7f293cb289bf57fc42d5450a9df195d52adb4d3285f1805afa28`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:acf5cfae75498336bae59337c4c5f9ecf7efcfad5b7f2616c75c9b348b51f329
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc55b8eae1ac0fbc63ffed29768462b57feb33e15bf1b2ee1c8a2116cbb85738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Fri, 30 Jun 2017 16:55:23 GMT
ENV MEMCACHED_VERSION=1.4.38
# Fri, 30 Jun 2017 16:55:24 GMT
ENV MEMCACHED_SHA1=68f8df44f2a215d9f9767e76bf8ef03d9134ffb4
# Fri, 30 Jun 2017 16:55:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Fri, 30 Jun 2017 16:55:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 30 Jun 2017 16:55:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 30 Jun 2017 16:56:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Jun 2017 16:56:23 GMT
USER [memcache]
# Fri, 30 Jun 2017 16:56:24 GMT
EXPOSE 11211/tcp
# Fri, 30 Jun 2017 16:56:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d36b64b634cad262a0f488b3b63c44b860da8482605b7d17ca656f421c32ec`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e08b3debad0b5abd1e48c680845a52d9523d3b81d2f20f171fd13062a9eae9e`  
		Last Modified: Fri, 30 Jun 2017 17:01:05 GMT  
		Size: 1.3 MB (1299403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf4516664318239ece9efb75976a6304a2d26283ab6cd756a3c80146ace5701`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32ade7515f7f293cb289bf57fc42d5450a9df195d52adb4d3285f1805afa28`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:acf5cfae75498336bae59337c4c5f9ecf7efcfad5b7f2616c75c9b348b51f329
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc55b8eae1ac0fbc63ffed29768462b57feb33e15bf1b2ee1c8a2116cbb85738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Fri, 30 Jun 2017 16:55:23 GMT
ENV MEMCACHED_VERSION=1.4.38
# Fri, 30 Jun 2017 16:55:24 GMT
ENV MEMCACHED_SHA1=68f8df44f2a215d9f9767e76bf8ef03d9134ffb4
# Fri, 30 Jun 2017 16:55:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Fri, 30 Jun 2017 16:55:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 30 Jun 2017 16:55:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 30 Jun 2017 16:56:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Jun 2017 16:56:23 GMT
USER [memcache]
# Fri, 30 Jun 2017 16:56:24 GMT
EXPOSE 11211/tcp
# Fri, 30 Jun 2017 16:56:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d36b64b634cad262a0f488b3b63c44b860da8482605b7d17ca656f421c32ec`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e08b3debad0b5abd1e48c680845a52d9523d3b81d2f20f171fd13062a9eae9e`  
		Last Modified: Fri, 30 Jun 2017 17:01:05 GMT  
		Size: 1.3 MB (1299403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf4516664318239ece9efb75976a6304a2d26283ab6cd756a3c80146ace5701`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32ade7515f7f293cb289bf57fc42d5450a9df195d52adb4d3285f1805afa28`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:acf5cfae75498336bae59337c4c5f9ecf7efcfad5b7f2616c75c9b348b51f329
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc55b8eae1ac0fbc63ffed29768462b57feb33e15bf1b2ee1c8a2116cbb85738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Fri, 30 Jun 2017 16:55:23 GMT
ENV MEMCACHED_VERSION=1.4.38
# Fri, 30 Jun 2017 16:55:24 GMT
ENV MEMCACHED_SHA1=68f8df44f2a215d9f9767e76bf8ef03d9134ffb4
# Fri, 30 Jun 2017 16:55:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Fri, 30 Jun 2017 16:55:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 30 Jun 2017 16:55:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 30 Jun 2017 16:56:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Jun 2017 16:56:23 GMT
USER [memcache]
# Fri, 30 Jun 2017 16:56:24 GMT
EXPOSE 11211/tcp
# Fri, 30 Jun 2017 16:56:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d36b64b634cad262a0f488b3b63c44b860da8482605b7d17ca656f421c32ec`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e08b3debad0b5abd1e48c680845a52d9523d3b81d2f20f171fd13062a9eae9e`  
		Last Modified: Fri, 30 Jun 2017 17:01:05 GMT  
		Size: 1.3 MB (1299403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf4516664318239ece9efb75976a6304a2d26283ab6cd756a3c80146ace5701`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32ade7515f7f293cb289bf57fc42d5450a9df195d52adb4d3285f1805afa28`  
		Last Modified: Fri, 30 Jun 2017 17:01:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
