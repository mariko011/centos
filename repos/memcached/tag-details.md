<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.39`](#memcached1439)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.39-alpine`](#memcached1439-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.39`

```console
$ docker pull memcached@sha256:15ccad6664cf86cfbc81d0ddada17ea6a8b0e81c64d0df9764d0d939af9e0617
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.39` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31117799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6d78556a83215da5274be7a876f20762e50667c8dd3915a42f9db551cab207`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:34:12 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Jul 2017 21:41:00 GMT
ENV MEMCACHED_VERSION=1.4.39
# Thu, 06 Jul 2017 21:41:01 GMT
ENV MEMCACHED_SHA1=9d6f77f4f9f1b50289882fd88851dece7699c74b
# Thu, 06 Jul 2017 21:41:37 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 06 Jul 2017 21:41:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:41:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:41:42 GMT
USER [memcache]
# Thu, 06 Jul 2017 21:41:43 GMT
EXPOSE 11211/tcp
# Thu, 06 Jul 2017 21:41:44 GMT
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
	-	`sha256:78568b130baa2ed3767a9c2d798f61e5a42cbe8174e86782e06029e26fc9098c`  
		Last Modified: Thu, 06 Jul 2017 21:47:50 GMT  
		Size: 985.0 KB (985036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad3e3233a200046167a3700879e50d28eb1358be652b380a70fea50a88c06a`  
		Last Modified: Thu, 06 Jul 2017 21:47:49 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1661ce93b42bd002d4cfa12b453e8fbe5cc7b1c00038688efe9a6334496f7435`  
		Last Modified: Thu, 06 Jul 2017 21:47:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:15ccad6664cf86cfbc81d0ddada17ea6a8b0e81c64d0df9764d0d939af9e0617
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31117799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6d78556a83215da5274be7a876f20762e50667c8dd3915a42f9db551cab207`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:34:12 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Jul 2017 21:41:00 GMT
ENV MEMCACHED_VERSION=1.4.39
# Thu, 06 Jul 2017 21:41:01 GMT
ENV MEMCACHED_SHA1=9d6f77f4f9f1b50289882fd88851dece7699c74b
# Thu, 06 Jul 2017 21:41:37 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 06 Jul 2017 21:41:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:41:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:41:42 GMT
USER [memcache]
# Thu, 06 Jul 2017 21:41:43 GMT
EXPOSE 11211/tcp
# Thu, 06 Jul 2017 21:41:44 GMT
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
	-	`sha256:78568b130baa2ed3767a9c2d798f61e5a42cbe8174e86782e06029e26fc9098c`  
		Last Modified: Thu, 06 Jul 2017 21:47:50 GMT  
		Size: 985.0 KB (985036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad3e3233a200046167a3700879e50d28eb1358be652b380a70fea50a88c06a`  
		Last Modified: Thu, 06 Jul 2017 21:47:49 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1661ce93b42bd002d4cfa12b453e8fbe5cc7b1c00038688efe9a6334496f7435`  
		Last Modified: Thu, 06 Jul 2017 21:47:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:15ccad6664cf86cfbc81d0ddada17ea6a8b0e81c64d0df9764d0d939af9e0617
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31117799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6d78556a83215da5274be7a876f20762e50667c8dd3915a42f9db551cab207`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:34:12 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Jul 2017 21:41:00 GMT
ENV MEMCACHED_VERSION=1.4.39
# Thu, 06 Jul 2017 21:41:01 GMT
ENV MEMCACHED_SHA1=9d6f77f4f9f1b50289882fd88851dece7699c74b
# Thu, 06 Jul 2017 21:41:37 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 06 Jul 2017 21:41:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:41:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:41:42 GMT
USER [memcache]
# Thu, 06 Jul 2017 21:41:43 GMT
EXPOSE 11211/tcp
# Thu, 06 Jul 2017 21:41:44 GMT
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
	-	`sha256:78568b130baa2ed3767a9c2d798f61e5a42cbe8174e86782e06029e26fc9098c`  
		Last Modified: Thu, 06 Jul 2017 21:47:50 GMT  
		Size: 985.0 KB (985036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad3e3233a200046167a3700879e50d28eb1358be652b380a70fea50a88c06a`  
		Last Modified: Thu, 06 Jul 2017 21:47:49 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1661ce93b42bd002d4cfa12b453e8fbe5cc7b1c00038688efe9a6334496f7435`  
		Last Modified: Thu, 06 Jul 2017 21:47:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:15ccad6664cf86cfbc81d0ddada17ea6a8b0e81c64d0df9764d0d939af9e0617
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31117799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6d78556a83215da5274be7a876f20762e50667c8dd3915a42f9db551cab207`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:34:12 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Jul 2017 21:41:00 GMT
ENV MEMCACHED_VERSION=1.4.39
# Thu, 06 Jul 2017 21:41:01 GMT
ENV MEMCACHED_SHA1=9d6f77f4f9f1b50289882fd88851dece7699c74b
# Thu, 06 Jul 2017 21:41:37 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 06 Jul 2017 21:41:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:41:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:41:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:41:42 GMT
USER [memcache]
# Thu, 06 Jul 2017 21:41:43 GMT
EXPOSE 11211/tcp
# Thu, 06 Jul 2017 21:41:44 GMT
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
	-	`sha256:78568b130baa2ed3767a9c2d798f61e5a42cbe8174e86782e06029e26fc9098c`  
		Last Modified: Thu, 06 Jul 2017 21:47:50 GMT  
		Size: 985.0 KB (985036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad3e3233a200046167a3700879e50d28eb1358be652b380a70fea50a88c06a`  
		Last Modified: Thu, 06 Jul 2017 21:47:49 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1661ce93b42bd002d4cfa12b453e8fbe5cc7b1c00038688efe9a6334496f7435`  
		Last Modified: Thu, 06 Jul 2017 21:47:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.39-alpine`

```console
$ docker pull memcached@sha256:3cbaed21c324cfefbc1aa4b49c7ae62acd7ac0627287ef73b1878484b76f856f
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.39-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d323542b78b336e1d7e20ee12ea0ec5a93e0de925ee23024b8a6532b6b8b3800`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Thu, 06 Jul 2017 21:46:55 GMT
ENV MEMCACHED_VERSION=1.4.39
# Thu, 06 Jul 2017 21:46:56 GMT
ENV MEMCACHED_SHA1=9d6f77f4f9f1b50289882fd88851dece7699c74b
# Thu, 06 Jul 2017 21:47:11 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 06 Jul 2017 21:47:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:47:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:47:16 GMT
USER [memcache]
# Thu, 06 Jul 2017 21:47:17 GMT
EXPOSE 11211/tcp
# Thu, 06 Jul 2017 21:47:18 GMT
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
	-	`sha256:5ec3a288424fe7afc62e8fc29c7803db136ae70de4157523daf39fa39df963b5`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 1.3 MB (1299725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303b8bd109551cc47771c20d205ec6da533fee529480c5a7c1cfd88c68ab7bbe`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de116c482fcf6fb1d25cf821824fe8bac3a1ade5f33b5fa146c23edf3d7c92c0`  
		Last Modified: Thu, 06 Jul 2017 21:49:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:3cbaed21c324cfefbc1aa4b49c7ae62acd7ac0627287ef73b1878484b76f856f
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d323542b78b336e1d7e20ee12ea0ec5a93e0de925ee23024b8a6532b6b8b3800`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Thu, 06 Jul 2017 21:46:55 GMT
ENV MEMCACHED_VERSION=1.4.39
# Thu, 06 Jul 2017 21:46:56 GMT
ENV MEMCACHED_SHA1=9d6f77f4f9f1b50289882fd88851dece7699c74b
# Thu, 06 Jul 2017 21:47:11 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 06 Jul 2017 21:47:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:47:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:47:16 GMT
USER [memcache]
# Thu, 06 Jul 2017 21:47:17 GMT
EXPOSE 11211/tcp
# Thu, 06 Jul 2017 21:47:18 GMT
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
	-	`sha256:5ec3a288424fe7afc62e8fc29c7803db136ae70de4157523daf39fa39df963b5`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 1.3 MB (1299725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303b8bd109551cc47771c20d205ec6da533fee529480c5a7c1cfd88c68ab7bbe`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de116c482fcf6fb1d25cf821824fe8bac3a1ade5f33b5fa146c23edf3d7c92c0`  
		Last Modified: Thu, 06 Jul 2017 21:49:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:3cbaed21c324cfefbc1aa4b49c7ae62acd7ac0627287ef73b1878484b76f856f
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d323542b78b336e1d7e20ee12ea0ec5a93e0de925ee23024b8a6532b6b8b3800`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Thu, 06 Jul 2017 21:46:55 GMT
ENV MEMCACHED_VERSION=1.4.39
# Thu, 06 Jul 2017 21:46:56 GMT
ENV MEMCACHED_SHA1=9d6f77f4f9f1b50289882fd88851dece7699c74b
# Thu, 06 Jul 2017 21:47:11 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 06 Jul 2017 21:47:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:47:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:47:16 GMT
USER [memcache]
# Thu, 06 Jul 2017 21:47:17 GMT
EXPOSE 11211/tcp
# Thu, 06 Jul 2017 21:47:18 GMT
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
	-	`sha256:5ec3a288424fe7afc62e8fc29c7803db136ae70de4157523daf39fa39df963b5`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 1.3 MB (1299725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303b8bd109551cc47771c20d205ec6da533fee529480c5a7c1cfd88c68ab7bbe`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de116c482fcf6fb1d25cf821824fe8bac3a1ade5f33b5fa146c23edf3d7c92c0`  
		Last Modified: Thu, 06 Jul 2017 21:49:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:3cbaed21c324cfefbc1aa4b49c7ae62acd7ac0627287ef73b1878484b76f856f
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d323542b78b336e1d7e20ee12ea0ec5a93e0de925ee23024b8a6532b6b8b3800`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:25:57 GMT
RUN adduser -D memcache
# Thu, 06 Jul 2017 21:46:55 GMT
ENV MEMCACHED_VERSION=1.4.39
# Thu, 06 Jul 2017 21:46:56 GMT
ENV MEMCACHED_SHA1=9d6f77f4f9f1b50289882fd88851dece7699c74b
# Thu, 06 Jul 2017 21:47:11 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 06 Jul 2017 21:47:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:47:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:47:16 GMT
USER [memcache]
# Thu, 06 Jul 2017 21:47:17 GMT
EXPOSE 11211/tcp
# Thu, 06 Jul 2017 21:47:18 GMT
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
	-	`sha256:5ec3a288424fe7afc62e8fc29c7803db136ae70de4157523daf39fa39df963b5`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 1.3 MB (1299725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303b8bd109551cc47771c20d205ec6da533fee529480c5a7c1cfd88c68ab7bbe`  
		Last Modified: Thu, 06 Jul 2017 21:49:42 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de116c482fcf6fb1d25cf821824fe8bac3a1ade5f33b5fa146c23edf3d7c92c0`  
		Last Modified: Thu, 06 Jul 2017 21:49:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
