## `thrift:latest`

```console
$ docker pull thrift@sha256:b8b3eb48b76763ec31ec9729a41b20ba7ecd00d25b5ed554c037298df10b96ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:latest` - linux; amd64

```console
$ docker pull thrift@sha256:b4cf88add059da5d87394a7c9913763b5b151e82f97e47cd7e663ad4fce98fc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51257017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc3b47b21cc62b40839219e445beee830a7433feaad8f1ff0d06ee45a22d9cb`
-	Default Command: `["thrift"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 20:22:30 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Mon, 18 Sep 2017 20:22:31 GMT
ENV THRIFT_VERSION=0.10.0
# Mon, 18 Sep 2017 20:25:24 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Sep 2017 20:25:24 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a508545cdc060034fb7ad92f072c6288a41a8b65dd057d5d7c8471d027d96c22`  
		Last Modified: Mon, 18 Sep 2017 20:26:05 GMT  
		Size: 13.2 MB (13153890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
