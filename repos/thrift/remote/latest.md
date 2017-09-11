## `thrift:latest`

```console
$ docker pull thrift@sha256:9d1e2ac42d778b58d3d70e34ee1f98da588694b91c4468f9fae4d109c1206cdf
```

-	Platforms:
	-	linux; amd64

### `thrift:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51256682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f49601b7f4d7a19b9c0d8d8d542927ef705e540dc0a2e78c57ebd94eade2645`
-	Default Command: `["thrift"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 11:11:35 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Fri, 08 Sep 2017 11:11:35 GMT
ENV THRIFT_VERSION=0.10.0
# Fri, 08 Sep 2017 11:14:12 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 11:14:12 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7348be8eb438e1c41a5b4874bf09f2ef4004bfa915f264556116df2726552410`  
		Last Modified: Mon, 11 Sep 2017 15:53:26 GMT  
		Size: 13.2 MB (13153555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
