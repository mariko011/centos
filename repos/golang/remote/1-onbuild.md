## `golang:1-onbuild`

```console
$ docker pull golang@sha256:ab4324504842d107d0254d0d5eddf44dbacd529193f81c67edc9f81c8fb7e1bd
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253667916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1391d767c35edbbb44c0827990dc28b2982c05cb349eaabb20caa618be96d777`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 19:37:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 19:37:23 GMT
ENV GOLANG_VERSION=1.7.3
# Fri, 21 Oct 2016 19:37:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.3.linux-amd64.tar.gz
# Fri, 21 Oct 2016 19:37:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
# Fri, 21 Oct 2016 19:37:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 21 Oct 2016 19:37:33 GMT
ENV GOPATH=/go
# Fri, 21 Oct 2016 19:37:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Oct 2016 19:37:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 21 Oct 2016 19:37:34 GMT
WORKDIR /go
# Fri, 21 Oct 2016 19:37:35 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 21 Oct 2016 19:38:55 GMT
RUN mkdir -p /go/src/app
# Fri, 21 Oct 2016 19:38:56 GMT
WORKDIR /go/src/app
# Fri, 21 Oct 2016 19:38:56 GMT
CMD ["go-wrapper" "run"]
# Fri, 21 Oct 2016 19:38:56 GMT
ONBUILD COPY . /go/src/app
# Fri, 21 Oct 2016 19:38:57 GMT
ONBUILD RUN go-wrapper download
# Fri, 21 Oct 2016 19:38:57 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ffd5f08b9d0c29dc200ae6f4c5adc48838bef9b27b80f4620de526719d4a16`  
		Last Modified: Fri, 21 Oct 2016 19:38:00 GMT  
		Size: 59.7 MB (59651478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d869811918905f9737bf4634f234d8d86be8ed6d31d2f3cada9eb7b412d4a30d`  
		Last Modified: Fri, 21 Oct 2016 19:38:11 GMT  
		Size: 81.6 MB (81632761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cb59feb7bc276d20da5cd3f6c941a8d26974c224cfbd11d923038950d0aff`  
		Last Modified: Fri, 21 Oct 2016 19:37:45 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb527c679d40028610f89d7225500b6bfb106de36a3e83521889a723da02fd3a`  
		Last Modified: Fri, 21 Oct 2016 19:37:45 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07ead829cc2f7d25f8179ff30bff8146efdc62901896235dea4a6c7da1150e0`  
		Last Modified: Fri, 21 Oct 2016 19:39:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
