## `golang:onbuild`

```console
$ docker pull golang@sha256:5d7acdc54f8032604ca480d4873d60fe9ca2bc920db7b9baf511700c5ea02727
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261220311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a71d3309fd55d701dab5373a42e5dfdc73baf6ac5127737c289022b3961c7f73`
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
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_VERSION=1.8
# Tue, 21 Mar 2017 20:35:14 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 21 Mar 2017 20:35:15 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 21 Mar 2017 20:35:25 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 21 Mar 2017 20:35:25 GMT
ENV GOPATH=/go
# Tue, 21 Mar 2017 20:35:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:35:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 21 Mar 2017 20:35:27 GMT
WORKDIR /go
# Tue, 21 Mar 2017 20:35:28 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:35:29 GMT
RUN mkdir -p /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
WORKDIR /go/src/app
# Tue, 21 Mar 2017 20:35:30 GMT
CMD ["go-wrapper" "run"]
# Tue, 21 Mar 2017 20:35:30 GMT
ONBUILD COPY . /go/src/app
# Tue, 21 Mar 2017 20:35:31 GMT
ONBUILD RUN go-wrapper download
# Tue, 21 Mar 2017 20:35:31 GMT
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
	-	`sha256:fc75fef0061c5e6ed1b36d95cdf4be240262e2c22c8eaefb566b24503373e2b6`  
		Last Modified: Thu, 23 Mar 2017 18:17:05 GMT  
		Size: 88.9 MB (88938716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79830f04078a2e76bf4782a3c9e91c8e5e9892e5eff873e1c967652a1c2bf30e`  
		Last Modified: Thu, 23 Mar 2017 18:16:30 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef366adb749fa489a6e9e3fe2dd3e94ed78c8e3b518e91f23704f5890381c518`  
		Last Modified: Thu, 23 Mar 2017 18:16:28 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662b59fecf09132bcf3a4285e650213a5452a2cc043df7f0c3982ad63b1e9e19`  
		Last Modified: Thu, 23 Mar 2017 18:19:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
