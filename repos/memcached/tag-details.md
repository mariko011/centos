<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.3`](#memcached153)
-	[`memcached:1.5.3-alpine`](#memcached153-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:2f49421f7d4b70a4134e5865c334244bfb9cccd36ab50a8d79ac4083016b028a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; s390x

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:2023e58e6cbda5359e4e4fcb6c994f8c593334f178459918042a6c4848050617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946225ac4741387532f9acaa99228940eafb85feb747580b3078ce60d527f98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:11:11 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:31:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:31:27 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:34:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 05:34:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:34:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:34:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:34:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:34:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:34:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9828a8691c462b2df051cd65720f2a7aee43b0acd306876f8c056d69991adacb`  
		Last Modified: Sat, 04 Nov 2017 16:14:54 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3974c1a289a44ea8d7392ead92e5577c674b468e35b8d7c45927f8dd0456f72f`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 975.0 KB (974967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96389c8b7c01c82aafad23eedd09b5e2b3ea287501c7ca8df7af34dd58c57f77`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4d1ccb0997595af75e50ba83c78dcd89188ea2b83fb9ae7242234bf61d0cd8`  
		Last Modified: Wed, 08 Nov 2017 05:38:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:59dab0b27ec99bd7160fc2ef8968be9dc158b4fc023ca179f2f8f8e3f0efaf5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20213047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52e4196b13232ddb96e8fa6c0ca0635999f2506f30517f0a8ab8917e9fa6255`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:05 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:58:19 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:58:20 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 06:17:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 06:17:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 06:17:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 06:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 06:17:33 GMT
USER [memcache]
# Wed, 08 Nov 2017 06:17:35 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 06:17:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25bf0f9bc48cb520abf512db57f1e805a7255f09da957b74fd27febfccb5cef`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63b6f5376ac9995525cae92387089eb3db112d289cf741fceba7d9cbda0285e`  
		Last Modified: Wed, 08 Nov 2017 06:17:59 GMT  
		Size: 933.8 KB (933764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba35845bb87da5614e867b90060120126f053761b85bdc5816158ab122e3e6e`  
		Last Modified: Wed, 08 Nov 2017 06:17:57 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f03ac3835bd118fd84ef70fb7583182d9d98ced51805e654acfcb656e74c28`  
		Last Modified: Wed, 08 Nov 2017 06:17:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:c23b61a5116a2f5a868c4a8ea0a8a29d0398b1fcdf49f0d1007a9b2a875ac617
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23337693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93b4ddbb9b7ff64a163bc8a09c5f3af2f37a65325d416c44556543845af88bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 18:33:32 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 18:33:32 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 18:37:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 18:37:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:37:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 18:37:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:37:13 GMT
USER [memcache]
# Wed, 08 Nov 2017 18:37:13 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 18:37:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19408bdbb27e79f51641da322b1cc1d3ded521fb71e83256d41ff519f47f78cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64912fc4afbe3b87257756c7ecbff412898902d134d4e510d4b9ff062479358d`  
		Last Modified: Wed, 08 Nov 2017 18:41:09 GMT  
		Size: 995.6 KB (995585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96f716403001e6d518d08f92e8298bf7f0ccdd25eaed6d43be4532d005ce78`  
		Last Modified: Wed, 08 Nov 2017 18:41:08 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78888e734899980fcfd7b8c33b353086431aadcfd93a5e57680c59ec16a8b52d`  
		Last Modified: Wed, 08 Nov 2017 18:41:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:2f49421f7d4b70a4134e5865c334244bfb9cccd36ab50a8d79ac4083016b028a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; s390x

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:2023e58e6cbda5359e4e4fcb6c994f8c593334f178459918042a6c4848050617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946225ac4741387532f9acaa99228940eafb85feb747580b3078ce60d527f98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:11:11 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:31:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:31:27 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:34:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 05:34:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:34:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:34:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:34:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:34:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:34:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9828a8691c462b2df051cd65720f2a7aee43b0acd306876f8c056d69991adacb`  
		Last Modified: Sat, 04 Nov 2017 16:14:54 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3974c1a289a44ea8d7392ead92e5577c674b468e35b8d7c45927f8dd0456f72f`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 975.0 KB (974967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96389c8b7c01c82aafad23eedd09b5e2b3ea287501c7ca8df7af34dd58c57f77`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4d1ccb0997595af75e50ba83c78dcd89188ea2b83fb9ae7242234bf61d0cd8`  
		Last Modified: Wed, 08 Nov 2017 05:38:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:59dab0b27ec99bd7160fc2ef8968be9dc158b4fc023ca179f2f8f8e3f0efaf5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20213047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52e4196b13232ddb96e8fa6c0ca0635999f2506f30517f0a8ab8917e9fa6255`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:05 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:58:19 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:58:20 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 06:17:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 06:17:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 06:17:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 06:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 06:17:33 GMT
USER [memcache]
# Wed, 08 Nov 2017 06:17:35 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 06:17:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25bf0f9bc48cb520abf512db57f1e805a7255f09da957b74fd27febfccb5cef`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63b6f5376ac9995525cae92387089eb3db112d289cf741fceba7d9cbda0285e`  
		Last Modified: Wed, 08 Nov 2017 06:17:59 GMT  
		Size: 933.8 KB (933764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba35845bb87da5614e867b90060120126f053761b85bdc5816158ab122e3e6e`  
		Last Modified: Wed, 08 Nov 2017 06:17:57 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f03ac3835bd118fd84ef70fb7583182d9d98ced51805e654acfcb656e74c28`  
		Last Modified: Wed, 08 Nov 2017 06:17:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:c23b61a5116a2f5a868c4a8ea0a8a29d0398b1fcdf49f0d1007a9b2a875ac617
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23337693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93b4ddbb9b7ff64a163bc8a09c5f3af2f37a65325d416c44556543845af88bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 18:33:32 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 18:33:32 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 18:37:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 18:37:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:37:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 18:37:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:37:13 GMT
USER [memcache]
# Wed, 08 Nov 2017 18:37:13 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 18:37:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19408bdbb27e79f51641da322b1cc1d3ded521fb71e83256d41ff519f47f78cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64912fc4afbe3b87257756c7ecbff412898902d134d4e510d4b9ff062479358d`  
		Last Modified: Wed, 08 Nov 2017 18:41:09 GMT  
		Size: 995.6 KB (995585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96f716403001e6d518d08f92e8298bf7f0ccdd25eaed6d43be4532d005ce78`  
		Last Modified: Wed, 08 Nov 2017 18:41:08 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78888e734899980fcfd7b8c33b353086431aadcfd93a5e57680c59ec16a8b52d`  
		Last Modified: Wed, 08 Nov 2017 18:41:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.3`

```console
$ docker pull memcached@sha256:2f49421f7d4b70a4134e5865c334244bfb9cccd36ab50a8d79ac4083016b028a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; s390x

### `memcached:1.5.3` - linux; amd64

```console
$ docker pull memcached@sha256:2023e58e6cbda5359e4e4fcb6c994f8c593334f178459918042a6c4848050617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946225ac4741387532f9acaa99228940eafb85feb747580b3078ce60d527f98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:11:11 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:31:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:31:27 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:34:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 05:34:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:34:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:34:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:34:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:34:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:34:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9828a8691c462b2df051cd65720f2a7aee43b0acd306876f8c056d69991adacb`  
		Last Modified: Sat, 04 Nov 2017 16:14:54 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3974c1a289a44ea8d7392ead92e5577c674b468e35b8d7c45927f8dd0456f72f`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 975.0 KB (974967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96389c8b7c01c82aafad23eedd09b5e2b3ea287501c7ca8df7af34dd58c57f77`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4d1ccb0997595af75e50ba83c78dcd89188ea2b83fb9ae7242234bf61d0cd8`  
		Last Modified: Wed, 08 Nov 2017 05:38:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.3` - linux; arm variant v7

```console
$ docker pull memcached@sha256:59dab0b27ec99bd7160fc2ef8968be9dc158b4fc023ca179f2f8f8e3f0efaf5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20213047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52e4196b13232ddb96e8fa6c0ca0635999f2506f30517f0a8ab8917e9fa6255`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:05 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:58:19 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:58:20 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 06:17:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 06:17:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 06:17:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 06:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 06:17:33 GMT
USER [memcache]
# Wed, 08 Nov 2017 06:17:35 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 06:17:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25bf0f9bc48cb520abf512db57f1e805a7255f09da957b74fd27febfccb5cef`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63b6f5376ac9995525cae92387089eb3db112d289cf741fceba7d9cbda0285e`  
		Last Modified: Wed, 08 Nov 2017 06:17:59 GMT  
		Size: 933.8 KB (933764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba35845bb87da5614e867b90060120126f053761b85bdc5816158ab122e3e6e`  
		Last Modified: Wed, 08 Nov 2017 06:17:57 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f03ac3835bd118fd84ef70fb7583182d9d98ced51805e654acfcb656e74c28`  
		Last Modified: Wed, 08 Nov 2017 06:17:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.3` - linux; s390x

```console
$ docker pull memcached@sha256:c23b61a5116a2f5a868c4a8ea0a8a29d0398b1fcdf49f0d1007a9b2a875ac617
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23337693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93b4ddbb9b7ff64a163bc8a09c5f3af2f37a65325d416c44556543845af88bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 18:33:32 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 18:33:32 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 18:37:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 18:37:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:37:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 18:37:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:37:13 GMT
USER [memcache]
# Wed, 08 Nov 2017 18:37:13 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 18:37:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19408bdbb27e79f51641da322b1cc1d3ded521fb71e83256d41ff519f47f78cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64912fc4afbe3b87257756c7ecbff412898902d134d4e510d4b9ff062479358d`  
		Last Modified: Wed, 08 Nov 2017 18:41:09 GMT  
		Size: 995.6 KB (995585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec96f716403001e6d518d08f92e8298bf7f0ccdd25eaed6d43be4532d005ce78`  
		Last Modified: Wed, 08 Nov 2017 18:41:08 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78888e734899980fcfd7b8c33b353086431aadcfd93a5e57680c59ec16a8b52d`  
		Last Modified: Wed, 08 Nov 2017 18:41:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.3-alpine`

```console
$ docker pull memcached@sha256:c9cb61b47c69c1251b44ea48c51c81fa5a2ed1926e8582486ab38bb6c7f31756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `memcached:1.5.3-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:500d62588d7c7ec70d5c7f240faf19db60a895fbaf7238824222f891dc4e1571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7934b99fd0185dbfa4b386ae46a11739112df4c280c5f836a2ffae248c79e9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:37:44 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:38:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 05:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:38:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:38:30 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:38:30 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:38:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18cef3dd486b3b3b30bae73f7596d0a4892089180fb63e0b5bb4d9107ad2a3c`  
		Last Modified: Sat, 04 Nov 2017 01:41:24 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca60f2d156cb0c5a5926bef56f5d9a839e50eaba0bd59ad099544b7bd6885775`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 1.3 MB (1343116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7232d601ba00570a64456832a07d30422be9bf427bada1f28e9d138d96e96a`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8cfaea557fb2c462c6bce5305e74bf60a696064c741f51834186e2676cd27`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.3-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:e6925b85a95b3732a068dc260925d92974e096fdcd807bce07cb80029f7aabcc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3893369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd386d4963696b585225eb0919d18b4529f3ed46f81287f1185a40059cbe8e9`
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
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 18:40:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 18:40:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 18:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:40:46 GMT
USER [memcache]
# Wed, 08 Nov 2017 18:40:46 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 18:40:46 GMT
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
	-	`sha256:142dcb4e8f9072e4dcc6a6e04a6dda64c11915feae4c147987f6a541f88db705`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 1.8 MB (1826081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62048913d85a9c7c6449a6b68dcae5d29d617f8695a66bf5b00b6a45be43e2`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0060e2e14e849ff326e400ca1258da34ad7bd067d2d74d3f3d7ccdf76f3e1dc0`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:c9cb61b47c69c1251b44ea48c51c81fa5a2ed1926e8582486ab38bb6c7f31756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:500d62588d7c7ec70d5c7f240faf19db60a895fbaf7238824222f891dc4e1571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7934b99fd0185dbfa4b386ae46a11739112df4c280c5f836a2ffae248c79e9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:37:44 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:38:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 05:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:38:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:38:30 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:38:30 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:38:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18cef3dd486b3b3b30bae73f7596d0a4892089180fb63e0b5bb4d9107ad2a3c`  
		Last Modified: Sat, 04 Nov 2017 01:41:24 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca60f2d156cb0c5a5926bef56f5d9a839e50eaba0bd59ad099544b7bd6885775`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 1.3 MB (1343116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7232d601ba00570a64456832a07d30422be9bf427bada1f28e9d138d96e96a`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8cfaea557fb2c462c6bce5305e74bf60a696064c741f51834186e2676cd27`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:e6925b85a95b3732a068dc260925d92974e096fdcd807bce07cb80029f7aabcc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3893369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd386d4963696b585225eb0919d18b4529f3ed46f81287f1185a40059cbe8e9`
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
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 18:40:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 18:40:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 18:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:40:46 GMT
USER [memcache]
# Wed, 08 Nov 2017 18:40:46 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 18:40:46 GMT
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
	-	`sha256:142dcb4e8f9072e4dcc6a6e04a6dda64c11915feae4c147987f6a541f88db705`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 1.8 MB (1826081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62048913d85a9c7c6449a6b68dcae5d29d617f8695a66bf5b00b6a45be43e2`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0060e2e14e849ff326e400ca1258da34ad7bd067d2d74d3f3d7ccdf76f3e1dc0`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:c9cb61b47c69c1251b44ea48c51c81fa5a2ed1926e8582486ab38bb6c7f31756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:500d62588d7c7ec70d5c7f240faf19db60a895fbaf7238824222f891dc4e1571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7934b99fd0185dbfa4b386ae46a11739112df4c280c5f836a2ffae248c79e9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:37:44 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:38:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 05:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:38:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:38:30 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:38:30 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:38:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18cef3dd486b3b3b30bae73f7596d0a4892089180fb63e0b5bb4d9107ad2a3c`  
		Last Modified: Sat, 04 Nov 2017 01:41:24 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca60f2d156cb0c5a5926bef56f5d9a839e50eaba0bd59ad099544b7bd6885775`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 1.3 MB (1343116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7232d601ba00570a64456832a07d30422be9bf427bada1f28e9d138d96e96a`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8cfaea557fb2c462c6bce5305e74bf60a696064c741f51834186e2676cd27`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:e6925b85a95b3732a068dc260925d92974e096fdcd807bce07cb80029f7aabcc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3893369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd386d4963696b585225eb0919d18b4529f3ed46f81287f1185a40059cbe8e9`
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
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 18:40:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 18:40:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 18:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:40:46 GMT
USER [memcache]
# Wed, 08 Nov 2017 18:40:46 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 18:40:46 GMT
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
	-	`sha256:142dcb4e8f9072e4dcc6a6e04a6dda64c11915feae4c147987f6a541f88db705`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 1.8 MB (1826081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62048913d85a9c7c6449a6b68dcae5d29d617f8695a66bf5b00b6a45be43e2`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0060e2e14e849ff326e400ca1258da34ad7bd067d2d74d3f3d7ccdf76f3e1dc0`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:c9cb61b47c69c1251b44ea48c51c81fa5a2ed1926e8582486ab38bb6c7f31756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:500d62588d7c7ec70d5c7f240faf19db60a895fbaf7238824222f891dc4e1571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7934b99fd0185dbfa4b386ae46a11739112df4c280c5f836a2ffae248c79e9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:37:44 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:35:08 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:38:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 05:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:38:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:38:30 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:38:30 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:38:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18cef3dd486b3b3b30bae73f7596d0a4892089180fb63e0b5bb4d9107ad2a3c`  
		Last Modified: Sat, 04 Nov 2017 01:41:24 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca60f2d156cb0c5a5926bef56f5d9a839e50eaba0bd59ad099544b7bd6885775`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 1.3 MB (1343116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7232d601ba00570a64456832a07d30422be9bf427bada1f28e9d138d96e96a`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8cfaea557fb2c462c6bce5305e74bf60a696064c741f51834186e2676cd27`  
		Last Modified: Wed, 08 Nov 2017 05:39:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:e6925b85a95b3732a068dc260925d92974e096fdcd807bce07cb80029f7aabcc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3893369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd386d4963696b585225eb0919d18b4529f3ed46f81287f1185a40059cbe8e9`
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
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 18:37:26 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 18:40:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 18:40:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 18:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:40:46 GMT
USER [memcache]
# Wed, 08 Nov 2017 18:40:46 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 18:40:46 GMT
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
	-	`sha256:142dcb4e8f9072e4dcc6a6e04a6dda64c11915feae4c147987f6a541f88db705`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 1.8 MB (1826081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62048913d85a9c7c6449a6b68dcae5d29d617f8695a66bf5b00b6a45be43e2`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0060e2e14e849ff326e400ca1258da34ad7bd067d2d74d3f3d7ccdf76f3e1dc0`  
		Last Modified: Wed, 08 Nov 2017 18:41:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:a550d7f916408e61905b961a1e3a48af9ad426d5392ca33cf691d392782b061c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:2023e58e6cbda5359e4e4fcb6c994f8c593334f178459918042a6c4848050617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23469477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946225ac4741387532f9acaa99228940eafb85feb747580b3078ce60d527f98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:11:11 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:31:26 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:31:27 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 05:34:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 05:34:55 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:34:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 05:34:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:34:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 05:34:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 05:34:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9828a8691c462b2df051cd65720f2a7aee43b0acd306876f8c056d69991adacb`  
		Last Modified: Sat, 04 Nov 2017 16:14:54 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3974c1a289a44ea8d7392ead92e5577c674b468e35b8d7c45927f8dd0456f72f`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 975.0 KB (974967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96389c8b7c01c82aafad23eedd09b5e2b3ea287501c7ca8df7af34dd58c57f77`  
		Last Modified: Wed, 08 Nov 2017 05:38:53 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4d1ccb0997595af75e50ba83c78dcd89188ea2b83fb9ae7242234bf61d0cd8`  
		Last Modified: Wed, 08 Nov 2017 05:38:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:59dab0b27ec99bd7160fc2ef8968be9dc158b4fc023ca179f2f8f8e3f0efaf5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20213047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52e4196b13232ddb96e8fa6c0ca0635999f2506f30517f0a8ab8917e9fa6255`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:05 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 05:58:19 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 05:58:20 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 06:17:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 06:17:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 06:17:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 06:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 06:17:33 GMT
USER [memcache]
# Wed, 08 Nov 2017 06:17:35 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 06:17:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25bf0f9bc48cb520abf512db57f1e805a7255f09da957b74fd27febfccb5cef`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63b6f5376ac9995525cae92387089eb3db112d289cf741fceba7d9cbda0285e`  
		Last Modified: Wed, 08 Nov 2017 06:17:59 GMT  
		Size: 933.8 KB (933764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba35845bb87da5614e867b90060120126f053761b85bdc5816158ab122e3e6e`  
		Last Modified: Wed, 08 Nov 2017 06:17:57 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f03ac3835bd118fd84ef70fb7583182d9d98ced51805e654acfcb656e74c28`  
		Last Modified: Wed, 08 Nov 2017 06:17:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
