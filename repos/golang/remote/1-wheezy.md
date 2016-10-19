## `golang:1-wheezy`

```console
$ docker pull golang@sha256:2ebd7f1001448747f60567b3c481f00f455b474529a5a04272d26cc970bbad32
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199390379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d87380597d6580d5ee27b6f2bec4d15cb0feb431b9a9562b85f0f0b24e5634`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 21:54:56 GMT
ENV GOLANG_VERSION=1.7.3
# Wed, 19 Oct 2016 21:54:57 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Wed, 19 Oct 2016 21:54:57 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Wed, 19 Oct 2016 21:55:07 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 19 Oct 2016 21:55:07 GMT
ENV GOPATH=/go
# Wed, 19 Oct 2016 21:55:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Oct 2016 21:55:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 19 Oct 2016 21:55:09 GMT
WORKDIR /go
# Wed, 19 Oct 2016 21:55:09 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d804714cfad7a28c1745a36fc6c88d99be9956da5c20e7aff84fd3181a7454`  
		Last Modified: Wed, 28 Sep 2016 20:48:47 GMT  
		Size: 36.4 MB (36445297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e9bdb21041a2568817746a9d3505718f4b8cc954d151075ab701dc1a1acf5`  
		Last Modified: Wed, 19 Oct 2016 22:00:13 GMT  
		Size: 81.6 MB (81632731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef11f5cead22201f71cc79aff6090823a5cc2437e31f5c3243156d68f0d9bd7`  
		Last Modified: Wed, 19 Oct 2016 21:59:49 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3073f7202761ef6fe127a9d87c13633925328ed5b1bab7a311dfb522ffde310`  
		Last Modified: Wed, 19 Oct 2016 21:59:49 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
