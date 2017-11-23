<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haproxy`

-	[`haproxy:1`](#haproxy1)
-	[`haproxy:1.4`](#haproxy14)
-	[`haproxy:1.4.27`](#haproxy1427)
-	[`haproxy:1.4.27-alpine`](#haproxy1427-alpine)
-	[`haproxy:1.4-alpine`](#haproxy14-alpine)
-	[`haproxy:1.5`](#haproxy15)
-	[`haproxy:1.5.19`](#haproxy1519)
-	[`haproxy:1.5.19-alpine`](#haproxy1519-alpine)
-	[`haproxy:1.5-alpine`](#haproxy15-alpine)
-	[`haproxy:1.6`](#haproxy16)
-	[`haproxy:1.6.13`](#haproxy1613)
-	[`haproxy:1.6.13-alpine`](#haproxy1613-alpine)
-	[`haproxy:1.6-alpine`](#haproxy16-alpine)
-	[`haproxy:1.7`](#haproxy17)
-	[`haproxy:1.7.9`](#haproxy179)
-	[`haproxy:1.7.9-alpine`](#haproxy179-alpine)
-	[`haproxy:1.7-alpine`](#haproxy17-alpine)
-	[`haproxy:1.8-rc`](#haproxy18-rc)
-	[`haproxy:1.8-rc4`](#haproxy18-rc4)
-	[`haproxy:1.8-rc4-alpine`](#haproxy18-rc4-alpine)
-	[`haproxy:1.8-rc-alpine`](#haproxy18-rc-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:alpine`](#haproxyalpine)
-	[`haproxy:latest`](#haproxylatest)
-	[`haproxy:rc`](#haproxyrc)
-	[`haproxy:rc-alpine`](#haproxyrc-alpine)

## `haproxy:1`

```console
$ docker pull haproxy@sha256:c800122d1bbaa83a89ec1ec4a5ae4a65808014083fff401c4f74d1cdddb9532a
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

### `haproxy:1` - linux; amd64

```console
$ docker pull haproxy@sha256:93f13da4fad86d45acb8d798184600b43ee312560c5482c70cde3cf33ca43d74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57805478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfbf9abf35d29acf8a6eb04cb074c69024680a9cccf6dffda26ba94f8eb7f5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:22:21 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:35:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:37:01 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 04 Nov 2017 18:37:02 GMT
ENV HAPROXY_VERSION=1.7.9
# Sat, 04 Nov 2017 18:37:02 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Sat, 04 Nov 2017 18:37:49 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:21:43 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:21:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:21:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bea5eb3b594bb7fe70986b3b94a1c8e10ae64eb0d629d432f1f040407ae4ff`  
		Last Modified: Sat, 04 Nov 2017 05:28:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1faa1a99a6c9f063aaec96dc357a7fd73386bdc0ed80d3217c993300d19ded`  
		Last Modified: Sat, 04 Nov 2017 18:38:37 GMT  
		Size: 2.0 MB (2022663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b93f1a522d86e0a1f5e3389c26081f35931413f942e159e1270c16a0c3429df`  
		Last Modified: Sat, 04 Nov 2017 18:38:50 GMT  
		Size: 3.2 MB (3187063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27ef55b983d705ad846a6230d337a47f6117be9400e6a968feedf50b536871d`  
		Last Modified: Thu, 23 Nov 2017 01:28:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:9d4d1b447ecce5006fc94883443e30ef8c1dd36692e31b169653bbb7c413ee14
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55965966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24526559d37d0d5f7ad7e84f745371abb74dc9bce8928daeac1f20577a7088ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:15:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:17:22 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:17:23 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:17:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:17:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdec31884097071ad55a984ea9ec5cdb5f3ce413a0f052deaf919135ab24fb7a`  
		Last Modified: Mon, 09 Oct 2017 22:17:54 GMT  
		Size: 1.8 MB (1788308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b230c8b8513827b0873c69aa43014e82adf9ab3129af7a5e09797d1bfff3d`  
		Last Modified: Mon, 09 Oct 2017 22:18:02 GMT  
		Size: 3.3 MB (3297196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85db90d0b4842330b5fbc0d8ef492a3cb24eb8f2e6b2e44ade185f47673a2cd4`  
		Last Modified: Mon, 09 Oct 2017 22:18:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:963652da29bee31f8bdb238dc79bcc569d1eae325415b0c4da418c1724cefce7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53642317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:670c8073206106df1571cb60f88eda315ba93c23e8e2db77149662a3b60b240c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:22:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:32 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:23:33 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:23:33 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:24:33 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:24:34 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:24:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:24:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451372fb42d39916c53943f9b5b45c8a337bddfc34a106620c481e2af578d924`  
		Last Modified: Mon, 09 Oct 2017 22:25:11 GMT  
		Size: 1.7 MB (1710751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535936c005ff8f2acb280ff75738b14facefb87f1d8206aa6e9355ad6620a901`  
		Last Modified: Mon, 09 Oct 2017 22:25:23 GMT  
		Size: 3.2 MB (3244687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae277e38475c4d8dc68411963815d2aabfc9585a0dbc72a77ad0cd31716a13`  
		Last Modified: Mon, 09 Oct 2017 22:25:25 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:908a11b5ff87604b0f2542660d6c3db51dacdcf56e32beade864af08130612e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55063727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb02ff2765001e74565eac8052078939e106b229a1ceecea752a765be2dadbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:47:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:14 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 23:50:16 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 23:50:17 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 23:52:44 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:52:45 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:52:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:52:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be6c2ea89b016385ef444da5df4e04d7d7efe719badc6b5553eaa0fb4a7bf18`  
		Last Modified: Mon, 09 Oct 2017 23:54:22 GMT  
		Size: 1.8 MB (1814020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a569b04a75908431ab7ef495e419aa2eadc63acd49ca96908cf95b53f98df0`  
		Last Modified: Mon, 09 Oct 2017 23:54:47 GMT  
		Size: 3.3 MB (3319827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b1ea36bd9b11b7a02c83f10a90a9fb828e62090159ae59b1ee46df0a56e97b`  
		Last Modified: Mon, 09 Oct 2017 23:54:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; 386

```console
$ docker pull haproxy@sha256:42eead36ae99a6504905ccd8507b73d26a4b0f954616c1213e8f1ccbcceb780f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59953829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19a275c16c6b9a500cadb4446c9c60282c4a6baa675541a29a82e588e6e309e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:54:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 23:57:25 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:57:25 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:57:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:57:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c536ad191013d8dbaa4b62a373a437a7ef9d1bafcde9479aa41a13e59c2ee`  
		Last Modified: Mon, 09 Oct 2017 23:58:13 GMT  
		Size: 4.1 MB (4106200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2634265724bfa049a2fc470154e81f5c7f4570bb2fed38526ad337076e351d`  
		Last Modified: Mon, 09 Oct 2017 23:58:30 GMT  
		Size: 3.1 MB (3073210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df862f9c23d7cfa5a3d6e5006af8d9ffd1081364eee45b9d4c99d98c9c08fce`  
		Last Modified: Mon, 09 Oct 2017 23:58:28 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4d7cb81313d8bd8e1ea9bb0f958d3e902cd1ef487dad685dc018c7c2742b1d8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57118208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789d7791fbe7fbf5ef73c5b89e351683c4fbb832ffe851528a4e596d3c31b5ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:02:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:59 GMT
ENV HAPROXY_MAJOR=1.7
# Tue, 10 Oct 2017 01:12:04 GMT
ENV HAPROXY_VERSION=1.7.9
# Tue, 10 Oct 2017 01:12:08 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Tue, 10 Oct 2017 01:20:49 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:20:54 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 10 Oct 2017 01:20:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:21:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9729b12eba285f16c1cc872fe7fb77f22feb96259f3ca0ae16e305194b32255e`  
		Last Modified: Tue, 10 Oct 2017 01:21:52 GMT  
		Size: 1.9 MB (1930073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62858fb551065f2e52f39002873423dcf5fce93b9b2748e04d2d596479968db6`  
		Last Modified: Tue, 10 Oct 2017 01:22:07 GMT  
		Size: 3.4 MB (3377827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b77a8b897124ce62df02e4250eebbc87c1766221e6249018a50808b4a33c2bb`  
		Last Modified: Tue, 10 Oct 2017 01:22:06 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1` - linux; s390x

```console
$ docker pull haproxy@sha256:d2e85a3e4da80a1d0cdd891771cd7a5bae50fa33c2a38db0bbb0d4b5544e50eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58235638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecef877761616b530a1ccf7488c772f6cf743054666c977621f474db5da21dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:30:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:32:29 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:32:29 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:32:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:32:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e49e95a1e4505b2125ac65178be586bc90d905dba13a71f9c6ba626f92c1f7a`  
		Last Modified: Mon, 09 Oct 2017 22:33:02 GMT  
		Size: 2.0 MB (2008744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2761b6d6d4d1fea42b6f876c1ffd54643c2d65480288b761075b4b24a4f8a578`  
		Last Modified: Mon, 09 Oct 2017 22:33:12 GMT  
		Size: 3.4 MB (3437460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2de5a18b4f93e88aa73f9bfc87a9fe7bf3a6ead53f5e34079470f4798c1348`  
		Last Modified: Mon, 09 Oct 2017 22:33:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4`

```console
$ docker pull haproxy@sha256:3508989c9882f11a8dbf8b575167762ef8b1336ae5f911154a3704563672b20a
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

### `haproxy:1.4` - linux; amd64

```console
$ docker pull haproxy@sha256:b047e5245c946b6d69662afefb3556f1fd297608e53299fea4dea11aa9cd73cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55923642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76c2d182b7dfe0275f196cdb3c353a8233409ed5aaba8d9d47064ec5c513f31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:32:05 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:32:05 GMT
ENV HAPROXY_MAJOR=1.4
# Sat, 04 Nov 2017 18:32:05 GMT
ENV HAPROXY_VERSION=1.4.27
# Sat, 04 Nov 2017 18:32:05 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Sat, 04 Nov 2017 18:34:33 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:20:40 GMT
COPY file:83c90b36b26d86ea24256f7a3defe8dd8336279ae09c6afed591c515004575c1 in / 
# Thu, 23 Nov 2017 01:20:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:20:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90208680db4ea34bb3674bc4ea08fbd7ffb00563dfae50d49a496900707801da`  
		Last Modified: Sat, 04 Nov 2017 18:38:07 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613913ef1079be8cd36c2444c2b6f7738b3b5ea99dcb260ff82774ecb6bc805d`  
		Last Modified: Sat, 04 Nov 2017 18:38:08 GMT  
		Size: 3.3 MB (3327152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b82968384ed0e8702bcc28eb1d9188531e3c8674f3b604b0b00a491ee7ba52`  
		Last Modified: Thu, 23 Nov 2017 01:27:07 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:6866b9885bd507821bb8c8c02cc97b68d5c1458915e772413cc2a0ecfc211620
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54108803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316dbdf9b3c079166a0caf5122f9eafae8ccfd900ba48a59a00c66a65f0127c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:24 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:24 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 22:10:24 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 22:10:25 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 22:11:34 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:11:35 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 22:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:11:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196e0726d4612fddd4ddb1197921c3362ece131299910ac55e78585ecb0aa2f5`  
		Last Modified: Mon, 09 Oct 2017 22:17:36 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171291dfaad19b203eadcb7b18fde504b523ac2836a08c4b646d87ea1e12e315`  
		Last Modified: Mon, 09 Oct 2017 22:17:37 GMT  
		Size: 3.2 MB (3227619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a611065c2dd35d29f241f065d2e429967a229b8bf0294874a4fbf7e29d231d2`  
		Last Modified: Mon, 09 Oct 2017 22:17:37 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6331f92e0380296a8a22e83e9d8122660fa82d250330363307e45f0ae5d3f9e1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51803822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a7a1db20be884238f441948e214dbd2763567acfb365f86ce60c4c2a09c1cec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:17 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:17 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 22:17:17 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 22:17:18 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 22:18:44 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:18:45 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 22:18:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:18:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aeb3348935efc55834652855dd450fdeae04c118042de8d8cfd0a74abe854c0`  
		Last Modified: Mon, 09 Oct 2017 22:24:45 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54735f1d8ea2e2501306b2df01a68c685242d8281b073ec4b667bc2ae1321706`  
		Last Modified: Mon, 09 Oct 2017 22:24:47 GMT  
		Size: 3.1 MB (3116220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c15bedf40f4f4662e2dd9ec3004ffe8ba45ee2b4add6334744c332662932f1f`  
		Last Modified: Mon, 09 Oct 2017 22:24:45 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:2cd3a25542a9f2cb91799e4314435c76d4f1a6d69f5cc02685706088d5524ab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53113856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6f6140ce7dceddb17dd431774d962ad90d058555f491fd7c2ff0e6f5d8b39d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:38:59 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:39:00 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 23:39:00 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 23:39:01 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 23:42:47 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:42:48 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 23:42:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:42:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813a57b3d34527d082cf986ce29d2392ca18b4524d6936a7e6063f0dd59af909`  
		Last Modified: Mon, 09 Oct 2017 23:53:22 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec5bc3383326d7014338dbb90ee1424f8773477b11cddea72a3346a2d44c51d`  
		Last Modified: Mon, 09 Oct 2017 23:53:24 GMT  
		Size: 3.2 MB (3183270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de995af26b24db669b50b32f44b73943d776d03ba69c3807fb514b3908afd5b0`  
		Last Modified: Mon, 09 Oct 2017 23:53:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4` - linux; 386

```console
$ docker pull haproxy@sha256:a2ce0f4a3708991580b64aecd8f788daf749016edae90fca4ba074d3ffb7cabf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56123387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757503b0d727a419adbb2140d3b83e8e158e8d84bb894b88af1eaba241d053b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:49:58 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:49:58 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 23:49:59 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 23:49:59 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 23:51:05 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:51:05 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 23:51:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:51:05 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352952f8f131fffba10060ee43c4839508680c488310b43ac79c160934b5f1a5`  
		Last Modified: Mon, 09 Oct 2017 23:57:40 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee69aa346a431beeb62d1fa056381018a2fca430695cfc5ac64a202198996681`  
		Last Modified: Mon, 09 Oct 2017 23:57:41 GMT  
		Size: 3.3 MB (3348277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f6353d83993a33926ae69c35c55f79d94ba2f1e2e3c31203b4ec50026751e9`  
		Last Modified: Mon, 09 Oct 2017 23:57:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4` - linux; ppc64le

```console
$ docker pull haproxy@sha256:2311e166647ac100f445f6641b520a0efd449e8f15503837af2eeb69ad7d710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55132777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad72f65d7c2506b452c8fc6f30828efcc5276ed53b0287d3dac289aafa638f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:45:16 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:21 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 10 Oct 2017 00:45:26 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 10 Oct 2017 00:45:29 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 10 Oct 2017 00:54:21 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:54:23 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 10 Oct 2017 00:54:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:54:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987baa7c1d140f374021b15c25e08b1723201bfccbf88da202db5918d9668cae`  
		Last Modified: Tue, 10 Oct 2017 01:21:21 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5934d092893c57b2f6de4b6133ed9736a68489566cd9734cb9430042181504f4`  
		Last Modified: Tue, 10 Oct 2017 01:21:22 GMT  
		Size: 3.3 MB (3321738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a87b665d6ebc4313bd9e64a07924f11c0fdecbae84e7e0a24b2c88c15b6abed`  
		Last Modified: Tue, 10 Oct 2017 01:21:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4` - linux; s390x

```console
$ docker pull haproxy@sha256:b508886cf23db141f7da517bebabe0fc06f57fc3dedaf3a5fb2feb25a24fcc4b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56204830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c93b47b8f75d95a00adf246fa29c293b02d8bc37efb00676fc5f4c7bfb32c0e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:47 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:47 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 22:28:48 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 22:28:48 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 22:29:26 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:29:26 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 22:29:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:29:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe10769dedaff42cbf5f3564e8cf027de3b614b0b9309f0c0197525b5c4df934`  
		Last Modified: Mon, 09 Oct 2017 22:32:42 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c134cb52bd0b959e04c721af3874b3d579d45dbda89d21152d14cd99d1e92bd`  
		Last Modified: Mon, 09 Oct 2017 22:32:43 GMT  
		Size: 3.4 MB (3414686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd8428a053fabe41584ca8c77cc3fa8503409efa1ffa13557dcb66631d2954f`  
		Last Modified: Mon, 09 Oct 2017 22:32:43 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4.27`

```console
$ docker pull haproxy@sha256:3508989c9882f11a8dbf8b575167762ef8b1336ae5f911154a3704563672b20a
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

### `haproxy:1.4.27` - linux; amd64

```console
$ docker pull haproxy@sha256:b047e5245c946b6d69662afefb3556f1fd297608e53299fea4dea11aa9cd73cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.9 MB (55923642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76c2d182b7dfe0275f196cdb3c353a8233409ed5aaba8d9d47064ec5c513f31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:32:05 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:32:05 GMT
ENV HAPROXY_MAJOR=1.4
# Sat, 04 Nov 2017 18:32:05 GMT
ENV HAPROXY_VERSION=1.4.27
# Sat, 04 Nov 2017 18:32:05 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Sat, 04 Nov 2017 18:34:33 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:20:40 GMT
COPY file:83c90b36b26d86ea24256f7a3defe8dd8336279ae09c6afed591c515004575c1 in / 
# Thu, 23 Nov 2017 01:20:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:20:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90208680db4ea34bb3674bc4ea08fbd7ffb00563dfae50d49a496900707801da`  
		Last Modified: Sat, 04 Nov 2017 18:38:07 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613913ef1079be8cd36c2444c2b6f7738b3b5ea99dcb260ff82774ecb6bc805d`  
		Last Modified: Sat, 04 Nov 2017 18:38:08 GMT  
		Size: 3.3 MB (3327152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b82968384ed0e8702bcc28eb1d9188531e3c8674f3b604b0b00a491ee7ba52`  
		Last Modified: Thu, 23 Nov 2017 01:27:07 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4.27` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:6866b9885bd507821bb8c8c02cc97b68d5c1458915e772413cc2a0ecfc211620
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54108803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316dbdf9b3c079166a0caf5122f9eafae8ccfd900ba48a59a00c66a65f0127c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:24 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:24 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 22:10:24 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 22:10:25 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 22:11:34 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:11:35 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 22:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:11:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196e0726d4612fddd4ddb1197921c3362ece131299910ac55e78585ecb0aa2f5`  
		Last Modified: Mon, 09 Oct 2017 22:17:36 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171291dfaad19b203eadcb7b18fde504b523ac2836a08c4b646d87ea1e12e315`  
		Last Modified: Mon, 09 Oct 2017 22:17:37 GMT  
		Size: 3.2 MB (3227619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a611065c2dd35d29f241f065d2e429967a229b8bf0294874a4fbf7e29d231d2`  
		Last Modified: Mon, 09 Oct 2017 22:17:37 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4.27` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:6331f92e0380296a8a22e83e9d8122660fa82d250330363307e45f0ae5d3f9e1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51803822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a7a1db20be884238f441948e214dbd2763567acfb365f86ce60c4c2a09c1cec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:17 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:17 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 22:17:17 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 22:17:18 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 22:18:44 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:18:45 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 22:18:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:18:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aeb3348935efc55834652855dd450fdeae04c118042de8d8cfd0a74abe854c0`  
		Last Modified: Mon, 09 Oct 2017 22:24:45 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54735f1d8ea2e2501306b2df01a68c685242d8281b073ec4b667bc2ae1321706`  
		Last Modified: Mon, 09 Oct 2017 22:24:47 GMT  
		Size: 3.1 MB (3116220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c15bedf40f4f4662e2dd9ec3004ffe8ba45ee2b4add6334744c332662932f1f`  
		Last Modified: Mon, 09 Oct 2017 22:24:45 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4.27` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:2cd3a25542a9f2cb91799e4314435c76d4f1a6d69f5cc02685706088d5524ab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53113856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6f6140ce7dceddb17dd431774d962ad90d058555f491fd7c2ff0e6f5d8b39d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:38:59 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:39:00 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 23:39:00 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 23:39:01 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 23:42:47 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:42:48 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 23:42:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:42:50 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813a57b3d34527d082cf986ce29d2392ca18b4524d6936a7e6063f0dd59af909`  
		Last Modified: Mon, 09 Oct 2017 23:53:22 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec5bc3383326d7014338dbb90ee1424f8773477b11cddea72a3346a2d44c51d`  
		Last Modified: Mon, 09 Oct 2017 23:53:24 GMT  
		Size: 3.2 MB (3183270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de995af26b24db669b50b32f44b73943d776d03ba69c3807fb514b3908afd5b0`  
		Last Modified: Mon, 09 Oct 2017 23:53:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4.27` - linux; 386

```console
$ docker pull haproxy@sha256:a2ce0f4a3708991580b64aecd8f788daf749016edae90fca4ba074d3ffb7cabf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56123387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757503b0d727a419adbb2140d3b83e8e158e8d84bb894b88af1eaba241d053b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:49:58 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:49:58 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 23:49:59 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 23:49:59 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 23:51:05 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:51:05 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 23:51:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:51:05 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352952f8f131fffba10060ee43c4839508680c488310b43ac79c160934b5f1a5`  
		Last Modified: Mon, 09 Oct 2017 23:57:40 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee69aa346a431beeb62d1fa056381018a2fca430695cfc5ac64a202198996681`  
		Last Modified: Mon, 09 Oct 2017 23:57:41 GMT  
		Size: 3.3 MB (3348277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f6353d83993a33926ae69c35c55f79d94ba2f1e2e3c31203b4ec50026751e9`  
		Last Modified: Mon, 09 Oct 2017 23:57:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4.27` - linux; ppc64le

```console
$ docker pull haproxy@sha256:2311e166647ac100f445f6641b520a0efd449e8f15503837af2eeb69ad7d710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55132777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad72f65d7c2506b452c8fc6f30828efcc5276ed53b0287d3dac289aafa638f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:45:16 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:21 GMT
ENV HAPROXY_MAJOR=1.4
# Tue, 10 Oct 2017 00:45:26 GMT
ENV HAPROXY_VERSION=1.4.27
# Tue, 10 Oct 2017 00:45:29 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Tue, 10 Oct 2017 00:54:21 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 00:54:23 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Tue, 10 Oct 2017 00:54:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:54:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987baa7c1d140f374021b15c25e08b1723201bfccbf88da202db5918d9668cae`  
		Last Modified: Tue, 10 Oct 2017 01:21:21 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5934d092893c57b2f6de4b6133ed9736a68489566cd9734cb9430042181504f4`  
		Last Modified: Tue, 10 Oct 2017 01:21:22 GMT  
		Size: 3.3 MB (3321738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a87b665d6ebc4313bd9e64a07924f11c0fdecbae84e7e0a24b2c88c15b6abed`  
		Last Modified: Tue, 10 Oct 2017 01:21:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.4.27` - linux; s390x

```console
$ docker pull haproxy@sha256:b508886cf23db141f7da517bebabe0fc06f57fc3dedaf3a5fb2feb25a24fcc4b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56204830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c93b47b8f75d95a00adf246fa29c293b02d8bc37efb00676fc5f4c7bfb32c0e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:47 GMT
RUN apt-get update && apt-get install -y libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:47 GMT
ENV HAPROXY_MAJOR=1.4
# Mon, 09 Oct 2017 22:28:48 GMT
ENV HAPROXY_VERSION=1.4.27
# Mon, 09 Oct 2017 22:28:48 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Mon, 09 Oct 2017 22:29:26 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:29:26 GMT
COPY file:b05cc1b2f882bd925d9de5aa71a14e3bbac0645c6671db000e17b84119960d72 in / 
# Mon, 09 Oct 2017 22:29:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:29:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe10769dedaff42cbf5f3564e8cf027de3b614b0b9309f0c0197525b5c4df934`  
		Last Modified: Mon, 09 Oct 2017 22:32:42 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c134cb52bd0b959e04c721af3874b3d579d45dbda89d21152d14cd99d1e92bd`  
		Last Modified: Mon, 09 Oct 2017 22:32:43 GMT  
		Size: 3.4 MB (3414686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd8428a053fabe41584ca8c77cc3fa8503409efa1ffa13557dcb66631d2954f`  
		Last Modified: Mon, 09 Oct 2017 22:32:43 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4.27-alpine`

```console
$ docker pull haproxy@sha256:b8f6da7d789806a09dd24d0e9f85ebb2122c3b0a2ac56f032c87f9575a6aa033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.4.27-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:6002ae73911754ff625d3d6f3bb6c3085db72187df4e0d7d2d778a565b86ee41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2902347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc041696163e1a8d0be2f8dbc726d3bfafeee673d79c418d491ab599107c1a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:00:25 GMT
ENV HAPROXY_MAJOR=1.4
# Fri, 03 Nov 2017 23:00:25 GMT
ENV HAPROXY_VERSION=1.4.27
# Fri, 03 Nov 2017 23:00:25 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Fri, 03 Nov 2017 23:00:52 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:20:45 GMT
COPY file:83c90b36b26d86ea24256f7a3defe8dd8336279ae09c6afed591c515004575c1 in / 
# Thu, 23 Nov 2017 01:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:20:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8994e80cc15d3516d6bb18591a214ce50a0344a02dbe88f56c3c017ee4f3aa7b`  
		Last Modified: Fri, 03 Nov 2017 23:06:21 GMT  
		Size: 931.8 KB (931808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126d3a8b539baeecdf2ad6606a18e340b4a271eed8efd49a06910c32b0a1bca7`  
		Last Modified: Thu, 23 Nov 2017 01:27:23 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.4-alpine`

```console
$ docker pull haproxy@sha256:b8f6da7d789806a09dd24d0e9f85ebb2122c3b0a2ac56f032c87f9575a6aa033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.4-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:6002ae73911754ff625d3d6f3bb6c3085db72187df4e0d7d2d778a565b86ee41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2902347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc041696163e1a8d0be2f8dbc726d3bfafeee673d79c418d491ab599107c1a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:00:25 GMT
ENV HAPROXY_MAJOR=1.4
# Fri, 03 Nov 2017 23:00:25 GMT
ENV HAPROXY_VERSION=1.4.27
# Fri, 03 Nov 2017 23:00:25 GMT
ENV HAPROXY_MD5=459b82968791472427326ea009834c66
# Fri, 03 Nov 2017 23:00:52 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:20:45 GMT
COPY file:83c90b36b26d86ea24256f7a3defe8dd8336279ae09c6afed591c515004575c1 in / 
# Thu, 23 Nov 2017 01:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:20:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8994e80cc15d3516d6bb18591a214ce50a0344a02dbe88f56c3c017ee4f3aa7b`  
		Last Modified: Fri, 03 Nov 2017 23:06:21 GMT  
		Size: 931.8 KB (931808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126d3a8b539baeecdf2ad6606a18e340b4a271eed8efd49a06910c32b0a1bca7`  
		Last Modified: Thu, 23 Nov 2017 01:27:23 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:db9d4a2f7069e4450601c7ce4337c5e23e1801568eb645378984d605aed386bd
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

### `haproxy:1.5` - linux; amd64

```console
$ docker pull haproxy@sha256:bb4457dfd4a9b6ebc3f76115eca57522fa35f79dfb92faf4c1a2bee18e0b285d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58670469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a1a1c70f06fde9a1b72d0ea3cb3e9b64353394e0e2c60a29a6886cee2774f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:34:47 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:34:47 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 04 Nov 2017 18:34:47 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 04 Nov 2017 18:34:47 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 04 Nov 2017 18:35:42 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:20:50 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:20:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:20:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a0ab41a2311f23b708f6dd10c854f27ca5695e2154191edc025a6f480b2065`  
		Last Modified: Sat, 04 Nov 2017 18:38:23 GMT  
		Size: 1.8 MB (1799625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07732ed6f27a51156ba264560078d640935f225ba867e3a626ceca61a962ad7`  
		Last Modified: Sat, 04 Nov 2017 18:38:23 GMT  
		Size: 4.3 MB (4275317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb712eb50d8b2182f3296adab43c7faaa70a8aa8c0b765d8ab5d189181cfd80b`  
		Last Modified: Thu, 23 Nov 2017 01:27:38 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:6a16383f194f6cb72c716540deb435816a316097e88543a9c6bb0671b932bdce
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56705260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6abb178003a22828ee117b148c8a5830be5e405ba5db49df1364b10f9faa4170`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:26 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:12:26 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 22:12:26 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 22:12:26 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 22:14:12 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:14:12 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:14:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa3344258fb1baed36c78e14b8d444b019522ae66adaf3ec17d6955edbdb90`  
		Last Modified: Mon, 09 Oct 2017 22:17:46 GMT  
		Size: 1.6 MB (1594679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e3a08e1aa318875174fab729f14a89162f9958e82a1184a07d27667f5e418d`  
		Last Modified: Mon, 09 Oct 2017 22:17:46 GMT  
		Size: 4.2 MB (4230342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b0d07a823639ef6c4623981d7b1f704f52cb9778653b34777f0b010f288278`  
		Last Modified: Mon, 09 Oct 2017 22:17:45 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:7ed78f608da853f4a7bb6afeac18196041a111fb8f4671381dd130bbea36816c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54324318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6048d43695bf92af90c580393f50b86b81400744792339a790fadcfcd713ef96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:47 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:48 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 22:19:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 22:19:48 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 22:21:29 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:21:33 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:21:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:21:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4bad0e14bca4aa54619ed1248a10e25a3e9cc0c708d7cc73b2effff6a908e0`  
		Last Modified: Mon, 09 Oct 2017 22:25:00 GMT  
		Size: 1.5 MB (1535388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a13e5a3ad5ef9aed95ebc7fccd2eb5e330d1040dd28b5aa1024dd6efcd8c33`  
		Last Modified: Mon, 09 Oct 2017 22:25:00 GMT  
		Size: 4.1 MB (4102274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773f4e0e8dfc3a72cea4897cb0fa36155ddcb9a6f140ea0177ea69d3ed495bd8`  
		Last Modified: Mon, 09 Oct 2017 22:24:59 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:6f694458761faef7f695900d2789b4a03d4ce3b7717f0c2d755dc2f6c1edcc30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55731929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aedea169959cadcff27e11e318e6cc56aae4dab4b7221bf033fd554374c4308`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:43:30 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:43:31 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 23:43:32 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 23:43:32 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 23:46:34 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:46:36 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:46:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:46:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d65ad7db794b4805dfc0d379bf26640d3b5637b95bda0cda6d3640fbd06adb`  
		Last Modified: Mon, 09 Oct 2017 23:53:56 GMT  
		Size: 1.6 MB (1606385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f755bfe7359c6ce33664efab50a79410fd05cb06033440af3edf1bd2b2cf38ac`  
		Last Modified: Mon, 09 Oct 2017 23:53:57 GMT  
		Size: 4.2 MB (4195888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d06efed17f5304a5550390d404660868d28743d81699aac203898bac8015577`  
		Last Modified: Mon, 09 Oct 2017 23:53:54 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; 386

```console
$ docker pull haproxy@sha256:aa27d7c820d9c018bce352597c38ad9a5f35fac0ebeeafb2ce2fafa3aea77aac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60900706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbabe05989ebd6b0fffa2033006fece7a41454e4e52ea6378e0ab14178bf26f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:51:48 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:51:48 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 23:51:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 23:51:48 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 23:53:13 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:53:14 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:53:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:53:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d371756029b522a08e20a219f3a8b54c3174ac84737ef1f46c2238c44ce7b20`  
		Last Modified: Mon, 09 Oct 2017 23:57:57 GMT  
		Size: 3.8 MB (3849148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799f3cd67e23a627a73d31d54e37ade2dd0e75da50db7b27d2bcec1fd641e4ea`  
		Last Modified: Mon, 09 Oct 2017 23:57:57 GMT  
		Size: 4.3 MB (4277365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac4febde5fc96b68aa01f4cecf965a603311ceecae3e31b24409d17db9c3d8`  
		Last Modified: Mon, 09 Oct 2017 23:57:56 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; ppc64le

```console
$ docker pull haproxy@sha256:1da6c5d44acc7c632152ead300c4dc94a012daecdd3d3e73f0dfd5364a494884
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57852735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b901d48477b7f2abbffddb40da43dcb9ddc210d12aec535da55d66cc3a32dc0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:55:10 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:55:12 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 10 Oct 2017 00:55:14 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 10 Oct 2017 00:55:17 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Tue, 10 Oct 2017 01:01:30 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:01:33 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 10 Oct 2017 01:01:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:01:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc356acb986c090174e9e4d77e374b95d2fc152980a33883e5425553b91cd04`  
		Last Modified: Tue, 10 Oct 2017 01:21:36 GMT  
		Size: 1.7 MB (1699232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f594af44184286e0fe549fa88bfd03af75a21c4368b699cb37007e44bcd5d7c`  
		Last Modified: Tue, 10 Oct 2017 01:21:37 GMT  
		Size: 4.3 MB (4343419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bda282835a628b36a8ede1a223c8fb0f64bccb5dcb027eed273688b6e9f0d72`  
		Last Modified: Tue, 10 Oct 2017 01:21:35 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; s390x

```console
$ docker pull haproxy@sha256:24a44de545874cb6da9f2519861165d32cc9e8a6a68484179abbf39311405c85
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.0 MB (59023925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213d6d048766e52804a400486fad8dd7073603c2a5d74c1a274c8f9fc32199f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:29:49 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:29:49 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 22:29:49 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 22:29:49 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 22:30:39 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:30:40 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:30:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:30:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946b5e400671a4700b680831e0415965edcdb7b4e03a1585d35a2d58f413d043`  
		Last Modified: Mon, 09 Oct 2017 22:32:53 GMT  
		Size: 1.8 MB (1779801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791ba85001b78bcabae77c2078ef0096cb1c679b6253da0b9196e7d771cb9750`  
		Last Modified: Mon, 09 Oct 2017 22:32:53 GMT  
		Size: 4.5 MB (4454910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1430dec532308ae6540325c8d13cbebc782f7a715053da5b8103caa0e3498`  
		Last Modified: Mon, 09 Oct 2017 22:32:52 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19`

```console
$ docker pull haproxy@sha256:db9d4a2f7069e4450601c7ce4337c5e23e1801568eb645378984d605aed386bd
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

### `haproxy:1.5.19` - linux; amd64

```console
$ docker pull haproxy@sha256:bb4457dfd4a9b6ebc3f76115eca57522fa35f79dfb92faf4c1a2bee18e0b285d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58670469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a1a1c70f06fde9a1b72d0ea3cb3e9b64353394e0e2c60a29a6886cee2774f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:34:47 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:34:47 GMT
ENV HAPROXY_MAJOR=1.5
# Sat, 04 Nov 2017 18:34:47 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 04 Nov 2017 18:34:47 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Sat, 04 Nov 2017 18:35:42 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:20:50 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:20:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:20:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a0ab41a2311f23b708f6dd10c854f27ca5695e2154191edc025a6f480b2065`  
		Last Modified: Sat, 04 Nov 2017 18:38:23 GMT  
		Size: 1.8 MB (1799625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07732ed6f27a51156ba264560078d640935f225ba867e3a626ceca61a962ad7`  
		Last Modified: Sat, 04 Nov 2017 18:38:23 GMT  
		Size: 4.3 MB (4275317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb712eb50d8b2182f3296adab43c7faaa70a8aa8c0b765d8ab5d189181cfd80b`  
		Last Modified: Thu, 23 Nov 2017 01:27:38 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:6a16383f194f6cb72c716540deb435816a316097e88543a9c6bb0671b932bdce
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56705260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6abb178003a22828ee117b148c8a5830be5e405ba5db49df1364b10f9faa4170`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:26 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:12:26 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 22:12:26 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 22:12:26 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 22:14:12 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:14:12 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:14:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fa3344258fb1baed36c78e14b8d444b019522ae66adaf3ec17d6955edbdb90`  
		Last Modified: Mon, 09 Oct 2017 22:17:46 GMT  
		Size: 1.6 MB (1594679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e3a08e1aa318875174fab729f14a89162f9958e82a1184a07d27667f5e418d`  
		Last Modified: Mon, 09 Oct 2017 22:17:46 GMT  
		Size: 4.2 MB (4230342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b0d07a823639ef6c4623981d7b1f704f52cb9778653b34777f0b010f288278`  
		Last Modified: Mon, 09 Oct 2017 22:17:45 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:7ed78f608da853f4a7bb6afeac18196041a111fb8f4671381dd130bbea36816c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54324318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6048d43695bf92af90c580393f50b86b81400744792339a790fadcfcd713ef96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:47 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:48 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 22:19:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 22:19:48 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 22:21:29 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:21:33 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:21:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:21:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4bad0e14bca4aa54619ed1248a10e25a3e9cc0c708d7cc73b2effff6a908e0`  
		Last Modified: Mon, 09 Oct 2017 22:25:00 GMT  
		Size: 1.5 MB (1535388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a13e5a3ad5ef9aed95ebc7fccd2eb5e330d1040dd28b5aa1024dd6efcd8c33`  
		Last Modified: Mon, 09 Oct 2017 22:25:00 GMT  
		Size: 4.1 MB (4102274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773f4e0e8dfc3a72cea4897cb0fa36155ddcb9a6f140ea0177ea69d3ed495bd8`  
		Last Modified: Mon, 09 Oct 2017 22:24:59 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:6f694458761faef7f695900d2789b4a03d4ce3b7717f0c2d755dc2f6c1edcc30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55731929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aedea169959cadcff27e11e318e6cc56aae4dab4b7221bf033fd554374c4308`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:43:30 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:43:31 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 23:43:32 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 23:43:32 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 23:46:34 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:46:36 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:46:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:46:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d65ad7db794b4805dfc0d379bf26640d3b5637b95bda0cda6d3640fbd06adb`  
		Last Modified: Mon, 09 Oct 2017 23:53:56 GMT  
		Size: 1.6 MB (1606385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f755bfe7359c6ce33664efab50a79410fd05cb06033440af3edf1bd2b2cf38ac`  
		Last Modified: Mon, 09 Oct 2017 23:53:57 GMT  
		Size: 4.2 MB (4195888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d06efed17f5304a5550390d404660868d28743d81699aac203898bac8015577`  
		Last Modified: Mon, 09 Oct 2017 23:53:54 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; 386

```console
$ docker pull haproxy@sha256:aa27d7c820d9c018bce352597c38ad9a5f35fac0ebeeafb2ce2fafa3aea77aac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60900706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbabe05989ebd6b0fffa2033006fece7a41454e4e52ea6378e0ab14178bf26f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:51:48 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:51:48 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 23:51:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 23:51:48 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 23:53:13 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:53:14 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:53:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:53:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d371756029b522a08e20a219f3a8b54c3174ac84737ef1f46c2238c44ce7b20`  
		Last Modified: Mon, 09 Oct 2017 23:57:57 GMT  
		Size: 3.8 MB (3849148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799f3cd67e23a627a73d31d54e37ade2dd0e75da50db7b27d2bcec1fd641e4ea`  
		Last Modified: Mon, 09 Oct 2017 23:57:57 GMT  
		Size: 4.3 MB (4277365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac4febde5fc96b68aa01f4cecf965a603311ceecae3e31b24409d17db9c3d8`  
		Last Modified: Mon, 09 Oct 2017 23:57:56 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; ppc64le

```console
$ docker pull haproxy@sha256:1da6c5d44acc7c632152ead300c4dc94a012daecdd3d3e73f0dfd5364a494884
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57852735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b901d48477b7f2abbffddb40da43dcb9ddc210d12aec535da55d66cc3a32dc0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:55:10 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:55:12 GMT
ENV HAPROXY_MAJOR=1.5
# Tue, 10 Oct 2017 00:55:14 GMT
ENV HAPROXY_VERSION=1.5.19
# Tue, 10 Oct 2017 00:55:17 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Tue, 10 Oct 2017 01:01:30 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:01:33 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 10 Oct 2017 01:01:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:01:42 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc356acb986c090174e9e4d77e374b95d2fc152980a33883e5425553b91cd04`  
		Last Modified: Tue, 10 Oct 2017 01:21:36 GMT  
		Size: 1.7 MB (1699232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f594af44184286e0fe549fa88bfd03af75a21c4368b699cb37007e44bcd5d7c`  
		Last Modified: Tue, 10 Oct 2017 01:21:37 GMT  
		Size: 4.3 MB (4343419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bda282835a628b36a8ede1a223c8fb0f64bccb5dcb027eed273688b6e9f0d72`  
		Last Modified: Tue, 10 Oct 2017 01:21:35 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; s390x

```console
$ docker pull haproxy@sha256:24a44de545874cb6da9f2519861165d32cc9e8a6a68484179abbf39311405c85
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.0 MB (59023925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213d6d048766e52804a400486fad8dd7073603c2a5d74c1a274c8f9fc32199f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:29:49 GMT
RUN apt-get update && apt-get install -y libssl1.0.0 libpcre3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:29:49 GMT
ENV HAPROXY_MAJOR=1.5
# Mon, 09 Oct 2017 22:29:49 GMT
ENV HAPROXY_VERSION=1.5.19
# Mon, 09 Oct 2017 22:29:49 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Mon, 09 Oct 2017 22:30:39 GMT
RUN buildDeps='curl gcc libc6-dev libpcre3-dev libssl-dev make' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:30:40 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:30:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:30:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946b5e400671a4700b680831e0415965edcdb7b4e03a1585d35a2d58f413d043`  
		Last Modified: Mon, 09 Oct 2017 22:32:53 GMT  
		Size: 1.8 MB (1779801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791ba85001b78bcabae77c2078ef0096cb1c679b6253da0b9196e7d771cb9750`  
		Last Modified: Mon, 09 Oct 2017 22:32:53 GMT  
		Size: 4.5 MB (4454910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b1430dec532308ae6540325c8d13cbebc782f7a715053da5b8103caa0e3498`  
		Last Modified: Mon, 09 Oct 2017 22:32:52 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19-alpine`

```console
$ docker pull haproxy@sha256:e3a32db3e7c14ef5b64f451e477b769e08e2b08b655ffca212cafd6b8965470e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.5.19-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:89edd0f3945d819924cdc26fb16c355d68c29be3f964b60271dda355763123b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5574897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a9001808171fffd1184443f16555715f56fb44d47162c1bd17126dc0324a9a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:02:06 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 03 Nov 2017 23:02:06 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 03 Nov 2017 23:02:06 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 03 Nov 2017 23:02:53 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:20:56 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:20:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:20:56 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2f71b99b792bb606f91a61b30d34ae7f06485ac0bccaeed07caac38bc8ce9e`  
		Last Modified: Fri, 03 Nov 2017 23:06:41 GMT  
		Size: 3.6 MB (3604258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d04902ce383c12acab381bf5c0a896db483180389c66bd9a597c840c631b15`  
		Last Modified: Thu, 23 Nov 2017 01:27:54 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:e3a32db3e7c14ef5b64f451e477b769e08e2b08b655ffca212cafd6b8965470e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.5-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:89edd0f3945d819924cdc26fb16c355d68c29be3f964b60271dda355763123b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5574897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a9001808171fffd1184443f16555715f56fb44d47162c1bd17126dc0324a9a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:02:06 GMT
ENV HAPROXY_MAJOR=1.5
# Fri, 03 Nov 2017 23:02:06 GMT
ENV HAPROXY_VERSION=1.5.19
# Fri, 03 Nov 2017 23:02:06 GMT
ENV HAPROXY_MD5=74d49316f00e1fd9859bcac84ab04b5c
# Fri, 03 Nov 2017 23:02:53 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		curl 		gcc 		libc-dev 		linux-headers 		make 		openssl-dev 		pcre-dev 		zlib-dev 	&& curl -SL "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" -o haproxy.tar.gz 	&& echo "${HAPROXY_MD5}  haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src 	&& tar -xzf haproxy.tar.gz -C /usr/src 	&& mv "/usr/src/haproxy-$HAPROXY_VERSION" /usr/src/haproxy 	&& rm haproxy.tar.gz 	&& make -C /usr/src/haproxy 		TARGET=linux2628 		USE_PCRE=1 PCREDIR= 		USE_OPENSSL=1 		USE_ZLIB=1 		all 		install-bin 	&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:20:56 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:20:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:20:56 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2f71b99b792bb606f91a61b30d34ae7f06485ac0bccaeed07caac38bc8ce9e`  
		Last Modified: Fri, 03 Nov 2017 23:06:41 GMT  
		Size: 3.6 MB (3604258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d04902ce383c12acab381bf5c0a896db483180389c66bd9a597c840c631b15`  
		Last Modified: Thu, 23 Nov 2017 01:27:54 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:14158531b745e808324c4394720e8871948c048c0e0d0bc55ca95435974c7c86
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

### `haproxy:1.6` - linux; amd64

```console
$ docker pull haproxy@sha256:66278eac076f16a7be7665e2ccab9632d7f412c79f87ab74720484019af88bcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57306752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c1f1f3fc05c8b7e86a308205fec2267481d867562afea62f4ff325b624a2c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:22:21 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:35:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:35:59 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 04 Nov 2017 18:35:59 GMT
ENV HAPROXY_VERSION=1.6.13
# Sat, 04 Nov 2017 18:36:00 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Sat, 04 Nov 2017 18:36:54 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:21:01 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:21:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:21:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bea5eb3b594bb7fe70986b3b94a1c8e10ae64eb0d629d432f1f040407ae4ff`  
		Last Modified: Sat, 04 Nov 2017 05:28:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1faa1a99a6c9f063aaec96dc357a7fd73386bdc0ed80d3217c993300d19ded`  
		Last Modified: Sat, 04 Nov 2017 18:38:37 GMT  
		Size: 2.0 MB (2022663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b78994925116237941cc0f1454327a5fc3873247673254916e07ad02d0a6eda`  
		Last Modified: Sat, 04 Nov 2017 18:38:37 GMT  
		Size: 2.7 MB (2688339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8c0bfcfa51e86860b91d2511e8a052b52d034e378a51caca205d139324c9c4`  
		Last Modified: Thu, 23 Nov 2017 01:28:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:6ca3f0a65de978cf4230dda88b27e19c3bf101bc8471b5f54deb8785b888a3f1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55466791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da549b7103051619d3a8284c24004fcf4ff9db67c7e34d9f1439d31ef22f4e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:15:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:03 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 22:15:03 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 22:15:03 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 22:16:02 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:16:03 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:16:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:16:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdec31884097071ad55a984ea9ec5cdb5f3ce413a0f052deaf919135ab24fb7a`  
		Last Modified: Mon, 09 Oct 2017 22:17:54 GMT  
		Size: 1.8 MB (1788308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74d55d60f5b045b06563f697fed1635625d84fa4570000956a0ef05ae77842f`  
		Last Modified: Mon, 09 Oct 2017 22:17:54 GMT  
		Size: 2.8 MB (2798024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3da5b8fb2fb4568590943f8795da7c196571acfa8cf07106d4bbb4538c541bc`  
		Last Modified: Mon, 09 Oct 2017 22:17:53 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:f8ff16330eb0fa7e855de09f10cf916ae1c09fd4a5dcdaab5a18196c8ec604ab
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53148134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aafc8f520faf81135a5646b3c8e92aa023b5e8ba8c6117eaad3ce632c3c9550`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:22:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:22:15 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 22:22:16 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 22:22:16 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 22:23:13 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:23:14 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:23:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:23:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451372fb42d39916c53943f9b5b45c8a337bddfc34a106620c481e2af578d924`  
		Last Modified: Mon, 09 Oct 2017 22:25:11 GMT  
		Size: 1.7 MB (1710751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57886c85184836872350672f953ccb90f2a813755daf1cc8bff60f3356aff879`  
		Last Modified: Mon, 09 Oct 2017 22:25:11 GMT  
		Size: 2.8 MB (2750506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f7ec066bb03c7a690648a4c64fa5d2557d60bf6afae7cff6da887c1f30fd77`  
		Last Modified: Mon, 09 Oct 2017 22:25:10 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:ee9e4d5ed68ebd7a96c69d96fb758dc26d6733f9f483a6a976be69cf7c1cb869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54569782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd6388d95a53801b9df5334da0cc49d5188b64f2bc8f45617db853c1ce5586b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:47:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:47:21 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 23:47:22 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 23:47:23 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 23:49:41 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:49:43 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:49:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:49:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be6c2ea89b016385ef444da5df4e04d7d7efe719badc6b5553eaa0fb4a7bf18`  
		Last Modified: Mon, 09 Oct 2017 23:54:22 GMT  
		Size: 1.8 MB (1814020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a68dbcad352aa10c96901d242721406e582204b70f9139118a2e4002a7ed025`  
		Last Modified: Mon, 09 Oct 2017 23:54:23 GMT  
		Size: 2.8 MB (2825882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea6be92180ebe9fbc9dd9726f212cf802a18655f2761e9dcd2936d1dcb7356`  
		Last Modified: Mon, 09 Oct 2017 23:54:22 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; 386

```console
$ docker pull haproxy@sha256:a8dbe79c97968998900ca0e2abe5cd15cfa00f14b04b7b423a79a1935c7e729a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59481967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4537f2c8d81f8fd14286cb52186832a47e0e0e7ad19730410513301888b9642f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:54:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:54:02 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 23:54:02 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 23:54:02 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 23:55:14 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:55:51 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:55:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c536ad191013d8dbaa4b62a373a437a7ef9d1bafcde9479aa41a13e59c2ee`  
		Last Modified: Mon, 09 Oct 2017 23:58:13 GMT  
		Size: 4.1 MB (4106200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c9cedbba58ceb7988df5aa77b803e75e595b6d70eee3a82b4226d1a0bde66f`  
		Last Modified: Mon, 09 Oct 2017 23:58:13 GMT  
		Size: 2.6 MB (2601350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5fe017c477f9d80169a349629efba17e11478ec8bcac27b808f22e0a573ca2`  
		Last Modified: Mon, 09 Oct 2017 23:58:12 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:074b839ef15cd329560e7fe9a3656540541408df8872fd84bc814c30e83f8998
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56616822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acce06e38bbe44853a33ec9bd9b7c075618d96984b99713e0593eeced3592e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:02:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:02:44 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 10 Oct 2017 01:02:48 GMT
ENV HAPROXY_VERSION=1.6.13
# Tue, 10 Oct 2017 01:02:52 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Tue, 10 Oct 2017 01:11:32 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:11:36 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 10 Oct 2017 01:11:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:11:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9729b12eba285f16c1cc872fe7fb77f22feb96259f3ca0ae16e305194b32255e`  
		Last Modified: Tue, 10 Oct 2017 01:21:52 GMT  
		Size: 1.9 MB (1930073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0f8728829809d6cb19f76209241a0bffa914322d655fefd42ee6e894914436`  
		Last Modified: Tue, 10 Oct 2017 01:21:52 GMT  
		Size: 2.9 MB (2876441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdc18416b44de1732485bcea07eaf6c063d21311b34a07b47bac39dd8144630`  
		Last Modified: Tue, 10 Oct 2017 01:21:51 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; s390x

```console
$ docker pull haproxy@sha256:a4ecb51fc98fef155e98534ed5a04d6e6f8d4ec13a9a8952dfbbd59846c3699e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57721135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe7d75f4b5ae5fd76e1c68775daa059762764c6dda6f44e845308d0e70ec4d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:30:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:59 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 22:30:59 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 22:30:59 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 22:31:34 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:31:34 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:31:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:31:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e49e95a1e4505b2125ac65178be586bc90d905dba13a71f9c6ba626f92c1f7a`  
		Last Modified: Mon, 09 Oct 2017 22:33:02 GMT  
		Size: 2.0 MB (2008744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e08d46fee2f59005100d18f95962ed185f53fae2d4964babd638dbf7f55d40`  
		Last Modified: Mon, 09 Oct 2017 22:33:02 GMT  
		Size: 2.9 MB (2922957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b465201178222545e1932b8f437224edebad6b08c4b39abaa2c335fbff5def28`  
		Last Modified: Mon, 09 Oct 2017 22:33:01 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.13`

```console
$ docker pull haproxy@sha256:14158531b745e808324c4394720e8871948c048c0e0d0bc55ca95435974c7c86
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

### `haproxy:1.6.13` - linux; amd64

```console
$ docker pull haproxy@sha256:66278eac076f16a7be7665e2ccab9632d7f412c79f87ab74720484019af88bcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57306752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c1f1f3fc05c8b7e86a308205fec2267481d867562afea62f4ff325b624a2c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:22:21 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:35:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:35:59 GMT
ENV HAPROXY_MAJOR=1.6
# Sat, 04 Nov 2017 18:35:59 GMT
ENV HAPROXY_VERSION=1.6.13
# Sat, 04 Nov 2017 18:36:00 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Sat, 04 Nov 2017 18:36:54 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:21:01 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:21:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:21:02 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bea5eb3b594bb7fe70986b3b94a1c8e10ae64eb0d629d432f1f040407ae4ff`  
		Last Modified: Sat, 04 Nov 2017 05:28:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1faa1a99a6c9f063aaec96dc357a7fd73386bdc0ed80d3217c993300d19ded`  
		Last Modified: Sat, 04 Nov 2017 18:38:37 GMT  
		Size: 2.0 MB (2022663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b78994925116237941cc0f1454327a5fc3873247673254916e07ad02d0a6eda`  
		Last Modified: Sat, 04 Nov 2017 18:38:37 GMT  
		Size: 2.7 MB (2688339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8c0bfcfa51e86860b91d2511e8a052b52d034e378a51caca205d139324c9c4`  
		Last Modified: Thu, 23 Nov 2017 01:28:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.13` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:6ca3f0a65de978cf4230dda88b27e19c3bf101bc8471b5f54deb8785b888a3f1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55466791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da549b7103051619d3a8284c24004fcf4ff9db67c7e34d9f1439d31ef22f4e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:15:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:03 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 22:15:03 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 22:15:03 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 22:16:02 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:16:03 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:16:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:16:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdec31884097071ad55a984ea9ec5cdb5f3ce413a0f052deaf919135ab24fb7a`  
		Last Modified: Mon, 09 Oct 2017 22:17:54 GMT  
		Size: 1.8 MB (1788308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74d55d60f5b045b06563f697fed1635625d84fa4570000956a0ef05ae77842f`  
		Last Modified: Mon, 09 Oct 2017 22:17:54 GMT  
		Size: 2.8 MB (2798024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3da5b8fb2fb4568590943f8795da7c196571acfa8cf07106d4bbb4538c541bc`  
		Last Modified: Mon, 09 Oct 2017 22:17:53 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.13` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:f8ff16330eb0fa7e855de09f10cf916ae1c09fd4a5dcdaab5a18196c8ec604ab
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53148134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aafc8f520faf81135a5646b3c8e92aa023b5e8ba8c6117eaad3ce632c3c9550`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:22:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:22:15 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 22:22:16 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 22:22:16 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 22:23:13 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:23:14 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:23:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:23:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451372fb42d39916c53943f9b5b45c8a337bddfc34a106620c481e2af578d924`  
		Last Modified: Mon, 09 Oct 2017 22:25:11 GMT  
		Size: 1.7 MB (1710751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57886c85184836872350672f953ccb90f2a813755daf1cc8bff60f3356aff879`  
		Last Modified: Mon, 09 Oct 2017 22:25:11 GMT  
		Size: 2.8 MB (2750506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f7ec066bb03c7a690648a4c64fa5d2557d60bf6afae7cff6da887c1f30fd77`  
		Last Modified: Mon, 09 Oct 2017 22:25:10 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.13` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:ee9e4d5ed68ebd7a96c69d96fb758dc26d6733f9f483a6a976be69cf7c1cb869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54569782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd6388d95a53801b9df5334da0cc49d5188b64f2bc8f45617db853c1ce5586b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:47:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:47:21 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 23:47:22 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 23:47:23 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 23:49:41 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:49:43 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:49:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:49:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be6c2ea89b016385ef444da5df4e04d7d7efe719badc6b5553eaa0fb4a7bf18`  
		Last Modified: Mon, 09 Oct 2017 23:54:22 GMT  
		Size: 1.8 MB (1814020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a68dbcad352aa10c96901d242721406e582204b70f9139118a2e4002a7ed025`  
		Last Modified: Mon, 09 Oct 2017 23:54:23 GMT  
		Size: 2.8 MB (2825882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea6be92180ebe9fbc9dd9726f212cf802a18655f2761e9dcd2936d1dcb7356`  
		Last Modified: Mon, 09 Oct 2017 23:54:22 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.13` - linux; 386

```console
$ docker pull haproxy@sha256:a8dbe79c97968998900ca0e2abe5cd15cfa00f14b04b7b423a79a1935c7e729a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59481967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4537f2c8d81f8fd14286cb52186832a47e0e0e7ad19730410513301888b9642f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:54:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:54:02 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 23:54:02 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 23:54:02 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 23:55:14 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:55:51 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:55:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:55:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c536ad191013d8dbaa4b62a373a437a7ef9d1bafcde9479aa41a13e59c2ee`  
		Last Modified: Mon, 09 Oct 2017 23:58:13 GMT  
		Size: 4.1 MB (4106200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c9cedbba58ceb7988df5aa77b803e75e595b6d70eee3a82b4226d1a0bde66f`  
		Last Modified: Mon, 09 Oct 2017 23:58:13 GMT  
		Size: 2.6 MB (2601350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5fe017c477f9d80169a349629efba17e11478ec8bcac27b808f22e0a573ca2`  
		Last Modified: Mon, 09 Oct 2017 23:58:12 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.13` - linux; ppc64le

```console
$ docker pull haproxy@sha256:074b839ef15cd329560e7fe9a3656540541408df8872fd84bc814c30e83f8998
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56616822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acce06e38bbe44853a33ec9bd9b7c075618d96984b99713e0593eeced3592e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:02:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:02:44 GMT
ENV HAPROXY_MAJOR=1.6
# Tue, 10 Oct 2017 01:02:48 GMT
ENV HAPROXY_VERSION=1.6.13
# Tue, 10 Oct 2017 01:02:52 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Tue, 10 Oct 2017 01:11:32 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:11:36 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 10 Oct 2017 01:11:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:11:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9729b12eba285f16c1cc872fe7fb77f22feb96259f3ca0ae16e305194b32255e`  
		Last Modified: Tue, 10 Oct 2017 01:21:52 GMT  
		Size: 1.9 MB (1930073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0f8728829809d6cb19f76209241a0bffa914322d655fefd42ee6e894914436`  
		Last Modified: Tue, 10 Oct 2017 01:21:52 GMT  
		Size: 2.9 MB (2876441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdc18416b44de1732485bcea07eaf6c063d21311b34a07b47bac39dd8144630`  
		Last Modified: Tue, 10 Oct 2017 01:21:51 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.13` - linux; s390x

```console
$ docker pull haproxy@sha256:a4ecb51fc98fef155e98534ed5a04d6e6f8d4ec13a9a8952dfbbd59846c3699e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57721135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe7d75f4b5ae5fd76e1c68775daa059762764c6dda6f44e845308d0e70ec4d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:30:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:59 GMT
ENV HAPROXY_MAJOR=1.6
# Mon, 09 Oct 2017 22:30:59 GMT
ENV HAPROXY_VERSION=1.6.13
# Mon, 09 Oct 2017 22:30:59 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Mon, 09 Oct 2017 22:31:34 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:31:34 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:31:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:31:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e49e95a1e4505b2125ac65178be586bc90d905dba13a71f9c6ba626f92c1f7a`  
		Last Modified: Mon, 09 Oct 2017 22:33:02 GMT  
		Size: 2.0 MB (2008744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e08d46fee2f59005100d18f95962ed185f53fae2d4964babd638dbf7f55d40`  
		Last Modified: Mon, 09 Oct 2017 22:33:02 GMT  
		Size: 2.9 MB (2922957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b465201178222545e1932b8f437224edebad6b08c4b39abaa2c335fbff5def28`  
		Last Modified: Mon, 09 Oct 2017 22:33:01 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.13-alpine`

```console
$ docker pull haproxy@sha256:f89dee2334ea41eda89ce67353ad38b0c92da3b00e227911ac6b6609a7ce57b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.6.13-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:59f40aa0aec727b689c2ee33336936589595d85c29f26ed18e07a0453cb08e43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6272743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f475936ab80f5c36279100d15f59208b728671cfd48dbca88f1fb131772117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:04:00 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 03 Nov 2017 23:04:00 GMT
ENV HAPROXY_VERSION=1.6.13
# Fri, 03 Nov 2017 23:04:00 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Thu, 23 Nov 2017 01:21:06 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 23 Nov 2017 01:21:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:21:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:21:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:21:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7007241e8bfd77c6682ae7a07b10916517de15b92fe0c273c714edfd43ca01a2`  
		Last Modified: Thu, 23 Nov 2017 01:28:27 GMT  
		Size: 4.3 MB (4302105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd68acc8b1666c8ad791c453bea24d1492d71b3fd8e66e697e697f0cf0f7a2de`  
		Last Modified: Thu, 23 Nov 2017 01:28:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:f89dee2334ea41eda89ce67353ad38b0c92da3b00e227911ac6b6609a7ce57b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.6-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:59f40aa0aec727b689c2ee33336936589595d85c29f26ed18e07a0453cb08e43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6272743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f475936ab80f5c36279100d15f59208b728671cfd48dbca88f1fb131772117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:04:00 GMT
ENV HAPROXY_MAJOR=1.6
# Fri, 03 Nov 2017 23:04:00 GMT
ENV HAPROXY_VERSION=1.6.13
# Fri, 03 Nov 2017 23:04:00 GMT
ENV HAPROXY_MD5=782947642c0c7983f73624d8d45e2321
# Thu, 23 Nov 2017 01:21:06 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 23 Nov 2017 01:21:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:21:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:21:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:21:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7007241e8bfd77c6682ae7a07b10916517de15b92fe0c273c714edfd43ca01a2`  
		Last Modified: Thu, 23 Nov 2017 01:28:27 GMT  
		Size: 4.3 MB (4302105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd68acc8b1666c8ad791c453bea24d1492d71b3fd8e66e697e697f0cf0f7a2de`  
		Last Modified: Thu, 23 Nov 2017 01:28:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:c800122d1bbaa83a89ec1ec4a5ae4a65808014083fff401c4f74d1cdddb9532a
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

### `haproxy:1.7` - linux; amd64

```console
$ docker pull haproxy@sha256:93f13da4fad86d45acb8d798184600b43ee312560c5482c70cde3cf33ca43d74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57805478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfbf9abf35d29acf8a6eb04cb074c69024680a9cccf6dffda26ba94f8eb7f5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:22:21 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:35:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:37:01 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 04 Nov 2017 18:37:02 GMT
ENV HAPROXY_VERSION=1.7.9
# Sat, 04 Nov 2017 18:37:02 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Sat, 04 Nov 2017 18:37:49 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:21:43 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:21:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:21:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bea5eb3b594bb7fe70986b3b94a1c8e10ae64eb0d629d432f1f040407ae4ff`  
		Last Modified: Sat, 04 Nov 2017 05:28:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1faa1a99a6c9f063aaec96dc357a7fd73386bdc0ed80d3217c993300d19ded`  
		Last Modified: Sat, 04 Nov 2017 18:38:37 GMT  
		Size: 2.0 MB (2022663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b93f1a522d86e0a1f5e3389c26081f35931413f942e159e1270c16a0c3429df`  
		Last Modified: Sat, 04 Nov 2017 18:38:50 GMT  
		Size: 3.2 MB (3187063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27ef55b983d705ad846a6230d337a47f6117be9400e6a968feedf50b536871d`  
		Last Modified: Thu, 23 Nov 2017 01:28:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:9d4d1b447ecce5006fc94883443e30ef8c1dd36692e31b169653bbb7c413ee14
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55965966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24526559d37d0d5f7ad7e84f745371abb74dc9bce8928daeac1f20577a7088ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:15:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:17:22 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:17:23 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:17:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:17:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdec31884097071ad55a984ea9ec5cdb5f3ce413a0f052deaf919135ab24fb7a`  
		Last Modified: Mon, 09 Oct 2017 22:17:54 GMT  
		Size: 1.8 MB (1788308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b230c8b8513827b0873c69aa43014e82adf9ab3129af7a5e09797d1bfff3d`  
		Last Modified: Mon, 09 Oct 2017 22:18:02 GMT  
		Size: 3.3 MB (3297196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85db90d0b4842330b5fbc0d8ef492a3cb24eb8f2e6b2e44ade185f47673a2cd4`  
		Last Modified: Mon, 09 Oct 2017 22:18:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:963652da29bee31f8bdb238dc79bcc569d1eae325415b0c4da418c1724cefce7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53642317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:670c8073206106df1571cb60f88eda315ba93c23e8e2db77149662a3b60b240c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:22:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:32 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:23:33 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:23:33 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:24:33 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:24:34 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:24:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:24:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451372fb42d39916c53943f9b5b45c8a337bddfc34a106620c481e2af578d924`  
		Last Modified: Mon, 09 Oct 2017 22:25:11 GMT  
		Size: 1.7 MB (1710751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535936c005ff8f2acb280ff75738b14facefb87f1d8206aa6e9355ad6620a901`  
		Last Modified: Mon, 09 Oct 2017 22:25:23 GMT  
		Size: 3.2 MB (3244687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae277e38475c4d8dc68411963815d2aabfc9585a0dbc72a77ad0cd31716a13`  
		Last Modified: Mon, 09 Oct 2017 22:25:25 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:908a11b5ff87604b0f2542660d6c3db51dacdcf56e32beade864af08130612e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55063727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb02ff2765001e74565eac8052078939e106b229a1ceecea752a765be2dadbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:47:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:14 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 23:50:16 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 23:50:17 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 23:52:44 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:52:45 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:52:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:52:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be6c2ea89b016385ef444da5df4e04d7d7efe719badc6b5553eaa0fb4a7bf18`  
		Last Modified: Mon, 09 Oct 2017 23:54:22 GMT  
		Size: 1.8 MB (1814020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a569b04a75908431ab7ef495e419aa2eadc63acd49ca96908cf95b53f98df0`  
		Last Modified: Mon, 09 Oct 2017 23:54:47 GMT  
		Size: 3.3 MB (3319827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b1ea36bd9b11b7a02c83f10a90a9fb828e62090159ae59b1ee46df0a56e97b`  
		Last Modified: Mon, 09 Oct 2017 23:54:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; 386

```console
$ docker pull haproxy@sha256:42eead36ae99a6504905ccd8507b73d26a4b0f954616c1213e8f1ccbcceb780f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59953829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19a275c16c6b9a500cadb4446c9c60282c4a6baa675541a29a82e588e6e309e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:54:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 23:57:25 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:57:25 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:57:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:57:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c536ad191013d8dbaa4b62a373a437a7ef9d1bafcde9479aa41a13e59c2ee`  
		Last Modified: Mon, 09 Oct 2017 23:58:13 GMT  
		Size: 4.1 MB (4106200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2634265724bfa049a2fc470154e81f5c7f4570bb2fed38526ad337076e351d`  
		Last Modified: Mon, 09 Oct 2017 23:58:30 GMT  
		Size: 3.1 MB (3073210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df862f9c23d7cfa5a3d6e5006af8d9ffd1081364eee45b9d4c99d98c9c08fce`  
		Last Modified: Mon, 09 Oct 2017 23:58:28 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4d7cb81313d8bd8e1ea9bb0f958d3e902cd1ef487dad685dc018c7c2742b1d8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57118208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789d7791fbe7fbf5ef73c5b89e351683c4fbb832ffe851528a4e596d3c31b5ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:02:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:59 GMT
ENV HAPROXY_MAJOR=1.7
# Tue, 10 Oct 2017 01:12:04 GMT
ENV HAPROXY_VERSION=1.7.9
# Tue, 10 Oct 2017 01:12:08 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Tue, 10 Oct 2017 01:20:49 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:20:54 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 10 Oct 2017 01:20:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:21:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9729b12eba285f16c1cc872fe7fb77f22feb96259f3ca0ae16e305194b32255e`  
		Last Modified: Tue, 10 Oct 2017 01:21:52 GMT  
		Size: 1.9 MB (1930073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62858fb551065f2e52f39002873423dcf5fce93b9b2748e04d2d596479968db6`  
		Last Modified: Tue, 10 Oct 2017 01:22:07 GMT  
		Size: 3.4 MB (3377827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b77a8b897124ce62df02e4250eebbc87c1766221e6249018a50808b4a33c2bb`  
		Last Modified: Tue, 10 Oct 2017 01:22:06 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; s390x

```console
$ docker pull haproxy@sha256:d2e85a3e4da80a1d0cdd891771cd7a5bae50fa33c2a38db0bbb0d4b5544e50eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58235638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecef877761616b530a1ccf7488c772f6cf743054666c977621f474db5da21dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:30:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:32:29 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:32:29 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:32:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:32:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e49e95a1e4505b2125ac65178be586bc90d905dba13a71f9c6ba626f92c1f7a`  
		Last Modified: Mon, 09 Oct 2017 22:33:02 GMT  
		Size: 2.0 MB (2008744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2761b6d6d4d1fea42b6f876c1ffd54643c2d65480288b761075b4b24a4f8a578`  
		Last Modified: Mon, 09 Oct 2017 22:33:12 GMT  
		Size: 3.4 MB (3437460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2de5a18b4f93e88aa73f9bfc87a9fe7bf3a6ead53f5e34079470f4798c1348`  
		Last Modified: Mon, 09 Oct 2017 22:33:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.9`

```console
$ docker pull haproxy@sha256:c800122d1bbaa83a89ec1ec4a5ae4a65808014083fff401c4f74d1cdddb9532a
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

### `haproxy:1.7.9` - linux; amd64

```console
$ docker pull haproxy@sha256:93f13da4fad86d45acb8d798184600b43ee312560c5482c70cde3cf33ca43d74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57805478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfbf9abf35d29acf8a6eb04cb074c69024680a9cccf6dffda26ba94f8eb7f5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:22:21 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:35:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:37:01 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 04 Nov 2017 18:37:02 GMT
ENV HAPROXY_VERSION=1.7.9
# Sat, 04 Nov 2017 18:37:02 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Sat, 04 Nov 2017 18:37:49 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:21:43 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:21:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:21:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bea5eb3b594bb7fe70986b3b94a1c8e10ae64eb0d629d432f1f040407ae4ff`  
		Last Modified: Sat, 04 Nov 2017 05:28:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1faa1a99a6c9f063aaec96dc357a7fd73386bdc0ed80d3217c993300d19ded`  
		Last Modified: Sat, 04 Nov 2017 18:38:37 GMT  
		Size: 2.0 MB (2022663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b93f1a522d86e0a1f5e3389c26081f35931413f942e159e1270c16a0c3429df`  
		Last Modified: Sat, 04 Nov 2017 18:38:50 GMT  
		Size: 3.2 MB (3187063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27ef55b983d705ad846a6230d337a47f6117be9400e6a968feedf50b536871d`  
		Last Modified: Thu, 23 Nov 2017 01:28:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.9` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:9d4d1b447ecce5006fc94883443e30ef8c1dd36692e31b169653bbb7c413ee14
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55965966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24526559d37d0d5f7ad7e84f745371abb74dc9bce8928daeac1f20577a7088ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:15:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:17:22 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:17:23 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:17:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:17:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdec31884097071ad55a984ea9ec5cdb5f3ce413a0f052deaf919135ab24fb7a`  
		Last Modified: Mon, 09 Oct 2017 22:17:54 GMT  
		Size: 1.8 MB (1788308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b230c8b8513827b0873c69aa43014e82adf9ab3129af7a5e09797d1bfff3d`  
		Last Modified: Mon, 09 Oct 2017 22:18:02 GMT  
		Size: 3.3 MB (3297196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85db90d0b4842330b5fbc0d8ef492a3cb24eb8f2e6b2e44ade185f47673a2cd4`  
		Last Modified: Mon, 09 Oct 2017 22:18:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.9` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:963652da29bee31f8bdb238dc79bcc569d1eae325415b0c4da418c1724cefce7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53642317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:670c8073206106df1571cb60f88eda315ba93c23e8e2db77149662a3b60b240c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:22:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:32 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:23:33 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:23:33 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:24:33 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:24:34 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:24:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:24:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451372fb42d39916c53943f9b5b45c8a337bddfc34a106620c481e2af578d924`  
		Last Modified: Mon, 09 Oct 2017 22:25:11 GMT  
		Size: 1.7 MB (1710751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535936c005ff8f2acb280ff75738b14facefb87f1d8206aa6e9355ad6620a901`  
		Last Modified: Mon, 09 Oct 2017 22:25:23 GMT  
		Size: 3.2 MB (3244687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae277e38475c4d8dc68411963815d2aabfc9585a0dbc72a77ad0cd31716a13`  
		Last Modified: Mon, 09 Oct 2017 22:25:25 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.9` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:908a11b5ff87604b0f2542660d6c3db51dacdcf56e32beade864af08130612e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55063727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb02ff2765001e74565eac8052078939e106b229a1ceecea752a765be2dadbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:47:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:14 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 23:50:16 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 23:50:17 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 23:52:44 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:52:45 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:52:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:52:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be6c2ea89b016385ef444da5df4e04d7d7efe719badc6b5553eaa0fb4a7bf18`  
		Last Modified: Mon, 09 Oct 2017 23:54:22 GMT  
		Size: 1.8 MB (1814020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a569b04a75908431ab7ef495e419aa2eadc63acd49ca96908cf95b53f98df0`  
		Last Modified: Mon, 09 Oct 2017 23:54:47 GMT  
		Size: 3.3 MB (3319827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b1ea36bd9b11b7a02c83f10a90a9fb828e62090159ae59b1ee46df0a56e97b`  
		Last Modified: Mon, 09 Oct 2017 23:54:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.9` - linux; 386

```console
$ docker pull haproxy@sha256:42eead36ae99a6504905ccd8507b73d26a4b0f954616c1213e8f1ccbcceb780f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59953829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19a275c16c6b9a500cadb4446c9c60282c4a6baa675541a29a82e588e6e309e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:54:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 23:57:25 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:57:25 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:57:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:57:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c536ad191013d8dbaa4b62a373a437a7ef9d1bafcde9479aa41a13e59c2ee`  
		Last Modified: Mon, 09 Oct 2017 23:58:13 GMT  
		Size: 4.1 MB (4106200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2634265724bfa049a2fc470154e81f5c7f4570bb2fed38526ad337076e351d`  
		Last Modified: Mon, 09 Oct 2017 23:58:30 GMT  
		Size: 3.1 MB (3073210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df862f9c23d7cfa5a3d6e5006af8d9ffd1081364eee45b9d4c99d98c9c08fce`  
		Last Modified: Mon, 09 Oct 2017 23:58:28 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.9` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4d7cb81313d8bd8e1ea9bb0f958d3e902cd1ef487dad685dc018c7c2742b1d8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57118208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789d7791fbe7fbf5ef73c5b89e351683c4fbb832ffe851528a4e596d3c31b5ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:02:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:59 GMT
ENV HAPROXY_MAJOR=1.7
# Tue, 10 Oct 2017 01:12:04 GMT
ENV HAPROXY_VERSION=1.7.9
# Tue, 10 Oct 2017 01:12:08 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Tue, 10 Oct 2017 01:20:49 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:20:54 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 10 Oct 2017 01:20:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:21:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9729b12eba285f16c1cc872fe7fb77f22feb96259f3ca0ae16e305194b32255e`  
		Last Modified: Tue, 10 Oct 2017 01:21:52 GMT  
		Size: 1.9 MB (1930073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62858fb551065f2e52f39002873423dcf5fce93b9b2748e04d2d596479968db6`  
		Last Modified: Tue, 10 Oct 2017 01:22:07 GMT  
		Size: 3.4 MB (3377827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b77a8b897124ce62df02e4250eebbc87c1766221e6249018a50808b4a33c2bb`  
		Last Modified: Tue, 10 Oct 2017 01:22:06 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.9` - linux; s390x

```console
$ docker pull haproxy@sha256:d2e85a3e4da80a1d0cdd891771cd7a5bae50fa33c2a38db0bbb0d4b5544e50eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58235638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecef877761616b530a1ccf7488c772f6cf743054666c977621f474db5da21dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:30:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:32:29 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:32:29 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:32:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:32:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e49e95a1e4505b2125ac65178be586bc90d905dba13a71f9c6ba626f92c1f7a`  
		Last Modified: Mon, 09 Oct 2017 22:33:02 GMT  
		Size: 2.0 MB (2008744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2761b6d6d4d1fea42b6f876c1ffd54643c2d65480288b761075b4b24a4f8a578`  
		Last Modified: Mon, 09 Oct 2017 22:33:12 GMT  
		Size: 3.4 MB (3437460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2de5a18b4f93e88aa73f9bfc87a9fe7bf3a6ead53f5e34079470f4798c1348`  
		Last Modified: Mon, 09 Oct 2017 22:33:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.9-alpine`

```console
$ docker pull haproxy@sha256:dc91a20e6a05caf8e8bae1719a5a29ff186eec23fc764184b904231575a94276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.7.9-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:cfb3894ab4b41be646a6214753d2d8b4aba6419e1226adf1c8ae9024f8100296
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6746449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e3fb63d1ff769108a689ea308f4ea32ddd4cf40444d64c4ba9d7df29c82851`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_VERSION=1.7.9
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Thu, 23 Nov 2017 01:21:48 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 23 Nov 2017 01:22:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:22:16 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:22:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53419ca182f2d11da5b236321fc22ce50fa1787f9b7607d30a961e9ab351e4ff`  
		Last Modified: Thu, 23 Nov 2017 01:29:15 GMT  
		Size: 4.8 MB (4775810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82beadf10fb1c3e8b039855de74b6e8ea902f14ad5304fe1f083dd53bb23b3ef`  
		Last Modified: Thu, 23 Nov 2017 01:29:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:dc91a20e6a05caf8e8bae1719a5a29ff186eec23fc764184b904231575a94276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.7-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:cfb3894ab4b41be646a6214753d2d8b4aba6419e1226adf1c8ae9024f8100296
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6746449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e3fb63d1ff769108a689ea308f4ea32ddd4cf40444d64c4ba9d7df29c82851`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_VERSION=1.7.9
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Thu, 23 Nov 2017 01:21:48 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 23 Nov 2017 01:22:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:22:16 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:22:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53419ca182f2d11da5b236321fc22ce50fa1787f9b7607d30a961e9ab351e4ff`  
		Last Modified: Thu, 23 Nov 2017 01:29:15 GMT  
		Size: 4.8 MB (4775810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82beadf10fb1c3e8b039855de74b6e8ea902f14ad5304fe1f083dd53bb23b3ef`  
		Last Modified: Thu, 23 Nov 2017 01:29:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-rc`

```console
$ docker pull haproxy@sha256:78f47bbe6606a4c5d4da5ffbc53f85f24d2433f96c6b1ea04fb2423810f4f34e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.8-rc` - linux; amd64

```console
$ docker pull haproxy@sha256:2efa6411a00952c6bfbe5f09ac10c749c2626413bbaac8675f9dfc5ccb611467
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28229583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeba3e7e22fe4d45ab29cd02abf51fb49455f1ba44ffc313ed5634bdffb1d370`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 01:23:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 01:23:44 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:23:44 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 01:23:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:23:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d775ae156140f3febe57be6b7e48f1a7273cad78e7fc0cb62270a38de4580`  
		Last Modified: Thu, 23 Nov 2017 01:29:43 GMT  
		Size: 2.1 MB (2102289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f4f9a97706056443f7c78e06662de199b3279c5b4359656dfce0de51f3d94e`  
		Last Modified: Thu, 23 Nov 2017 01:29:42 GMT  
		Size: 3.6 MB (3634564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb88baa0d81691cda7723e57ad2cef80d2e0aba3d9a7dfadcead628217d1ca91`  
		Last Modified: Thu, 23 Nov 2017 01:29:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-rc4`

```console
$ docker pull haproxy@sha256:78f47bbe6606a4c5d4da5ffbc53f85f24d2433f96c6b1ea04fb2423810f4f34e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.8-rc4` - linux; amd64

```console
$ docker pull haproxy@sha256:2efa6411a00952c6bfbe5f09ac10c749c2626413bbaac8675f9dfc5ccb611467
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28229583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeba3e7e22fe4d45ab29cd02abf51fb49455f1ba44ffc313ed5634bdffb1d370`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 01:23:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 01:23:44 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:23:44 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 01:23:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:23:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d775ae156140f3febe57be6b7e48f1a7273cad78e7fc0cb62270a38de4580`  
		Last Modified: Thu, 23 Nov 2017 01:29:43 GMT  
		Size: 2.1 MB (2102289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f4f9a97706056443f7c78e06662de199b3279c5b4359656dfce0de51f3d94e`  
		Last Modified: Thu, 23 Nov 2017 01:29:42 GMT  
		Size: 3.6 MB (3634564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb88baa0d81691cda7723e57ad2cef80d2e0aba3d9a7dfadcead628217d1ca91`  
		Last Modified: Thu, 23 Nov 2017 01:29:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-rc4-alpine`

```console
$ docker pull haproxy@sha256:aec06ac0768de356af6263a5455a45114df11f3af26715bf9ff270964dad2b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.8-rc4-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:16fc7da84d4b6b35285a5ed3a49e1817f76ae7053dab660ebac27800ef093dc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7614578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a710d6d1c6e665754d2c26419a79073a2ae008a69e0a6a9864e4bf4e5a8089f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 01:23:57 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 01:23:57 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 01:23:57 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 01:23:57 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 23 Nov 2017 01:24:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:24:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 01:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:24:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ec85b823e8dba4f419d9a7af27c48508c20f61d74c6c1131cad56000ffadea`  
		Last Modified: Thu, 23 Nov 2017 01:30:07 GMT  
		Size: 5.6 MB (5622763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ab22d5b0fafa254d188ae7bbb4a34cd8dbe1e7bf30ec74d028699a9971e7cf`  
		Last Modified: Thu, 23 Nov 2017 01:30:05 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-rc-alpine`

```console
$ docker pull haproxy@sha256:aec06ac0768de356af6263a5455a45114df11f3af26715bf9ff270964dad2b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.8-rc-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:16fc7da84d4b6b35285a5ed3a49e1817f76ae7053dab660ebac27800ef093dc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7614578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a710d6d1c6e665754d2c26419a79073a2ae008a69e0a6a9864e4bf4e5a8089f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 01:23:57 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 01:23:57 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 01:23:57 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 01:23:57 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 23 Nov 2017 01:24:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:24:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 01:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:24:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ec85b823e8dba4f419d9a7af27c48508c20f61d74c6c1131cad56000ffadea`  
		Last Modified: Thu, 23 Nov 2017 01:30:07 GMT  
		Size: 5.6 MB (5622763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ab22d5b0fafa254d188ae7bbb4a34cd8dbe1e7bf30ec74d028699a9971e7cf`  
		Last Modified: Thu, 23 Nov 2017 01:30:05 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:dc91a20e6a05caf8e8bae1719a5a29ff186eec23fc764184b904231575a94276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:cfb3894ab4b41be646a6214753d2d8b4aba6419e1226adf1c8ae9024f8100296
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6746449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e3fb63d1ff769108a689ea308f4ea32ddd4cf40444d64c4ba9d7df29c82851`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_VERSION=1.7.9
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Thu, 23 Nov 2017 01:21:48 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 23 Nov 2017 01:22:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:22:16 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:22:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53419ca182f2d11da5b236321fc22ce50fa1787f9b7607d30a961e9ab351e4ff`  
		Last Modified: Thu, 23 Nov 2017 01:29:15 GMT  
		Size: 4.8 MB (4775810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82beadf10fb1c3e8b039855de74b6e8ea902f14ad5304fe1f083dd53bb23b3ef`  
		Last Modified: Thu, 23 Nov 2017 01:29:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:dc91a20e6a05caf8e8bae1719a5a29ff186eec23fc764184b904231575a94276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:cfb3894ab4b41be646a6214753d2d8b4aba6419e1226adf1c8ae9024f8100296
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6746449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e3fb63d1ff769108a689ea308f4ea32ddd4cf40444d64c4ba9d7df29c82851`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_VERSION=1.7.9
# Fri, 03 Nov 2017 23:05:26 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Thu, 23 Nov 2017 01:21:48 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 23 Nov 2017 01:22:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:22:16 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:22:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53419ca182f2d11da5b236321fc22ce50fa1787f9b7607d30a961e9ab351e4ff`  
		Last Modified: Thu, 23 Nov 2017 01:29:15 GMT  
		Size: 4.8 MB (4775810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82beadf10fb1c3e8b039855de74b6e8ea902f14ad5304fe1f083dd53bb23b3ef`  
		Last Modified: Thu, 23 Nov 2017 01:29:13 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:c800122d1bbaa83a89ec1ec4a5ae4a65808014083fff401c4f74d1cdddb9532a
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

### `haproxy:latest` - linux; amd64

```console
$ docker pull haproxy@sha256:93f13da4fad86d45acb8d798184600b43ee312560c5482c70cde3cf33ca43d74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57805478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfbf9abf35d29acf8a6eb04cb074c69024680a9cccf6dffda26ba94f8eb7f5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:22:21 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:35:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:37:01 GMT
ENV HAPROXY_MAJOR=1.7
# Sat, 04 Nov 2017 18:37:02 GMT
ENV HAPROXY_VERSION=1.7.9
# Sat, 04 Nov 2017 18:37:02 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Sat, 04 Nov 2017 18:37:49 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:21:43 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Thu, 23 Nov 2017 01:21:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:21:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bea5eb3b594bb7fe70986b3b94a1c8e10ae64eb0d629d432f1f040407ae4ff`  
		Last Modified: Sat, 04 Nov 2017 05:28:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1faa1a99a6c9f063aaec96dc357a7fd73386bdc0ed80d3217c993300d19ded`  
		Last Modified: Sat, 04 Nov 2017 18:38:37 GMT  
		Size: 2.0 MB (2022663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b93f1a522d86e0a1f5e3389c26081f35931413f942e159e1270c16a0c3429df`  
		Last Modified: Sat, 04 Nov 2017 18:38:50 GMT  
		Size: 3.2 MB (3187063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27ef55b983d705ad846a6230d337a47f6117be9400e6a968feedf50b536871d`  
		Last Modified: Thu, 23 Nov 2017 01:28:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:9d4d1b447ecce5006fc94883443e30ef8c1dd36692e31b169653bbb7c413ee14
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55965966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24526559d37d0d5f7ad7e84f745371abb74dc9bce8928daeac1f20577a7088ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:15:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:16:14 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:17:22 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:17:23 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:17:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:17:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ad4b174a26dbbca11e34f4b7aaf95b1e5dd74295787a807ddbf5167e6ece4`  
		Last Modified: Mon, 09 Oct 2017 21:47:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdec31884097071ad55a984ea9ec5cdb5f3ce413a0f052deaf919135ab24fb7a`  
		Last Modified: Mon, 09 Oct 2017 22:17:54 GMT  
		Size: 1.8 MB (1788308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b230c8b8513827b0873c69aa43014e82adf9ab3129af7a5e09797d1bfff3d`  
		Last Modified: Mon, 09 Oct 2017 22:18:02 GMT  
		Size: 3.3 MB (3297196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85db90d0b4842330b5fbc0d8ef492a3cb24eb8f2e6b2e44ade185f47673a2cd4`  
		Last Modified: Mon, 09 Oct 2017 22:18:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:963652da29bee31f8bdb238dc79bcc569d1eae325415b0c4da418c1724cefce7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53642317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:670c8073206106df1571cb60f88eda315ba93c23e8e2db77149662a3b60b240c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:22:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:32 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:23:33 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:23:33 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:24:33 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:24:34 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:24:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:24:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffae28bc0b103b991111eb739a910a6487009e8d6fcaca3ab7753f68375a948`  
		Last Modified: Mon, 09 Oct 2017 21:49:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451372fb42d39916c53943f9b5b45c8a337bddfc34a106620c481e2af578d924`  
		Last Modified: Mon, 09 Oct 2017 22:25:11 GMT  
		Size: 1.7 MB (1710751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535936c005ff8f2acb280ff75738b14facefb87f1d8206aa6e9355ad6620a901`  
		Last Modified: Mon, 09 Oct 2017 22:25:23 GMT  
		Size: 3.2 MB (3244687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae277e38475c4d8dc68411963815d2aabfc9585a0dbc72a77ad0cd31716a13`  
		Last Modified: Mon, 09 Oct 2017 22:25:25 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:908a11b5ff87604b0f2542660d6c3db51dacdcf56e32beade864af08130612e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55063727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb02ff2765001e74565eac8052078939e106b229a1ceecea752a765be2dadbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:27 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:47:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:50:14 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 23:50:16 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 23:50:17 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 23:52:44 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:52:45 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:52:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:52:47 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3b22b4f6a86cdf4777b84e3228cf093430ca765d0b69865559be41451db9d`  
		Last Modified: Mon, 09 Oct 2017 21:52:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be6c2ea89b016385ef444da5df4e04d7d7efe719badc6b5553eaa0fb4a7bf18`  
		Last Modified: Mon, 09 Oct 2017 23:54:22 GMT  
		Size: 1.8 MB (1814020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a569b04a75908431ab7ef495e419aa2eadc63acd49ca96908cf95b53f98df0`  
		Last Modified: Mon, 09 Oct 2017 23:54:47 GMT  
		Size: 3.3 MB (3319827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b1ea36bd9b11b7a02c83f10a90a9fb828e62090159ae59b1ee46df0a56e97b`  
		Last Modified: Mon, 09 Oct 2017 23:54:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:42eead36ae99a6504905ccd8507b73d26a4b0f954616c1213e8f1ccbcceb780f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59953829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19a275c16c6b9a500cadb4446c9c60282c4a6baa675541a29a82e588e6e309e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 23:54:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 23:56:10 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 23:57:25 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 23:57:25 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 23:57:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 23:57:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad5e659443b29357229700e7959f23d9f2cee88f7be845bb5a58d0dd2e2ef`  
		Last Modified: Mon, 09 Oct 2017 21:48:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c536ad191013d8dbaa4b62a373a437a7ef9d1bafcde9479aa41a13e59c2ee`  
		Last Modified: Mon, 09 Oct 2017 23:58:13 GMT  
		Size: 4.1 MB (4106200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2634265724bfa049a2fc470154e81f5c7f4570bb2fed38526ad337076e351d`  
		Last Modified: Mon, 09 Oct 2017 23:58:30 GMT  
		Size: 3.1 MB (3073210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df862f9c23d7cfa5a3d6e5006af8d9ffd1081364eee45b9d4c99d98c9c08fce`  
		Last Modified: Mon, 09 Oct 2017 23:58:28 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:4d7cb81313d8bd8e1ea9bb0f958d3e902cd1ef487dad685dc018c7c2742b1d8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57118208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789d7791fbe7fbf5ef73c5b89e351683c4fbb832ffe851528a4e596d3c31b5ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:05 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 01:02:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:59 GMT
ENV HAPROXY_MAJOR=1.7
# Tue, 10 Oct 2017 01:12:04 GMT
ENV HAPROXY_VERSION=1.7.9
# Tue, 10 Oct 2017 01:12:08 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Tue, 10 Oct 2017 01:20:49 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Oct 2017 01:20:54 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 10 Oct 2017 01:20:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 01:21:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d98f03dc8152ef6ae9806d71b5974425dac604b038e1b58e555500f10db51e`  
		Last Modified: Mon, 09 Oct 2017 21:49:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9729b12eba285f16c1cc872fe7fb77f22feb96259f3ca0ae16e305194b32255e`  
		Last Modified: Tue, 10 Oct 2017 01:21:52 GMT  
		Size: 1.9 MB (1930073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62858fb551065f2e52f39002873423dcf5fce93b9b2748e04d2d596479968db6`  
		Last Modified: Tue, 10 Oct 2017 01:22:07 GMT  
		Size: 3.4 MB (3377827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b77a8b897124ce62df02e4250eebbc87c1766221e6249018a50808b4a33c2bb`  
		Last Modified: Tue, 10 Oct 2017 01:22:06 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:d2e85a3e4da80a1d0cdd891771cd7a5bae50fa33c2a38db0bbb0d4b5544e50eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58235638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecef877761616b530a1ccf7488c772f6cf743054666c977621f474db5da21dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:42:30 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 09 Oct 2017 22:30:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_MAJOR=1.7
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_VERSION=1.7.9
# Mon, 09 Oct 2017 22:31:48 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Mon, 09 Oct 2017 22:32:29 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Mon, 09 Oct 2017 22:32:29 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Mon, 09 Oct 2017 22:32:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:32:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e777c3379067dfad13d2aaa5da26ed5cb65dcad165a9176c44b8b2c561cb3`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e49e95a1e4505b2125ac65178be586bc90d905dba13a71f9c6ba626f92c1f7a`  
		Last Modified: Mon, 09 Oct 2017 22:33:02 GMT  
		Size: 2.0 MB (2008744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2761b6d6d4d1fea42b6f876c1ffd54643c2d65480288b761075b4b24a4f8a578`  
		Last Modified: Mon, 09 Oct 2017 22:33:12 GMT  
		Size: 3.4 MB (3437460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2de5a18b4f93e88aa73f9bfc87a9fe7bf3a6ead53f5e34079470f4798c1348`  
		Last Modified: Mon, 09 Oct 2017 22:33:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:rc`

```console
$ docker pull haproxy@sha256:78f47bbe6606a4c5d4da5ffbc53f85f24d2433f96c6b1ea04fb2423810f4f34e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:rc` - linux; amd64

```console
$ docker pull haproxy@sha256:2efa6411a00952c6bfbe5f09ac10c749c2626413bbaac8675f9dfc5ccb611467
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28229583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeba3e7e22fe4d45ab29cd02abf51fb49455f1ba44ffc313ed5634bdffb1d370`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 01:23:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 01:23:44 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:23:44 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 01:23:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:23:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d775ae156140f3febe57be6b7e48f1a7273cad78e7fc0cb62270a38de4580`  
		Last Modified: Thu, 23 Nov 2017 01:29:43 GMT  
		Size: 2.1 MB (2102289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f4f9a97706056443f7c78e06662de199b3279c5b4359656dfce0de51f3d94e`  
		Last Modified: Thu, 23 Nov 2017 01:29:42 GMT  
		Size: 3.6 MB (3634564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb88baa0d81691cda7723e57ad2cef80d2e0aba3d9a7dfadcead628217d1ca91`  
		Last Modified: Thu, 23 Nov 2017 01:29:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:rc-alpine`

```console
$ docker pull haproxy@sha256:aec06ac0768de356af6263a5455a45114df11f3af26715bf9ff270964dad2b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:rc-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:16fc7da84d4b6b35285a5ed3a49e1817f76ae7053dab660ebac27800ef093dc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7614578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a710d6d1c6e665754d2c26419a79073a2ae008a69e0a6a9864e4bf4e5a8089f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Thu, 23 Nov 2017 01:23:57 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 01:23:57 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 01:23:57 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 01:23:57 GMT
ENV LUA_VERSION=5.3.4 LUA_SHA1=79790cfd40e09ba796b01a571d4d63b52b1cd950
# Thu, 23 Nov 2017 01:24:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O lua.tar.gz "https://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz" 	&& echo "$LUA_SHA1 *lua.tar.gz" | sha1sum -c 	&& mkdir -p /usr/src/lua 	&& tar -xzf lua.tar.gz -C /usr/src/lua --strip-components=1 	&& rm lua.tar.gz 	&& make -C /usr/src/lua -j "$(getconf _NPROCESSORS_ONLN)" linux 	&& make -C /usr/src/lua install 		INSTALL_BIN='/usr/src/lua/trash/bin' 		INSTALL_CMOD='/usr/src/lua/trash/cmod' 		INSTALL_LMOD='/usr/src/lua/trash/lmod' 		INSTALL_MAN='/usr/src/lua/trash/man' 		INSTALL_INC='/usr/local/lua-install/inc' 		INSTALL_LIB='/usr/local/lua-install/lib' 	&& rm -rf /usr/src/lua 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/local/lua-install/inc LUA_LIB=/usr/local/lua-install/lib 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& rm -rf /usr/local/lua-install 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 23 Nov 2017 01:24:35 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 01:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:24:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ec85b823e8dba4f419d9a7af27c48508c20f61d74c6c1131cad56000ffadea`  
		Last Modified: Thu, 23 Nov 2017 01:30:07 GMT  
		Size: 5.6 MB (5622763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ab22d5b0fafa254d188ae7bbb4a34cd8dbe1e7bf30ec74d028699a9971e7cf`  
		Last Modified: Thu, 23 Nov 2017 01:30:05 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
