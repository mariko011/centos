<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1.4.37`](#memcached1437)
-	[`memcached:1.4`](#memcached14)
-	[`memcached:1`](#memcached1)
-	[`memcached:latest`](#memcachedlatest)
-	[`memcached:1.4.37-alpine`](#memcached1437-alpine)
-	[`memcached:1.4-alpine`](#memcached14-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)

## `memcached:1.4.37`

```console
$ docker pull memcached@sha256:1408d15bd77c5418e43e674a76697eae7c7909b3ba8633b05050b41ae6ac38ee
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.37` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31079655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c61ffa242efa69e6f71ee0b640c95bba86933336feda4bf3236ca50f83475e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:37:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 08 Jun 2017 19:10:28 GMT
ENV MEMCACHED_VERSION=1.4.37
# Thu, 08 Jun 2017 19:10:29 GMT
ENV MEMCACHED_SHA1=6a6c2ab70e9470fef939afff1cb58b7602077611
# Thu, 08 Jun 2017 19:11:10 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 08 Jun 2017 19:11:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:11:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 08 Jun 2017 19:11:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:11:50 GMT
USER [memcache]
# Thu, 08 Jun 2017 19:11:51 GMT
EXPOSE 11211/tcp
# Thu, 08 Jun 2017 19:11:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74338f4bdfeac7ef4addc6f0dfae5822b0580d5970dabd02692a51bd73b8f27`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdf2f9eb2cf778c9bc9ff48104dd4b2b221e53568d8cee1f067b0d73e15d7b1`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 978.6 KB (978586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44809e33e39ded37c5b5a923c05b04cedb1cce7ec72b9a572875e6be5b397414`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872b35c8aad72f131aae930a1e2623df8c922343f3c0331339013dafae54598`  
		Last Modified: Thu, 08 Jun 2017 19:14:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4`

```console
$ docker pull memcached@sha256:1408d15bd77c5418e43e674a76697eae7c7909b3ba8633b05050b41ae6ac38ee
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31079655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c61ffa242efa69e6f71ee0b640c95bba86933336feda4bf3236ca50f83475e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:37:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 08 Jun 2017 19:10:28 GMT
ENV MEMCACHED_VERSION=1.4.37
# Thu, 08 Jun 2017 19:10:29 GMT
ENV MEMCACHED_SHA1=6a6c2ab70e9470fef939afff1cb58b7602077611
# Thu, 08 Jun 2017 19:11:10 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 08 Jun 2017 19:11:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:11:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 08 Jun 2017 19:11:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:11:50 GMT
USER [memcache]
# Thu, 08 Jun 2017 19:11:51 GMT
EXPOSE 11211/tcp
# Thu, 08 Jun 2017 19:11:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74338f4bdfeac7ef4addc6f0dfae5822b0580d5970dabd02692a51bd73b8f27`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdf2f9eb2cf778c9bc9ff48104dd4b2b221e53568d8cee1f067b0d73e15d7b1`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 978.6 KB (978586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44809e33e39ded37c5b5a923c05b04cedb1cce7ec72b9a572875e6be5b397414`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872b35c8aad72f131aae930a1e2623df8c922343f3c0331339013dafae54598`  
		Last Modified: Thu, 08 Jun 2017 19:14:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1`

```console
$ docker pull memcached@sha256:1408d15bd77c5418e43e674a76697eae7c7909b3ba8633b05050b41ae6ac38ee
```

-	Platforms:
	-	linux; amd64

### `memcached:1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31079655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c61ffa242efa69e6f71ee0b640c95bba86933336feda4bf3236ca50f83475e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:37:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 08 Jun 2017 19:10:28 GMT
ENV MEMCACHED_VERSION=1.4.37
# Thu, 08 Jun 2017 19:10:29 GMT
ENV MEMCACHED_SHA1=6a6c2ab70e9470fef939afff1cb58b7602077611
# Thu, 08 Jun 2017 19:11:10 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 08 Jun 2017 19:11:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:11:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 08 Jun 2017 19:11:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:11:50 GMT
USER [memcache]
# Thu, 08 Jun 2017 19:11:51 GMT
EXPOSE 11211/tcp
# Thu, 08 Jun 2017 19:11:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74338f4bdfeac7ef4addc6f0dfae5822b0580d5970dabd02692a51bd73b8f27`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdf2f9eb2cf778c9bc9ff48104dd4b2b221e53568d8cee1f067b0d73e15d7b1`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 978.6 KB (978586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44809e33e39ded37c5b5a923c05b04cedb1cce7ec72b9a572875e6be5b397414`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872b35c8aad72f131aae930a1e2623df8c922343f3c0331339013dafae54598`  
		Last Modified: Thu, 08 Jun 2017 19:14:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:1408d15bd77c5418e43e674a76697eae7c7909b3ba8633b05050b41ae6ac38ee
```

-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31079655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c61ffa242efa69e6f71ee0b640c95bba86933336feda4bf3236ca50f83475e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:37:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 08 Jun 2017 19:10:28 GMT
ENV MEMCACHED_VERSION=1.4.37
# Thu, 08 Jun 2017 19:10:29 GMT
ENV MEMCACHED_SHA1=6a6c2ab70e9470fef939afff1cb58b7602077611
# Thu, 08 Jun 2017 19:11:10 GMT
RUN set -x 	&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 	&& memcached -V
# Thu, 08 Jun 2017 19:11:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:11:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 08 Jun 2017 19:11:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:11:50 GMT
USER [memcache]
# Thu, 08 Jun 2017 19:11:51 GMT
EXPOSE 11211/tcp
# Thu, 08 Jun 2017 19:11:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74338f4bdfeac7ef4addc6f0dfae5822b0580d5970dabd02692a51bd73b8f27`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdf2f9eb2cf778c9bc9ff48104dd4b2b221e53568d8cee1f067b0d73e15d7b1`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 978.6 KB (978586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44809e33e39ded37c5b5a923c05b04cedb1cce7ec72b9a572875e6be5b397414`  
		Last Modified: Thu, 08 Jun 2017 19:14:38 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872b35c8aad72f131aae930a1e2623df8c922343f3c0331339013dafae54598`  
		Last Modified: Thu, 08 Jun 2017 19:14:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4.37-alpine`

```console
$ docker pull memcached@sha256:ae33b9e8b100774d92277df779bc0d72bae81a2f62741106e7ea4cd683e2a507
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4.37-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f00ac55055311ec4fb87a5e27c31a7d68b01bd6131d39e0baee48ead57eced`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:41:31 GMT
RUN adduser -D memcache
# Thu, 08 Jun 2017 19:13:30 GMT
ENV MEMCACHED_VERSION=1.4.37
# Thu, 08 Jun 2017 19:13:32 GMT
ENV MEMCACHED_SHA1=6a6c2ab70e9470fef939afff1cb58b7602077611
# Thu, 08 Jun 2017 19:13:48 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 08 Jun 2017 19:14:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:14:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 08 Jun 2017 19:14:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:14:09 GMT
USER [memcache]
# Thu, 08 Jun 2017 19:14:10 GMT
EXPOSE 11211/tcp
# Thu, 08 Jun 2017 19:14:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338fbb6cf27a58e389a21efe86a1e03a7254a6b4a42d94dfb473437532372d8f`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0930cf93b5b288844f19afc82893e73905bb050be181e8a2df0ae43cf4ab80fb`  
		Last Modified: Thu, 08 Jun 2017 19:17:30 GMT  
		Size: 1.3 MB (1292444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdbb30d49152d4e7f7742a826b272f8518ed61341c326291371e968ac8e1493`  
		Last Modified: Thu, 08 Jun 2017 19:17:28 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c1d5e73dc6fca9b379a7aa9af66479b2c8bb91125720984a580cebca56b271`  
		Last Modified: Thu, 08 Jun 2017 19:17:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.4-alpine`

```console
$ docker pull memcached@sha256:ae33b9e8b100774d92277df779bc0d72bae81a2f62741106e7ea4cd683e2a507
```

-	Platforms:
	-	linux; amd64

### `memcached:1.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f00ac55055311ec4fb87a5e27c31a7d68b01bd6131d39e0baee48ead57eced`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:41:31 GMT
RUN adduser -D memcache
# Thu, 08 Jun 2017 19:13:30 GMT
ENV MEMCACHED_VERSION=1.4.37
# Thu, 08 Jun 2017 19:13:32 GMT
ENV MEMCACHED_SHA1=6a6c2ab70e9470fef939afff1cb58b7602077611
# Thu, 08 Jun 2017 19:13:48 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 08 Jun 2017 19:14:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:14:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 08 Jun 2017 19:14:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:14:09 GMT
USER [memcache]
# Thu, 08 Jun 2017 19:14:10 GMT
EXPOSE 11211/tcp
# Thu, 08 Jun 2017 19:14:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338fbb6cf27a58e389a21efe86a1e03a7254a6b4a42d94dfb473437532372d8f`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0930cf93b5b288844f19afc82893e73905bb050be181e8a2df0ae43cf4ab80fb`  
		Last Modified: Thu, 08 Jun 2017 19:17:30 GMT  
		Size: 1.3 MB (1292444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdbb30d49152d4e7f7742a826b272f8518ed61341c326291371e968ac8e1493`  
		Last Modified: Thu, 08 Jun 2017 19:17:28 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c1d5e73dc6fca9b379a7aa9af66479b2c8bb91125720984a580cebca56b271`  
		Last Modified: Thu, 08 Jun 2017 19:17:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:ae33b9e8b100774d92277df779bc0d72bae81a2f62741106e7ea4cd683e2a507
```

-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f00ac55055311ec4fb87a5e27c31a7d68b01bd6131d39e0baee48ead57eced`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:41:31 GMT
RUN adduser -D memcache
# Thu, 08 Jun 2017 19:13:30 GMT
ENV MEMCACHED_VERSION=1.4.37
# Thu, 08 Jun 2017 19:13:32 GMT
ENV MEMCACHED_SHA1=6a6c2ab70e9470fef939afff1cb58b7602077611
# Thu, 08 Jun 2017 19:13:48 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 08 Jun 2017 19:14:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:14:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 08 Jun 2017 19:14:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:14:09 GMT
USER [memcache]
# Thu, 08 Jun 2017 19:14:10 GMT
EXPOSE 11211/tcp
# Thu, 08 Jun 2017 19:14:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338fbb6cf27a58e389a21efe86a1e03a7254a6b4a42d94dfb473437532372d8f`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0930cf93b5b288844f19afc82893e73905bb050be181e8a2df0ae43cf4ab80fb`  
		Last Modified: Thu, 08 Jun 2017 19:17:30 GMT  
		Size: 1.3 MB (1292444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdbb30d49152d4e7f7742a826b272f8518ed61341c326291371e968ac8e1493`  
		Last Modified: Thu, 08 Jun 2017 19:17:28 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c1d5e73dc6fca9b379a7aa9af66479b2c8bb91125720984a580cebca56b271`  
		Last Modified: Thu, 08 Jun 2017 19:17:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:ae33b9e8b100774d92277df779bc0d72bae81a2f62741106e7ea4cd683e2a507
```

-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f00ac55055311ec4fb87a5e27c31a7d68b01bd6131d39e0baee48ead57eced`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 20:41:31 GMT
RUN adduser -D memcache
# Thu, 08 Jun 2017 19:13:30 GMT
ENV MEMCACHED_VERSION=1.4.37
# Thu, 08 Jun 2017 19:13:32 GMT
ENV MEMCACHED_SHA1=6a6c2ab70e9470fef939afff1cb58b7602077611
# Thu, 08 Jun 2017 19:13:48 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		tar 	&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 	&& cd /usr/src/memcached 	&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 	&& make install 	&& cd / && rm -rf /usr/src/memcached 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 	&& memcached -V
# Thu, 08 Jun 2017 19:14:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:14:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 08 Jun 2017 19:14:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:14:09 GMT
USER [memcache]
# Thu, 08 Jun 2017 19:14:10 GMT
EXPOSE 11211/tcp
# Thu, 08 Jun 2017 19:14:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338fbb6cf27a58e389a21efe86a1e03a7254a6b4a42d94dfb473437532372d8f`  
		Last Modified: Tue, 30 May 2017 20:42:17 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0930cf93b5b288844f19afc82893e73905bb050be181e8a2df0ae43cf4ab80fb`  
		Last Modified: Thu, 08 Jun 2017 19:17:30 GMT  
		Size: 1.3 MB (1292444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdbb30d49152d4e7f7742a826b272f8518ed61341c326291371e968ac8e1493`  
		Last Modified: Thu, 08 Jun 2017 19:17:28 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c1d5e73dc6fca9b379a7aa9af66479b2c8bb91125720984a580cebca56b271`  
		Last Modified: Thu, 08 Jun 2017 19:17:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
