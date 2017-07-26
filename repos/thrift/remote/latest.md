## `thrift:latest`

```console
$ docker pull thrift@sha256:50c4689455f2486a95a80a9b51f2be51c4a86a4cc71f502e4793a411da024e2f
```

-	Platforms:
	-	linux; amd64

### `thrift:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51257151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1895b6342aeb2a90284294c78bb753d7bb2cfbc63561ef6a13366eeb798db43e`
-	Default Command: `["thrift"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 16:00:07 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Wed, 26 Jul 2017 16:00:07 GMT
ENV THRIFT_VERSION=0.10.0
# Wed, 26 Jul 2017 16:02:54 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Jul 2017 16:02:56 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778b65ca69f3a90779910bb8de3609df0386059cbd4690f074a3ad7a2ef3b626`  
		Last Modified: Wed, 26 Jul 2017 16:03:23 GMT  
		Size: 13.2 MB (13153514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
