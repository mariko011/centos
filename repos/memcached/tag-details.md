<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.2`](#memcached152)
-	[`memcached:1.5.2-alpine`](#memcached152-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:6d2a2275515517b4f8af177dea6196e0cb388a29807c3fe203321b1e1aae1321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:1a7f4b7378450722e1fac00f3da78203aa9b29a33c3fe64a27154ada65f8c46b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25255674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed85c5f97e4a3071fc18ddaa41c6fbc4fe64f9f6e16c15e8b31b38389e91f40a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:37:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 02 Oct 2017 23:34:17 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 02 Oct 2017 23:34:17 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 02 Oct 2017 23:37:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 02 Oct 2017 23:37:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Oct 2017 23:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Oct 2017 23:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Oct 2017 23:37:43 GMT
USER [memcache]
# Mon, 02 Oct 2017 23:37:43 GMT
EXPOSE 11211/tcp
# Mon, 02 Oct 2017 23:37:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2071de9f4eeec05d24d79982d276e34b21a0eb47d684e8a0f6ff216920f9dbd4`  
		Last Modified: Tue, 19 Sep 2017 01:45:07 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801d526779aa5e4db381451fee28dddaf024b196b4e47e650e0a9dab5be352f6`  
		Last Modified: Mon, 02 Oct 2017 23:41:29 GMT  
		Size: 2.8 MB (2765454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1e66690632d0cc88a2f5f9831610c92124dcb7d380f3440e45b514f9030540`  
		Last Modified: Mon, 02 Oct 2017 23:41:28 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235e6c84810a2b4c784bda57cd75121ab29a9db450008525d7d025813d615b9`  
		Last Modified: Mon, 02 Oct 2017 23:41:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:343d8ae081ca1106c325d6cf0a19c3c2acc340270ec19812eea1f2d1f3cbe9f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25490680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42934e8960fce51082f73a170eed1d762d8fcc84d657c18a05671009236d67e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:18:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 03 Oct 2017 00:33:25 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 03 Oct 2017 00:33:28 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 03 Oct 2017 00:45:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 03 Oct 2017 00:45:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 03 Oct 2017 00:45:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 03 Oct 2017 00:45:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Oct 2017 00:45:57 GMT
USER [memcache]
# Tue, 03 Oct 2017 00:45:59 GMT
EXPOSE 11211/tcp
# Tue, 03 Oct 2017 00:46:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1a3601d5bf8b21acd6372ae2e68d3aff208607075ac8ddcc4bbb996536673c`  
		Last Modified: Fri, 08 Sep 2017 01:22:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd59f2c72998bac21ef7ff3276fd6303cff7d7b07c7b2d1d0cf06098aef552`  
		Last Modified: Tue, 03 Oct 2017 00:46:16 GMT  
		Size: 2.7 MB (2742459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efc5ab41850a9bc0069e6acf3055cd6300c5104b7128cdb08e97e7bb7439940`  
		Last Modified: Tue, 03 Oct 2017 00:46:15 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0682fdbd5b9156c013ad0865f56422b00ddd745ec9c0c66770cd06e18b9e5`  
		Last Modified: Tue, 03 Oct 2017 00:46:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:6d2a2275515517b4f8af177dea6196e0cb388a29807c3fe203321b1e1aae1321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:1a7f4b7378450722e1fac00f3da78203aa9b29a33c3fe64a27154ada65f8c46b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25255674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed85c5f97e4a3071fc18ddaa41c6fbc4fe64f9f6e16c15e8b31b38389e91f40a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:37:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 02 Oct 2017 23:34:17 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 02 Oct 2017 23:34:17 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 02 Oct 2017 23:37:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 02 Oct 2017 23:37:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Oct 2017 23:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Oct 2017 23:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Oct 2017 23:37:43 GMT
USER [memcache]
# Mon, 02 Oct 2017 23:37:43 GMT
EXPOSE 11211/tcp
# Mon, 02 Oct 2017 23:37:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2071de9f4eeec05d24d79982d276e34b21a0eb47d684e8a0f6ff216920f9dbd4`  
		Last Modified: Tue, 19 Sep 2017 01:45:07 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801d526779aa5e4db381451fee28dddaf024b196b4e47e650e0a9dab5be352f6`  
		Last Modified: Mon, 02 Oct 2017 23:41:29 GMT  
		Size: 2.8 MB (2765454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1e66690632d0cc88a2f5f9831610c92124dcb7d380f3440e45b514f9030540`  
		Last Modified: Mon, 02 Oct 2017 23:41:28 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235e6c84810a2b4c784bda57cd75121ab29a9db450008525d7d025813d615b9`  
		Last Modified: Mon, 02 Oct 2017 23:41:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:343d8ae081ca1106c325d6cf0a19c3c2acc340270ec19812eea1f2d1f3cbe9f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25490680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42934e8960fce51082f73a170eed1d762d8fcc84d657c18a05671009236d67e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:18:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 03 Oct 2017 00:33:25 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 03 Oct 2017 00:33:28 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 03 Oct 2017 00:45:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 03 Oct 2017 00:45:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 03 Oct 2017 00:45:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 03 Oct 2017 00:45:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Oct 2017 00:45:57 GMT
USER [memcache]
# Tue, 03 Oct 2017 00:45:59 GMT
EXPOSE 11211/tcp
# Tue, 03 Oct 2017 00:46:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1a3601d5bf8b21acd6372ae2e68d3aff208607075ac8ddcc4bbb996536673c`  
		Last Modified: Fri, 08 Sep 2017 01:22:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd59f2c72998bac21ef7ff3276fd6303cff7d7b07c7b2d1d0cf06098aef552`  
		Last Modified: Tue, 03 Oct 2017 00:46:16 GMT  
		Size: 2.7 MB (2742459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efc5ab41850a9bc0069e6acf3055cd6300c5104b7128cdb08e97e7bb7439940`  
		Last Modified: Tue, 03 Oct 2017 00:46:15 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0682fdbd5b9156c013ad0865f56422b00ddd745ec9c0c66770cd06e18b9e5`  
		Last Modified: Tue, 03 Oct 2017 00:46:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.2`

```console
$ docker pull memcached@sha256:6d2a2275515517b4f8af177dea6196e0cb388a29807c3fe203321b1e1aae1321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `memcached:1.5.2` - linux; amd64

```console
$ docker pull memcached@sha256:1a7f4b7378450722e1fac00f3da78203aa9b29a33c3fe64a27154ada65f8c46b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25255674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed85c5f97e4a3071fc18ddaa41c6fbc4fe64f9f6e16c15e8b31b38389e91f40a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:37:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 02 Oct 2017 23:34:17 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 02 Oct 2017 23:34:17 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 02 Oct 2017 23:37:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 02 Oct 2017 23:37:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Oct 2017 23:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Oct 2017 23:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Oct 2017 23:37:43 GMT
USER [memcache]
# Mon, 02 Oct 2017 23:37:43 GMT
EXPOSE 11211/tcp
# Mon, 02 Oct 2017 23:37:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2071de9f4eeec05d24d79982d276e34b21a0eb47d684e8a0f6ff216920f9dbd4`  
		Last Modified: Tue, 19 Sep 2017 01:45:07 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801d526779aa5e4db381451fee28dddaf024b196b4e47e650e0a9dab5be352f6`  
		Last Modified: Mon, 02 Oct 2017 23:41:29 GMT  
		Size: 2.8 MB (2765454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1e66690632d0cc88a2f5f9831610c92124dcb7d380f3440e45b514f9030540`  
		Last Modified: Mon, 02 Oct 2017 23:41:28 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235e6c84810a2b4c784bda57cd75121ab29a9db450008525d7d025813d615b9`  
		Last Modified: Mon, 02 Oct 2017 23:41:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.2` - linux; ppc64le

```console
$ docker pull memcached@sha256:343d8ae081ca1106c325d6cf0a19c3c2acc340270ec19812eea1f2d1f3cbe9f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25490680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42934e8960fce51082f73a170eed1d762d8fcc84d657c18a05671009236d67e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:18:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 03 Oct 2017 00:33:25 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 03 Oct 2017 00:33:28 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 03 Oct 2017 00:45:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 03 Oct 2017 00:45:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 03 Oct 2017 00:45:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 03 Oct 2017 00:45:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Oct 2017 00:45:57 GMT
USER [memcache]
# Tue, 03 Oct 2017 00:45:59 GMT
EXPOSE 11211/tcp
# Tue, 03 Oct 2017 00:46:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1a3601d5bf8b21acd6372ae2e68d3aff208607075ac8ddcc4bbb996536673c`  
		Last Modified: Fri, 08 Sep 2017 01:22:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd59f2c72998bac21ef7ff3276fd6303cff7d7b07c7b2d1d0cf06098aef552`  
		Last Modified: Tue, 03 Oct 2017 00:46:16 GMT  
		Size: 2.7 MB (2742459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efc5ab41850a9bc0069e6acf3055cd6300c5104b7128cdb08e97e7bb7439940`  
		Last Modified: Tue, 03 Oct 2017 00:46:15 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0682fdbd5b9156c013ad0865f56422b00ddd745ec9c0c66770cd06e18b9e5`  
		Last Modified: Tue, 03 Oct 2017 00:46:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.2-alpine`

```console
$ docker pull memcached@sha256:a3ba0e45d31ce60450a7579e914bf900e6ff65baa5c200e5c52fbc9c3078e587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5.2-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:e9e671f5411bc07354fe6e1806c5686527a743ca97ddc4e42877027ca71ebbcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3725518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfb8def40f93f4a05a53be25cb633d4c1cd206d51478880509f2b2868960fdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:41:38 GMT
RUN adduser -D memcache
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 02 Oct 2017 23:41:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Oct 2017 23:41:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Oct 2017 23:41:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Oct 2017 23:41:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Oct 2017 23:41:11 GMT
USER [memcache]
# Mon, 02 Oct 2017 23:41:11 GMT
EXPOSE 11211/tcp
# Mon, 02 Oct 2017 23:41:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5342366c11be2dc0ad25a1e84eedb96da23a1d63c55378df80d256b737b91664`  
		Last Modified: Tue, 19 Sep 2017 01:45:30 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2e26817956fadfaea406fe860115c6de076483607c8799fab2077e5f1e0916`  
		Last Modified: Mon, 02 Oct 2017 23:41:56 GMT  
		Size: 1.7 MB (1733467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa96d76da4bfd4db47a5d2a04e6e87f5f5ec9111b0cb2b0099422f4f21f77e10`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d641f7cd319b96a7e84fea23fbdc38e2a964f1f17a6b81c3bbfba286e7cd90c9`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:a3ba0e45d31ce60450a7579e914bf900e6ff65baa5c200e5c52fbc9c3078e587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:e9e671f5411bc07354fe6e1806c5686527a743ca97ddc4e42877027ca71ebbcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3725518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfb8def40f93f4a05a53be25cb633d4c1cd206d51478880509f2b2868960fdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:41:38 GMT
RUN adduser -D memcache
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 02 Oct 2017 23:41:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Oct 2017 23:41:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Oct 2017 23:41:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Oct 2017 23:41:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Oct 2017 23:41:11 GMT
USER [memcache]
# Mon, 02 Oct 2017 23:41:11 GMT
EXPOSE 11211/tcp
# Mon, 02 Oct 2017 23:41:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5342366c11be2dc0ad25a1e84eedb96da23a1d63c55378df80d256b737b91664`  
		Last Modified: Tue, 19 Sep 2017 01:45:30 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2e26817956fadfaea406fe860115c6de076483607c8799fab2077e5f1e0916`  
		Last Modified: Mon, 02 Oct 2017 23:41:56 GMT  
		Size: 1.7 MB (1733467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa96d76da4bfd4db47a5d2a04e6e87f5f5ec9111b0cb2b0099422f4f21f77e10`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d641f7cd319b96a7e84fea23fbdc38e2a964f1f17a6b81c3bbfba286e7cd90c9`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:a3ba0e45d31ce60450a7579e914bf900e6ff65baa5c200e5c52fbc9c3078e587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:e9e671f5411bc07354fe6e1806c5686527a743ca97ddc4e42877027ca71ebbcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3725518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfb8def40f93f4a05a53be25cb633d4c1cd206d51478880509f2b2868960fdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:41:38 GMT
RUN adduser -D memcache
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 02 Oct 2017 23:41:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Oct 2017 23:41:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Oct 2017 23:41:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Oct 2017 23:41:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Oct 2017 23:41:11 GMT
USER [memcache]
# Mon, 02 Oct 2017 23:41:11 GMT
EXPOSE 11211/tcp
# Mon, 02 Oct 2017 23:41:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5342366c11be2dc0ad25a1e84eedb96da23a1d63c55378df80d256b737b91664`  
		Last Modified: Tue, 19 Sep 2017 01:45:30 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2e26817956fadfaea406fe860115c6de076483607c8799fab2077e5f1e0916`  
		Last Modified: Mon, 02 Oct 2017 23:41:56 GMT  
		Size: 1.7 MB (1733467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa96d76da4bfd4db47a5d2a04e6e87f5f5ec9111b0cb2b0099422f4f21f77e10`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d641f7cd319b96a7e84fea23fbdc38e2a964f1f17a6b81c3bbfba286e7cd90c9`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:a3ba0e45d31ce60450a7579e914bf900e6ff65baa5c200e5c52fbc9c3078e587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:e9e671f5411bc07354fe6e1806c5686527a743ca97ddc4e42877027ca71ebbcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3725518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfb8def40f93f4a05a53be25cb633d4c1cd206d51478880509f2b2868960fdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:41:38 GMT
RUN adduser -D memcache
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 02 Oct 2017 23:37:58 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 02 Oct 2017 23:41:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Oct 2017 23:41:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Oct 2017 23:41:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Oct 2017 23:41:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Oct 2017 23:41:11 GMT
USER [memcache]
# Mon, 02 Oct 2017 23:41:11 GMT
EXPOSE 11211/tcp
# Mon, 02 Oct 2017 23:41:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5342366c11be2dc0ad25a1e84eedb96da23a1d63c55378df80d256b737b91664`  
		Last Modified: Tue, 19 Sep 2017 01:45:30 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2e26817956fadfaea406fe860115c6de076483607c8799fab2077e5f1e0916`  
		Last Modified: Mon, 02 Oct 2017 23:41:56 GMT  
		Size: 1.7 MB (1733467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa96d76da4bfd4db47a5d2a04e6e87f5f5ec9111b0cb2b0099422f4f21f77e10`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d641f7cd319b96a7e84fea23fbdc38e2a964f1f17a6b81c3bbfba286e7cd90c9`  
		Last Modified: Mon, 02 Oct 2017 23:41:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:6d2a2275515517b4f8af177dea6196e0cb388a29807c3fe203321b1e1aae1321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:1a7f4b7378450722e1fac00f3da78203aa9b29a33c3fe64a27154ada65f8c46b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25255674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed85c5f97e4a3071fc18ddaa41c6fbc4fe64f9f6e16c15e8b31b38389e91f40a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:37:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 02 Oct 2017 23:34:17 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 02 Oct 2017 23:34:17 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 02 Oct 2017 23:37:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 02 Oct 2017 23:37:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Oct 2017 23:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Oct 2017 23:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Oct 2017 23:37:43 GMT
USER [memcache]
# Mon, 02 Oct 2017 23:37:43 GMT
EXPOSE 11211/tcp
# Mon, 02 Oct 2017 23:37:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2071de9f4eeec05d24d79982d276e34b21a0eb47d684e8a0f6ff216920f9dbd4`  
		Last Modified: Tue, 19 Sep 2017 01:45:07 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801d526779aa5e4db381451fee28dddaf024b196b4e47e650e0a9dab5be352f6`  
		Last Modified: Mon, 02 Oct 2017 23:41:29 GMT  
		Size: 2.8 MB (2765454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1e66690632d0cc88a2f5f9831610c92124dcb7d380f3440e45b514f9030540`  
		Last Modified: Mon, 02 Oct 2017 23:41:28 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235e6c84810a2b4c784bda57cd75121ab29a9db450008525d7d025813d615b9`  
		Last Modified: Mon, 02 Oct 2017 23:41:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:343d8ae081ca1106c325d6cf0a19c3c2acc340270ec19812eea1f2d1f3cbe9f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25490680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42934e8960fce51082f73a170eed1d762d8fcc84d657c18a05671009236d67e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:18:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 03 Oct 2017 00:33:25 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 03 Oct 2017 00:33:28 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 03 Oct 2017 00:45:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 03 Oct 2017 00:45:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 03 Oct 2017 00:45:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 03 Oct 2017 00:45:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Oct 2017 00:45:57 GMT
USER [memcache]
# Tue, 03 Oct 2017 00:45:59 GMT
EXPOSE 11211/tcp
# Tue, 03 Oct 2017 00:46:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1a3601d5bf8b21acd6372ae2e68d3aff208607075ac8ddcc4bbb996536673c`  
		Last Modified: Fri, 08 Sep 2017 01:22:42 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd59f2c72998bac21ef7ff3276fd6303cff7d7b07c7b2d1d0cf06098aef552`  
		Last Modified: Tue, 03 Oct 2017 00:46:16 GMT  
		Size: 2.7 MB (2742459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efc5ab41850a9bc0069e6acf3055cd6300c5104b7128cdb08e97e7bb7439940`  
		Last Modified: Tue, 03 Oct 2017 00:46:15 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0682fdbd5b9156c013ad0865f56422b00ddd745ec9c0c66770cd06e18b9e5`  
		Last Modified: Tue, 03 Oct 2017 00:46:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
