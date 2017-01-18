## `golang:onbuild`

```console
$ docker pull golang@sha256:ce65c1d1fc3ada88796295326ac4633674af0b485c093c952251cb9ee99bf33a
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255148250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef77113a667052a25bdc83a17926dd019eb735c4066a3aef49ad4466940e6323`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_VERSION=1.7.4
# Tue, 17 Jan 2017 00:40:04 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.4.linux-amd64.tar.gz
# Tue, 17 Jan 2017 00:40:05 GMT
ENV GOLANG_DOWNLOAD_SHA256=47fda42e46b4c3ec93fa5d4d4cc6a748aa3f9411a2a2b7e08e3a6d80d753ec8b
# Tue, 17 Jan 2017 00:40:13 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 17 Jan 2017 00:40:14 GMT
ENV GOPATH=/go
# Tue, 17 Jan 2017 00:40:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 00:40:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 17 Jan 2017 00:40:15 GMT
WORKDIR /go
# Tue, 17 Jan 2017 00:40:16 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Tue, 17 Jan 2017 00:40:17 GMT
RUN mkdir -p /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
WORKDIR /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
CMD ["go-wrapper" "run"]
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD COPY . /go/src/app
# Tue, 17 Jan 2017 00:40:18 GMT
ONBUILD RUN go-wrapper download
# Tue, 17 Jan 2017 00:40:19 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b681f75ff656775b833d40e824f47d5b46215fd8a2e829b2b9cf89b28a1628`  
		Last Modified: Wed, 18 Jan 2017 03:45:10 GMT  
		Size: 59.7 MB (59661679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8553b52886d8cbfb1c7c1a285cd80576114a4a1622d9d01e7d2f39ec8038e069`  
		Last Modified: Wed, 18 Jan 2017 03:48:18 GMT  
		Size: 83.1 MB (83085907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c25ee63bd654fc47ac796e0c6a9f121a4878650b2063533525c738fc2c95f3`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4268eec6f44b26336a69e2a225f33c602c5da95608f1bef1d096ac0c1db8d7b2`  
		Last Modified: Wed, 18 Jan 2017 03:47:47 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392730291e894383e08783b1e4a4478300b70083a1f2b3bed3704e24fd7d7765`  
		Last Modified: Wed, 18 Jan 2017 03:49:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
