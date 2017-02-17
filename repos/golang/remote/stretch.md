## `golang:stretch`

```console
$ docker pull golang@sha256:f947e4a140d152332945d22c200c2a7e91aee841207bdf6b4503462007979ad2
```

-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266684368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb408594293b211b9bf7ed8bd6d20030335b602ae451780f67de700abcc9e00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:39:16 GMT
ADD file:c09931042d44875d1db95d3faa08303a098dfc42738c80d38856cb84d78ebbda in / 
# Mon, 16 Jan 2017 20:39:24 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:02:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 18:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Feb 2017 23:21:35 GMT
ENV GOLANG_VERSION=1.8
# Thu, 16 Feb 2017 23:21:35 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Thu, 16 Feb 2017 23:21:35 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Thu, 16 Feb 2017 23:21:48 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Thu, 16 Feb 2017 23:21:49 GMT
ENV GOPATH=/go
# Thu, 16 Feb 2017 23:21:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Feb 2017 23:21:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 16 Feb 2017 23:21:50 GMT
WORKDIR /go
# Thu, 16 Feb 2017 23:21:51 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cdc4502972ee4dbc3dbcc16a2eeaddaa8179f090379768f8cb9438cd01bf5d8a`  
		Last Modified: Mon, 16 Jan 2017 20:50:09 GMT  
		Size: 43.9 MB (43871389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f85d83d587c9dffea05a7552cfb010c9d4124a626e61dfa27649b01ce06bb6`  
		Last Modified: Tue, 17 Jan 2017 00:22:42 GMT  
		Size: 20.9 MB (20946053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4ddd0a063cb5f89e516dc6684c1f37599b5f08cf8802b14c2619d667c428d0`  
		Last Modified: Tue, 17 Jan 2017 00:23:34 GMT  
		Size: 51.3 MB (51254010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e824f7445bc49fbc5b85f9cb9f910c64e040cf8f251cd1e1d6b9406fa0c3bab8`  
		Last Modified: Fri, 10 Feb 2017 19:02:25 GMT  
		Size: 61.7 MB (61672725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693bac77ca3cff2a68419ac64bb77939a6f7f62a97f9800c1ac700fc23274929`  
		Last Modified: Thu, 16 Feb 2017 23:34:38 GMT  
		Size: 88.9 MB (88938715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0946d4aeff5d6aff4154800f3875aaa50ebede90ffb48c868d256721c8cc78ca`  
		Last Modified: Thu, 16 Feb 2017 23:34:14 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa64d8a2afb06ec29d26d571e8e00b9c8ea208214281e7f77b9d0419942549b`  
		Last Modified: Thu, 16 Feb 2017 23:34:13 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
