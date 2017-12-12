## `haproxy:latest`

```console
$ docker pull haproxy@sha256:838da6bfe90f485253a1eec3b6b4fb0437e734bdd5710e96d9c1f4577819b388
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
$ docker pull haproxy@sha256:9d66628439b2750a92e02ab1444bd8b543823be52483867e6daa36e82774627c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28211715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1b621468560ace94b350f6ae291b45c8154693b73e61d85b2a715813ffc2cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:22:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:22:11 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 12 Dec 2017 04:22:11 GMT
ENV HAPROXY_VERSION=1.8.1
# Tue, 12 Dec 2017 04:22:11 GMT
ENV HAPROXY_MD5=e42892d4b6ee33200fccaa1d81837e49
# Tue, 12 Dec 2017 04:22:50 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 04:22:50 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 12 Dec 2017 04:22:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 04:22:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cdaa8b3baaf1123026bf0e84d9afea2e04e74ca8c4d3aaacf1b774b627b03f`  
		Last Modified: Tue, 12 Dec 2017 04:25:08 GMT  
		Size: 2.1 MB (2102222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b12ec5042dc3bb3e8a01c5d6240057afc8712e8ad6ac5fc1be369f64c981e`  
		Last Modified: Tue, 12 Dec 2017 04:25:10 GMT  
		Size: 3.6 MB (3623394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc8fcb06e65eede96eb153ddc179e6b5690055f7f643e2c306d56e4563a7020`  
		Last Modified: Tue, 12 Dec 2017 04:25:08 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:4ed02ca82c27af1d573804ba39ce18a49b53cb9fe703ba14ba75014ba68992a1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.5 MB (26548463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e33082fd467fac42cfa5f3c9bfc5c86cf0bc18f6aaf5efcfcc24db8656415ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 09:58:32 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 09:58:32 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 05 Dec 2017 09:57:55 GMT
ENV HAPROXY_VERSION=1.8.1
# Tue, 05 Dec 2017 09:57:55 GMT
ENV HAPROXY_MD5=e42892d4b6ee33200fccaa1d81837e49
# Tue, 05 Dec 2017 09:58:33 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Dec 2017 09:58:34 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 05 Dec 2017 09:58:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 09:58:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31733362de6bf9588f054cd414af095827c165f1f22befcf4406d10bb29ad527`  
		Last Modified: Thu, 23 Nov 2017 10:00:41 GMT  
		Size: 1.8 MB (1816054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535e2663e2acc5a651bde09b46f3007ce3b2672fabbaf004f3331e56fed1b816`  
		Last Modified: Tue, 05 Dec 2017 09:58:53 GMT  
		Size: 3.6 MB (3565777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5fb57877cf10ae9b42d47cb7c02be0ceef8f054f73ee4a7a164a9a0dae2b4a`  
		Last Modified: Tue, 05 Dec 2017 09:58:52 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:2160d0c7ed863bcfe3e212c83c4a616edc26c04ff2f0b2399a8acde51d7e24d2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24527431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c3145ecf325aa7a049a29f8efe9f220ede7c4fccf9db0fa7fce1d9b1830651`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 17:23:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 17:23:50 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 05 Dec 2017 17:23:11 GMT
ENV HAPROXY_VERSION=1.8.1
# Tue, 05 Dec 2017 17:23:12 GMT
ENV HAPROXY_MD5=e42892d4b6ee33200fccaa1d81837e49
# Tue, 05 Dec 2017 17:23:36 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Dec 2017 17:23:37 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 05 Dec 2017 17:23:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 17:23:37 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101d4d936d95ab3dbdcb7ec3808ff887e54ec3c7862ff652a2132bb21e27d0df`  
		Last Modified: Thu, 23 Nov 2017 17:26:13 GMT  
		Size: 1.7 MB (1736053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fefdad9564ae3de58b2ffbb9b93f9582ab45a40fedef226191e711f429cccfe`  
		Last Modified: Tue, 05 Dec 2017 17:24:00 GMT  
		Size: 3.5 MB (3513864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51fd0cc2c02c5bb87b8dc712a14e3abbe745a85499f13945af15c729bc816d8`  
		Last Modified: Tue, 05 Dec 2017 17:24:01 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:aa2fbad9a99d780ad75d69e17b0506b7d24ad4b9727e6cb250e062ad7c868969
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25688322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b413f34a3b7276b60e06d6cf655a84b0243c74a3b7983cc21084537c7868f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 20:43:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 20:43:51 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 05 Dec 2017 20:42:46 GMT
ENV HAPROXY_VERSION=1.8.1
# Tue, 05 Dec 2017 20:42:46 GMT
ENV HAPROXY_MD5=e42892d4b6ee33200fccaa1d81837e49
# Tue, 05 Dec 2017 20:44:32 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Dec 2017 20:44:33 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 05 Dec 2017 20:44:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 20:44:35 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab04b73ae073d0004082c69ca62cd1e64d97c53f45bfebff13383b7c3d859a12`  
		Last Modified: Thu, 23 Nov 2017 20:50:04 GMT  
		Size: 1.8 MB (1818801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be72b78f2896c4dc155fe51ca8a550c88a23ebbeff7ac5f5d3fb6a5d2b2eb094`  
		Last Modified: Tue, 05 Dec 2017 20:46:30 GMT  
		Size: 3.5 MB (3531998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2e3c7837ff5d91c8de2e2b38d2010485b1c1715ed18b7a920eb382eefc5ca`  
		Last Modified: Tue, 05 Dec 2017 20:46:29 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:9e006534cd2d7271b8532cd01abcb3767509e14aaad1f8e33bce0d1f14bd9053
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28795374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e8cafc500f61a26c14e338ae7495c0899741770d9e9812814cc3a37ba8f408`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 05:37:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 05:37:02 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 05 Dec 2017 05:32:34 GMT
ENV HAPROXY_VERSION=1.8.1
# Tue, 05 Dec 2017 05:32:34 GMT
ENV HAPROXY_MD5=e42892d4b6ee33200fccaa1d81837e49
# Tue, 05 Dec 2017 05:33:15 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Dec 2017 05:33:16 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 05 Dec 2017 05:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 05:33:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08724654510187f71cbd16d8a1c24b9a6848cf7b598e221a8f85be7502a1e6ca`  
		Last Modified: Thu, 23 Nov 2017 05:41:11 GMT  
		Size: 2.1 MB (2128534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aba9d2b11ea656a0fde11f1428674b7ad7150158a61492ceec946cd8e7a7798`  
		Last Modified: Tue, 05 Dec 2017 05:34:34 GMT  
		Size: 3.5 MB (3537782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27ec104e9ef9e78e41788a879fa3474c60d58eecccd93e9f4868dccef03dc31`  
		Last Modified: Tue, 05 Dec 2017 05:34:31 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:ed78b29bb37d29d36d575a1d9c1a9d3adb32ad6c0e9dd5df402306d4901ea70f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28131317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b263bca2a4e600c843540f0ec3bc05efa65c36578cb03fb30725caa2244bc1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:17:52 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 12 Dec 2017 02:17:53 GMT
ENV HAPROXY_VERSION=1.8.1
# Tue, 12 Dec 2017 02:17:54 GMT
ENV HAPROXY_MD5=e42892d4b6ee33200fccaa1d81837e49
# Tue, 12 Dec 2017 02:21:08 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 02:21:10 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 12 Dec 2017 02:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:21:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a1365bd6d4c9c6db8b5c3305fe4af8e0aa7e654b4460d27bd7c19a55b3616`  
		Last Modified: Tue, 12 Dec 2017 02:22:54 GMT  
		Size: 1.8 MB (1781148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a334b7b8c7c9742f1266f43854f6b5ea6d682047a1c812e3457f6da4782f6965`  
		Last Modified: Tue, 12 Dec 2017 02:22:54 GMT  
		Size: 3.6 MB (3610077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934e8287d3c0ecff99a70a5a4143f2a682d488d8822dfeba773028aff2b356e6`  
		Last Modified: Tue, 12 Dec 2017 02:22:52 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:75e7c534384ca70c8b671a4beb13a8843045f112d346336c0123e1e9c822b1d5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27883879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422e9727a211f905b42ca2e6dbc8ccbc96d4ac346ee99de04c4a6819ad8afc53`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:19:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:19:39 GMT
ENV HAPROXY_MAJOR=1.8
# Tue, 12 Dec 2017 07:19:40 GMT
ENV HAPROXY_VERSION=1.8.1
# Tue, 12 Dec 2017 07:19:40 GMT
ENV HAPROXY_MD5=e42892d4b6ee33200fccaa1d81837e49
# Tue, 12 Dec 2017 07:20:29 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:20:29 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Tue, 12 Dec 2017 07:20:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:20:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bc8a405bdaf03a9c517d128312ae2d152475467884aa84696f8c32cb39eabb`  
		Last Modified: Tue, 12 Dec 2017 07:21:49 GMT  
		Size: 1.8 MB (1841046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275f882688c782d5c571f369e8ae5ca47d7a4a066aaacf2adc036bc0d7eef566`  
		Last Modified: Tue, 12 Dec 2017 07:21:50 GMT  
		Size: 3.7 MB (3708598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfed41e87aae78edb8b97e24532c64484c91f7c85169e59493f729d2ab9f01`  
		Last Modified: Tue, 12 Dec 2017 07:21:49 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
