## `thrift:latest`

```console
$ docker pull thrift@sha256:45f281e21f1ffa5c1d6e1b444278054ca063ccd9efd21d0deb062caf5d3d6324
```

-	Platforms:
	-	linux; amd64

### `thrift:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51275374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55dc341221efa5ab22e22db4e6929ce8039e69c9327055fc128be056808e74cf`
-	Default Command: `["thrift"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 16:18:51 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Wed, 10 May 2017 16:18:52 GMT
ENV THRIFT_VERSION=0.10.0
# Wed, 10 May 2017 16:21:49 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 16:21:49 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa12e3da532aebd0199872e22bab6e4cc5e7ca22b95921cb37143851fc685bd`  
		Last Modified: Sat, 13 May 2017 19:07:04 GMT  
		Size: 13.2 MB (13158825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
