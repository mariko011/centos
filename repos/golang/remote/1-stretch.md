## `golang:1-stretch`

```console
$ docker pull golang@sha256:547091ec41fcbf29ebe5af3ec62cb0790b6c7c59c300849d448bc5fc78db21c8
```

-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255612040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd436ca9b0fca0fbda5e5947edf830117977e4e0a4b016b0820aee42b2a4f2e4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:28 GMT
ENV GOLANG_VERSION=1.8.1
# Mon, 24 Apr 2017 22:57:29 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.1.linux-amd64.tar.gz
# Mon, 24 Apr 2017 22:57:45 GMT
ENV GOLANG_DOWNLOAD_SHA256=a579ab19d5237e263254f1eac5352efcf1d70b9dacadb6d6bb12b0911ede8994
# Mon, 24 Apr 2017 22:57:57 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 24 Apr 2017 22:57:57 GMT
ENV GOPATH=/go
# Mon, 24 Apr 2017 22:57:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 22:58:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 24 Apr 2017 22:58:17 GMT
WORKDIR /go
# Mon, 24 Apr 2017 22:58:33 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dda99b7f3a1996508cb7df0efa84a7009a081e44ffac6f8b74acedb879d26`  
		Last Modified: Mon, 24 Apr 2017 22:26:20 GMT  
		Size: 40.8 MB (40808098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b2b4cb1112aa4b1f554654fab8920cdc99e01f8dd292fc323d727ae9a5f4ea`  
		Last Modified: Tue, 25 Apr 2017 17:57:41 GMT  
		Size: 57.2 MB (57185523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be13c7e9faffeab16cd0327245e46a2ddab59c0fe0a2c4bed91498296fdc9bcf`  
		Last Modified: Tue, 25 Apr 2017 17:57:51 GMT  
		Size: 91.3 MB (91279335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cdc12e1cef040bd5eea21d329c26b95145b0148a640fc646c8f67da591dd67`  
		Last Modified: Tue, 25 Apr 2017 17:57:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56bf841f89f4627b216e202d2586ea07cbf8c8cbbea3daa686ae2142c1170d0`  
		Last Modified: Tue, 25 Apr 2017 17:57:26 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
