## `thrift:latest`

```console
$ docker pull thrift@sha256:54e602147a17a11d2b6738167dc460f79800ed77ff1c48d9933eabf1beb274e2
```

-	Platforms:
	-	linux; amd64

### `thrift:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50253600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95473cc64651b5d4bf8fdfcf5462556a133e261f49e58de78c609c95aab979c8`
-	Default Command: `["thrift"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 17:27:47 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Wed, 22 Mar 2017 17:27:47 GMT
ENV THRIFT_VERSION=0.10.0
# Wed, 22 Mar 2017 17:30:39 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 17:30:39 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ddd79723f4e693a531fe894b916c8e49a2d178f7a7fe7c8dd1e236e8a2c8ce`  
		Last Modified: Fri, 24 Mar 2017 00:59:14 GMT  
		Size: 13.0 MB (12981764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
