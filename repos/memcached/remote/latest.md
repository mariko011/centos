## `memcached:latest`

```console
$ docker pull memcached@sha256:772acc3f5360bb9cc6752dbaca7569221aad8436d4f8d687ce179cbb7564eff0
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

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:ee733f84806789a9a19a0223ae4cac0179bc3f9975bc64495f5111f708002353
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22129923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb31827688bf89a3012786906fbc96d751547e2f64247970086ca7c313c75cb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:38 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:09:39 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:20:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:20:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:20:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:20:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:20:32 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:20:32 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:20:34 GMT
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
	-	`sha256:53502c9d988d9f2e06dec205386e0a9f3073dfc10195feb54d767271018caa42`  
		Last Modified: Mon, 09 Oct 2017 22:20:59 GMT  
		Size: 961.5 KB (961519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143611a5f684aea0d3a570ca7c977d089586392e4b97ddd37825dcacec3ef8ee`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e804f257dd69bd1c3b895309288e64aebdb473ea6bcb29695525d113e3bc55f9`  
		Last Modified: Mon, 09 Oct 2017 22:20:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:5c785a8029098bdabe117a4eef37617c9826ce7d4778686c5113365a0cad0176
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20208831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7fff4ea94463b05cb54610bc5c6b4d669b8c5a6b65ec15fdeb4b78d038fcd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:05 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:23:07 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:23:08 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:32:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:32:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:32:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:33:00 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:33:02 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:33:03 GMT
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
	-	`sha256:343ea8ec00000f8ff80f8919cf0043c1cb7dc06b932bfe98329bef148266e70c`  
		Last Modified: Mon, 09 Oct 2017 22:33:27 GMT  
		Size: 929.5 KB (929549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73553d04e062a928b8c596ff9ef08a5be8068346e9b82eb3c5afb2917044b559`  
		Last Modified: Mon, 09 Oct 2017 22:33:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13c94531487fa83be792c67f5db183f443db051eb675818c93e4c58e2429510`  
		Last Modified: Mon, 09 Oct 2017 22:33:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:ca66586f1ab5c5447946aa59801e147be829e6335bb5ad3af626201b23acb110
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (22966658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0db14e99e7f68b4de82b214f77333a9e62cda1d5622c220873170a06299e6a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:28:53 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 03 Oct 2017 02:47:39 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 03 Oct 2017 02:47:39 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 03 Oct 2017 02:52:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 03 Oct 2017 02:52:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 03 Oct 2017 02:52:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 03 Oct 2017 02:52:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Oct 2017 02:52:58 GMT
USER [memcache]
# Tue, 03 Oct 2017 02:52:59 GMT
EXPOSE 11211/tcp
# Tue, 03 Oct 2017 02:52:59 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6665fa1f2e9808b2c4b49d3e92a04338a3e5dbe26dcf2902b5fbb42db9a8221a`  
		Last Modified: Fri, 08 Sep 2017 21:35:34 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d34c0041837ca9b08e74f897f629b5ce97270f9901f7db73b645e218274b02e`  
		Last Modified: Tue, 03 Oct 2017 02:53:27 GMT  
		Size: 2.6 MB (2627226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525ee33bdf80f9245b2a3527d578353460bc159dad068bd1e0ec792c6affbaae`  
		Last Modified: Tue, 03 Oct 2017 02:53:25 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5d789c03941afc108cef42254d041beb203b409220bc34cd631eef2ab503be`  
		Last Modified: Tue, 03 Oct 2017 02:53:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:b6b26ac5e0e364e560fe31077f7b25cb84b44f60e93deabe723e4347339eb44c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26028933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aab85f3f47120d4b0e35dd76c9a3b2297b193ca0411ac25dd307194bad4add4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:55:28 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 03 Oct 2017 18:44:21 GMT
ENV MEMCACHED_VERSION=1.5.2
# Tue, 03 Oct 2017 18:44:22 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Tue, 03 Oct 2017 18:48:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 03 Oct 2017 18:48:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 03 Oct 2017 18:48:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 03 Oct 2017 18:48:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Oct 2017 18:48:17 GMT
USER [memcache]
# Tue, 03 Oct 2017 18:48:17 GMT
EXPOSE 11211/tcp
# Tue, 03 Oct 2017 18:48:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de0e5de9f8eabf8a04dff1548c5b8fc827ac0b596e5a05f5cf1d4965fab5cf5`  
		Last Modified: Fri, 08 Sep 2017 14:59:39 GMT  
		Size: 1.7 KB (1732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997e9d5a5a4c9635b8f38cb31cb1b7d414e925ab943bce1b743a8bbaf3be0450`  
		Last Modified: Tue, 03 Oct 2017 18:48:36 GMT  
		Size: 2.9 MB (2901001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b4df2b32d4c9b5ea0726c53e34310f21a41d5c0aea8a5b2c75c6dc4b4be4a9`  
		Last Modified: Tue, 03 Oct 2017 18:48:36 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8765b352a76d6caa74f720202fa4b1609f2c8fdc9b5f2b919c3721971df75fec`  
		Last Modified: Tue, 03 Oct 2017 18:48:35 GMT  
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

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:5ba2b45b4e99d4cee62e9370e968bad3f2ff5ed9ba420298231f67a6612221fa
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23332643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770017e7fac8136a5bfde4ad6380db481907a8da9849263a7897d854135ba71d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:44 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_VERSION=1.5.2
# Mon, 09 Oct 2017 22:33:44 GMT
ENV MEMCACHED_SHA1=5d6c85fe15b5e575a563ec1bbeb01020e0132958
# Mon, 09 Oct 2017 22:37:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 09 Oct 2017 22:37:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 09 Oct 2017 22:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 09 Oct 2017 22:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:37:27 GMT
USER [memcache]
# Mon, 09 Oct 2017 22:37:28 GMT
EXPOSE 11211/tcp
# Mon, 09 Oct 2017 22:37:28 GMT
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
	-	`sha256:29969423dc6a75ba9a528ea2f8c6686ee37876b50178419c098831710ef89434`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 990.5 KB (990537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f78688d324c6730e7236b7c0b61e73a6dfc3c311feb4441f665510782f73ca`  
		Last Modified: Mon, 09 Oct 2017 22:37:41 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56850ed52078223dce0ddf24fcb8be4134aa1dc2ed6da6edb0c1015b52ac8cb`  
		Last Modified: Mon, 09 Oct 2017 22:37:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
