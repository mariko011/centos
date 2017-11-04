## `haproxy:latest`

```console
$ docker pull haproxy@sha256:55d6e65a566adeb8e2f942dd03399f0ea6b979acf7a44789eb61d4ac7dda529b
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
$ docker pull haproxy@sha256:94f5afeb9296dd05816d912b66e36cf639669f46d5328a77c5ed4f0d3fdaf5dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57805420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8177ad6f3295fb6e3ef8d49b143b094c0fed89c600a1107a22e51c8b63aa91b`
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
# Sat, 04 Nov 2017 18:37:49 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Sat, 04 Nov 2017 18:37:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:37:50 GMT
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
	-	`sha256:00a9f3dd27e0724a92d0f294684f76b72e31647c9f565116c1e651037dfe7c0f`  
		Last Modified: Sat, 04 Nov 2017 18:38:50 GMT  
		Size: 345.0 B  
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
