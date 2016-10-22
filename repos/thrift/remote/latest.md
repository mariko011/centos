## `thrift:latest`

```console
$ docker pull thrift@sha256:65d9d1a7a9c5df0e3b09953c84b054a76f9001202563c716d5f13cc9dbcf3d3d
```

-	Platforms:
	-	linux; amd64

### `thrift:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49088136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e6f6e2dc5276835b6b6613bdfe3ff48ecff2e743eefad15381294d27b20f8b`
-	Default Command: `["thrift"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:43:37 GMT
MAINTAINER Adam Hawkins <adam@hawkins.io>
# Sat, 22 Oct 2016 01:43:37 GMT
ENV THRIFT_VERSION=0.9.3
# Sat, 22 Oct 2016 01:46:25 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 01:46:25 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986f4bb0e47344ac7b7d988c0c85769005bf11b93ac49313e457f962b6cf416a`  
		Last Modified: Sat, 22 Oct 2016 01:46:39 GMT  
		Size: 11.9 MB (11872997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
