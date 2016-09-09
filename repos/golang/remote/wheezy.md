## `golang:wheezy`

```console
$ docker pull golang@sha256:1d6ed22ccfad13862fbe73f63b9068fcd853e56e088e2ae2ac98ca4911c4c6e8
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196890776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ffc9878b306d8cd86708cabc2f7725d3f14e17d17bd8a34ba0f583ea853cd77`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:01:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Sep 2016 23:09:38 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:39 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:49 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:50 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:51 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:52 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547c531ed6daba920dd47b5751022f1e469b5849abd10b2db8d4c5ea568729d2`  
		Last Modified: Tue, 30 Aug 2016 23:03:44 GMT  
		Size: 33.9 MB (33949907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef23d7ce954439d6d64445857fc517e4ce3c927f42bee0a26a90766ac598b88`  
		Last Modified: Wed, 07 Sep 2016 23:14:04 GMT  
		Size: 81.6 MB (81629024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f854d0614ef84cb531be070db81230f1c540b372a6b4b63b7c996714e1f09771`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cabf1c43fa44e722f7c0170817a13964899f10e1cb066008037950a8f35b0f`  
		Last Modified: Wed, 07 Sep 2016 23:13:39 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
