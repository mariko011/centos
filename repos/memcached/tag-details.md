<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.4`](#memcached154)
-	[`memcached:1.5.4-alpine`](#memcached154-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:1970c4204eb174598f611afa6220a5583d9ddd13b0e464d41ec37313f91b4d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:3e8897875f704f9ba8f25ae40c9c939efc7aff9af8967c6d4e35a3204b1bd250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23463846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdb3385afc92cec327e0d59a31f569e24ba56ecf3b67e6d732570b474fc8e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 21:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 21 Dec 2017 21:35:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 21:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:35:38 GMT
USER [memcache]
# Thu, 21 Dec 2017 21:35:38 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 21:35:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb3f8fce829024a761313c0897c1d2da32a6800c0fb63a5d714d77357f1bac2`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d88b232c2fb5bc315a22ef8eae787c007d7f20cd68d6476f736678e5a0e17`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 976.0 KB (975967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3999c826aa07d247c10eefdf2cea83068a44d2f82c978b43e5eac7258aa0b8`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d32ac2247f396fbe2f4e3bd58c592e43298a23b5ded6b811c29e53796db9e9`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:26290426c71135eebc2628fb33d3a4a9721ece71f590972b5c1a22bef1821f6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0689f7c50c045324ef0865c07d732dd0b0459e1d5e8020500e4aec2ecb017a63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:59:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 19:35:22 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 19:35:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 19:47:10 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 19:47:11 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 19:47:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 19:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 19:47:16 GMT
USER [memcache]
# Fri, 22 Dec 2017 19:47:16 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 19:47:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e0a77b445af8e7586f1be6dd87c9b7bb7f3ad9d7d4a04f3dbb8fffd6ff14e2`  
		Last Modified: Wed, 13 Dec 2017 03:11:06 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a645d383fbe6e06022504c3f7171ad6393a2cfbace4d71285fcb7b5a55a695`  
		Last Modified: Fri, 22 Dec 2017 19:47:39 GMT  
		Size: 966.5 KB (966517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1039b71dbffacd54163f91fafea56149a79d698ea307898f54a9a83b3e5960df`  
		Last Modified: Fri, 22 Dec 2017 19:47:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30a3b7013b92b37897246eb80bc9cdf791533570cdc15d1d66311f6ad6224e6`  
		Last Modified: Fri, 22 Dec 2017 19:47:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:258a2b16cc02bdf5e05cffc22514fe1b6dea70100b229d1f55006bb8db8a1625
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8d88570048116538c9b9be123e2a5c879de814717312729102855b54e80cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:01:00 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 05:58:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 05:58:23 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 06:08:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 06:08:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 06:08:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 06:08:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 06:08:49 GMT
USER [memcache]
# Fri, 22 Dec 2017 06:08:50 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 06:08:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6b67731d6f813ed5441dfbb03b4439bb201279a6603cde534361c40369ed6b`  
		Last Modified: Wed, 13 Dec 2017 02:11:28 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553f05bb8f7d26cd27459dd97cf51f8ddc6b880adc4c4b4d3f2e7249f82f9dbf`  
		Last Modified: Fri, 22 Dec 2017 06:09:10 GMT  
		Size: 935.2 KB (935228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb928aa0ae09d176f589c7a5a884edbc272b27fc99af62c16b6c2f7ab812b27`  
		Last Modified: Fri, 22 Dec 2017 06:09:07 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58570bf1315e1b6c2e85a4777fd7972d34603ed80dc1338791b77d4065e8baee`  
		Last Modified: Fri, 22 Dec 2017 06:09:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:baff641157da8c3447e5a2cdacec7d6ee83feabd6941e826ba005dbf8eea0eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621381d436f87dc8a26ed4a8a9b56f5491870d1f5b02e0e11657cd7ffb435615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 03:47:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 03:47:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 03:52:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 03:52:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 03:52:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 03:52:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 03:52:31 GMT
USER [memcache]
# Fri, 22 Dec 2017 03:52:32 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 03:52:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d863df4ae3972e295821c901d1de893f6117a3a18c3187af09ef19d2f43af`  
		Last Modified: Wed, 20 Dec 2017 03:54:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2f5ba92030711a118cb8183f3afbb4a08898c141c2f05c4149e8c4ea422d57`  
		Last Modified: Fri, 22 Dec 2017 03:57:21 GMT  
		Size: 948.0 KB (948009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a32b237f417fd71c94a0bac80fc7584faf97269587345b8056030f50b99930`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225375b3d98bb3e665770c0f3103f11147f224fa655498b962a69843ee7ea736`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:d65fc2b6259620953e6cd53b0a000d8f02e1a1c775440601ecfdeb527500d69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48b8f10f3483916f7590729054a1381a4d144bbb1b5189cbcdb0a192163e2fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 20:05:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:05:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:05:17 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:05:18 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:05:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf48db5b271ca26bf75c52c0921bd7b5982927fa493e304256c95ce446b08b8`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d990949866a3e4c464e5dfcc62b3f63afdde1b5232e2423d7a553bc3df19e2`  
		Last Modified: Fri, 22 Dec 2017 20:23:46 GMT  
		Size: 988.9 KB (988943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b534c078e4423b62d09398c487dd404ddbb90e1d8157267f63b579502a578c`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7ec3ba19c75f40d18d70c1c268da2de1d5ffe39d36ce2a9f4cb240ae1be1dd`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:e064e0606c7df34da785410563aaf1e937f5485290348548b90e10a30001dab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1eb5b8bfea38852c1230bcb5a2773b4ef711bd3e03d383bf1e2a147c481513`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 01:33:24 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 01:33:26 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 01:54:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 01:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 01:54:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 01:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 01:54:14 GMT
USER [memcache]
# Fri, 22 Dec 2017 01:54:15 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 01:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57213c4055790e86ab8130d85d27c055c55c6938d5de24609b217d70227e68d2`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364ee7131f19c6ad5754f3c5d19a30c34d37b11d70847e6506c7b5b59e20251`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 979.4 KB (979386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca1e94003eb8786a769885da40333a59397f2e62b49120af7588d50e63b9937`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c39efde29df98b8151126ed13322e12741eb8772e22a667b3abd5d35dc855c`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:ac307c9ae6bf3d3f029bb0fd2e21af9f3c2531274422b6cbab662a3e59c5dd45
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c817fffcdf35c3357cccc648eaa42551d61f290d2d1e92d675ca2f8b9b68406`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sun, 07 Jan 2018 08:07:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:07:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:10:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 07 Jan 2018 08:10:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:10:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:10:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:10:56 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:10:56 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:10:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0430cdab840b4e29a0e2f3fa23e30410f1e71adb0a7847a3338dbc2a76c6000`  
		Last Modified: Tue, 12 Dec 2017 07:33:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142bfa03884b38ea471a978148b464f45e9bcd2cca658d00472186ab90a6c631`  
		Last Modified: Sun, 07 Jan 2018 08:15:02 GMT  
		Size: 996.5 KB (996479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1bb5489c871617709ff9ba51f5c1ea3431c2e99c5b803c717ccbc74b3e2e7c`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d29424cc1e99de551b5abc21057dbc160f6375c7d4373dd60371ad61fb9b29f`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:1970c4204eb174598f611afa6220a5583d9ddd13b0e464d41ec37313f91b4d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:3e8897875f704f9ba8f25ae40c9c939efc7aff9af8967c6d4e35a3204b1bd250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23463846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdb3385afc92cec327e0d59a31f569e24ba56ecf3b67e6d732570b474fc8e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 21:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 21 Dec 2017 21:35:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 21:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:35:38 GMT
USER [memcache]
# Thu, 21 Dec 2017 21:35:38 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 21:35:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb3f8fce829024a761313c0897c1d2da32a6800c0fb63a5d714d77357f1bac2`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d88b232c2fb5bc315a22ef8eae787c007d7f20cd68d6476f736678e5a0e17`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 976.0 KB (975967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3999c826aa07d247c10eefdf2cea83068a44d2f82c978b43e5eac7258aa0b8`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d32ac2247f396fbe2f4e3bd58c592e43298a23b5ded6b811c29e53796db9e9`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:26290426c71135eebc2628fb33d3a4a9721ece71f590972b5c1a22bef1821f6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0689f7c50c045324ef0865c07d732dd0b0459e1d5e8020500e4aec2ecb017a63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:59:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 19:35:22 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 19:35:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 19:47:10 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 19:47:11 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 19:47:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 19:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 19:47:16 GMT
USER [memcache]
# Fri, 22 Dec 2017 19:47:16 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 19:47:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e0a77b445af8e7586f1be6dd87c9b7bb7f3ad9d7d4a04f3dbb8fffd6ff14e2`  
		Last Modified: Wed, 13 Dec 2017 03:11:06 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a645d383fbe6e06022504c3f7171ad6393a2cfbace4d71285fcb7b5a55a695`  
		Last Modified: Fri, 22 Dec 2017 19:47:39 GMT  
		Size: 966.5 KB (966517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1039b71dbffacd54163f91fafea56149a79d698ea307898f54a9a83b3e5960df`  
		Last Modified: Fri, 22 Dec 2017 19:47:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30a3b7013b92b37897246eb80bc9cdf791533570cdc15d1d66311f6ad6224e6`  
		Last Modified: Fri, 22 Dec 2017 19:47:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:258a2b16cc02bdf5e05cffc22514fe1b6dea70100b229d1f55006bb8db8a1625
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8d88570048116538c9b9be123e2a5c879de814717312729102855b54e80cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:01:00 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 05:58:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 05:58:23 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 06:08:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 06:08:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 06:08:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 06:08:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 06:08:49 GMT
USER [memcache]
# Fri, 22 Dec 2017 06:08:50 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 06:08:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6b67731d6f813ed5441dfbb03b4439bb201279a6603cde534361c40369ed6b`  
		Last Modified: Wed, 13 Dec 2017 02:11:28 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553f05bb8f7d26cd27459dd97cf51f8ddc6b880adc4c4b4d3f2e7249f82f9dbf`  
		Last Modified: Fri, 22 Dec 2017 06:09:10 GMT  
		Size: 935.2 KB (935228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb928aa0ae09d176f589c7a5a884edbc272b27fc99af62c16b6c2f7ab812b27`  
		Last Modified: Fri, 22 Dec 2017 06:09:07 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58570bf1315e1b6c2e85a4777fd7972d34603ed80dc1338791b77d4065e8baee`  
		Last Modified: Fri, 22 Dec 2017 06:09:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:baff641157da8c3447e5a2cdacec7d6ee83feabd6941e826ba005dbf8eea0eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621381d436f87dc8a26ed4a8a9b56f5491870d1f5b02e0e11657cd7ffb435615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 03:47:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 03:47:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 03:52:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 03:52:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 03:52:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 03:52:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 03:52:31 GMT
USER [memcache]
# Fri, 22 Dec 2017 03:52:32 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 03:52:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d863df4ae3972e295821c901d1de893f6117a3a18c3187af09ef19d2f43af`  
		Last Modified: Wed, 20 Dec 2017 03:54:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2f5ba92030711a118cb8183f3afbb4a08898c141c2f05c4149e8c4ea422d57`  
		Last Modified: Fri, 22 Dec 2017 03:57:21 GMT  
		Size: 948.0 KB (948009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a32b237f417fd71c94a0bac80fc7584faf97269587345b8056030f50b99930`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225375b3d98bb3e665770c0f3103f11147f224fa655498b962a69843ee7ea736`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:d65fc2b6259620953e6cd53b0a000d8f02e1a1c775440601ecfdeb527500d69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48b8f10f3483916f7590729054a1381a4d144bbb1b5189cbcdb0a192163e2fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 20:05:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:05:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:05:17 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:05:18 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:05:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf48db5b271ca26bf75c52c0921bd7b5982927fa493e304256c95ce446b08b8`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d990949866a3e4c464e5dfcc62b3f63afdde1b5232e2423d7a553bc3df19e2`  
		Last Modified: Fri, 22 Dec 2017 20:23:46 GMT  
		Size: 988.9 KB (988943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b534c078e4423b62d09398c487dd404ddbb90e1d8157267f63b579502a578c`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7ec3ba19c75f40d18d70c1c268da2de1d5ffe39d36ce2a9f4cb240ae1be1dd`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:e064e0606c7df34da785410563aaf1e937f5485290348548b90e10a30001dab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1eb5b8bfea38852c1230bcb5a2773b4ef711bd3e03d383bf1e2a147c481513`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 01:33:24 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 01:33:26 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 01:54:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 01:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 01:54:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 01:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 01:54:14 GMT
USER [memcache]
# Fri, 22 Dec 2017 01:54:15 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 01:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57213c4055790e86ab8130d85d27c055c55c6938d5de24609b217d70227e68d2`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364ee7131f19c6ad5754f3c5d19a30c34d37b11d70847e6506c7b5b59e20251`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 979.4 KB (979386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca1e94003eb8786a769885da40333a59397f2e62b49120af7588d50e63b9937`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c39efde29df98b8151126ed13322e12741eb8772e22a667b3abd5d35dc855c`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:ac307c9ae6bf3d3f029bb0fd2e21af9f3c2531274422b6cbab662a3e59c5dd45
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c817fffcdf35c3357cccc648eaa42551d61f290d2d1e92d675ca2f8b9b68406`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sun, 07 Jan 2018 08:07:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:07:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:10:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 07 Jan 2018 08:10:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:10:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:10:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:10:56 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:10:56 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:10:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0430cdab840b4e29a0e2f3fa23e30410f1e71adb0a7847a3338dbc2a76c6000`  
		Last Modified: Tue, 12 Dec 2017 07:33:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142bfa03884b38ea471a978148b464f45e9bcd2cca658d00472186ab90a6c631`  
		Last Modified: Sun, 07 Jan 2018 08:15:02 GMT  
		Size: 996.5 KB (996479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1bb5489c871617709ff9ba51f5c1ea3431c2e99c5b803c717ccbc74b3e2e7c`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d29424cc1e99de551b5abc21057dbc160f6375c7d4373dd60371ad61fb9b29f`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.4`

```console
$ docker pull memcached@sha256:1970c4204eb174598f611afa6220a5583d9ddd13b0e464d41ec37313f91b4d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.4` - linux; amd64

```console
$ docker pull memcached@sha256:3e8897875f704f9ba8f25ae40c9c939efc7aff9af8967c6d4e35a3204b1bd250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23463846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdb3385afc92cec327e0d59a31f569e24ba56ecf3b67e6d732570b474fc8e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 21:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 21 Dec 2017 21:35:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 21:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:35:38 GMT
USER [memcache]
# Thu, 21 Dec 2017 21:35:38 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 21:35:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb3f8fce829024a761313c0897c1d2da32a6800c0fb63a5d714d77357f1bac2`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d88b232c2fb5bc315a22ef8eae787c007d7f20cd68d6476f736678e5a0e17`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 976.0 KB (975967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3999c826aa07d247c10eefdf2cea83068a44d2f82c978b43e5eac7258aa0b8`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d32ac2247f396fbe2f4e3bd58c592e43298a23b5ded6b811c29e53796db9e9`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4` - linux; arm variant v5

```console
$ docker pull memcached@sha256:26290426c71135eebc2628fb33d3a4a9721ece71f590972b5c1a22bef1821f6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0689f7c50c045324ef0865c07d732dd0b0459e1d5e8020500e4aec2ecb017a63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:59:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 19:35:22 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 19:35:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 19:47:10 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 19:47:11 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 19:47:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 19:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 19:47:16 GMT
USER [memcache]
# Fri, 22 Dec 2017 19:47:16 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 19:47:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e0a77b445af8e7586f1be6dd87c9b7bb7f3ad9d7d4a04f3dbb8fffd6ff14e2`  
		Last Modified: Wed, 13 Dec 2017 03:11:06 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a645d383fbe6e06022504c3f7171ad6393a2cfbace4d71285fcb7b5a55a695`  
		Last Modified: Fri, 22 Dec 2017 19:47:39 GMT  
		Size: 966.5 KB (966517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1039b71dbffacd54163f91fafea56149a79d698ea307898f54a9a83b3e5960df`  
		Last Modified: Fri, 22 Dec 2017 19:47:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30a3b7013b92b37897246eb80bc9cdf791533570cdc15d1d66311f6ad6224e6`  
		Last Modified: Fri, 22 Dec 2017 19:47:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4` - linux; arm variant v7

```console
$ docker pull memcached@sha256:258a2b16cc02bdf5e05cffc22514fe1b6dea70100b229d1f55006bb8db8a1625
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8d88570048116538c9b9be123e2a5c879de814717312729102855b54e80cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:01:00 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 05:58:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 05:58:23 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 06:08:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 06:08:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 06:08:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 06:08:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 06:08:49 GMT
USER [memcache]
# Fri, 22 Dec 2017 06:08:50 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 06:08:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6b67731d6f813ed5441dfbb03b4439bb201279a6603cde534361c40369ed6b`  
		Last Modified: Wed, 13 Dec 2017 02:11:28 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553f05bb8f7d26cd27459dd97cf51f8ddc6b880adc4c4b4d3f2e7249f82f9dbf`  
		Last Modified: Fri, 22 Dec 2017 06:09:10 GMT  
		Size: 935.2 KB (935228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb928aa0ae09d176f589c7a5a884edbc272b27fc99af62c16b6c2f7ab812b27`  
		Last Modified: Fri, 22 Dec 2017 06:09:07 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58570bf1315e1b6c2e85a4777fd7972d34603ed80dc1338791b77d4065e8baee`  
		Last Modified: Fri, 22 Dec 2017 06:09:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:baff641157da8c3447e5a2cdacec7d6ee83feabd6941e826ba005dbf8eea0eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621381d436f87dc8a26ed4a8a9b56f5491870d1f5b02e0e11657cd7ffb435615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 03:47:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 03:47:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 03:52:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 03:52:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 03:52:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 03:52:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 03:52:31 GMT
USER [memcache]
# Fri, 22 Dec 2017 03:52:32 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 03:52:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d863df4ae3972e295821c901d1de893f6117a3a18c3187af09ef19d2f43af`  
		Last Modified: Wed, 20 Dec 2017 03:54:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2f5ba92030711a118cb8183f3afbb4a08898c141c2f05c4149e8c4ea422d57`  
		Last Modified: Fri, 22 Dec 2017 03:57:21 GMT  
		Size: 948.0 KB (948009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a32b237f417fd71c94a0bac80fc7584faf97269587345b8056030f50b99930`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225375b3d98bb3e665770c0f3103f11147f224fa655498b962a69843ee7ea736`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4` - linux; 386

```console
$ docker pull memcached@sha256:d65fc2b6259620953e6cd53b0a000d8f02e1a1c775440601ecfdeb527500d69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48b8f10f3483916f7590729054a1381a4d144bbb1b5189cbcdb0a192163e2fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 20:05:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:05:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:05:17 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:05:18 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:05:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf48db5b271ca26bf75c52c0921bd7b5982927fa493e304256c95ce446b08b8`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d990949866a3e4c464e5dfcc62b3f63afdde1b5232e2423d7a553bc3df19e2`  
		Last Modified: Fri, 22 Dec 2017 20:23:46 GMT  
		Size: 988.9 KB (988943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b534c078e4423b62d09398c487dd404ddbb90e1d8157267f63b579502a578c`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7ec3ba19c75f40d18d70c1c268da2de1d5ffe39d36ce2a9f4cb240ae1be1dd`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4` - linux; ppc64le

```console
$ docker pull memcached@sha256:e064e0606c7df34da785410563aaf1e937f5485290348548b90e10a30001dab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1eb5b8bfea38852c1230bcb5a2773b4ef711bd3e03d383bf1e2a147c481513`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 01:33:24 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 01:33:26 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 01:54:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 01:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 01:54:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 01:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 01:54:14 GMT
USER [memcache]
# Fri, 22 Dec 2017 01:54:15 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 01:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57213c4055790e86ab8130d85d27c055c55c6938d5de24609b217d70227e68d2`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364ee7131f19c6ad5754f3c5d19a30c34d37b11d70847e6506c7b5b59e20251`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 979.4 KB (979386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca1e94003eb8786a769885da40333a59397f2e62b49120af7588d50e63b9937`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c39efde29df98b8151126ed13322e12741eb8772e22a667b3abd5d35dc855c`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4` - linux; s390x

```console
$ docker pull memcached@sha256:ac307c9ae6bf3d3f029bb0fd2e21af9f3c2531274422b6cbab662a3e59c5dd45
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c817fffcdf35c3357cccc648eaa42551d61f290d2d1e92d675ca2f8b9b68406`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sun, 07 Jan 2018 08:07:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:07:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:10:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 07 Jan 2018 08:10:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:10:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:10:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:10:56 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:10:56 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:10:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0430cdab840b4e29a0e2f3fa23e30410f1e71adb0a7847a3338dbc2a76c6000`  
		Last Modified: Tue, 12 Dec 2017 07:33:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142bfa03884b38ea471a978148b464f45e9bcd2cca658d00472186ab90a6c631`  
		Last Modified: Sun, 07 Jan 2018 08:15:02 GMT  
		Size: 996.5 KB (996479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1bb5489c871617709ff9ba51f5c1ea3431c2e99c5b803c717ccbc74b3e2e7c`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d29424cc1e99de551b5abc21057dbc160f6375c7d4373dd60371ad61fb9b29f`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.4-alpine`

```console
$ docker pull memcached@sha256:47e9b28bd31b4dc37d497ffcb327c83787d580a98c8969cd798411a80356fd12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.4-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:6202b4a2e048a50f25ed62e0c0cce967263117e543dd037a4e072547ee8d4a61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3412043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40880ef9c90eed2f0597ed99ed9320ad7ee470d8c80c7014061178b2b1418ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 01:45:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 01:45:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 01:48:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 01:54:40 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 01:54:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 01:54:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 01:54:41 GMT
USER [memcache]
# Fri, 19 Jan 2018 01:54:41 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 01:54:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ed802350c160587829b24c25ac05deeac1ed6e997ac0617bc5a05b1e9ad753`  
		Last Modified: Fri, 19 Jan 2018 01:55:03 GMT  
		Size: 1.3 MB (1344854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e15d20d4d6aef3ee8d83cd73ed96dd994e6a0904dd526893fe65ee8930db64`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db931f73c8a60913d03848155dbe073070969b5b5ae4741470430038e40ebac`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:97a156e9c060447fcb39cc5813c5506a47665a00e3bb663ea8d90d056b8efc2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3353690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2188118b75eaad4e9de258330edc962c32a7a4047fd0bfb34f7e89151a36b44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Thu, 18 Jan 2018 22:28:35 GMT
RUN adduser -D memcache
# Thu, 18 Jan 2018 22:28:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 18 Jan 2018 22:28:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 18 Jan 2018 22:38:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 18 Jan 2018 22:38:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 18 Jan 2018 22:38:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 18 Jan 2018 22:38:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Jan 2018 22:38:12 GMT
USER [memcache]
# Thu, 18 Jan 2018 22:38:12 GMT
EXPOSE 11211/tcp
# Thu, 18 Jan 2018 22:38:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6d0e5d04b18ce6580ee1c317a7564f7046af789524dfa3ff5abdab987be9f8`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0d3cd08fe88b571e4bea97dc87caa2e0a652cbcb7dee0fc715dbdbe85a57e4`  
		Last Modified: Thu, 18 Jan 2018 22:38:38 GMT  
		Size: 1.3 MB (1313557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa390abf239eaf70d7716379c5e4e7fef237acff9d794f3b0266c7c65251edf`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916c261404b8bac6707122e5a4ad7e1e48a1d3ad4f71f8cda44b332e1a9e24a0`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:66c2bbd5d665ff0fda2a68ef3c2b4b24fdb811ce4225c20543f54ec43677c8df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3267722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289b6d9c5de366edde9b9bf442f947ccf92b0eea39702e67df0aa64a47138821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 04:16:39 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 04:16:48 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 04:20:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 04:20:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 04:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 04:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 04:20:54 GMT
USER [memcache]
# Fri, 19 Jan 2018 04:20:54 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 04:20:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7977d9743f4744ed87c60043e4ca1b495963cb7a9b6053fcb7d85ca51d4877a1`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.3 MB (1277035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5bed6b9d8b3c8c82c75f4e25c581cc01e53b2981d7a031a95c2223de6a3b27`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d28098304567a0b84327b5d8e97c2818169fb1464f9aab280200acb62b6156e`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4-alpine` - linux; 386

```console
$ docker pull memcached@sha256:b41acba51e7e32ccaaddcc4e94e3d062fe57f52d366221b10b2dd046ecbb18fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3878613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed787719eb755f3a16e98145098036cb96d67fe31f17ea9fb16f7570bc68cd13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 18:46:08 GMT
RUN adduser -D memcache
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:15:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 22 Dec 2017 20:15:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:15:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:15:27 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:15:27 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:15:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2472e13d2c807982e5f03c66ea9f18432ef58da3b873ea3746506ea28963a6a1`  
		Last Modified: Thu, 26 Oct 2017 18:49:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e9ec7b85d09cd5d07e27f8a5db759e57bd6f1acaab0b9c9b5e3b1114dbe2ba`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 1.8 MB (1831189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e576da4ab96760c09da2d9a7ebe05969ffe685090f04ce58221dda70fdb2730`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e7df927cc1acf85b80d78b0e074ae1ce6d71f5db58180da5d4f12b84fce9b0`  
		Last Modified: Fri, 22 Dec 2017 20:28:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1318f4b7c3f2fbce2667efd41b9db7d3ac8e4e71fed63b7b3891b42e90bc3418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3419757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2ff2a2508a6ad1f4aef407ef29515913714cfa7d60214b24c4f11020805996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 01:33:30 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 01:33:32 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 01:37:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 01:37:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 01:37:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 01:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 01:37:21 GMT
USER [memcache]
# Fri, 19 Jan 2018 01:37:22 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 01:37:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78a8d5ae987d465df4a0793b96223baa1323baf0d64289a717ffeb270b93f48`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 MB (1336432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c6a38458facbd65290afa03b502690b925fb1b08830a08a7e9cc24bb85862b`  
		Last Modified: Fri, 19 Jan 2018 01:37:45 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4c811306deb40cd6239af8e08c27ff5036a7f9983d0a1d223aa25acc409258`  
		Last Modified: Fri, 19 Jan 2018 01:37:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.4-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c12f0184133c9fa3e72f6a33171add972da133110dc5682e516dd41c63ec5809
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3894019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ae33ee2b0d01335907e842c2b78400fe2084d0bbb24373ea260ebbe3007fc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:33:38 GMT
RUN adduser -D memcache
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:14:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sun, 07 Jan 2018 08:14:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:14:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:14:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:14:45 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:14:46 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:14:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b2cd4d6636c544f88e65b18afb3ffb6ba20453da91f9ee2294e40d808f11b0`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d872569cd633b0502b24edae8d03b8c75657c91a3922fa8390924156308ec33a`  
		Last Modified: Sun, 07 Jan 2018 08:15:35 GMT  
		Size: 1.8 MB (1826732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431736bb9e4afd26faff0eec90bd104d04b686256fe7c0636858ceed3e418f8`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ef631208dc64aca7830c2f292086f85ae9f787fc8be1961a3ffbd33957c459`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:47e9b28bd31b4dc37d497ffcb327c83787d580a98c8969cd798411a80356fd12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:6202b4a2e048a50f25ed62e0c0cce967263117e543dd037a4e072547ee8d4a61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3412043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40880ef9c90eed2f0597ed99ed9320ad7ee470d8c80c7014061178b2b1418ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 01:45:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 01:45:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 01:48:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 01:54:40 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 01:54:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 01:54:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 01:54:41 GMT
USER [memcache]
# Fri, 19 Jan 2018 01:54:41 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 01:54:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ed802350c160587829b24c25ac05deeac1ed6e997ac0617bc5a05b1e9ad753`  
		Last Modified: Fri, 19 Jan 2018 01:55:03 GMT  
		Size: 1.3 MB (1344854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e15d20d4d6aef3ee8d83cd73ed96dd994e6a0904dd526893fe65ee8930db64`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db931f73c8a60913d03848155dbe073070969b5b5ae4741470430038e40ebac`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:97a156e9c060447fcb39cc5813c5506a47665a00e3bb663ea8d90d056b8efc2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3353690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2188118b75eaad4e9de258330edc962c32a7a4047fd0bfb34f7e89151a36b44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Thu, 18 Jan 2018 22:28:35 GMT
RUN adduser -D memcache
# Thu, 18 Jan 2018 22:28:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 18 Jan 2018 22:28:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 18 Jan 2018 22:38:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 18 Jan 2018 22:38:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 18 Jan 2018 22:38:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 18 Jan 2018 22:38:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Jan 2018 22:38:12 GMT
USER [memcache]
# Thu, 18 Jan 2018 22:38:12 GMT
EXPOSE 11211/tcp
# Thu, 18 Jan 2018 22:38:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6d0e5d04b18ce6580ee1c317a7564f7046af789524dfa3ff5abdab987be9f8`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0d3cd08fe88b571e4bea97dc87caa2e0a652cbcb7dee0fc715dbdbe85a57e4`  
		Last Modified: Thu, 18 Jan 2018 22:38:38 GMT  
		Size: 1.3 MB (1313557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa390abf239eaf70d7716379c5e4e7fef237acff9d794f3b0266c7c65251edf`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916c261404b8bac6707122e5a4ad7e1e48a1d3ad4f71f8cda44b332e1a9e24a0`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:66c2bbd5d665ff0fda2a68ef3c2b4b24fdb811ce4225c20543f54ec43677c8df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3267722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289b6d9c5de366edde9b9bf442f947ccf92b0eea39702e67df0aa64a47138821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 04:16:39 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 04:16:48 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 04:20:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 04:20:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 04:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 04:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 04:20:54 GMT
USER [memcache]
# Fri, 19 Jan 2018 04:20:54 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 04:20:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7977d9743f4744ed87c60043e4ca1b495963cb7a9b6053fcb7d85ca51d4877a1`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.3 MB (1277035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5bed6b9d8b3c8c82c75f4e25c581cc01e53b2981d7a031a95c2223de6a3b27`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d28098304567a0b84327b5d8e97c2818169fb1464f9aab280200acb62b6156e`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:b41acba51e7e32ccaaddcc4e94e3d062fe57f52d366221b10b2dd046ecbb18fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3878613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed787719eb755f3a16e98145098036cb96d67fe31f17ea9fb16f7570bc68cd13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 18:46:08 GMT
RUN adduser -D memcache
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:15:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 22 Dec 2017 20:15:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:15:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:15:27 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:15:27 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:15:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2472e13d2c807982e5f03c66ea9f18432ef58da3b873ea3746506ea28963a6a1`  
		Last Modified: Thu, 26 Oct 2017 18:49:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e9ec7b85d09cd5d07e27f8a5db759e57bd6f1acaab0b9c9b5e3b1114dbe2ba`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 1.8 MB (1831189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e576da4ab96760c09da2d9a7ebe05969ffe685090f04ce58221dda70fdb2730`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e7df927cc1acf85b80d78b0e074ae1ce6d71f5db58180da5d4f12b84fce9b0`  
		Last Modified: Fri, 22 Dec 2017 20:28:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1318f4b7c3f2fbce2667efd41b9db7d3ac8e4e71fed63b7b3891b42e90bc3418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3419757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2ff2a2508a6ad1f4aef407ef29515913714cfa7d60214b24c4f11020805996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 01:33:30 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 01:33:32 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 01:37:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 01:37:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 01:37:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 01:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 01:37:21 GMT
USER [memcache]
# Fri, 19 Jan 2018 01:37:22 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 01:37:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78a8d5ae987d465df4a0793b96223baa1323baf0d64289a717ffeb270b93f48`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 MB (1336432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c6a38458facbd65290afa03b502690b925fb1b08830a08a7e9cc24bb85862b`  
		Last Modified: Fri, 19 Jan 2018 01:37:45 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4c811306deb40cd6239af8e08c27ff5036a7f9983d0a1d223aa25acc409258`  
		Last Modified: Fri, 19 Jan 2018 01:37:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c12f0184133c9fa3e72f6a33171add972da133110dc5682e516dd41c63ec5809
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3894019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ae33ee2b0d01335907e842c2b78400fe2084d0bbb24373ea260ebbe3007fc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:33:38 GMT
RUN adduser -D memcache
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:14:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sun, 07 Jan 2018 08:14:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:14:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:14:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:14:45 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:14:46 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:14:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b2cd4d6636c544f88e65b18afb3ffb6ba20453da91f9ee2294e40d808f11b0`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d872569cd633b0502b24edae8d03b8c75657c91a3922fa8390924156308ec33a`  
		Last Modified: Sun, 07 Jan 2018 08:15:35 GMT  
		Size: 1.8 MB (1826732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431736bb9e4afd26faff0eec90bd104d04b686256fe7c0636858ceed3e418f8`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ef631208dc64aca7830c2f292086f85ae9f787fc8be1961a3ffbd33957c459`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:47e9b28bd31b4dc37d497ffcb327c83787d580a98c8969cd798411a80356fd12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:6202b4a2e048a50f25ed62e0c0cce967263117e543dd037a4e072547ee8d4a61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3412043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40880ef9c90eed2f0597ed99ed9320ad7ee470d8c80c7014061178b2b1418ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 01:45:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 01:45:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 01:48:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 01:54:40 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 01:54:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 01:54:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 01:54:41 GMT
USER [memcache]
# Fri, 19 Jan 2018 01:54:41 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 01:54:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ed802350c160587829b24c25ac05deeac1ed6e997ac0617bc5a05b1e9ad753`  
		Last Modified: Fri, 19 Jan 2018 01:55:03 GMT  
		Size: 1.3 MB (1344854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e15d20d4d6aef3ee8d83cd73ed96dd994e6a0904dd526893fe65ee8930db64`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db931f73c8a60913d03848155dbe073070969b5b5ae4741470430038e40ebac`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:97a156e9c060447fcb39cc5813c5506a47665a00e3bb663ea8d90d056b8efc2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3353690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2188118b75eaad4e9de258330edc962c32a7a4047fd0bfb34f7e89151a36b44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Thu, 18 Jan 2018 22:28:35 GMT
RUN adduser -D memcache
# Thu, 18 Jan 2018 22:28:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 18 Jan 2018 22:28:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 18 Jan 2018 22:38:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 18 Jan 2018 22:38:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 18 Jan 2018 22:38:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 18 Jan 2018 22:38:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Jan 2018 22:38:12 GMT
USER [memcache]
# Thu, 18 Jan 2018 22:38:12 GMT
EXPOSE 11211/tcp
# Thu, 18 Jan 2018 22:38:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6d0e5d04b18ce6580ee1c317a7564f7046af789524dfa3ff5abdab987be9f8`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0d3cd08fe88b571e4bea97dc87caa2e0a652cbcb7dee0fc715dbdbe85a57e4`  
		Last Modified: Thu, 18 Jan 2018 22:38:38 GMT  
		Size: 1.3 MB (1313557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa390abf239eaf70d7716379c5e4e7fef237acff9d794f3b0266c7c65251edf`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916c261404b8bac6707122e5a4ad7e1e48a1d3ad4f71f8cda44b332e1a9e24a0`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:66c2bbd5d665ff0fda2a68ef3c2b4b24fdb811ce4225c20543f54ec43677c8df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3267722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289b6d9c5de366edde9b9bf442f947ccf92b0eea39702e67df0aa64a47138821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 04:16:39 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 04:16:48 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 04:20:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 04:20:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 04:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 04:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 04:20:54 GMT
USER [memcache]
# Fri, 19 Jan 2018 04:20:54 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 04:20:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7977d9743f4744ed87c60043e4ca1b495963cb7a9b6053fcb7d85ca51d4877a1`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.3 MB (1277035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5bed6b9d8b3c8c82c75f4e25c581cc01e53b2981d7a031a95c2223de6a3b27`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d28098304567a0b84327b5d8e97c2818169fb1464f9aab280200acb62b6156e`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:b41acba51e7e32ccaaddcc4e94e3d062fe57f52d366221b10b2dd046ecbb18fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3878613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed787719eb755f3a16e98145098036cb96d67fe31f17ea9fb16f7570bc68cd13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 18:46:08 GMT
RUN adduser -D memcache
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:15:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 22 Dec 2017 20:15:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:15:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:15:27 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:15:27 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:15:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2472e13d2c807982e5f03c66ea9f18432ef58da3b873ea3746506ea28963a6a1`  
		Last Modified: Thu, 26 Oct 2017 18:49:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e9ec7b85d09cd5d07e27f8a5db759e57bd6f1acaab0b9c9b5e3b1114dbe2ba`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 1.8 MB (1831189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e576da4ab96760c09da2d9a7ebe05969ffe685090f04ce58221dda70fdb2730`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e7df927cc1acf85b80d78b0e074ae1ce6d71f5db58180da5d4f12b84fce9b0`  
		Last Modified: Fri, 22 Dec 2017 20:28:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1318f4b7c3f2fbce2667efd41b9db7d3ac8e4e71fed63b7b3891b42e90bc3418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3419757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2ff2a2508a6ad1f4aef407ef29515913714cfa7d60214b24c4f11020805996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 01:33:30 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 01:33:32 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 01:37:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 01:37:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 01:37:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 01:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 01:37:21 GMT
USER [memcache]
# Fri, 19 Jan 2018 01:37:22 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 01:37:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78a8d5ae987d465df4a0793b96223baa1323baf0d64289a717ffeb270b93f48`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 MB (1336432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c6a38458facbd65290afa03b502690b925fb1b08830a08a7e9cc24bb85862b`  
		Last Modified: Fri, 19 Jan 2018 01:37:45 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4c811306deb40cd6239af8e08c27ff5036a7f9983d0a1d223aa25acc409258`  
		Last Modified: Fri, 19 Jan 2018 01:37:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c12f0184133c9fa3e72f6a33171add972da133110dc5682e516dd41c63ec5809
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3894019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ae33ee2b0d01335907e842c2b78400fe2084d0bbb24373ea260ebbe3007fc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:33:38 GMT
RUN adduser -D memcache
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:14:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sun, 07 Jan 2018 08:14:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:14:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:14:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:14:45 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:14:46 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:14:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b2cd4d6636c544f88e65b18afb3ffb6ba20453da91f9ee2294e40d808f11b0`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d872569cd633b0502b24edae8d03b8c75657c91a3922fa8390924156308ec33a`  
		Last Modified: Sun, 07 Jan 2018 08:15:35 GMT  
		Size: 1.8 MB (1826732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431736bb9e4afd26faff0eec90bd104d04b686256fe7c0636858ceed3e418f8`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ef631208dc64aca7830c2f292086f85ae9f787fc8be1961a3ffbd33957c459`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:47e9b28bd31b4dc37d497ffcb327c83787d580a98c8969cd798411a80356fd12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:6202b4a2e048a50f25ed62e0c0cce967263117e543dd037a4e072547ee8d4a61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3412043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40880ef9c90eed2f0597ed99ed9320ad7ee470d8c80c7014061178b2b1418ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 01:45:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 01:45:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 01:48:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 01:54:40 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 01:54:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 01:54:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 01:54:41 GMT
USER [memcache]
# Fri, 19 Jan 2018 01:54:41 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 01:54:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ed802350c160587829b24c25ac05deeac1ed6e997ac0617bc5a05b1e9ad753`  
		Last Modified: Fri, 19 Jan 2018 01:55:03 GMT  
		Size: 1.3 MB (1344854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e15d20d4d6aef3ee8d83cd73ed96dd994e6a0904dd526893fe65ee8930db64`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db931f73c8a60913d03848155dbe073070969b5b5ae4741470430038e40ebac`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:97a156e9c060447fcb39cc5813c5506a47665a00e3bb663ea8d90d056b8efc2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3353690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2188118b75eaad4e9de258330edc962c32a7a4047fd0bfb34f7e89151a36b44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Thu, 18 Jan 2018 22:28:35 GMT
RUN adduser -D memcache
# Thu, 18 Jan 2018 22:28:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 18 Jan 2018 22:28:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 18 Jan 2018 22:38:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 18 Jan 2018 22:38:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 18 Jan 2018 22:38:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 18 Jan 2018 22:38:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Jan 2018 22:38:12 GMT
USER [memcache]
# Thu, 18 Jan 2018 22:38:12 GMT
EXPOSE 11211/tcp
# Thu, 18 Jan 2018 22:38:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6d0e5d04b18ce6580ee1c317a7564f7046af789524dfa3ff5abdab987be9f8`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0d3cd08fe88b571e4bea97dc87caa2e0a652cbcb7dee0fc715dbdbe85a57e4`  
		Last Modified: Thu, 18 Jan 2018 22:38:38 GMT  
		Size: 1.3 MB (1313557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa390abf239eaf70d7716379c5e4e7fef237acff9d794f3b0266c7c65251edf`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916c261404b8bac6707122e5a4ad7e1e48a1d3ad4f71f8cda44b332e1a9e24a0`  
		Last Modified: Thu, 18 Jan 2018 22:38:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:66c2bbd5d665ff0fda2a68ef3c2b4b24fdb811ce4225c20543f54ec43677c8df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3267722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289b6d9c5de366edde9b9bf442f947ccf92b0eea39702e67df0aa64a47138821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 04:16:39 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 04:16:48 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 04:20:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 04:20:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 04:20:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 04:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 04:20:54 GMT
USER [memcache]
# Fri, 19 Jan 2018 04:20:54 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 04:20:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7977d9743f4744ed87c60043e4ca1b495963cb7a9b6053fcb7d85ca51d4877a1`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.3 MB (1277035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5bed6b9d8b3c8c82c75f4e25c581cc01e53b2981d7a031a95c2223de6a3b27`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d28098304567a0b84327b5d8e97c2818169fb1464f9aab280200acb62b6156e`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:b41acba51e7e32ccaaddcc4e94e3d062fe57f52d366221b10b2dd046ecbb18fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3878613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed787719eb755f3a16e98145098036cb96d67fe31f17ea9fb16f7570bc68cd13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 18:46:08 GMT
RUN adduser -D memcache
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:11:56 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:15:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 22 Dec 2017 20:15:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:15:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:15:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:15:27 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:15:27 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:15:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2472e13d2c807982e5f03c66ea9f18432ef58da3b873ea3746506ea28963a6a1`  
		Last Modified: Thu, 26 Oct 2017 18:49:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e9ec7b85d09cd5d07e27f8a5db759e57bd6f1acaab0b9c9b5e3b1114dbe2ba`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 1.8 MB (1831189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e576da4ab96760c09da2d9a7ebe05969ffe685090f04ce58221dda70fdb2730`  
		Last Modified: Fri, 22 Dec 2017 20:28:48 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e7df927cc1acf85b80d78b0e074ae1ce6d71f5db58180da5d4f12b84fce9b0`  
		Last Modified: Fri, 22 Dec 2017 20:28:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1318f4b7c3f2fbce2667efd41b9db7d3ac8e4e71fed63b7b3891b42e90bc3418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3419757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2ff2a2508a6ad1f4aef407ef29515913714cfa7d60214b24c4f11020805996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Fri, 19 Jan 2018 01:33:30 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 19 Jan 2018 01:33:32 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 19 Jan 2018 01:37:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 19 Jan 2018 01:37:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 19 Jan 2018 01:37:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 19 Jan 2018 01:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 01:37:21 GMT
USER [memcache]
# Fri, 19 Jan 2018 01:37:22 GMT
EXPOSE 11211/tcp
# Fri, 19 Jan 2018 01:37:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78a8d5ae987d465df4a0793b96223baa1323baf0d64289a717ffeb270b93f48`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 MB (1336432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c6a38458facbd65290afa03b502690b925fb1b08830a08a7e9cc24bb85862b`  
		Last Modified: Fri, 19 Jan 2018 01:37:45 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4c811306deb40cd6239af8e08c27ff5036a7f9983d0a1d223aa25acc409258`  
		Last Modified: Fri, 19 Jan 2018 01:37:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c12f0184133c9fa3e72f6a33171add972da133110dc5682e516dd41c63ec5809
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3894019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ae33ee2b0d01335907e842c2b78400fe2084d0bbb24373ea260ebbe3007fc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:33:38 GMT
RUN adduser -D memcache
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:11:16 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:14:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sun, 07 Jan 2018 08:14:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:14:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:14:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:14:45 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:14:46 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:14:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b2cd4d6636c544f88e65b18afb3ffb6ba20453da91f9ee2294e40d808f11b0`  
		Last Modified: Thu, 26 Oct 2017 17:37:05 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d872569cd633b0502b24edae8d03b8c75657c91a3922fa8390924156308ec33a`  
		Last Modified: Sun, 07 Jan 2018 08:15:35 GMT  
		Size: 1.8 MB (1826732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1431736bb9e4afd26faff0eec90bd104d04b686256fe7c0636858ceed3e418f8`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ef631208dc64aca7830c2f292086f85ae9f787fc8be1961a3ffbd33957c459`  
		Last Modified: Sun, 07 Jan 2018 08:15:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:1970c4204eb174598f611afa6220a5583d9ddd13b0e464d41ec37313f91b4d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:3e8897875f704f9ba8f25ae40c9c939efc7aff9af8967c6d4e35a3204b1bd250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23463846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdb3385afc92cec327e0d59a31f569e24ba56ecf3b67e6d732570b474fc8e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_VERSION=1.5.4
# Thu, 21 Dec 2017 21:32:06 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Thu, 21 Dec 2017 21:35:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 21 Dec 2017 21:35:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:35:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 21 Dec 2017 21:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:35:38 GMT
USER [memcache]
# Thu, 21 Dec 2017 21:35:38 GMT
EXPOSE 11211/tcp
# Thu, 21 Dec 2017 21:35:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb3f8fce829024a761313c0897c1d2da32a6800c0fb63a5d714d77357f1bac2`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d88b232c2fb5bc315a22ef8eae787c007d7f20cd68d6476f736678e5a0e17`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 976.0 KB (975967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3999c826aa07d247c10eefdf2cea83068a44d2f82c978b43e5eac7258aa0b8`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d32ac2247f396fbe2f4e3bd58c592e43298a23b5ded6b811c29e53796db9e9`  
		Last Modified: Thu, 21 Dec 2017 21:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:26290426c71135eebc2628fb33d3a4a9721ece71f590972b5c1a22bef1821f6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0689f7c50c045324ef0865c07d732dd0b0459e1d5e8020500e4aec2ecb017a63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:59:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 19:35:22 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 19:35:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 19:47:10 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 19:47:11 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 19:47:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 19:47:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 19:47:16 GMT
USER [memcache]
# Fri, 22 Dec 2017 19:47:16 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 19:47:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e0a77b445af8e7586f1be6dd87c9b7bb7f3ad9d7d4a04f3dbb8fffd6ff14e2`  
		Last Modified: Wed, 13 Dec 2017 03:11:06 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a645d383fbe6e06022504c3f7171ad6393a2cfbace4d71285fcb7b5a55a695`  
		Last Modified: Fri, 22 Dec 2017 19:47:39 GMT  
		Size: 966.5 KB (966517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1039b71dbffacd54163f91fafea56149a79d698ea307898f54a9a83b3e5960df`  
		Last Modified: Fri, 22 Dec 2017 19:47:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30a3b7013b92b37897246eb80bc9cdf791533570cdc15d1d66311f6ad6224e6`  
		Last Modified: Fri, 22 Dec 2017 19:47:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:258a2b16cc02bdf5e05cffc22514fe1b6dea70100b229d1f55006bb8db8a1625
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8d88570048116538c9b9be123e2a5c879de814717312729102855b54e80cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:01:00 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 05:58:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 05:58:23 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 06:08:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 06:08:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 06:08:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 06:08:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 06:08:49 GMT
USER [memcache]
# Fri, 22 Dec 2017 06:08:50 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 06:08:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6b67731d6f813ed5441dfbb03b4439bb201279a6603cde534361c40369ed6b`  
		Last Modified: Wed, 13 Dec 2017 02:11:28 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553f05bb8f7d26cd27459dd97cf51f8ddc6b880adc4c4b4d3f2e7249f82f9dbf`  
		Last Modified: Fri, 22 Dec 2017 06:09:10 GMT  
		Size: 935.2 KB (935228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb928aa0ae09d176f589c7a5a884edbc272b27fc99af62c16b6c2f7ab812b27`  
		Last Modified: Fri, 22 Dec 2017 06:09:07 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58570bf1315e1b6c2e85a4777fd7972d34603ed80dc1338791b77d4065e8baee`  
		Last Modified: Fri, 22 Dec 2017 06:09:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:baff641157da8c3447e5a2cdacec7d6ee83feabd6941e826ba005dbf8eea0eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21281441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621381d436f87dc8a26ed4a8a9b56f5491870d1f5b02e0e11657cd7ffb435615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 03:47:36 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 03:47:37 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 03:52:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 03:52:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 03:52:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 03:52:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 03:52:31 GMT
USER [memcache]
# Fri, 22 Dec 2017 03:52:32 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 03:52:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d863df4ae3972e295821c901d1de893f6117a3a18c3187af09ef19d2f43af`  
		Last Modified: Wed, 20 Dec 2017 03:54:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2f5ba92030711a118cb8183f3afbb4a08898c141c2f05c4149e8c4ea422d57`  
		Last Modified: Fri, 22 Dec 2017 03:57:21 GMT  
		Size: 948.0 KB (948009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a32b237f417fd71c94a0bac80fc7584faf97269587345b8056030f50b99930`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225375b3d98bb3e665770c0f3103f11147f224fa655498b962a69843ee7ea736`  
		Last Modified: Fri, 22 Dec 2017 03:57:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:d65fc2b6259620953e6cd53b0a000d8f02e1a1c775440601ecfdeb527500d69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24113548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48b8f10f3483916f7590729054a1381a4d144bbb1b5189cbcdb0a192163e2fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 20:01:33 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 20:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 20:05:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 20:05:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 20:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 20:05:17 GMT
USER [memcache]
# Fri, 22 Dec 2017 20:05:18 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 20:05:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf48db5b271ca26bf75c52c0921bd7b5982927fa493e304256c95ce446b08b8`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d990949866a3e4c464e5dfcc62b3f63afdde1b5232e2423d7a553bc3df19e2`  
		Last Modified: Fri, 22 Dec 2017 20:23:46 GMT  
		Size: 988.9 KB (988943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b534c078e4423b62d09398c487dd404ddbb90e1d8157267f63b579502a578c`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7ec3ba19c75f40d18d70c1c268da2de1d5ffe39d36ce2a9f4cb240ae1be1dd`  
		Last Modified: Fri, 22 Dec 2017 20:23:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:e064e0606c7df34da785410563aaf1e937f5485290348548b90e10a30001dab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1eb5b8bfea38852c1230bcb5a2773b4ef711bd3e03d383bf1e2a147c481513`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 22 Dec 2017 01:33:24 GMT
ENV MEMCACHED_VERSION=1.5.4
# Fri, 22 Dec 2017 01:33:26 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Fri, 22 Dec 2017 01:54:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 22 Dec 2017 01:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 22 Dec 2017 01:54:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 22 Dec 2017 01:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 01:54:14 GMT
USER [memcache]
# Fri, 22 Dec 2017 01:54:15 GMT
EXPOSE 11211/tcp
# Fri, 22 Dec 2017 01:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57213c4055790e86ab8130d85d27c055c55c6938d5de24609b217d70227e68d2`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364ee7131f19c6ad5754f3c5d19a30c34d37b11d70847e6506c7b5b59e20251`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 979.4 KB (979386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca1e94003eb8786a769885da40333a59397f2e62b49120af7588d50e63b9937`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c39efde29df98b8151126ed13322e12741eb8772e22a667b3abd5d35dc855c`  
		Last Modified: Fri, 22 Dec 2017 01:58:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:ac307c9ae6bf3d3f029bb0fd2e21af9f3c2531274422b6cbab662a3e59c5dd45
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c817fffcdf35c3357cccc648eaa42551d61f290d2d1e92d675ca2f8b9b68406`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sun, 07 Jan 2018 08:07:21 GMT
ENV MEMCACHED_VERSION=1.5.4
# Sun, 07 Jan 2018 08:07:22 GMT
ENV MEMCACHED_SHA1=29cb75cc234dbaceed6e89db029af8363706f0fe
# Sun, 07 Jan 2018 08:10:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 07 Jan 2018 08:10:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 07 Jan 2018 08:10:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 07 Jan 2018 08:10:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 08:10:56 GMT
USER [memcache]
# Sun, 07 Jan 2018 08:10:56 GMT
EXPOSE 11211/tcp
# Sun, 07 Jan 2018 08:10:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0430cdab840b4e29a0e2f3fa23e30410f1e71adb0a7847a3338dbc2a76c6000`  
		Last Modified: Tue, 12 Dec 2017 07:33:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142bfa03884b38ea471a978148b464f45e9bcd2cca658d00472186ab90a6c631`  
		Last Modified: Sun, 07 Jan 2018 08:15:02 GMT  
		Size: 996.5 KB (996479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1bb5489c871617709ff9ba51f5c1ea3431c2e99c5b803c717ccbc74b3e2e7c`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d29424cc1e99de551b5abc21057dbc160f6375c7d4373dd60371ad61fb9b29f`  
		Last Modified: Sun, 07 Jan 2018 08:15:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
