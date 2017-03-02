## `golang:onbuild`

```console
$ docker pull golang@sha256:aac2f75a7744c912f48c8a660b31d5440f65ab182ddfc3c0cc96f15808466cfa
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (261003134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e66373f9a5dba19a871d849b6518eb5ecc1958eaad04e02d1de3a8722c79aa3`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:19:03 GMT
ENV GOLANG_VERSION=1.8
# Tue, 28 Feb 2017 03:19:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.8.linux-amd64.tar.gz
# Tue, 28 Feb 2017 03:19:04 GMT
ENV GOLANG_DOWNLOAD_SHA256=53ab94104ee3923e228a2cb2116e5e462ad3ebaeea06ff04463479d7f12d27ca
# Tue, 28 Feb 2017 03:19:16 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 28 Feb 2017 03:19:16 GMT
ENV GOPATH=/go
# Tue, 28 Feb 2017 03:19:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 03:19:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 28 Feb 2017 03:19:18 GMT
WORKDIR /go
# Tue, 28 Feb 2017 03:19:19 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 28 Feb 2017 03:19:20 GMT
RUN mkdir -p /go/src/app
# Tue, 28 Feb 2017 03:19:20 GMT
WORKDIR /go/src/app
# Tue, 28 Feb 2017 03:19:21 GMT
CMD ["go-wrapper" "run"]
# Tue, 28 Feb 2017 03:19:21 GMT
ONBUILD COPY . /go/src/app
# Tue, 28 Feb 2017 03:19:22 GMT
ONBUILD RUN go-wrapper download
# Tue, 28 Feb 2017 03:19:22 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1a82f325276b3dfeddbaa82bee50256cc0a2fe5f0b080c1aadae619192b141`  
		Last Modified: Thu, 02 Mar 2017 00:19:10 GMT  
		Size: 59.7 MB (59662297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a977e8d015ddea316dc1bea092c7715cd4328da3d6ea968deed06b80bb11e266`  
		Last Modified: Thu, 02 Mar 2017 00:23:15 GMT  
		Size: 88.9 MB (88938666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c0c39ec85a9bc8dca2067daca8db157f818cbcdb33ffb8371b7dc553e6d253`  
		Last Modified: Thu, 02 Mar 2017 00:22:33 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489f1299f3aa15ee2a783d633e8d6c062072d59f393e177716253c5f0787384b`  
		Last Modified: Thu, 02 Mar 2017 00:22:33 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87be4361d1b2b3e55ad24c01ff76bd814fdf7c8ecd948973db673b45eb752f5`  
		Last Modified: Thu, 02 Mar 2017 00:25:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
