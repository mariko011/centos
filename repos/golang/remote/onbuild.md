## `golang:onbuild`

```console
$ docker pull golang@sha256:c762121e50f817cce5950375cf79271213ed927c6b97a4fdb85c35482ef14e9e
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250922787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2a227950234c4eb81c4ade35061fc4d3f79ac19b72144ce20859a0989f979e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Fri, 23 Sep 2016 19:04:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:04:41 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:04:43 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:04:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 23 Sep 2016 19:05:52 GMT
RUN mkdir -p /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
WORKDIR /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
CMD ["go-wrapper" "run"]
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD COPY . /go/src/app
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper download
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac6749e202c21b12b3bc2f48a7cd3a284f14dd91c5cd29e34e4e79705f2e58d`  
		Last Modified: Fri, 23 Sep 2016 19:05:16 GMT  
		Size: 81.6 MB (81629056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80302b4e1d83cd6a5badd3205f591430d9a6313969767bb2fd83fe3b0b6aa7c0`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fefc8a47308d2f963554c913d87c27c5854b32e3b3a59d3e324e946bf8f90ce`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05305eebfe4a472d7461a1206308f8457e46aad6120d7c9fdb0c27ce1d7d5fca`  
		Last Modified: Fri, 23 Sep 2016 19:06:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
