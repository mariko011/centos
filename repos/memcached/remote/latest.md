## `memcached:latest`

```console
$ docker pull memcached@sha256:013536d76a39066b3dc9592e4db7d14d8e45a171dfc946fcff69e41550e435d4
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
$ docker pull memcached@sha256:3063ee7bb9406d6bad0e896fd0ef6d155d88b739d0b8f91e9c126f7024ec58d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23462833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269b8cdf044f4e1f1d49105caf4fd5db501416605be3eb95f69ec6399033a961`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:03:40 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 12 Dec 2017 05:03:40 GMT
ENV MEMCACHED_VERSION=1.5.3
# Tue, 12 Dec 2017 05:03:41 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Tue, 12 Dec 2017 05:07:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 12 Dec 2017 05:07:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 12 Dec 2017 05:07:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 05:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 05:07:13 GMT
USER [memcache]
# Tue, 12 Dec 2017 05:07:19 GMT
EXPOSE 11211/tcp
# Tue, 12 Dec 2017 05:07:19 GMT
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
	-	`sha256:009da8a5ed2859f74cf59889d8b718ed96b27c0ca2acd58afb1d6aadfaa4a3cd`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 975.0 KB (974958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed99e798efbdd4f416c21077284d13280fa86d63ecc3e477021e877ef0434f29`  
		Last Modified: Tue, 12 Dec 2017 05:07:43 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a498cc05362d19593bf577955e5945d9b5c3754a3f51b682f11f971169fc073`  
		Last Modified: Tue, 12 Dec 2017 05:07:44 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:874072115cbd6f8a01421db7915bd389c5847c2b70c9342685ebca23786af98a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22128029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0872d4c651908eae13edbbe7eb9e585d1bc06384c7c606aaa8871d5270a44496`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:59:15 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 13 Dec 2017 02:59:15 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 13 Dec 2017 02:59:16 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 13 Dec 2017 03:10:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 13 Dec 2017 03:10:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 13 Dec 2017 03:10:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Dec 2017 03:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 03:10:42 GMT
USER [memcache]
# Wed, 13 Dec 2017 03:10:43 GMT
EXPOSE 11211/tcp
# Wed, 13 Dec 2017 03:10:44 GMT
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
	-	`sha256:5af2c3a77262a9131d588b8448be28f35ecdb86f4a42078779b2620eaadaeeff`  
		Last Modified: Wed, 13 Dec 2017 03:11:08 GMT  
		Size: 965.2 KB (965245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4937eb2a00e66beab2137172886e91f8017b71bc082546418b7c4dc7d3e5b8ff`  
		Last Modified: Wed, 13 Dec 2017 03:11:06 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcec92f18eb773eaf1c0861647c0baf62c50890ce94114fad1ae8f08a24b418`  
		Last Modified: Wed, 13 Dec 2017 03:11:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:e9fae86125759e954d9f4abb06477c99bc6d85d4267b952f20450c8324c6496e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20206870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e1b813868675f07c24e5e04c8f83d10bf4559bd1ab8e96bb0981898bcae4e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:01:00 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 13 Dec 2017 02:01:01 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 13 Dec 2017 02:01:01 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 13 Dec 2017 02:11:00 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 13 Dec 2017 02:11:02 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 13 Dec 2017 02:11:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Dec 2017 02:11:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 02:11:15 GMT
USER [memcache]
# Wed, 13 Dec 2017 02:11:16 GMT
EXPOSE 11211/tcp
# Wed, 13 Dec 2017 02:11:17 GMT
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
	-	`sha256:beda5e04c7df9306537a0af883a871e834666b71ad957c8ca4f5491075146414`  
		Last Modified: Wed, 13 Dec 2017 02:11:30 GMT  
		Size: 933.7 KB (933693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a806e1459f1223fbd83a3fd4514c8753ee4b03a1b270649c282067a3877c81`  
		Last Modified: Wed, 13 Dec 2017 02:11:28 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87e6a5d91b03b79015168a60d9f8b3aac06fcb5ccf5c765627050b4308d05b3`  
		Last Modified: Wed, 13 Dec 2017 02:11:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:dcefdefdf46fc8b255b8a35fa1b830460cdcc708d9245ce752fa9862965fc21d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21280382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e2c5876c3ce02f6a55411f368fba18bdf231d32f19bf793d02350132beac5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 03:47:42 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 20 Dec 2017 03:47:43 GMT
ENV MEMCACHED_VERSION=1.5.3
# Wed, 20 Dec 2017 03:47:44 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Wed, 20 Dec 2017 03:53:18 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 20 Dec 2017 03:53:20 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 20 Dec 2017 03:53:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 20 Dec 2017 03:53:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Dec 2017 03:53:25 GMT
USER [memcache]
# Wed, 20 Dec 2017 03:53:26 GMT
EXPOSE 11211/tcp
# Wed, 20 Dec 2017 03:53:28 GMT
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
	-	`sha256:07d0f8372efa6546f2abcb54a59e929bfdae94f4744b90aa628e4ebe6a6f6004`  
		Last Modified: Wed, 20 Dec 2017 03:54:06 GMT  
		Size: 947.0 KB (946951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bddba58e3862ceaa55506e1e30ab0469c75a8aceeb45e8c258f84bc6eac4fa5`  
		Last Modified: Wed, 20 Dec 2017 03:54:36 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc84e0879b017348bc15a13be75e7c527f4e7b376a8f9cae7bca563d51e95c5`  
		Last Modified: Wed, 20 Dec 2017 03:54:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:e7384c2b39007dfab09c6f223abbf3b3ab0c2abd0394a683d6ca091ea455e2e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24112035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e318d1625ebd43dac576f3c890c621bf975d17aebd835d4678988e8f76ed766f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:49:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 12 Dec 2017 17:49:32 GMT
ENV MEMCACHED_VERSION=1.5.3
# Tue, 12 Dec 2017 17:49:32 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Tue, 12 Dec 2017 17:53:25 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 12 Dec 2017 17:55:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 12 Dec 2017 17:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 17:55:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 17:55:36 GMT
USER [memcache]
# Tue, 12 Dec 2017 17:55:37 GMT
EXPOSE 11211/tcp
# Tue, 12 Dec 2017 17:55:37 GMT
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
	-	`sha256:02b7d0870bc936cd9b617d8939818084eca7a49f41bf56c83a0aec4ffe758154`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 987.4 KB (987434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f21e038ef8682e6f48c4456d82abc11408114708428fdb928f5e76dbd8b63c`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628b3664f3ae0d99c94517d7f4b51af6176b111517cb4b36d37d981ba8d6e62c`  
		Last Modified: Tue, 12 Dec 2017 17:55:59 GMT  
		Size: 118.0 B  
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
$ docker pull memcached@sha256:831ff2df2f0bbe6d475c5a94a66836bbebb4df56ae35a93ccf5ada2b5623e5a0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23331612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f882092b4ab2c97c26ca643ac7874e37f88b573203cd87879672d1f29faeae0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 12 Dec 2017 07:29:36 GMT
ENV MEMCACHED_VERSION=1.5.3
# Tue, 12 Dec 2017 07:29:37 GMT
ENV MEMCACHED_SHA1=9331ef99f1b7fedfe476062faed8c0ffb5528d8f
# Tue, 12 Dec 2017 07:33:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 12 Dec 2017 07:33:11 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:33:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 07:33:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:33:12 GMT
USER [memcache]
# Tue, 12 Dec 2017 07:33:13 GMT
EXPOSE 11211/tcp
# Tue, 12 Dec 2017 07:33:13 GMT
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
	-	`sha256:efb0c3a383106f0d81b2982abd08c3538d6847d8c190347a9c82a1f8ab770f15`  
		Last Modified: Tue, 12 Dec 2017 07:33:35 GMT  
		Size: 995.6 KB (995599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811f8ab2e32694d2a2a75ff9820835651171acc6ebb86e6900a2ff8e9ebcbce4`  
		Last Modified: Tue, 12 Dec 2017 07:33:34 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4fdc2f61203aa1cb58109f70167bf3b88ebed4e5606d9cfab035ef00f1953`  
		Last Modified: Tue, 12 Dec 2017 07:33:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
