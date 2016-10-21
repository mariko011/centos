## `golang:1-wheezy`

```console
$ docker pull golang@sha256:fc4401cc133fbfd258b4dcefa2f0d6e21eeba0c5e49890a00cd77a71e146b44d
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199410319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5ad5cdf71869fbb307e6aae5fa315aa64c203014f4bc8df84f7c3a806783c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:39:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 19:39:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 19:39:58 GMT
ENV GOLANG_VERSION=1.7.3
# Fri, 21 Oct 2016 19:39:58 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Fri, 21 Oct 2016 19:39:58 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Fri, 21 Oct 2016 19:40:07 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 21 Oct 2016 19:40:07 GMT
ENV GOPATH=/go
# Fri, 21 Oct 2016 19:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Oct 2016 19:40:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 21 Oct 2016 19:40:09 GMT
WORKDIR /go
# Fri, 21 Oct 2016 19:40:09 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5089ed91d3c0db1d6aaf79fbdf9593e28c1ea9bdabfab75dfb1b5fc1fcdf05a`  
		Last Modified: Fri, 21 Oct 2016 16:38:41 GMT  
		Size: 6.7 MB (6748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdd795dcc65ffd51af821a9dc9542376781af0feeb7e66d11fc5aaad7abdd`  
		Last Modified: Fri, 21 Oct 2016 16:39:37 GMT  
		Size: 37.4 MB (37366571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec030508dc3da4f5ec84d2187a65f569d53f21122e7dbdf491ba2f336e354eaf`  
		Last Modified: Fri, 21 Oct 2016 19:40:31 GMT  
		Size: 36.4 MB (36445852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d527fc1d9a9572d7630082a41d2bf20337bf16ed5b7c1732832db3db1dbf27e3`  
		Last Modified: Fri, 21 Oct 2016 19:40:44 GMT  
		Size: 81.6 MB (81632761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8f111576daff2495188f0fcc02d43de4989cdd41246f1dfec106db2ffd41b0`  
		Last Modified: Fri, 21 Oct 2016 19:40:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125fc9fbdfadac00d475a85d14d11a0288c29f84e541b5764e2005db103c82d`  
		Last Modified: Fri, 21 Oct 2016 19:40:19 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
