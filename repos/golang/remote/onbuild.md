## `golang:onbuild`

```console
$ docker pull golang@sha256:886a63b8de95d5767e779dee4ce5ce3c0437fa48524aedd93199fb12526f15e0
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262682673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad323f40f596ebac4de63a1e27dbd79db2f4276353db474615a59623f34e7d94`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_VERSION=1.8.1
# Fri, 07 Apr 2017 21:59:22 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Fri, 07 Apr 2017 21:59:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Fri, 07 Apr 2017 21:59:33 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 07 Apr 2017 21:59:33 GMT
ENV GOPATH=/go
# Fri, 07 Apr 2017 21:59:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Apr 2017 21:59:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 07 Apr 2017 21:59:35 GMT
WORKDIR /go
# Fri, 07 Apr 2017 21:59:36 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 07 Apr 2017 21:59:38 GMT
RUN mkdir -p /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
WORKDIR /go/src/app
# Fri, 07 Apr 2017 21:59:38 GMT
CMD ["go-wrapper" "run"]
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD COPY . /go/src/app
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD RUN go-wrapper download
# Fri, 07 Apr 2017 21:59:39 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ace0d726feb554631336c08601abb8e4d64cf4cafbb6b6b8cec1c9b5d5c20c`  
		Last Modified: Thu, 23 Mar 2017 18:13:01 GMT  
		Size: 59.7 MB (59663227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8d7704cf0db7275f2ad1ca6a065df44dd562fcdde69827069aa950acb12c02`  
		Last Modified: Fri, 07 Apr 2017 22:05:09 GMT  
		Size: 90.4 MB (90401074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8851391f39045314ffced70778fbe39d881116a82c9e943e4c7dc614625c78`  
		Last Modified: Fri, 07 Apr 2017 22:04:44 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988b98d9451c0303b879ebfbca724165a6c6cd527d8f2d759db447993cf3795c`  
		Last Modified: Fri, 07 Apr 2017 22:04:43 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbc96f59ddc5dc000e370de1dd032f9f99787be08ffc84871fdcbe9c8f4f5ee`  
		Last Modified: Fri, 07 Apr 2017 22:06:34 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
