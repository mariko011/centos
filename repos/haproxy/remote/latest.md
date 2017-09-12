## `haproxy:latest`

```console
$ docker pull haproxy@sha256:07139ba17c28f67dd465263c99659f539b0613bb38d5c8e463e018b0648c2e3c
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
$ docker pull haproxy@sha256:7c737bad3bccd41b7994fdcdb5586b8a5a8497e975b4856471484a947ac9e099
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57805897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab1c44d0d50dda9fbc3540467cd708e5ddebc080d5ea94ef8c0cb9d6a4a2f23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:04:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Sep 2017 21:23:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:25:09 GMT
ENV HAPROXY_MAJOR=1.7
# Tue, 12 Sep 2017 21:25:09 GMT
ENV HAPROXY_VERSION=1.7.9
# Tue, 12 Sep 2017 21:25:09 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Tue, 12 Sep 2017 21:25:57 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 21:25:57 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 12 Sep 2017 21:25:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:25:58 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57095d1c44f233ca8d98890a008c637d8f5263adf74f0a30579836c3983a9bc8`  
		Last Modified: Thu, 07 Sep 2017 23:11:39 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16988a60851d11afc75b025ab03f54bd8e193e9466589a29b4bbd7481b0b9a1b`  
		Last Modified: Tue, 12 Sep 2017 21:27:26 GMT  
		Size: 2.0 MB (2022672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997b4bb06ef6fd72713c7af3e127efcd045f819f9ba8a53dd33abec2115fcb76`  
		Last Modified: Tue, 12 Sep 2017 21:27:45 GMT  
		Size: 3.2 MB (3187116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794eb68382be025c6eda7011cce9bde4bac30170d16533b855ab0c2de8a97c99`  
		Last Modified: Tue, 12 Sep 2017 21:27:44 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:b40a08942f071b613825c3d7105a84058cc75ddfaf382f592c62ec22b526824c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55964092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:392a1859f9ea5585e9a0f7d4a037aca53053c3ae31aedbfcae8a464a90b3d475`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:56:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 23:14:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 23:29:22 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 08 Sep 2017 23:29:23 GMT
ENV HAPROXY_VERSION=1.7.9
# Fri, 08 Sep 2017 23:29:24 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Fri, 08 Sep 2017 23:38:38 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 23:38:39 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 08 Sep 2017 23:38:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 23:38:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec6eb2dde9f9e22c7218a4ab3d97a8ab6aedb0bb8390dc9dd86822e39687507`  
		Last Modified: Fri, 08 Sep 2017 20:12:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20690247445c41980043d4f0430cadfe4d12d5ec73312651bbb7bff651a48b87`  
		Last Modified: Fri, 08 Sep 2017 23:39:52 GMT  
		Size: 1.8 MB (1788228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9ecdafa5eaeb3e4bc4ca1a489a455e09a94b267318bdaf3fcd6977b0053862`  
		Last Modified: Fri, 08 Sep 2017 23:40:13 GMT  
		Size: 3.3 MB (3297808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ef4c0a7664eebc84ed33abe12c69cb7a357472607cf842641a291911ebc1dd`  
		Last Modified: Fri, 08 Sep 2017 23:40:12 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:cafacba9f22b0323e9e06d3c306931542ae95dc164b4ebeeb374cde187765e80
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53638472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96710aa0cada664b585de7d619863cc7b1a4960995538539e0bef7bd683dc199`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:40:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Sep 2017 07:37:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 07:48:40 GMT
ENV HAPROXY_MAJOR=1.7
# Tue, 12 Sep 2017 07:48:41 GMT
ENV HAPROXY_VERSION=1.7.9
# Tue, 12 Sep 2017 07:48:42 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Tue, 12 Sep 2017 07:58:48 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 07:58:50 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Tue, 12 Sep 2017 07:58:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Sep 2017 07:58:52 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7465345c56e57d4f5936077ff1647ba4f2e9fe6d8aceab8453cc05bc2e16265`  
		Last Modified: Sat, 09 Sep 2017 01:51:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fae30488c8bda888f5b512e12256b1f919c2e0a1298af9061aa6feb19938b7`  
		Last Modified: Tue, 12 Sep 2017 07:59:45 GMT  
		Size: 1.7 MB (1710657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a42687802ad733e3d3e257ec878858019aa45dc08f6946fd919ff50f3bb3bac`  
		Last Modified: Tue, 12 Sep 2017 08:00:01 GMT  
		Size: 3.2 MB (3245170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97af11856ab35a1bb70e104f6963783481a386fcdee285f8894ee628b3fd6e12`  
		Last Modified: Tue, 12 Sep 2017 07:59:59 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:e1eb68768a3fed7e8dcad42eef0a7221ca9d363b2aa3376a584ceaa915093bf3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55063877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dd49512461971786e43b51b0cf419f4099235d01c258e6b4174ed6941e6a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:23:54 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 20:53:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 20:56:20 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 08 Sep 2017 20:56:21 GMT
ENV HAPROXY_VERSION=1.7.9
# Fri, 08 Sep 2017 20:56:23 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Fri, 08 Sep 2017 20:59:12 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 20:59:14 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 08 Sep 2017 20:59:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 20:59:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076495958236d7bdb5452a421c8c7a10288ca80cfa845d0ab92a4e92c547bb0`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906067da207a380275d822f22943924aa94463e698d7e4fbd76f41996ffea862`  
		Last Modified: Fri, 08 Sep 2017 21:00:40 GMT  
		Size: 1.8 MB (1814026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58dc1b6be67fafcc589c4a35dd7e4cd61e9c39592a7dcb97ff7854542df3fb86`  
		Last Modified: Fri, 08 Sep 2017 21:01:09 GMT  
		Size: 3.3 MB (3319825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85be87b8a3afc4d25ba5d14cd6d392c6e8aef8b5e628ba6f43cca5bab4316e8`  
		Last Modified: Fri, 08 Sep 2017 21:01:07 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:5ba2ccf32429d8feb09665e89857a31122c1218301d8b0d380d68046ca082131
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59953093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85a536e454861e1018e361531d2f55fb8c1ee0d3bb91bc8a22eebec1d751659`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:17:57 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 13:50:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:53 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 08 Sep 2017 13:54:53 GMT
ENV HAPROXY_VERSION=1.7.9
# Fri, 08 Sep 2017 13:54:53 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Fri, 08 Sep 2017 13:56:29 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 13:56:30 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 08 Sep 2017 13:56:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 13:56:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cc768172ab89d7a6e85f6de8ef6d326e5dcff81fa0abeacdf106fa59a527fb`  
		Last Modified: Fri, 08 Sep 2017 13:22:57 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d7a124e832213cd390328a628a6abd7809892d1bddc1c665879f5eb03773b1`  
		Last Modified: Fri, 08 Sep 2017 13:57:14 GMT  
		Size: 4.1 MB (4106199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc68a83c2ae74a9163b374ffd3801099d6467b5c0473047a073ee2828880e0a3`  
		Last Modified: Fri, 08 Sep 2017 13:57:31 GMT  
		Size: 3.1 MB (3073200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bf2fe6c71480c5e4440a52d35ec9b9bc334da35493bf16e57308e4a6e080bc`  
		Last Modified: Fri, 08 Sep 2017 13:57:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:cd31d9d851e4a9cf9ec86c99f2974d984e53423b2fc3c20a42e5e9e2b1f2e91f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57116707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2635219a51060cb9e0bc291838b3f53f7a7ae008b84b279405337d204a525cc1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:25 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 01:09:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:10:41 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 08 Sep 2017 01:10:41 GMT
ENV HAPROXY_VERSION=1.7.9
# Fri, 08 Sep 2017 01:10:41 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Fri, 08 Sep 2017 01:11:30 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 01:11:30 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 08 Sep 2017 01:11:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 01:11:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4919532c9228bb9d7e1885752902770f2f552da7fb4342bd31c4182b004fa`  
		Last Modified: Fri, 08 Sep 2017 00:37:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139908bae4d636630bfa6848c84b5b7b80de755bb79c6de258d8937e2feceef7`  
		Last Modified: Fri, 08 Sep 2017 01:12:16 GMT  
		Size: 1.9 MB (1929998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811a1c087ccdd4385690ade364988730125c1762c8704be795d41e84f62aa5f3`  
		Last Modified: Fri, 08 Sep 2017 01:12:33 GMT  
		Size: 3.4 MB (3376571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2824b92feed897410dc29d4e0546ff71ba120e87a470034797bc328dca396a07`  
		Last Modified: Fri, 08 Sep 2017 01:12:31 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:917e4e794c1d497cc72f19dd100aec0ce40f0bf5b7ae894ef575b51dcf73f870
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58235560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a6e402cf214c1905e19279c0d016a815e6492037e52d091b4adb6ec212f98f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:21:45 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 05:46:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:46:44 GMT
ENV HAPROXY_MAJOR=1.7
# Fri, 08 Sep 2017 05:46:45 GMT
ENV HAPROXY_VERSION=1.7.9
# Fri, 08 Sep 2017 05:46:45 GMT
ENV HAPROXY_MD5=a2bbbdd45ffe18d99cdcf26aa992f92d
# Fri, 08 Sep 2017 05:47:17 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 05:47:18 GMT
COPY file:b1cb7b827dc9fcd27909f9c233ac2faa2d7534c25992fa5f3402d22503666d6d in / 
# Fri, 08 Sep 2017 05:47:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 05:47:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c747fbf4faeb1dce4f7abd4d39a590917ebc8c73256a2277eb5e6774a9faade5`  
		Last Modified: Fri, 08 Sep 2017 05:24:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629ff08d4d9c854e198997f9dc91678c6d54b65eb04108405384d6ccd66a7474`  
		Last Modified: Fri, 08 Sep 2017 05:47:42 GMT  
		Size: 2.0 MB (2008749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84eaa35e589b18c020fba2b5a5f8a249c4595b0677844e4989f7384a1a8c900`  
		Last Modified: Fri, 08 Sep 2017 05:47:49 GMT  
		Size: 3.4 MB (3437442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da686e6c02a4cdfcdb4589274d6dafe15a67ab99ac8b1775f212b3226fcaff3`  
		Last Modified: Fri, 08 Sep 2017 05:47:48 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
