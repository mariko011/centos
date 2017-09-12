<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `thrift`

-	[`thrift:0.9`](#thrift09)
-	[`thrift:0.9.3`](#thrift093)
-	[`thrift:0.10`](#thrift010)
-	[`thrift:0.10.0`](#thrift0100)
-	[`thrift:latest`](#thriftlatest)

## `thrift:0.9`

```console
$ docker pull thrift@sha256:f84c89377d7dfe11ccb4ba8591d8be058fbb1449f7a634be823f5e4146f27b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.9` - linux; amd64

```console
$ docker pull thrift@sha256:2d8fb3c0f5d487bc24a42ec3c7ddd2f7d6329240dad11c79e2b4910fced82e78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50199454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfe8b9974ed7f729782aa01ce39c9c8d79fb128a0fa96be023ccfc8bc277fd3`
-	Default Command: `["thrift"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:39:50 GMT
MAINTAINER Adam Hawkins <adam@hawkins.io>
# Tue, 12 Sep 2017 20:39:50 GMT
ENV THRIFT_VERSION=0.9.3
# Tue, 12 Sep 2017 20:43:17 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 20:43:17 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6352be49cfbb349a24fc634a5761faf919c9ad8456912feb33e27b5cd4af8a1b`  
		Last Modified: Tue, 12 Sep 2017 20:48:27 GMT  
		Size: 12.1 MB (12096327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:0.9.3`

```console
$ docker pull thrift@sha256:f84c89377d7dfe11ccb4ba8591d8be058fbb1449f7a634be823f5e4146f27b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.9.3` - linux; amd64

```console
$ docker pull thrift@sha256:2d8fb3c0f5d487bc24a42ec3c7ddd2f7d6329240dad11c79e2b4910fced82e78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50199454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfe8b9974ed7f729782aa01ce39c9c8d79fb128a0fa96be023ccfc8bc277fd3`
-	Default Command: `["thrift"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:39:50 GMT
MAINTAINER Adam Hawkins <adam@hawkins.io>
# Tue, 12 Sep 2017 20:39:50 GMT
ENV THRIFT_VERSION=0.9.3
# Tue, 12 Sep 2017 20:43:17 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 20:43:17 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6352be49cfbb349a24fc634a5761faf919c9ad8456912feb33e27b5cd4af8a1b`  
		Last Modified: Tue, 12 Sep 2017 20:48:27 GMT  
		Size: 12.1 MB (12096327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:0.10`

```console
$ docker pull thrift@sha256:9dee8f580a363dd177c1471ef57b102cdf17ddb1248b1e67490547b0b46a8297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.10` - linux; amd64

```console
$ docker pull thrift@sha256:da1bb13627ecb6eff5babcc91b0e8b1c55fd765c002685707ef418287969af65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51257179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f65991aa4c017b92c4b1a8fe4644d4d5fa176e65c050dad69d865961184c32c`
-	Default Command: `["thrift"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:43:17 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Tue, 12 Sep 2017 20:43:17 GMT
ENV THRIFT_VERSION=0.10.0
# Tue, 12 Sep 2017 20:48:12 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 20:48:12 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e403e4fa8dcc829cb5a1e4770fa04c732bfcb1fc8b4f482fd07eaf0732300cd1`  
		Last Modified: Tue, 12 Sep 2017 20:48:43 GMT  
		Size: 13.2 MB (13154052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:0.10.0`

```console
$ docker pull thrift@sha256:9dee8f580a363dd177c1471ef57b102cdf17ddb1248b1e67490547b0b46a8297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.10.0` - linux; amd64

```console
$ docker pull thrift@sha256:da1bb13627ecb6eff5babcc91b0e8b1c55fd765c002685707ef418287969af65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51257179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f65991aa4c017b92c4b1a8fe4644d4d5fa176e65c050dad69d865961184c32c`
-	Default Command: `["thrift"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:43:17 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Tue, 12 Sep 2017 20:43:17 GMT
ENV THRIFT_VERSION=0.10.0
# Tue, 12 Sep 2017 20:48:12 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 20:48:12 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e403e4fa8dcc829cb5a1e4770fa04c732bfcb1fc8b4f482fd07eaf0732300cd1`  
		Last Modified: Tue, 12 Sep 2017 20:48:43 GMT  
		Size: 13.2 MB (13154052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:latest`

```console
$ docker pull thrift@sha256:9dee8f580a363dd177c1471ef57b102cdf17ddb1248b1e67490547b0b46a8297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:latest` - linux; amd64

```console
$ docker pull thrift@sha256:da1bb13627ecb6eff5babcc91b0e8b1c55fd765c002685707ef418287969af65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51257179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f65991aa4c017b92c4b1a8fe4644d4d5fa176e65c050dad69d865961184c32c`
-	Default Command: `["thrift"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:43:17 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Tue, 12 Sep 2017 20:43:17 GMT
ENV THRIFT_VERSION=0.10.0
# Tue, 12 Sep 2017 20:48:12 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Sep 2017 20:48:12 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e403e4fa8dcc829cb5a1e4770fa04c732bfcb1fc8b4f482fd07eaf0732300cd1`  
		Last Modified: Tue, 12 Sep 2017 20:48:43 GMT  
		Size: 13.2 MB (13154052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
