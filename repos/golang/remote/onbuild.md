## `golang:onbuild`

```console
$ docker pull golang@sha256:71d82422311a99b8e36789734fd3e26ff03bd595e37e15f8d65bc6a303063a2b
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250925565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7732165221ba2285fe773fe4078fc37570e57152a5c8960baef81d0ef29699`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 23:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Wed, 07 Sep 2016 23:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Wed, 07 Sep 2016 23:09:32 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Wed, 07 Sep 2016 23:09:32 GMT
ENV GOPATH=/go
# Wed, 07 Sep 2016 23:09:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 23:09:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 07 Sep 2016 23:09:34 GMT
WORKDIR /go
# Wed, 07 Sep 2016 23:09:35 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Wed, 07 Sep 2016 23:09:36 GMT
RUN mkdir -p /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
WORKDIR /go/src/app
# Wed, 07 Sep 2016 23:09:37 GMT
CMD ["go-wrapper" "run"]
# Wed, 07 Sep 2016 23:09:37 GMT
ONBUILD COPY . /go/src/app
# Wed, 07 Sep 2016 23:09:38 GMT
ONBUILD RUN go-wrapper download
# Wed, 07 Sep 2016 23:09:38 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7f8737c98da89fdc243d0fca73b886104e88b58a74199b6fc46ca15a31693`  
		Last Modified: Tue, 30 Aug 2016 23:02:43 GMT  
		Size: 56.9 MB (56904735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf37bbda794c9e5e6e56e381c23836301483f3cc650e557fb8e9db0b694032dd`  
		Last Modified: Wed, 07 Sep 2016 23:12:27 GMT  
		Size: 81.6 MB (81629055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d2df2553b1f9bfcb4dcb8a4694b2cd1b800bcd03cdaf670b17743ca4ab770`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a798033105956bdac730f56c28b73ab1510e29aeb68d7121fc21b035c8d39191`  
		Last Modified: Wed, 07 Sep 2016 23:11:58 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32339ddf0ef427f9e7b139e19ae40486333cc429d89b3bede706b24d191c1d7b`  
		Last Modified: Wed, 07 Sep 2016 23:13:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
