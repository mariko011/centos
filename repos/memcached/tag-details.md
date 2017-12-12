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
$ docker pull memcached@sha256:58fbf293c0b53dd4765ad0b5e94f1d3cb89f25769983d22f241248c560b99c82
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

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:81a77158aeabee13bc5e9b1942c186c5d3571fc5db3175d089f37d8100521c8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22133668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbcb921162dce8fb8ea269fa9b99b05389cdb9a0b8ea17d15cdd0442fe49a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:38 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 19:35:20 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:35:21 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:46:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 19:46:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:46:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:46:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:46:51 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:46:53 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:46:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb34cb42f50f2012dbaa17714834bd9ce82bc533c75d329cd5182061fc291683`  
		Last Modified: Mon, 09 Oct 2017 22:20:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17be3b91a6ca9afc8b35bc4457b92567d07349c34f162055be1ca4401b973a1a`  
		Last Modified: Wed, 08 Nov 2017 19:47:17 GMT  
		Size: 965.3 KB (965262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94daa322f6a3ed9b624048087bfe5f854eb39f4a65bed1fd1d4d717ee041c87`  
		Last Modified: Wed, 08 Nov 2017 19:47:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216aaf625fa051a2a74942968abe0ce29b6a5b76bc59a9a9614cf4cb7409ebac`  
		Last Modified: Wed, 08 Nov 2017 19:47:15 GMT  
		Size: 121.0 B  
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

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:66f867461f5f01125bbbb103a880447fb95810e0093f677cfb361f4e84024e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21286232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d340c7f00a2cc7ef2d977dc67e3083840e3a71387489b8fffeed73c404cbb93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 09 Nov 2017 03:47:58 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 03:47:58 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 03:52:50 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 09 Nov 2017 03:52:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 03:52:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 03:52:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:52:53 GMT
USER [memcache]
# Thu, 09 Nov 2017 03:52:54 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 03:52:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c909a573e5475b05fe884768b6773f7c2f24a75539d5016149d0a458d4486c`  
		Last Modified: Tue, 10 Oct 2017 00:16:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858d3578998580154d35409548262bb4b56fc9d8e72e4fc8124e0a7f36df3423`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 946.9 KB (946929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5167e3bfad5e8d70556b7bbfe083bc82d78f171b2f11bea7f6bb0fa751c95aa`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332fd17a2d98cb8c76073e7c65427788b04543b0c7b9125789ed2c642e0754bf`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:0d4c387fdf41c04064ebd71b728f5a45e2e6d0ae08eb2eb008af893497125a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24118271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84529a8fe377b6b25c4e10e37547e051bdb82b52c4c0dd5ecbfdaaaedb4d190`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:00:21 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 19:51:48 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:51:48 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:55:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 19:55:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:55:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:55:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:55:31 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:55:31 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:55:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbf4ad7f1e9ec85056eca0c8cd639e06ad9e9c275b4b27246decdc82c6b43c1`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694b2ae36406c17bac746479a6bb40b3f3d6a032519172d57ab7cc451bb782f0`  
		Last Modified: Wed, 08 Nov 2017 19:59:34 GMT  
		Size: 987.4 KB (987444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d62accdd6ba2892b400cc003bec2795cb9bf81fd818db30f82e9cb3d05cbef6`  
		Last Modified: Wed, 08 Nov 2017 19:59:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392304aa1b246255d4f4cf25f5e445d3f9680c0daa5bc855822fcc296165f489`  
		Last Modified: Wed, 08 Nov 2017 19:59:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:75d148b2cde14efbea694cdfa1b70df73fb1de69b3dca2f5678b9953708954c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23720745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1c5b2486287418784ae588625701b0dbfb7ad147cb776ba5518dc0a6305d9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 12 Dec 2017 03:13:46 GMT
ENV MEMCACHED_VERSION=1.5.3
# Tue, 12 Dec 2017 03:13:48 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Tue, 12 Dec 2017 03:23:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 12 Dec 2017 03:23:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 12 Dec 2017 03:23:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 03:23:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 03:23:53 GMT
USER [memcache]
# Tue, 12 Dec 2017 03:23:55 GMT
EXPOSE 11211/tcp
# Tue, 12 Dec 2017 03:23:58 GMT
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
	-	`sha256:7c0a07bdc1f1d92585e789bdb8b3b86c112acd2f1dc12847bc7c2f5d8cfd1932`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 978.9 KB (978867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c2e82eabefc47a8e36073ce52fba9f3a538413b4b093a11526dff9cbf0b0f4`  
		Last Modified: Tue, 12 Dec 2017 03:24:14 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d34831ac18398056ad44cdf59f1a3f66454da5c354938ad9a1634ce49637d66`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 118.0 B  
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
$ docker pull memcached@sha256:58fbf293c0b53dd4765ad0b5e94f1d3cb89f25769983d22f241248c560b99c82
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

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:81a77158aeabee13bc5e9b1942c186c5d3571fc5db3175d089f37d8100521c8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22133668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbcb921162dce8fb8ea269fa9b99b05389cdb9a0b8ea17d15cdd0442fe49a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:38 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 19:35:20 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:35:21 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:46:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 19:46:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:46:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:46:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:46:51 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:46:53 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:46:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb34cb42f50f2012dbaa17714834bd9ce82bc533c75d329cd5182061fc291683`  
		Last Modified: Mon, 09 Oct 2017 22:20:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17be3b91a6ca9afc8b35bc4457b92567d07349c34f162055be1ca4401b973a1a`  
		Last Modified: Wed, 08 Nov 2017 19:47:17 GMT  
		Size: 965.3 KB (965262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94daa322f6a3ed9b624048087bfe5f854eb39f4a65bed1fd1d4d717ee041c87`  
		Last Modified: Wed, 08 Nov 2017 19:47:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216aaf625fa051a2a74942968abe0ce29b6a5b76bc59a9a9614cf4cb7409ebac`  
		Last Modified: Wed, 08 Nov 2017 19:47:15 GMT  
		Size: 121.0 B  
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

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:66f867461f5f01125bbbb103a880447fb95810e0093f677cfb361f4e84024e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21286232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d340c7f00a2cc7ef2d977dc67e3083840e3a71387489b8fffeed73c404cbb93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 09 Nov 2017 03:47:58 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 03:47:58 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 03:52:50 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 09 Nov 2017 03:52:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 03:52:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 03:52:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:52:53 GMT
USER [memcache]
# Thu, 09 Nov 2017 03:52:54 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 03:52:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c909a573e5475b05fe884768b6773f7c2f24a75539d5016149d0a458d4486c`  
		Last Modified: Tue, 10 Oct 2017 00:16:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858d3578998580154d35409548262bb4b56fc9d8e72e4fc8124e0a7f36df3423`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 946.9 KB (946929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5167e3bfad5e8d70556b7bbfe083bc82d78f171b2f11bea7f6bb0fa751c95aa`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332fd17a2d98cb8c76073e7c65427788b04543b0c7b9125789ed2c642e0754bf`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:0d4c387fdf41c04064ebd71b728f5a45e2e6d0ae08eb2eb008af893497125a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24118271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84529a8fe377b6b25c4e10e37547e051bdb82b52c4c0dd5ecbfdaaaedb4d190`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:00:21 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 19:51:48 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:51:48 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:55:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 19:55:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:55:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:55:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:55:31 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:55:31 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:55:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbf4ad7f1e9ec85056eca0c8cd639e06ad9e9c275b4b27246decdc82c6b43c1`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694b2ae36406c17bac746479a6bb40b3f3d6a032519172d57ab7cc451bb782f0`  
		Last Modified: Wed, 08 Nov 2017 19:59:34 GMT  
		Size: 987.4 KB (987444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d62accdd6ba2892b400cc003bec2795cb9bf81fd818db30f82e9cb3d05cbef6`  
		Last Modified: Wed, 08 Nov 2017 19:59:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392304aa1b246255d4f4cf25f5e445d3f9680c0daa5bc855822fcc296165f489`  
		Last Modified: Wed, 08 Nov 2017 19:59:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:75d148b2cde14efbea694cdfa1b70df73fb1de69b3dca2f5678b9953708954c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23720745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1c5b2486287418784ae588625701b0dbfb7ad147cb776ba5518dc0a6305d9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 12 Dec 2017 03:13:46 GMT
ENV MEMCACHED_VERSION=1.5.3
# Tue, 12 Dec 2017 03:13:48 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Tue, 12 Dec 2017 03:23:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 12 Dec 2017 03:23:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 12 Dec 2017 03:23:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 03:23:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 03:23:53 GMT
USER [memcache]
# Tue, 12 Dec 2017 03:23:55 GMT
EXPOSE 11211/tcp
# Tue, 12 Dec 2017 03:23:58 GMT
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
	-	`sha256:7c0a07bdc1f1d92585e789bdb8b3b86c112acd2f1dc12847bc7c2f5d8cfd1932`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 978.9 KB (978867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c2e82eabefc47a8e36073ce52fba9f3a538413b4b093a11526dff9cbf0b0f4`  
		Last Modified: Tue, 12 Dec 2017 03:24:14 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d34831ac18398056ad44cdf59f1a3f66454da5c354938ad9a1634ce49637d66`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 118.0 B  
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
$ docker pull memcached@sha256:58fbf293c0b53dd4765ad0b5e94f1d3cb89f25769983d22f241248c560b99c82
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

### `memcached:1.5.3` - linux; arm variant v5

```console
$ docker pull memcached@sha256:81a77158aeabee13bc5e9b1942c186c5d3571fc5db3175d089f37d8100521c8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22133668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbcb921162dce8fb8ea269fa9b99b05389cdb9a0b8ea17d15cdd0442fe49a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:38 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 19:35:20 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:35:21 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:46:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 19:46:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:46:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:46:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:46:51 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:46:53 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:46:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb34cb42f50f2012dbaa17714834bd9ce82bc533c75d329cd5182061fc291683`  
		Last Modified: Mon, 09 Oct 2017 22:20:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17be3b91a6ca9afc8b35bc4457b92567d07349c34f162055be1ca4401b973a1a`  
		Last Modified: Wed, 08 Nov 2017 19:47:17 GMT  
		Size: 965.3 KB (965262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94daa322f6a3ed9b624048087bfe5f854eb39f4a65bed1fd1d4d717ee041c87`  
		Last Modified: Wed, 08 Nov 2017 19:47:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216aaf625fa051a2a74942968abe0ce29b6a5b76bc59a9a9614cf4cb7409ebac`  
		Last Modified: Wed, 08 Nov 2017 19:47:15 GMT  
		Size: 121.0 B  
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

### `memcached:1.5.3` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:66f867461f5f01125bbbb103a880447fb95810e0093f677cfb361f4e84024e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21286232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d340c7f00a2cc7ef2d977dc67e3083840e3a71387489b8fffeed73c404cbb93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 09 Nov 2017 03:47:58 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 03:47:58 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 03:52:50 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 09 Nov 2017 03:52:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 03:52:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 03:52:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:52:53 GMT
USER [memcache]
# Thu, 09 Nov 2017 03:52:54 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 03:52:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c909a573e5475b05fe884768b6773f7c2f24a75539d5016149d0a458d4486c`  
		Last Modified: Tue, 10 Oct 2017 00:16:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858d3578998580154d35409548262bb4b56fc9d8e72e4fc8124e0a7f36df3423`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 946.9 KB (946929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5167e3bfad5e8d70556b7bbfe083bc82d78f171b2f11bea7f6bb0fa751c95aa`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332fd17a2d98cb8c76073e7c65427788b04543b0c7b9125789ed2c642e0754bf`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.3` - linux; 386

```console
$ docker pull memcached@sha256:0d4c387fdf41c04064ebd71b728f5a45e2e6d0ae08eb2eb008af893497125a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24118271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84529a8fe377b6b25c4e10e37547e051bdb82b52c4c0dd5ecbfdaaaedb4d190`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:00:21 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 19:51:48 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:51:48 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:55:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 19:55:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:55:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:55:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:55:31 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:55:31 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:55:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbf4ad7f1e9ec85056eca0c8cd639e06ad9e9c275b4b27246decdc82c6b43c1`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694b2ae36406c17bac746479a6bb40b3f3d6a032519172d57ab7cc451bb782f0`  
		Last Modified: Wed, 08 Nov 2017 19:59:34 GMT  
		Size: 987.4 KB (987444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d62accdd6ba2892b400cc003bec2795cb9bf81fd818db30f82e9cb3d05cbef6`  
		Last Modified: Wed, 08 Nov 2017 19:59:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392304aa1b246255d4f4cf25f5e445d3f9680c0daa5bc855822fcc296165f489`  
		Last Modified: Wed, 08 Nov 2017 19:59:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.3` - linux; ppc64le

```console
$ docker pull memcached@sha256:75d148b2cde14efbea694cdfa1b70df73fb1de69b3dca2f5678b9953708954c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23720745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1c5b2486287418784ae588625701b0dbfb7ad147cb776ba5518dc0a6305d9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 12 Dec 2017 03:13:46 GMT
ENV MEMCACHED_VERSION=1.5.3
# Tue, 12 Dec 2017 03:13:48 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Tue, 12 Dec 2017 03:23:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 12 Dec 2017 03:23:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 12 Dec 2017 03:23:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 03:23:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 03:23:53 GMT
USER [memcache]
# Tue, 12 Dec 2017 03:23:55 GMT
EXPOSE 11211/tcp
# Tue, 12 Dec 2017 03:23:58 GMT
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
	-	`sha256:7c0a07bdc1f1d92585e789bdb8b3b86c112acd2f1dc12847bc7c2f5d8cfd1932`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 978.9 KB (978867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c2e82eabefc47a8e36073ce52fba9f3a538413b4b093a11526dff9cbf0b0f4`  
		Last Modified: Tue, 12 Dec 2017 03:24:14 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d34831ac18398056ad44cdf59f1a3f66454da5c354938ad9a1634ce49637d66`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 118.0 B  
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
$ docker pull memcached@sha256:c238ed549071d6165b503281a8121881c4b2d167fb92b310762e0065314a04ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.3-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:c69dc591522bbe031a7dd3df166e7e6e07f3c98c3e5da456a173e41fcc9b616f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad3382204db349af4796a9c4c8c841bf401abb23ba42049713e0330f9e3bbb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:03:24 GMT
RUN adduser -D memcache
# Fri, 01 Dec 2017 21:03:24 GMT
ENV MEMCACHED_VERSION=1.5.3
# Fri, 01 Dec 2017 21:03:24 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Fri, 01 Dec 2017 21:07:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 01 Dec 2017 21:07:02 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Dec 2017 21:07:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Dec 2017 21:07:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 21:07:04 GMT
USER [memcache]
# Fri, 01 Dec 2017 21:07:04 GMT
EXPOSE 11211/tcp
# Fri, 01 Dec 2017 21:07:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9682dcbcd9ddfe8bc8141b2cbc5b9758f8229a2a33d12b3fced429c21ffc661`  
		Last Modified: Fri, 01 Dec 2017 21:11:46 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de790b82598e3942a54f3daaf103507c97be59e3ca2e106b1f60d427e64df349`  
		Last Modified: Fri, 01 Dec 2017 21:11:47 GMT  
		Size: 1.3 MB (1343149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b4112c46684ffddfa3fd3663b6d658e2026ae3d7b214ba221340d5ffa277b5`  
		Last Modified: Fri, 01 Dec 2017 21:11:48 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6cd2214209e66bc22f45c065c31aed875cf6b6d16a0f8d35a3c06270ea57f`  
		Last Modified: Fri, 01 Dec 2017 21:11:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.3-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:f373681a737e439ffb1e16b485a885281cf1e2243543b9db13d4a7c36f19c83c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3662512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86aa689cc4dbe2c4fc1bd76645005888ae749d9c257989d86441401998271d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 15:08:19 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 22:28:15 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 22:28:16 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 22:36:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 22:36:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 22:36:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 22:36:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 22:36:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 22:36:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 22:36:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff8860a70a44ad5b357b11f78d66b38d63a83ce590caaf438ad1654de9fa029`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e4176102a12913564fc71004d128548ecc4764c8bed0c233dc2026f9aeb081`  
		Last Modified: Wed, 08 Nov 2017 22:37:23 GMT  
		Size: 1.7 MB (1694694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b796efd958067a9f771ed0fa6f98e1f7d2ec9683a28c761cead1e0d79064ee3`  
		Last Modified: Wed, 08 Nov 2017 22:37:20 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa79474b6bbe650aeb9b3137ae9a976c869aa0b0f3f73796f6601c399ed57b6f`  
		Last Modified: Wed, 08 Nov 2017 22:37:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.3-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9a0d9eb0952cba2ecdec1f9f3c50035d2bb6b9eec27e88230a89c04f30673bd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a92fed17ece09c73ac630b1ab2fd1090eea990ea9dceaf31632fc7280c63fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:46:21 GMT
RUN adduser -D memcache
# Thu, 09 Nov 2017 03:53:15 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 03:53:16 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 03:57:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 09 Nov 2017 03:57:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 03:57:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 03:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:57:12 GMT
USER [memcache]
# Thu, 09 Nov 2017 03:57:13 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 03:57:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9eabe1c971a77807061f84403818bd51c9287e46384434a82daf4c0a6e0633`  
		Last Modified: Thu, 26 Oct 2017 17:51:13 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b695c3b49bc5eb5d3283651f3a84d2117c88cbd6b91269c6e63c99c4ece71e97`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 1.7 MB (1681945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e1e215106091fdf155f1977109f4fa31eb99c076f4e577a656498b2b44ce05`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5642b5b6d75dceab2d28a56da53aa6851c184cfedc321fb5eb4116238aeb739b`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.3-alpine` - linux; 386

```console
$ docker pull memcached@sha256:81a4b0fda6bad04eae530e1cb20e627bfda48903557a3390ff727f9788b47aad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3877357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d343dffe589fbdb1978bdbf9b6b865ef70d283efe9eb6d758b6b15f149e15f`
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
# Wed, 08 Nov 2017 19:55:45 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:55:45 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:59:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 19:59:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:59:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:59:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:59:15 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:59:16 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:59:16 GMT
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
	-	`sha256:3d4cf6b268aba07c51b6aa5fc4d4d021b33ccca66d1c6462094e8f485f561ede`  
		Last Modified: Wed, 08 Nov 2017 20:00:05 GMT  
		Size: 1.8 MB (1829936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f058abf638e8a90942e6474e9e2c8356e9ca16618c1fb03ad6095476fcd672`  
		Last Modified: Wed, 08 Nov 2017 20:00:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e0c13f7d5a8dc3962be69347847c9723853b59e67de2e10a0e2e6163968d79`  
		Last Modified: Wed, 08 Nov 2017 20:00:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.3-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1c026c0f7c133c5c4df52ccb7bbd5122e96f18893f28e1906410997ae06ce8a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9b29f4cff065981980e97e63e9db442ea78318b4d405cf45c1b98ee609e6d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 00:33:39 GMT
RUN adduser -D memcache
# Thu, 09 Nov 2017 01:40:17 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 01:40:18 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 01:44:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 09 Nov 2017 01:44:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 01:44:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 01:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 01:44:30 GMT
USER [memcache]
# Thu, 09 Nov 2017 01:44:31 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 01:44:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08904dbe8112a8a520dc262093f95abeea579a04fe5c08ffea6669c3d37cb5ad`  
		Last Modified: Fri, 27 Oct 2017 00:37:49 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f99fd3c10e96c3f86026680d232e24df0823efaf919354ef235e1fa49cf037`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 1.7 MB (1741438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b004268d894f06b44f638f1e187898f5ef56aa72a5710e16a2dccc210e7bbb4`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9110e38dd2484a65be48a82d319fe94ee3f3d2abe2c2be9f08081248bc262f77`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 120.0 B  
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
$ docker pull memcached@sha256:c238ed549071d6165b503281a8121881c4b2d167fb92b310762e0065314a04ff
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
$ docker pull memcached@sha256:c69dc591522bbe031a7dd3df166e7e6e07f3c98c3e5da456a173e41fcc9b616f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad3382204db349af4796a9c4c8c841bf401abb23ba42049713e0330f9e3bbb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:03:24 GMT
RUN adduser -D memcache
# Fri, 01 Dec 2017 21:03:24 GMT
ENV MEMCACHED_VERSION=1.5.3
# Fri, 01 Dec 2017 21:03:24 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Fri, 01 Dec 2017 21:07:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 01 Dec 2017 21:07:02 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Dec 2017 21:07:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Dec 2017 21:07:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 21:07:04 GMT
USER [memcache]
# Fri, 01 Dec 2017 21:07:04 GMT
EXPOSE 11211/tcp
# Fri, 01 Dec 2017 21:07:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9682dcbcd9ddfe8bc8141b2cbc5b9758f8229a2a33d12b3fced429c21ffc661`  
		Last Modified: Fri, 01 Dec 2017 21:11:46 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de790b82598e3942a54f3daaf103507c97be59e3ca2e106b1f60d427e64df349`  
		Last Modified: Fri, 01 Dec 2017 21:11:47 GMT  
		Size: 1.3 MB (1343149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b4112c46684ffddfa3fd3663b6d658e2026ae3d7b214ba221340d5ffa277b5`  
		Last Modified: Fri, 01 Dec 2017 21:11:48 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6cd2214209e66bc22f45c065c31aed875cf6b6d16a0f8d35a3c06270ea57f`  
		Last Modified: Fri, 01 Dec 2017 21:11:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:f373681a737e439ffb1e16b485a885281cf1e2243543b9db13d4a7c36f19c83c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3662512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86aa689cc4dbe2c4fc1bd76645005888ae749d9c257989d86441401998271d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 15:08:19 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 22:28:15 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 22:28:16 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 22:36:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 22:36:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 22:36:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 22:36:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 22:36:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 22:36:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 22:36:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff8860a70a44ad5b357b11f78d66b38d63a83ce590caaf438ad1654de9fa029`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e4176102a12913564fc71004d128548ecc4764c8bed0c233dc2026f9aeb081`  
		Last Modified: Wed, 08 Nov 2017 22:37:23 GMT  
		Size: 1.7 MB (1694694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b796efd958067a9f771ed0fa6f98e1f7d2ec9683a28c761cead1e0d79064ee3`  
		Last Modified: Wed, 08 Nov 2017 22:37:20 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa79474b6bbe650aeb9b3137ae9a976c869aa0b0f3f73796f6601c399ed57b6f`  
		Last Modified: Wed, 08 Nov 2017 22:37:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9a0d9eb0952cba2ecdec1f9f3c50035d2bb6b9eec27e88230a89c04f30673bd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a92fed17ece09c73ac630b1ab2fd1090eea990ea9dceaf31632fc7280c63fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:46:21 GMT
RUN adduser -D memcache
# Thu, 09 Nov 2017 03:53:15 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 03:53:16 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 03:57:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 09 Nov 2017 03:57:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 03:57:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 03:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:57:12 GMT
USER [memcache]
# Thu, 09 Nov 2017 03:57:13 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 03:57:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9eabe1c971a77807061f84403818bd51c9287e46384434a82daf4c0a6e0633`  
		Last Modified: Thu, 26 Oct 2017 17:51:13 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b695c3b49bc5eb5d3283651f3a84d2117c88cbd6b91269c6e63c99c4ece71e97`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 1.7 MB (1681945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e1e215106091fdf155f1977109f4fa31eb99c076f4e577a656498b2b44ce05`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5642b5b6d75dceab2d28a56da53aa6851c184cfedc321fb5eb4116238aeb739b`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:81a4b0fda6bad04eae530e1cb20e627bfda48903557a3390ff727f9788b47aad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3877357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d343dffe589fbdb1978bdbf9b6b865ef70d283efe9eb6d758b6b15f149e15f`
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
# Wed, 08 Nov 2017 19:55:45 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:55:45 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:59:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 19:59:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:59:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:59:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:59:15 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:59:16 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:59:16 GMT
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
	-	`sha256:3d4cf6b268aba07c51b6aa5fc4d4d021b33ccca66d1c6462094e8f485f561ede`  
		Last Modified: Wed, 08 Nov 2017 20:00:05 GMT  
		Size: 1.8 MB (1829936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f058abf638e8a90942e6474e9e2c8356e9ca16618c1fb03ad6095476fcd672`  
		Last Modified: Wed, 08 Nov 2017 20:00:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e0c13f7d5a8dc3962be69347847c9723853b59e67de2e10a0e2e6163968d79`  
		Last Modified: Wed, 08 Nov 2017 20:00:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1c026c0f7c133c5c4df52ccb7bbd5122e96f18893f28e1906410997ae06ce8a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9b29f4cff065981980e97e63e9db442ea78318b4d405cf45c1b98ee609e6d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 00:33:39 GMT
RUN adduser -D memcache
# Thu, 09 Nov 2017 01:40:17 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 01:40:18 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 01:44:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 09 Nov 2017 01:44:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 01:44:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 01:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 01:44:30 GMT
USER [memcache]
# Thu, 09 Nov 2017 01:44:31 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 01:44:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08904dbe8112a8a520dc262093f95abeea579a04fe5c08ffea6669c3d37cb5ad`  
		Last Modified: Fri, 27 Oct 2017 00:37:49 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f99fd3c10e96c3f86026680d232e24df0823efaf919354ef235e1fa49cf037`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 1.7 MB (1741438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b004268d894f06b44f638f1e187898f5ef56aa72a5710e16a2dccc210e7bbb4`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9110e38dd2484a65be48a82d319fe94ee3f3d2abe2c2be9f08081248bc262f77`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 120.0 B  
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
$ docker pull memcached@sha256:c238ed549071d6165b503281a8121881c4b2d167fb92b310762e0065314a04ff
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
$ docker pull memcached@sha256:c69dc591522bbe031a7dd3df166e7e6e07f3c98c3e5da456a173e41fcc9b616f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad3382204db349af4796a9c4c8c841bf401abb23ba42049713e0330f9e3bbb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:03:24 GMT
RUN adduser -D memcache
# Fri, 01 Dec 2017 21:03:24 GMT
ENV MEMCACHED_VERSION=1.5.3
# Fri, 01 Dec 2017 21:03:24 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Fri, 01 Dec 2017 21:07:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 01 Dec 2017 21:07:02 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Dec 2017 21:07:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Dec 2017 21:07:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 21:07:04 GMT
USER [memcache]
# Fri, 01 Dec 2017 21:07:04 GMT
EXPOSE 11211/tcp
# Fri, 01 Dec 2017 21:07:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9682dcbcd9ddfe8bc8141b2cbc5b9758f8229a2a33d12b3fced429c21ffc661`  
		Last Modified: Fri, 01 Dec 2017 21:11:46 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de790b82598e3942a54f3daaf103507c97be59e3ca2e106b1f60d427e64df349`  
		Last Modified: Fri, 01 Dec 2017 21:11:47 GMT  
		Size: 1.3 MB (1343149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b4112c46684ffddfa3fd3663b6d658e2026ae3d7b214ba221340d5ffa277b5`  
		Last Modified: Fri, 01 Dec 2017 21:11:48 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6cd2214209e66bc22f45c065c31aed875cf6b6d16a0f8d35a3c06270ea57f`  
		Last Modified: Fri, 01 Dec 2017 21:11:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:f373681a737e439ffb1e16b485a885281cf1e2243543b9db13d4a7c36f19c83c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3662512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86aa689cc4dbe2c4fc1bd76645005888ae749d9c257989d86441401998271d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 15:08:19 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 22:28:15 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 22:28:16 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 22:36:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 22:36:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 22:36:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 22:36:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 22:36:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 22:36:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 22:36:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff8860a70a44ad5b357b11f78d66b38d63a83ce590caaf438ad1654de9fa029`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e4176102a12913564fc71004d128548ecc4764c8bed0c233dc2026f9aeb081`  
		Last Modified: Wed, 08 Nov 2017 22:37:23 GMT  
		Size: 1.7 MB (1694694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b796efd958067a9f771ed0fa6f98e1f7d2ec9683a28c761cead1e0d79064ee3`  
		Last Modified: Wed, 08 Nov 2017 22:37:20 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa79474b6bbe650aeb9b3137ae9a976c869aa0b0f3f73796f6601c399ed57b6f`  
		Last Modified: Wed, 08 Nov 2017 22:37:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9a0d9eb0952cba2ecdec1f9f3c50035d2bb6b9eec27e88230a89c04f30673bd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a92fed17ece09c73ac630b1ab2fd1090eea990ea9dceaf31632fc7280c63fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:46:21 GMT
RUN adduser -D memcache
# Thu, 09 Nov 2017 03:53:15 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 03:53:16 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 03:57:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 09 Nov 2017 03:57:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 03:57:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 03:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:57:12 GMT
USER [memcache]
# Thu, 09 Nov 2017 03:57:13 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 03:57:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9eabe1c971a77807061f84403818bd51c9287e46384434a82daf4c0a6e0633`  
		Last Modified: Thu, 26 Oct 2017 17:51:13 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b695c3b49bc5eb5d3283651f3a84d2117c88cbd6b91269c6e63c99c4ece71e97`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 1.7 MB (1681945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e1e215106091fdf155f1977109f4fa31eb99c076f4e577a656498b2b44ce05`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5642b5b6d75dceab2d28a56da53aa6851c184cfedc321fb5eb4116238aeb739b`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:81a4b0fda6bad04eae530e1cb20e627bfda48903557a3390ff727f9788b47aad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3877357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d343dffe589fbdb1978bdbf9b6b865ef70d283efe9eb6d758b6b15f149e15f`
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
# Wed, 08 Nov 2017 19:55:45 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:55:45 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:59:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 19:59:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:59:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:59:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:59:15 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:59:16 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:59:16 GMT
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
	-	`sha256:3d4cf6b268aba07c51b6aa5fc4d4d021b33ccca66d1c6462094e8f485f561ede`  
		Last Modified: Wed, 08 Nov 2017 20:00:05 GMT  
		Size: 1.8 MB (1829936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f058abf638e8a90942e6474e9e2c8356e9ca16618c1fb03ad6095476fcd672`  
		Last Modified: Wed, 08 Nov 2017 20:00:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e0c13f7d5a8dc3962be69347847c9723853b59e67de2e10a0e2e6163968d79`  
		Last Modified: Wed, 08 Nov 2017 20:00:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1c026c0f7c133c5c4df52ccb7bbd5122e96f18893f28e1906410997ae06ce8a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9b29f4cff065981980e97e63e9db442ea78318b4d405cf45c1b98ee609e6d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 00:33:39 GMT
RUN adduser -D memcache
# Thu, 09 Nov 2017 01:40:17 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 01:40:18 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 01:44:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 09 Nov 2017 01:44:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 01:44:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 01:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 01:44:30 GMT
USER [memcache]
# Thu, 09 Nov 2017 01:44:31 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 01:44:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08904dbe8112a8a520dc262093f95abeea579a04fe5c08ffea6669c3d37cb5ad`  
		Last Modified: Fri, 27 Oct 2017 00:37:49 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f99fd3c10e96c3f86026680d232e24df0823efaf919354ef235e1fa49cf037`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 1.7 MB (1741438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b004268d894f06b44f638f1e187898f5ef56aa72a5710e16a2dccc210e7bbb4`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9110e38dd2484a65be48a82d319fe94ee3f3d2abe2c2be9f08081248bc262f77`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 120.0 B  
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
$ docker pull memcached@sha256:c238ed549071d6165b503281a8121881c4b2d167fb92b310762e0065314a04ff
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
$ docker pull memcached@sha256:c69dc591522bbe031a7dd3df166e7e6e07f3c98c3e5da456a173e41fcc9b616f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3336304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad3382204db349af4796a9c4c8c841bf401abb23ba42049713e0330f9e3bbb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 21:03:24 GMT
RUN adduser -D memcache
# Fri, 01 Dec 2017 21:03:24 GMT
ENV MEMCACHED_VERSION=1.5.3
# Fri, 01 Dec 2017 21:03:24 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Fri, 01 Dec 2017 21:07:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 01 Dec 2017 21:07:02 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Dec 2017 21:07:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Dec 2017 21:07:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 21:07:04 GMT
USER [memcache]
# Fri, 01 Dec 2017 21:07:04 GMT
EXPOSE 11211/tcp
# Fri, 01 Dec 2017 21:07:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9682dcbcd9ddfe8bc8141b2cbc5b9758f8229a2a33d12b3fced429c21ffc661`  
		Last Modified: Fri, 01 Dec 2017 21:11:46 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de790b82598e3942a54f3daaf103507c97be59e3ca2e106b1f60d427e64df349`  
		Last Modified: Fri, 01 Dec 2017 21:11:47 GMT  
		Size: 1.3 MB (1343149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b4112c46684ffddfa3fd3663b6d658e2026ae3d7b214ba221340d5ffa277b5`  
		Last Modified: Fri, 01 Dec 2017 21:11:48 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6cd2214209e66bc22f45c065c31aed875cf6b6d16a0f8d35a3c06270ea57f`  
		Last Modified: Fri, 01 Dec 2017 21:11:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:f373681a737e439ffb1e16b485a885281cf1e2243543b9db13d4a7c36f19c83c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3662512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86aa689cc4dbe2c4fc1bd76645005888ae749d9c257989d86441401998271d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 15:08:19 GMT
RUN adduser -D memcache
# Wed, 08 Nov 2017 22:28:15 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 22:28:16 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 22:36:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 22:36:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 22:36:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 22:36:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 22:36:56 GMT
USER [memcache]
# Wed, 08 Nov 2017 22:36:57 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 22:36:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff8860a70a44ad5b357b11f78d66b38d63a83ce590caaf438ad1654de9fa029`  
		Last Modified: Thu, 26 Oct 2017 15:17:50 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e4176102a12913564fc71004d128548ecc4764c8bed0c233dc2026f9aeb081`  
		Last Modified: Wed, 08 Nov 2017 22:37:23 GMT  
		Size: 1.7 MB (1694694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b796efd958067a9f771ed0fa6f98e1f7d2ec9683a28c761cead1e0d79064ee3`  
		Last Modified: Wed, 08 Nov 2017 22:37:20 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa79474b6bbe650aeb9b3137ae9a976c869aa0b0f3f73796f6601c399ed57b6f`  
		Last Modified: Wed, 08 Nov 2017 22:37:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9a0d9eb0952cba2ecdec1f9f3c50035d2bb6b9eec27e88230a89c04f30673bd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a92fed17ece09c73ac630b1ab2fd1090eea990ea9dceaf31632fc7280c63fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:46:21 GMT
RUN adduser -D memcache
# Thu, 09 Nov 2017 03:53:15 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 03:53:16 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 03:57:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 09 Nov 2017 03:57:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 03:57:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 03:57:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:57:12 GMT
USER [memcache]
# Thu, 09 Nov 2017 03:57:13 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 03:57:13 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9eabe1c971a77807061f84403818bd51c9287e46384434a82daf4c0a6e0633`  
		Last Modified: Thu, 26 Oct 2017 17:51:13 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b695c3b49bc5eb5d3283651f3a84d2117c88cbd6b91269c6e63c99c4ece71e97`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 1.7 MB (1681945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e1e215106091fdf155f1977109f4fa31eb99c076f4e577a656498b2b44ce05`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5642b5b6d75dceab2d28a56da53aa6851c184cfedc321fb5eb4116238aeb739b`  
		Last Modified: Thu, 09 Nov 2017 03:58:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:81a4b0fda6bad04eae530e1cb20e627bfda48903557a3390ff727f9788b47aad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3877357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d343dffe589fbdb1978bdbf9b6b865ef70d283efe9eb6d758b6b15f149e15f`
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
# Wed, 08 Nov 2017 19:55:45 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:55:45 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:59:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 08 Nov 2017 19:59:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:59:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:59:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:59:15 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:59:16 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:59:16 GMT
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
	-	`sha256:3d4cf6b268aba07c51b6aa5fc4d4d021b33ccca66d1c6462094e8f485f561ede`  
		Last Modified: Wed, 08 Nov 2017 20:00:05 GMT  
		Size: 1.8 MB (1829936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f058abf638e8a90942e6474e9e2c8356e9ca16618c1fb03ad6095476fcd672`  
		Last Modified: Wed, 08 Nov 2017 20:00:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e0c13f7d5a8dc3962be69347847c9723853b59e67de2e10a0e2e6163968d79`  
		Last Modified: Wed, 08 Nov 2017 20:00:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1c026c0f7c133c5c4df52ccb7bbd5122e96f18893f28e1906410997ae06ce8a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9b29f4cff065981980e97e63e9db442ea78318b4d405cf45c1b98ee609e6d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 00:33:39 GMT
RUN adduser -D memcache
# Thu, 09 Nov 2017 01:40:17 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 01:40:18 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 01:44:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 09 Nov 2017 01:44:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 01:44:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 01:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 01:44:30 GMT
USER [memcache]
# Thu, 09 Nov 2017 01:44:31 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 01:44:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08904dbe8112a8a520dc262093f95abeea579a04fe5c08ffea6669c3d37cb5ad`  
		Last Modified: Fri, 27 Oct 2017 00:37:49 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f99fd3c10e96c3f86026680d232e24df0823efaf919354ef235e1fa49cf037`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 1.7 MB (1741438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b004268d894f06b44f638f1e187898f5ef56aa72a5710e16a2dccc210e7bbb4`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9110e38dd2484a65be48a82d319fe94ee3f3d2abe2c2be9f08081248bc262f77`  
		Last Modified: Thu, 09 Nov 2017 01:45:27 GMT  
		Size: 120.0 B  
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
$ docker pull memcached@sha256:58fbf293c0b53dd4765ad0b5e94f1d3cb89f25769983d22f241248c560b99c82
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

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:81a77158aeabee13bc5e9b1942c186c5d3571fc5db3175d089f37d8100521c8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22133668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbcb921162dce8fb8ea269fa9b99b05389cdb9a0b8ea17d15cdd0442fe49a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:38 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 19:35:20 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:35:21 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:46:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 19:46:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:46:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:46:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:46:51 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:46:53 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:46:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb34cb42f50f2012dbaa17714834bd9ce82bc533c75d329cd5182061fc291683`  
		Last Modified: Mon, 09 Oct 2017 22:20:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17be3b91a6ca9afc8b35bc4457b92567d07349c34f162055be1ca4401b973a1a`  
		Last Modified: Wed, 08 Nov 2017 19:47:17 GMT  
		Size: 965.3 KB (965262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94daa322f6a3ed9b624048087bfe5f854eb39f4a65bed1fd1d4d717ee041c87`  
		Last Modified: Wed, 08 Nov 2017 19:47:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216aaf625fa051a2a74942968abe0ce29b6a5b76bc59a9a9614cf4cb7409ebac`  
		Last Modified: Wed, 08 Nov 2017 19:47:15 GMT  
		Size: 121.0 B  
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

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:66f867461f5f01125bbbb103a880447fb95810e0093f677cfb361f4e84024e3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21286232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d340c7f00a2cc7ef2d977dc67e3083840e3a71387489b8fffeed73c404cbb93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:19 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 09 Nov 2017 03:47:58 GMT
ENV MEMCACHED_VERSION=1.5.3
# Thu, 09 Nov 2017 03:47:58 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Thu, 09 Nov 2017 03:52:50 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 09 Nov 2017 03:52:50 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 09 Nov 2017 03:52:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 Nov 2017 03:52:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:52:53 GMT
USER [memcache]
# Thu, 09 Nov 2017 03:52:54 GMT
EXPOSE 11211/tcp
# Thu, 09 Nov 2017 03:52:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c909a573e5475b05fe884768b6773f7c2f24a75539d5016149d0a458d4486c`  
		Last Modified: Tue, 10 Oct 2017 00:16:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858d3578998580154d35409548262bb4b56fc9d8e72e4fc8124e0a7f36df3423`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 946.9 KB (946929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5167e3bfad5e8d70556b7bbfe083bc82d78f171b2f11bea7f6bb0fa751c95aa`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332fd17a2d98cb8c76073e7c65427788b04543b0c7b9125789ed2c642e0754bf`  
		Last Modified: Thu, 09 Nov 2017 03:57:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:0d4c387fdf41c04064ebd71b728f5a45e2e6d0ae08eb2eb008af893497125a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24118271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84529a8fe377b6b25c4e10e37547e051bdb82b52c4c0dd5ecbfdaaaedb4d190`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:00:21 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 08 Nov 2017 19:51:48 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 08 Nov 2017 19:51:48 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 08 Nov 2017 19:55:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 Nov 2017 19:55:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 08 Nov 2017 19:55:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 Nov 2017 19:55:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 19:55:31 GMT
USER [memcache]
# Wed, 08 Nov 2017 19:55:31 GMT
EXPOSE 11211/tcp
# Wed, 08 Nov 2017 19:55:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbf4ad7f1e9ec85056eca0c8cd639e06ad9e9c275b4b27246decdc82c6b43c1`  
		Last Modified: Tue, 10 Oct 2017 00:04:06 GMT  
		Size: 1.7 KB (1731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694b2ae36406c17bac746479a6bb40b3f3d6a032519172d57ab7cc451bb782f0`  
		Last Modified: Wed, 08 Nov 2017 19:59:34 GMT  
		Size: 987.4 KB (987444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d62accdd6ba2892b400cc003bec2795cb9bf81fd818db30f82e9cb3d05cbef6`  
		Last Modified: Wed, 08 Nov 2017 19:59:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392304aa1b246255d4f4cf25f5e445d3f9680c0daa5bc855822fcc296165f489`  
		Last Modified: Wed, 08 Nov 2017 19:59:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:75d148b2cde14efbea694cdfa1b70df73fb1de69b3dca2f5678b9953708954c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23720745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1c5b2486287418784ae588625701b0dbfb7ad147cb776ba5518dc0a6305d9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 12 Dec 2017 03:13:46 GMT
ENV MEMCACHED_VERSION=1.5.3
# Tue, 12 Dec 2017 03:13:48 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Tue, 12 Dec 2017 03:23:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 12 Dec 2017 03:23:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 12 Dec 2017 03:23:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 03:23:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 03:23:53 GMT
USER [memcache]
# Tue, 12 Dec 2017 03:23:55 GMT
EXPOSE 11211/tcp
# Tue, 12 Dec 2017 03:23:58 GMT
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
	-	`sha256:7c0a07bdc1f1d92585e789bdb8b3b86c112acd2f1dc12847bc7c2f5d8cfd1932`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 978.9 KB (978867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c2e82eabefc47a8e36073ce52fba9f3a538413b4b093a11526dff9cbf0b0f4`  
		Last Modified: Tue, 12 Dec 2017 03:24:14 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d34831ac18398056ad44cdf59f1a3f66454da5c354938ad9a1634ce49637d66`  
		Last Modified: Tue, 12 Dec 2017 03:24:15 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

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
