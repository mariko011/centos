<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `golang`

-	[`golang:1.5.4`](#golang154)
-	[`golang:1.5`](#golang15)
-	[`golang:1.5.4-onbuild`](#golang154-onbuild)
-	[`golang:1.5-onbuild`](#golang15-onbuild)
-	[`golang:1.5.4-wheezy`](#golang154-wheezy)
-	[`golang:1.5-wheezy`](#golang15-wheezy)
-	[`golang:1.5.4-alpine`](#golang154-alpine)
-	[`golang:1.5-alpine`](#golang15-alpine)
-	[`golang:1.6.3`](#golang163)
-	[`golang:1.6`](#golang16)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.6.3-onbuild`](#golang163-onbuild)
-	[`golang:1.6-onbuild`](#golang16-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.6.3-wheezy`](#golang163-wheezy)
-	[`golang:1.6-wheezy`](#golang16-wheezy)
-	[`golang:1-wheezy`](#golang1-wheezy)
-	[`golang:wheezy`](#golangwheezy)
-	[`golang:1.6.3-alpine`](#golang163-alpine)
-	[`golang:1.6-alpine`](#golang16-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.7rc6`](#golang17rc6)
-	[`golang:1.7`](#golang17)
-	[`golang:1.7rc6-onbuild`](#golang17rc6-onbuild)
-	[`golang:1.7-onbuild`](#golang17-onbuild)
-	[`golang:1.7rc6-wheezy`](#golang17rc6-wheezy)
-	[`golang:1.7-wheezy`](#golang17-wheezy)
-	[`golang:1.7rc6-alpine`](#golang17rc6-alpine)
-	[`golang:1.7-alpine`](#golang17-alpine)

## `golang:1.5.4`

```console
$ docker pull golang@sha256:3be07b667a868a246b9cee4ddc5ecce2ad1e211958bd6043a25fc1d19d55e6ba
```

-	Platforms:
	-	linux; amd64

### `golang:1.5.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249478709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99668503de157252ba311f570f036490602095f2620c46cb407d3d2dd88aeb6e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:50 GMT
ENV GOLANG_VERSION=1.5.4
# Fri, 29 Jul 2016 03:55:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.5.4.linux-amd64.tar.gz
# Fri, 29 Jul 2016 03:55:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=a3358721210787dc1e06f5ea1460ae0564f22a0fbd91be9dcd947fb1d19b9560
# Fri, 29 Jul 2016 03:56:03 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 03:56:06 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 03:56:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 03:56:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 03:56:10 GMT
WORKDIR /go
# Fri, 29 Jul 2016 03:56:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:70ff2aeff1741fd0e0c559ee56a86942c53911987f1f9526a4300bc0f414b597`  
		Last Modified: Fri, 29 Jul 2016 03:56:48 GMT  
		Size: 80.2 MB (80184791 bytes)
	-	`sha256:01195e06f03d51818f561f8823669cef95aeb6e751309e41941578f8e79af3dc`  
		Last Modified: Fri, 29 Jul 2016 03:56:20 GMT  
		Size: 123.0 B
	-	`sha256:2f0f050412f9062e1d21161d58ee26986e0ac8e38b6b28e8ce40c6664fb93ed1`  
		Last Modified: Fri, 29 Jul 2016 03:56:20 GMT  
		Size: 1.4 KB (1354 bytes)

## `golang:1.5`

```console
$ docker pull golang@sha256:3be07b667a868a246b9cee4ddc5ecce2ad1e211958bd6043a25fc1d19d55e6ba
```

-	Platforms:
	-	linux; amd64

### `golang:1.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249478709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99668503de157252ba311f570f036490602095f2620c46cb407d3d2dd88aeb6e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:50 GMT
ENV GOLANG_VERSION=1.5.4
# Fri, 29 Jul 2016 03:55:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.5.4.linux-amd64.tar.gz
# Fri, 29 Jul 2016 03:55:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=a3358721210787dc1e06f5ea1460ae0564f22a0fbd91be9dcd947fb1d19b9560
# Fri, 29 Jul 2016 03:56:03 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 03:56:06 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 03:56:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 03:56:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 03:56:10 GMT
WORKDIR /go
# Fri, 29 Jul 2016 03:56:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:70ff2aeff1741fd0e0c559ee56a86942c53911987f1f9526a4300bc0f414b597`  
		Last Modified: Fri, 29 Jul 2016 03:56:48 GMT  
		Size: 80.2 MB (80184791 bytes)
	-	`sha256:01195e06f03d51818f561f8823669cef95aeb6e751309e41941578f8e79af3dc`  
		Last Modified: Fri, 29 Jul 2016 03:56:20 GMT  
		Size: 123.0 B
	-	`sha256:2f0f050412f9062e1d21161d58ee26986e0ac8e38b6b28e8ce40c6664fb93ed1`  
		Last Modified: Fri, 29 Jul 2016 03:56:20 GMT  
		Size: 1.4 KB (1354 bytes)

## `golang:1.5.4-onbuild`

```console
$ docker pull golang@sha256:e835eafd561677cd2af4d10c6784d908103b9c6a99d5af96304c37960e26e0d5
```

-	Platforms:
	-	linux; amd64

### `golang:1.5.4-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249478841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b59629466bb4543e07f0111ef523ece6d715f1cea168232f3f2d46649334191`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:50 GMT
ENV GOLANG_VERSION=1.5.4
# Fri, 29 Jul 2016 03:55:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.5.4.linux-amd64.tar.gz
# Fri, 29 Jul 2016 03:55:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=a3358721210787dc1e06f5ea1460ae0564f22a0fbd91be9dcd947fb1d19b9560
# Fri, 29 Jul 2016 03:56:03 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 03:56:06 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 03:56:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 03:56:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 03:56:10 GMT
WORKDIR /go
# Fri, 29 Jul 2016 03:56:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
# Fri, 29 Jul 2016 04:00:18 GMT
RUN mkdir -p /go/src/app
# Fri, 29 Jul 2016 04:00:19 GMT
WORKDIR /go/src/app
# Fri, 29 Jul 2016 04:00:19 GMT
CMD ["go-wrapper" "run"]
# Fri, 29 Jul 2016 04:00:20 GMT
ONBUILD COPY . /go/src/app
# Fri, 29 Jul 2016 04:00:21 GMT
ONBUILD RUN go-wrapper download
# Fri, 29 Jul 2016 04:00:22 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:70ff2aeff1741fd0e0c559ee56a86942c53911987f1f9526a4300bc0f414b597`  
		Last Modified: Fri, 29 Jul 2016 03:56:48 GMT  
		Size: 80.2 MB (80184791 bytes)
	-	`sha256:01195e06f03d51818f561f8823669cef95aeb6e751309e41941578f8e79af3dc`  
		Last Modified: Fri, 29 Jul 2016 03:56:20 GMT  
		Size: 123.0 B
	-	`sha256:2f0f050412f9062e1d21161d58ee26986e0ac8e38b6b28e8ce40c6664fb93ed1`  
		Last Modified: Fri, 29 Jul 2016 03:56:20 GMT  
		Size: 1.4 KB (1354 bytes)
	-	`sha256:d6ca0ca72854a4cc3fada2f5311704da49a16a6dcea2ebed203d94a901d7d450`  
		Last Modified: Fri, 29 Jul 2016 04:00:30 GMT  
		Size: 132.0 B

## `golang:1.5-onbuild`

```console
$ docker pull golang@sha256:e835eafd561677cd2af4d10c6784d908103b9c6a99d5af96304c37960e26e0d5
```

-	Platforms:
	-	linux; amd64

### `golang:1.5-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249478841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b59629466bb4543e07f0111ef523ece6d715f1cea168232f3f2d46649334191`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:50 GMT
ENV GOLANG_VERSION=1.5.4
# Fri, 29 Jul 2016 03:55:51 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.5.4.linux-amd64.tar.gz
# Fri, 29 Jul 2016 03:55:51 GMT
ENV GOLANG_DOWNLOAD_SHA256=a3358721210787dc1e06f5ea1460ae0564f22a0fbd91be9dcd947fb1d19b9560
# Fri, 29 Jul 2016 03:56:03 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 03:56:06 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 03:56:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 03:56:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 03:56:10 GMT
WORKDIR /go
# Fri, 29 Jul 2016 03:56:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
# Fri, 29 Jul 2016 04:00:18 GMT
RUN mkdir -p /go/src/app
# Fri, 29 Jul 2016 04:00:19 GMT
WORKDIR /go/src/app
# Fri, 29 Jul 2016 04:00:19 GMT
CMD ["go-wrapper" "run"]
# Fri, 29 Jul 2016 04:00:20 GMT
ONBUILD COPY . /go/src/app
# Fri, 29 Jul 2016 04:00:21 GMT
ONBUILD RUN go-wrapper download
# Fri, 29 Jul 2016 04:00:22 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:70ff2aeff1741fd0e0c559ee56a86942c53911987f1f9526a4300bc0f414b597`  
		Last Modified: Fri, 29 Jul 2016 03:56:48 GMT  
		Size: 80.2 MB (80184791 bytes)
	-	`sha256:01195e06f03d51818f561f8823669cef95aeb6e751309e41941578f8e79af3dc`  
		Last Modified: Fri, 29 Jul 2016 03:56:20 GMT  
		Size: 123.0 B
	-	`sha256:2f0f050412f9062e1d21161d58ee26986e0ac8e38b6b28e8ce40c6664fb93ed1`  
		Last Modified: Fri, 29 Jul 2016 03:56:20 GMT  
		Size: 1.4 KB (1354 bytes)
	-	`sha256:d6ca0ca72854a4cc3fada2f5311704da49a16a6dcea2ebed203d94a901d7d450`  
		Last Modified: Fri, 29 Jul 2016 04:00:30 GMT  
		Size: 132.0 B

## `golang:1.5.4-wheezy`

```console
$ docker pull golang@sha256:2f57404320670d30ad654182e3fc8fcd7ece55620e2267d47c292fb01fc23794
```

-	Platforms:
	-	linux; amd64

### `golang:1.5.4-wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196964113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c0dd3402e9a094998245cd83287830ef4fe3761620e70ca530e356f419bca6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:27:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:59:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:00:48 GMT
ENV GOLANG_VERSION=1.5.4
# Fri, 29 Jul 2016 04:00:48 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.5.4.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:00:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=a3358721210787dc1e06f5ea1460ae0564f22a0fbd91be9dcd947fb1d19b9560
# Fri, 29 Jul 2016 04:01:00 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:01:01 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:01:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:01:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:01:04 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:01:06 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)
	-	`sha256:9c81f9b5104e75c51d678d80525193ab71008b9c25c1a1e4694996b0744c6cbe`  
		Last Modified: Thu, 28 Jul 2016 21:53:17 GMT  
		Size: 6.7 MB (6730996 bytes)
	-	`sha256:8c8d9d9752348fab5a9cd1140f31df8ad6ce301aca3e7d4e303d14fde010ea14`  
		Last Modified: Thu, 28 Jul 2016 21:53:49 GMT  
		Size: 38.9 MB (38887392 bytes)
	-	`sha256:0238af288e95b46257dcfbe2c650681a0ee6b66bdcf2306ece99f93f1ad794a3`  
		Last Modified: Fri, 29 Jul 2016 03:59:40 GMT  
		Size: 33.9 MB (33949794 bytes)
	-	`sha256:055b4dbf2548edbce628358210e18784ea386ef9de2a917a3ad4ef27c8713231`  
		Last Modified: Fri, 29 Jul 2016 04:02:03 GMT  
		Size: 80.2 MB (80184820 bytes)
	-	`sha256:8cfa9c3f480d9c92155224473440bc7f4c9ad62701ebbedf849d354c6f2e5110`  
		Last Modified: Fri, 29 Jul 2016 04:01:15 GMT  
		Size: 121.0 B
	-	`sha256:892af3a2b36f4475cad1d83a5968e3cf838b2d7c3718452216ec7e84277609ef`  
		Last Modified: Fri, 29 Jul 2016 04:01:14 GMT  
		Size: 1.4 KB (1355 bytes)

## `golang:1.5-wheezy`

```console
$ docker pull golang@sha256:2f57404320670d30ad654182e3fc8fcd7ece55620e2267d47c292fb01fc23794
```

-	Platforms:
	-	linux; amd64

### `golang:1.5-wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196964113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c0dd3402e9a094998245cd83287830ef4fe3761620e70ca530e356f419bca6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:27:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:59:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:00:48 GMT
ENV GOLANG_VERSION=1.5.4
# Fri, 29 Jul 2016 04:00:48 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.5.4.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:00:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=a3358721210787dc1e06f5ea1460ae0564f22a0fbd91be9dcd947fb1d19b9560
# Fri, 29 Jul 2016 04:01:00 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:01:01 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:01:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:01:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:01:04 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:01:06 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)
	-	`sha256:9c81f9b5104e75c51d678d80525193ab71008b9c25c1a1e4694996b0744c6cbe`  
		Last Modified: Thu, 28 Jul 2016 21:53:17 GMT  
		Size: 6.7 MB (6730996 bytes)
	-	`sha256:8c8d9d9752348fab5a9cd1140f31df8ad6ce301aca3e7d4e303d14fde010ea14`  
		Last Modified: Thu, 28 Jul 2016 21:53:49 GMT  
		Size: 38.9 MB (38887392 bytes)
	-	`sha256:0238af288e95b46257dcfbe2c650681a0ee6b66bdcf2306ece99f93f1ad794a3`  
		Last Modified: Fri, 29 Jul 2016 03:59:40 GMT  
		Size: 33.9 MB (33949794 bytes)
	-	`sha256:055b4dbf2548edbce628358210e18784ea386ef9de2a917a3ad4ef27c8713231`  
		Last Modified: Fri, 29 Jul 2016 04:02:03 GMT  
		Size: 80.2 MB (80184820 bytes)
	-	`sha256:8cfa9c3f480d9c92155224473440bc7f4c9ad62701ebbedf849d354c6f2e5110`  
		Last Modified: Fri, 29 Jul 2016 04:01:15 GMT  
		Size: 121.0 B
	-	`sha256:892af3a2b36f4475cad1d83a5968e3cf838b2d7c3718452216ec7e84277609ef`  
		Last Modified: Fri, 29 Jul 2016 04:01:14 GMT  
		Size: 1.4 KB (1355 bytes)

## `golang:1.5.4-alpine`

```console
$ docker pull golang@sha256:db4f9b160452858933cb982149396a2a27407cc81c00b3f77acb41dd7b57c50e
```

-	Platforms:
	-	linux; amd64

### `golang:1.5.4-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68279903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dda058f699072abc51878969d0accf1584006345d472daa3f0305d334fa03e0`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jul 2016 19:29:12 GMT
ENV GOLANG_VERSION=1.5.4
# Fri, 01 Jul 2016 19:29:13 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.5.4.src.tar.gz
# Fri, 01 Jul 2016 19:29:13 GMT
ENV GOLANG_SRC_SHA256=002acabce7ddc140d0d55891f9d4fcfbdd806b9332fb8b110c91bc91afb0bc93
# Fri, 01 Jul 2016 19:30:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& ./make.bash 		&& apk del .build-deps
# Fri, 01 Jul 2016 19:30:29 GMT
ENV GOPATH=/go
# Fri, 01 Jul 2016 19:30:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jul 2016 19:30:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 01 Jul 2016 19:30:32 GMT
WORKDIR /go
# Fri, 01 Jul 2016 19:30:33 GMT
COPY file:ce084cb461a5ff8443f1781f7b0af0a33ad2bd4fe7ca14df213f58fa79e0172b in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:189cf28ebbc5aee712ba9194f6308065957dcaff75ffd6fd1a66ebcfc3a0c9da`  
		Last Modified: Fri, 01 Jul 2016 19:34:34 GMT  
		Size: 65.6 MB (65624223 bytes)
	-	`sha256:11843d4b6571391fafc5bc609948e2b607d974a803127d39078522b990777af3`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 122.0 B
	-	`sha256:c1d9d7c9cb3e4bfbd999a501cf1746f7e3eba20f13544a38dff7c8c274711cfe`  
		Last Modified: Fri, 01 Jul 2016 19:34:12 GMT  
		Size: 1.3 KB (1348 bytes)

## `golang:1.5-alpine`

```console
$ docker pull golang@sha256:db4f9b160452858933cb982149396a2a27407cc81c00b3f77acb41dd7b57c50e
```

-	Platforms:
	-	linux; amd64

### `golang:1.5-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68279903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dda058f699072abc51878969d0accf1584006345d472daa3f0305d334fa03e0`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jul 2016 19:29:12 GMT
ENV GOLANG_VERSION=1.5.4
# Fri, 01 Jul 2016 19:29:13 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.5.4.src.tar.gz
# Fri, 01 Jul 2016 19:29:13 GMT
ENV GOLANG_SRC_SHA256=002acabce7ddc140d0d55891f9d4fcfbdd806b9332fb8b110c91bc91afb0bc93
# Fri, 01 Jul 2016 19:30:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& ./make.bash 		&& apk del .build-deps
# Fri, 01 Jul 2016 19:30:29 GMT
ENV GOPATH=/go
# Fri, 01 Jul 2016 19:30:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jul 2016 19:30:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 01 Jul 2016 19:30:32 GMT
WORKDIR /go
# Fri, 01 Jul 2016 19:30:33 GMT
COPY file:ce084cb461a5ff8443f1781f7b0af0a33ad2bd4fe7ca14df213f58fa79e0172b in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:189cf28ebbc5aee712ba9194f6308065957dcaff75ffd6fd1a66ebcfc3a0c9da`  
		Last Modified: Fri, 01 Jul 2016 19:34:34 GMT  
		Size: 65.6 MB (65624223 bytes)
	-	`sha256:11843d4b6571391fafc5bc609948e2b607d974a803127d39078522b990777af3`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 122.0 B
	-	`sha256:c1d9d7c9cb3e4bfbd999a501cf1746f7e3eba20f13544a38dff7c8c274711cfe`  
		Last Modified: Fri, 01 Jul 2016 19:34:12 GMT  
		Size: 1.3 KB (1348 bytes)

## `golang:1.6.3`

```console
$ docker pull golang@sha256:247a91a8a6a3038f2ba422ead03339eb736f427e08175272f054722f9f2aac51
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24c8478ed407db5bf9c4efd0773fe75975b2bc321dd8f0ab1e42a898fcb6ea4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:02:22 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:02:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:02:36 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:02:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:02:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:02:39 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:02:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:85155ee2fbc2368de761d83d22f770d917b254ee04164f8c1c1b21a940d4e24f`  
		Last Modified: Fri, 29 Jul 2016 04:03:16 GMT  
		Size: 84.9 MB (84869285 bytes)
	-	`sha256:c51febe8479886dbe081dce679513ae53af598918d629356cfb1982ca1cb3a63`  
		Last Modified: Fri, 29 Jul 2016 04:02:51 GMT  
		Size: 122.0 B
	-	`sha256:52609aaab90b1923cc0e2ab262d2121b4ca5fbc65ab5ecee493d953663207a4a`  
		Last Modified: Fri, 29 Jul 2016 04:02:49 GMT  
		Size: 1.4 KB (1351 bytes)

## `golang:1.6`

```console
$ docker pull golang@sha256:247a91a8a6a3038f2ba422ead03339eb736f427e08175272f054722f9f2aac51
```

-	Platforms:
	-	linux; amd64

### `golang:1.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24c8478ed407db5bf9c4efd0773fe75975b2bc321dd8f0ab1e42a898fcb6ea4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:02:22 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:02:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:02:36 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:02:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:02:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:02:39 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:02:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:85155ee2fbc2368de761d83d22f770d917b254ee04164f8c1c1b21a940d4e24f`  
		Last Modified: Fri, 29 Jul 2016 04:03:16 GMT  
		Size: 84.9 MB (84869285 bytes)
	-	`sha256:c51febe8479886dbe081dce679513ae53af598918d629356cfb1982ca1cb3a63`  
		Last Modified: Fri, 29 Jul 2016 04:02:51 GMT  
		Size: 122.0 B
	-	`sha256:52609aaab90b1923cc0e2ab262d2121b4ca5fbc65ab5ecee493d953663207a4a`  
		Last Modified: Fri, 29 Jul 2016 04:02:49 GMT  
		Size: 1.4 KB (1351 bytes)

## `golang:1`

```console
$ docker pull golang@sha256:247a91a8a6a3038f2ba422ead03339eb736f427e08175272f054722f9f2aac51
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24c8478ed407db5bf9c4efd0773fe75975b2bc321dd8f0ab1e42a898fcb6ea4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:02:22 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:02:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:02:36 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:02:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:02:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:02:39 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:02:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:85155ee2fbc2368de761d83d22f770d917b254ee04164f8c1c1b21a940d4e24f`  
		Last Modified: Fri, 29 Jul 2016 04:03:16 GMT  
		Size: 84.9 MB (84869285 bytes)
	-	`sha256:c51febe8479886dbe081dce679513ae53af598918d629356cfb1982ca1cb3a63`  
		Last Modified: Fri, 29 Jul 2016 04:02:51 GMT  
		Size: 122.0 B
	-	`sha256:52609aaab90b1923cc0e2ab262d2121b4ca5fbc65ab5ecee493d953663207a4a`  
		Last Modified: Fri, 29 Jul 2016 04:02:49 GMT  
		Size: 1.4 KB (1351 bytes)

## `golang:latest`

```console
$ docker pull golang@sha256:247a91a8a6a3038f2ba422ead03339eb736f427e08175272f054722f9f2aac51
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24c8478ed407db5bf9c4efd0773fe75975b2bc321dd8f0ab1e42a898fcb6ea4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:02:22 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:02:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:02:36 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:02:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:02:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:02:39 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:02:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:85155ee2fbc2368de761d83d22f770d917b254ee04164f8c1c1b21a940d4e24f`  
		Last Modified: Fri, 29 Jul 2016 04:03:16 GMT  
		Size: 84.9 MB (84869285 bytes)
	-	`sha256:c51febe8479886dbe081dce679513ae53af598918d629356cfb1982ca1cb3a63`  
		Last Modified: Fri, 29 Jul 2016 04:02:51 GMT  
		Size: 122.0 B
	-	`sha256:52609aaab90b1923cc0e2ab262d2121b4ca5fbc65ab5ecee493d953663207a4a`  
		Last Modified: Fri, 29 Jul 2016 04:02:49 GMT  
		Size: 1.4 KB (1351 bytes)

## `golang:1.6.3-onbuild`

```console
$ docker pull golang@sha256:13429695826de16054729d6f32b8cc1dc5d0d46116774fb3a22d06e19a900756
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f38868dbb9c15368c299aa5820595c7016781923024731e1a73ab194b2121d3`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:02:22 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:02:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:02:36 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:02:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:02:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:02:39 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:02:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
# Fri, 29 Jul 2016 04:03:54 GMT
RUN mkdir -p /go/src/app
# Fri, 29 Jul 2016 04:03:55 GMT
WORKDIR /go/src/app
# Fri, 29 Jul 2016 04:03:55 GMT
CMD ["go-wrapper" "run"]
# Fri, 29 Jul 2016 04:03:56 GMT
ONBUILD COPY . /go/src/app
# Fri, 29 Jul 2016 04:03:57 GMT
ONBUILD RUN go-wrapper download
# Fri, 29 Jul 2016 04:03:57 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:85155ee2fbc2368de761d83d22f770d917b254ee04164f8c1c1b21a940d4e24f`  
		Last Modified: Fri, 29 Jul 2016 04:03:16 GMT  
		Size: 84.9 MB (84869285 bytes)
	-	`sha256:c51febe8479886dbe081dce679513ae53af598918d629356cfb1982ca1cb3a63`  
		Last Modified: Fri, 29 Jul 2016 04:02:51 GMT  
		Size: 122.0 B
	-	`sha256:52609aaab90b1923cc0e2ab262d2121b4ca5fbc65ab5ecee493d953663207a4a`  
		Last Modified: Fri, 29 Jul 2016 04:02:49 GMT  
		Size: 1.4 KB (1351 bytes)
	-	`sha256:ebeaceb1f7908bd28e0dd9b162737488d26b0bcaa99c40363112f98d012fc889`  
		Last Modified: Fri, 29 Jul 2016 04:04:06 GMT  
		Size: 130.0 B

## `golang:1.6-onbuild`

```console
$ docker pull golang@sha256:13429695826de16054729d6f32b8cc1dc5d0d46116774fb3a22d06e19a900756
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f38868dbb9c15368c299aa5820595c7016781923024731e1a73ab194b2121d3`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:02:22 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:02:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:02:36 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:02:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:02:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:02:39 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:02:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
# Fri, 29 Jul 2016 04:03:54 GMT
RUN mkdir -p /go/src/app
# Fri, 29 Jul 2016 04:03:55 GMT
WORKDIR /go/src/app
# Fri, 29 Jul 2016 04:03:55 GMT
CMD ["go-wrapper" "run"]
# Fri, 29 Jul 2016 04:03:56 GMT
ONBUILD COPY . /go/src/app
# Fri, 29 Jul 2016 04:03:57 GMT
ONBUILD RUN go-wrapper download
# Fri, 29 Jul 2016 04:03:57 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:85155ee2fbc2368de761d83d22f770d917b254ee04164f8c1c1b21a940d4e24f`  
		Last Modified: Fri, 29 Jul 2016 04:03:16 GMT  
		Size: 84.9 MB (84869285 bytes)
	-	`sha256:c51febe8479886dbe081dce679513ae53af598918d629356cfb1982ca1cb3a63`  
		Last Modified: Fri, 29 Jul 2016 04:02:51 GMT  
		Size: 122.0 B
	-	`sha256:52609aaab90b1923cc0e2ab262d2121b4ca5fbc65ab5ecee493d953663207a4a`  
		Last Modified: Fri, 29 Jul 2016 04:02:49 GMT  
		Size: 1.4 KB (1351 bytes)
	-	`sha256:ebeaceb1f7908bd28e0dd9b162737488d26b0bcaa99c40363112f98d012fc889`  
		Last Modified: Fri, 29 Jul 2016 04:04:06 GMT  
		Size: 130.0 B

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:13429695826de16054729d6f32b8cc1dc5d0d46116774fb3a22d06e19a900756
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f38868dbb9c15368c299aa5820595c7016781923024731e1a73ab194b2121d3`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:02:22 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:02:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:02:36 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:02:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:02:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:02:39 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:02:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
# Fri, 29 Jul 2016 04:03:54 GMT
RUN mkdir -p /go/src/app
# Fri, 29 Jul 2016 04:03:55 GMT
WORKDIR /go/src/app
# Fri, 29 Jul 2016 04:03:55 GMT
CMD ["go-wrapper" "run"]
# Fri, 29 Jul 2016 04:03:56 GMT
ONBUILD COPY . /go/src/app
# Fri, 29 Jul 2016 04:03:57 GMT
ONBUILD RUN go-wrapper download
# Fri, 29 Jul 2016 04:03:57 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:85155ee2fbc2368de761d83d22f770d917b254ee04164f8c1c1b21a940d4e24f`  
		Last Modified: Fri, 29 Jul 2016 04:03:16 GMT  
		Size: 84.9 MB (84869285 bytes)
	-	`sha256:c51febe8479886dbe081dce679513ae53af598918d629356cfb1982ca1cb3a63`  
		Last Modified: Fri, 29 Jul 2016 04:02:51 GMT  
		Size: 122.0 B
	-	`sha256:52609aaab90b1923cc0e2ab262d2121b4ca5fbc65ab5ecee493d953663207a4a`  
		Last Modified: Fri, 29 Jul 2016 04:02:49 GMT  
		Size: 1.4 KB (1351 bytes)
	-	`sha256:ebeaceb1f7908bd28e0dd9b162737488d26b0bcaa99c40363112f98d012fc889`  
		Last Modified: Fri, 29 Jul 2016 04:04:06 GMT  
		Size: 130.0 B

## `golang:onbuild`

```console
$ docker pull golang@sha256:13429695826de16054729d6f32b8cc1dc5d0d46116774fb3a22d06e19a900756
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f38868dbb9c15368c299aa5820595c7016781923024731e1a73ab194b2121d3`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:02:22 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:02:23 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:02:35 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:02:36 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:02:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:02:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:02:39 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:02:41 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
# Fri, 29 Jul 2016 04:03:54 GMT
RUN mkdir -p /go/src/app
# Fri, 29 Jul 2016 04:03:55 GMT
WORKDIR /go/src/app
# Fri, 29 Jul 2016 04:03:55 GMT
CMD ["go-wrapper" "run"]
# Fri, 29 Jul 2016 04:03:56 GMT
ONBUILD COPY . /go/src/app
# Fri, 29 Jul 2016 04:03:57 GMT
ONBUILD RUN go-wrapper download
# Fri, 29 Jul 2016 04:03:57 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:85155ee2fbc2368de761d83d22f770d917b254ee04164f8c1c1b21a940d4e24f`  
		Last Modified: Fri, 29 Jul 2016 04:03:16 GMT  
		Size: 84.9 MB (84869285 bytes)
	-	`sha256:c51febe8479886dbe081dce679513ae53af598918d629356cfb1982ca1cb3a63`  
		Last Modified: Fri, 29 Jul 2016 04:02:51 GMT  
		Size: 122.0 B
	-	`sha256:52609aaab90b1923cc0e2ab262d2121b4ca5fbc65ab5ecee493d953663207a4a`  
		Last Modified: Fri, 29 Jul 2016 04:02:49 GMT  
		Size: 1.4 KB (1351 bytes)
	-	`sha256:ebeaceb1f7908bd28e0dd9b162737488d26b0bcaa99c40363112f98d012fc889`  
		Last Modified: Fri, 29 Jul 2016 04:04:06 GMT  
		Size: 130.0 B

## `golang:1.6.3-wheezy`

```console
$ docker pull golang@sha256:1eb0fa3e5054c624fa1fbbf29821d61032e143c3fada528bce10da1b116d0a03
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201648625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e86435b53ef6cd9c62ff49c5b3562544fb0b657ac2a91ae77a2262cc7b4fa8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:27:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:59:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:04:40 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:04:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:04:42 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:04:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:04:55 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:04:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:04:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:04:58 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:04:59 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)
	-	`sha256:9c81f9b5104e75c51d678d80525193ab71008b9c25c1a1e4694996b0744c6cbe`  
		Last Modified: Thu, 28 Jul 2016 21:53:17 GMT  
		Size: 6.7 MB (6730996 bytes)
	-	`sha256:8c8d9d9752348fab5a9cd1140f31df8ad6ce301aca3e7d4e303d14fde010ea14`  
		Last Modified: Thu, 28 Jul 2016 21:53:49 GMT  
		Size: 38.9 MB (38887392 bytes)
	-	`sha256:0238af288e95b46257dcfbe2c650681a0ee6b66bdcf2306ece99f93f1ad794a3`  
		Last Modified: Fri, 29 Jul 2016 03:59:40 GMT  
		Size: 33.9 MB (33949794 bytes)
	-	`sha256:453a6a1a4ddc150932047bf9dbfe3b08491372c0de9f889cb58a52e27ea24fbb`  
		Last Modified: Fri, 29 Jul 2016 04:05:37 GMT  
		Size: 84.9 MB (84869331 bytes)
	-	`sha256:4f5ca97ed864658a34e725252086c9b253532062ed97506971694100a94b036e`  
		Last Modified: Fri, 29 Jul 2016 04:05:08 GMT  
		Size: 122.0 B
	-	`sha256:5b991788ec96628f1f3866f0aab6726922665d5aa247bc8379ca501fc699430c`  
		Last Modified: Fri, 29 Jul 2016 04:05:08 GMT  
		Size: 1.4 KB (1355 bytes)

## `golang:1.6-wheezy`

```console
$ docker pull golang@sha256:1eb0fa3e5054c624fa1fbbf29821d61032e143c3fada528bce10da1b116d0a03
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201648625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e86435b53ef6cd9c62ff49c5b3562544fb0b657ac2a91ae77a2262cc7b4fa8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:27:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:59:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:04:40 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:04:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:04:42 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:04:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:04:55 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:04:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:04:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:04:58 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:04:59 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)
	-	`sha256:9c81f9b5104e75c51d678d80525193ab71008b9c25c1a1e4694996b0744c6cbe`  
		Last Modified: Thu, 28 Jul 2016 21:53:17 GMT  
		Size: 6.7 MB (6730996 bytes)
	-	`sha256:8c8d9d9752348fab5a9cd1140f31df8ad6ce301aca3e7d4e303d14fde010ea14`  
		Last Modified: Thu, 28 Jul 2016 21:53:49 GMT  
		Size: 38.9 MB (38887392 bytes)
	-	`sha256:0238af288e95b46257dcfbe2c650681a0ee6b66bdcf2306ece99f93f1ad794a3`  
		Last Modified: Fri, 29 Jul 2016 03:59:40 GMT  
		Size: 33.9 MB (33949794 bytes)
	-	`sha256:453a6a1a4ddc150932047bf9dbfe3b08491372c0de9f889cb58a52e27ea24fbb`  
		Last Modified: Fri, 29 Jul 2016 04:05:37 GMT  
		Size: 84.9 MB (84869331 bytes)
	-	`sha256:4f5ca97ed864658a34e725252086c9b253532062ed97506971694100a94b036e`  
		Last Modified: Fri, 29 Jul 2016 04:05:08 GMT  
		Size: 122.0 B
	-	`sha256:5b991788ec96628f1f3866f0aab6726922665d5aa247bc8379ca501fc699430c`  
		Last Modified: Fri, 29 Jul 2016 04:05:08 GMT  
		Size: 1.4 KB (1355 bytes)

## `golang:1-wheezy`

```console
$ docker pull golang@sha256:1eb0fa3e5054c624fa1fbbf29821d61032e143c3fada528bce10da1b116d0a03
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201648625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e86435b53ef6cd9c62ff49c5b3562544fb0b657ac2a91ae77a2262cc7b4fa8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:27:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:59:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:04:40 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:04:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:04:42 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:04:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:04:55 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:04:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:04:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:04:58 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:04:59 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)
	-	`sha256:9c81f9b5104e75c51d678d80525193ab71008b9c25c1a1e4694996b0744c6cbe`  
		Last Modified: Thu, 28 Jul 2016 21:53:17 GMT  
		Size: 6.7 MB (6730996 bytes)
	-	`sha256:8c8d9d9752348fab5a9cd1140f31df8ad6ce301aca3e7d4e303d14fde010ea14`  
		Last Modified: Thu, 28 Jul 2016 21:53:49 GMT  
		Size: 38.9 MB (38887392 bytes)
	-	`sha256:0238af288e95b46257dcfbe2c650681a0ee6b66bdcf2306ece99f93f1ad794a3`  
		Last Modified: Fri, 29 Jul 2016 03:59:40 GMT  
		Size: 33.9 MB (33949794 bytes)
	-	`sha256:453a6a1a4ddc150932047bf9dbfe3b08491372c0de9f889cb58a52e27ea24fbb`  
		Last Modified: Fri, 29 Jul 2016 04:05:37 GMT  
		Size: 84.9 MB (84869331 bytes)
	-	`sha256:4f5ca97ed864658a34e725252086c9b253532062ed97506971694100a94b036e`  
		Last Modified: Fri, 29 Jul 2016 04:05:08 GMT  
		Size: 122.0 B
	-	`sha256:5b991788ec96628f1f3866f0aab6726922665d5aa247bc8379ca501fc699430c`  
		Last Modified: Fri, 29 Jul 2016 04:05:08 GMT  
		Size: 1.4 KB (1355 bytes)

## `golang:wheezy`

```console
$ docker pull golang@sha256:1eb0fa3e5054c624fa1fbbf29821d61032e143c3fada528bce10da1b116d0a03
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201648625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e86435b53ef6cd9c62ff49c5b3562544fb0b657ac2a91ae77a2262cc7b4fa8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:27:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:59:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:04:40 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 29 Jul 2016 04:04:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 29 Jul 2016 04:04:42 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 29 Jul 2016 04:04:54 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 29 Jul 2016 04:04:55 GMT
ENV GOPATH=/go
# Fri, 29 Jul 2016 04:04:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 04:04:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 29 Jul 2016 04:04:58 GMT
WORKDIR /go
# Fri, 29 Jul 2016 04:04:59 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)
	-	`sha256:9c81f9b5104e75c51d678d80525193ab71008b9c25c1a1e4694996b0744c6cbe`  
		Last Modified: Thu, 28 Jul 2016 21:53:17 GMT  
		Size: 6.7 MB (6730996 bytes)
	-	`sha256:8c8d9d9752348fab5a9cd1140f31df8ad6ce301aca3e7d4e303d14fde010ea14`  
		Last Modified: Thu, 28 Jul 2016 21:53:49 GMT  
		Size: 38.9 MB (38887392 bytes)
	-	`sha256:0238af288e95b46257dcfbe2c650681a0ee6b66bdcf2306ece99f93f1ad794a3`  
		Last Modified: Fri, 29 Jul 2016 03:59:40 GMT  
		Size: 33.9 MB (33949794 bytes)
	-	`sha256:453a6a1a4ddc150932047bf9dbfe3b08491372c0de9f889cb58a52e27ea24fbb`  
		Last Modified: Fri, 29 Jul 2016 04:05:37 GMT  
		Size: 84.9 MB (84869331 bytes)
	-	`sha256:4f5ca97ed864658a34e725252086c9b253532062ed97506971694100a94b036e`  
		Last Modified: Fri, 29 Jul 2016 04:05:08 GMT  
		Size: 122.0 B
	-	`sha256:5b991788ec96628f1f3866f0aab6726922665d5aa247bc8379ca501fc699430c`  
		Last Modified: Fri, 29 Jul 2016 04:05:08 GMT  
		Size: 1.4 KB (1355 bytes)

## `golang:1.6.3-alpine`

```console
$ docker pull golang@sha256:8b9e1e4a137e7663c1dc52a33c41699661ea4da9aca6ab0771b1fcec16a87535
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72155824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b317e0ae72cec6ec5faa748ae736e1d401735b1dc4eab2c633925ec109b0310`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Mon, 18 Jul 2016 17:22:23 GMT
ENV GOLANG_VERSION=1.6.3
# Mon, 18 Jul 2016 17:22:24 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Mon, 18 Jul 2016 17:22:25 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Mon, 18 Jul 2016 17:22:26 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in /
# Mon, 18 Jul 2016 17:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Mon, 18 Jul 2016 17:23:42 GMT
ENV GOPATH=/go
# Mon, 18 Jul 2016 17:23:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jul 2016 17:23:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 18 Jul 2016 17:23:44 GMT
WORKDIR /go
# Mon, 18 Jul 2016 17:23:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:de90fc0e5164ab0874b9c887c660857517ef58d35f6506efa6a3c1f086898b99`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 444.0 B
	-	`sha256:e8f38fc389bc155298999428131401648c7470563a4571a304ae564b8cc0ba71`  
		Last Modified: Mon, 18 Jul 2016 17:30:28 GMT  
		Size: 69.5 MB (69499701 bytes)
	-	`sha256:087a26f98166190888614f96fb10b95c33c46d1943a6b81a7c66134bd22efa2d`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 122.0 B
	-	`sha256:25994cc119744e0d02f5716206b622761006e0fe842624fc0343b68fcbe76804`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 1.3 KB (1347 bytes)

## `golang:1.6-alpine`

```console
$ docker pull golang@sha256:8b9e1e4a137e7663c1dc52a33c41699661ea4da9aca6ab0771b1fcec16a87535
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72155824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b317e0ae72cec6ec5faa748ae736e1d401735b1dc4eab2c633925ec109b0310`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Mon, 18 Jul 2016 17:22:23 GMT
ENV GOLANG_VERSION=1.6.3
# Mon, 18 Jul 2016 17:22:24 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Mon, 18 Jul 2016 17:22:25 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Mon, 18 Jul 2016 17:22:26 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in /
# Mon, 18 Jul 2016 17:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Mon, 18 Jul 2016 17:23:42 GMT
ENV GOPATH=/go
# Mon, 18 Jul 2016 17:23:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jul 2016 17:23:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 18 Jul 2016 17:23:44 GMT
WORKDIR /go
# Mon, 18 Jul 2016 17:23:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:de90fc0e5164ab0874b9c887c660857517ef58d35f6506efa6a3c1f086898b99`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 444.0 B
	-	`sha256:e8f38fc389bc155298999428131401648c7470563a4571a304ae564b8cc0ba71`  
		Last Modified: Mon, 18 Jul 2016 17:30:28 GMT  
		Size: 69.5 MB (69499701 bytes)
	-	`sha256:087a26f98166190888614f96fb10b95c33c46d1943a6b81a7c66134bd22efa2d`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 122.0 B
	-	`sha256:25994cc119744e0d02f5716206b622761006e0fe842624fc0343b68fcbe76804`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 1.3 KB (1347 bytes)

## `golang:1-alpine`

```console
$ docker pull golang@sha256:8b9e1e4a137e7663c1dc52a33c41699661ea4da9aca6ab0771b1fcec16a87535
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72155824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b317e0ae72cec6ec5faa748ae736e1d401735b1dc4eab2c633925ec109b0310`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Mon, 18 Jul 2016 17:22:23 GMT
ENV GOLANG_VERSION=1.6.3
# Mon, 18 Jul 2016 17:22:24 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Mon, 18 Jul 2016 17:22:25 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Mon, 18 Jul 2016 17:22:26 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in /
# Mon, 18 Jul 2016 17:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Mon, 18 Jul 2016 17:23:42 GMT
ENV GOPATH=/go
# Mon, 18 Jul 2016 17:23:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jul 2016 17:23:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 18 Jul 2016 17:23:44 GMT
WORKDIR /go
# Mon, 18 Jul 2016 17:23:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:de90fc0e5164ab0874b9c887c660857517ef58d35f6506efa6a3c1f086898b99`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 444.0 B
	-	`sha256:e8f38fc389bc155298999428131401648c7470563a4571a304ae564b8cc0ba71`  
		Last Modified: Mon, 18 Jul 2016 17:30:28 GMT  
		Size: 69.5 MB (69499701 bytes)
	-	`sha256:087a26f98166190888614f96fb10b95c33c46d1943a6b81a7c66134bd22efa2d`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 122.0 B
	-	`sha256:25994cc119744e0d02f5716206b622761006e0fe842624fc0343b68fcbe76804`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 1.3 KB (1347 bytes)

## `golang:alpine`

```console
$ docker pull golang@sha256:8b9e1e4a137e7663c1dc52a33c41699661ea4da9aca6ab0771b1fcec16a87535
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72155824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b317e0ae72cec6ec5faa748ae736e1d401735b1dc4eab2c633925ec109b0310`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Mon, 18 Jul 2016 17:22:23 GMT
ENV GOLANG_VERSION=1.6.3
# Mon, 18 Jul 2016 17:22:24 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Mon, 18 Jul 2016 17:22:25 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Mon, 18 Jul 2016 17:22:26 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in /
# Mon, 18 Jul 2016 17:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Mon, 18 Jul 2016 17:23:42 GMT
ENV GOPATH=/go
# Mon, 18 Jul 2016 17:23:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jul 2016 17:23:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 18 Jul 2016 17:23:44 GMT
WORKDIR /go
# Mon, 18 Jul 2016 17:23:44 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:de90fc0e5164ab0874b9c887c660857517ef58d35f6506efa6a3c1f086898b99`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 444.0 B
	-	`sha256:e8f38fc389bc155298999428131401648c7470563a4571a304ae564b8cc0ba71`  
		Last Modified: Mon, 18 Jul 2016 17:30:28 GMT  
		Size: 69.5 MB (69499701 bytes)
	-	`sha256:087a26f98166190888614f96fb10b95c33c46d1943a6b81a7c66134bd22efa2d`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 122.0 B
	-	`sha256:25994cc119744e0d02f5716206b622761006e0fe842624fc0343b68fcbe76804`  
		Last Modified: Mon, 18 Jul 2016 17:30:04 GMT  
		Size: 1.3 KB (1347 bytes)

## `golang:1.7rc6`

```console
$ docker pull golang@sha256:17deca9ef065716f3ecfaa6a2a162f990f77204e4585e8bfca77021b8f95b91e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7rc6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250877190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f7528fae06d5edb71870731122d5a4a11fff0da521f3015266467adff023df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:40:17 GMT
ENV GOLANG_VERSION=1.7rc6
# Mon, 08 Aug 2016 21:40:17 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7rc6.linux-amd64.tar.gz
# Mon, 08 Aug 2016 21:40:18 GMT
ENV GOLANG_DOWNLOAD_SHA256=45e3dfba542927ea58146a5d47a983feb36401ccafeea28a9e0a79534738b154
# Mon, 08 Aug 2016 21:40:28 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 08 Aug 2016 21:40:29 GMT
ENV GOPATH=/go
# Mon, 08 Aug 2016 21:40:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 21:40:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 08 Aug 2016 21:40:31 GMT
WORKDIR /go
# Mon, 08 Aug 2016 21:40:32 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:885790515f3627f6fca1edef636788337095b414d2e3d1fd0639984a4f914a3b`  
		Last Modified: Mon, 08 Aug 2016 21:47:06 GMT  
		Size: 81.6 MB (81583271 bytes)
	-	`sha256:3d53cbfb7ef13f4a868889f9d11bd0dff4702021304b3d0cdfcc42d1a192d1d1`  
		Last Modified: Mon, 08 Aug 2016 21:46:34 GMT  
		Size: 123.0 B
	-	`sha256:21052e6db9e80fa95be9a4c9aa971a33d4d5badc75dabcc7d6f14d105d65710d`  
		Last Modified: Mon, 08 Aug 2016 21:46:33 GMT  
		Size: 1.4 KB (1355 bytes)

## `golang:1.7`

```console
$ docker pull golang@sha256:17deca9ef065716f3ecfaa6a2a162f990f77204e4585e8bfca77021b8f95b91e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250877190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f7528fae06d5edb71870731122d5a4a11fff0da521f3015266467adff023df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:40:17 GMT
ENV GOLANG_VERSION=1.7rc6
# Mon, 08 Aug 2016 21:40:17 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7rc6.linux-amd64.tar.gz
# Mon, 08 Aug 2016 21:40:18 GMT
ENV GOLANG_DOWNLOAD_SHA256=45e3dfba542927ea58146a5d47a983feb36401ccafeea28a9e0a79534738b154
# Mon, 08 Aug 2016 21:40:28 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 08 Aug 2016 21:40:29 GMT
ENV GOPATH=/go
# Mon, 08 Aug 2016 21:40:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 21:40:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 08 Aug 2016 21:40:31 GMT
WORKDIR /go
# Mon, 08 Aug 2016 21:40:32 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:885790515f3627f6fca1edef636788337095b414d2e3d1fd0639984a4f914a3b`  
		Last Modified: Mon, 08 Aug 2016 21:47:06 GMT  
		Size: 81.6 MB (81583271 bytes)
	-	`sha256:3d53cbfb7ef13f4a868889f9d11bd0dff4702021304b3d0cdfcc42d1a192d1d1`  
		Last Modified: Mon, 08 Aug 2016 21:46:34 GMT  
		Size: 123.0 B
	-	`sha256:21052e6db9e80fa95be9a4c9aa971a33d4d5badc75dabcc7d6f14d105d65710d`  
		Last Modified: Mon, 08 Aug 2016 21:46:33 GMT  
		Size: 1.4 KB (1355 bytes)

## `golang:1.7rc6-onbuild`

```console
$ docker pull golang@sha256:749b07d29b6785da9704e42fbcbd88c48c2d1d6513888b734ce0c2e9b9052bc1
```

-	Platforms:
	-	linux; amd64

### `golang:1.7rc6-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250877321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2857f483246d1cec02a78520f66273440887d3f50b415584df75d6f7a25bf45a`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:40:17 GMT
ENV GOLANG_VERSION=1.7rc6
# Mon, 08 Aug 2016 21:40:17 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7rc6.linux-amd64.tar.gz
# Mon, 08 Aug 2016 21:40:18 GMT
ENV GOLANG_DOWNLOAD_SHA256=45e3dfba542927ea58146a5d47a983feb36401ccafeea28a9e0a79534738b154
# Mon, 08 Aug 2016 21:40:28 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 08 Aug 2016 21:40:29 GMT
ENV GOPATH=/go
# Mon, 08 Aug 2016 21:40:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 21:40:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 08 Aug 2016 21:40:31 GMT
WORKDIR /go
# Mon, 08 Aug 2016 21:40:32 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
# Mon, 08 Aug 2016 21:40:33 GMT
RUN mkdir -p /go/src/app
# Mon, 08 Aug 2016 21:40:34 GMT
WORKDIR /go/src/app
# Mon, 08 Aug 2016 21:40:34 GMT
CMD ["go-wrapper" "run"]
# Mon, 08 Aug 2016 21:40:35 GMT
ONBUILD COPY . /go/src/app
# Mon, 08 Aug 2016 21:40:35 GMT
ONBUILD RUN go-wrapper download
# Mon, 08 Aug 2016 21:40:35 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:885790515f3627f6fca1edef636788337095b414d2e3d1fd0639984a4f914a3b`  
		Last Modified: Mon, 08 Aug 2016 21:47:06 GMT  
		Size: 81.6 MB (81583271 bytes)
	-	`sha256:3d53cbfb7ef13f4a868889f9d11bd0dff4702021304b3d0cdfcc42d1a192d1d1`  
		Last Modified: Mon, 08 Aug 2016 21:46:34 GMT  
		Size: 123.0 B
	-	`sha256:21052e6db9e80fa95be9a4c9aa971a33d4d5badc75dabcc7d6f14d105d65710d`  
		Last Modified: Mon, 08 Aug 2016 21:46:33 GMT  
		Size: 1.4 KB (1355 bytes)
	-	`sha256:4a2c9bae7bf1f3b93b6ec09956b1d96392c8d96444c107a7d4e12bb20e852be6`  
		Last Modified: Mon, 08 Aug 2016 21:47:45 GMT  
		Size: 131.0 B

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:749b07d29b6785da9704e42fbcbd88c48c2d1d6513888b734ce0c2e9b9052bc1
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250877321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2857f483246d1cec02a78520f66273440887d3f50b415584df75d6f7a25bf45a`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:40:17 GMT
ENV GOLANG_VERSION=1.7rc6
# Mon, 08 Aug 2016 21:40:17 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7rc6.linux-amd64.tar.gz
# Mon, 08 Aug 2016 21:40:18 GMT
ENV GOLANG_DOWNLOAD_SHA256=45e3dfba542927ea58146a5d47a983feb36401ccafeea28a9e0a79534738b154
# Mon, 08 Aug 2016 21:40:28 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 08 Aug 2016 21:40:29 GMT
ENV GOPATH=/go
# Mon, 08 Aug 2016 21:40:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 21:40:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 08 Aug 2016 21:40:31 GMT
WORKDIR /go
# Mon, 08 Aug 2016 21:40:32 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
# Mon, 08 Aug 2016 21:40:33 GMT
RUN mkdir -p /go/src/app
# Mon, 08 Aug 2016 21:40:34 GMT
WORKDIR /go/src/app
# Mon, 08 Aug 2016 21:40:34 GMT
CMD ["go-wrapper" "run"]
# Mon, 08 Aug 2016 21:40:35 GMT
ONBUILD COPY . /go/src/app
# Mon, 08 Aug 2016 21:40:35 GMT
ONBUILD RUN go-wrapper download
# Mon, 08 Aug 2016 21:40:35 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:fee55c62229822bb787bc8502672cac358825b228a0d72ea48b71f6814a92ef4`  
		Last Modified: Fri, 29 Jul 2016 03:56:36 GMT  
		Size: 56.9 MB (56904467 bytes)
	-	`sha256:885790515f3627f6fca1edef636788337095b414d2e3d1fd0639984a4f914a3b`  
		Last Modified: Mon, 08 Aug 2016 21:47:06 GMT  
		Size: 81.6 MB (81583271 bytes)
	-	`sha256:3d53cbfb7ef13f4a868889f9d11bd0dff4702021304b3d0cdfcc42d1a192d1d1`  
		Last Modified: Mon, 08 Aug 2016 21:46:34 GMT  
		Size: 123.0 B
	-	`sha256:21052e6db9e80fa95be9a4c9aa971a33d4d5badc75dabcc7d6f14d105d65710d`  
		Last Modified: Mon, 08 Aug 2016 21:46:33 GMT  
		Size: 1.4 KB (1355 bytes)
	-	`sha256:4a2c9bae7bf1f3b93b6ec09956b1d96392c8d96444c107a7d4e12bb20e852be6`  
		Last Modified: Mon, 08 Aug 2016 21:47:45 GMT  
		Size: 131.0 B

## `golang:1.7rc6-wheezy`

```console
$ docker pull golang@sha256:92f00d142e88192b71447776a4b3f98c8aae1d6280d547679cf5ce395ade0fa2
```

-	Platforms:
	-	linux; amd64

### `golang:1.7rc6-wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198362528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6672447751fb9bf889221408d71df0b890af7d60b3734c899e9252454ace815`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:27:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:59:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:40:36 GMT
ENV GOLANG_VERSION=1.7rc6
# Mon, 08 Aug 2016 21:40:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7rc6.linux-amd64.tar.gz
# Mon, 08 Aug 2016 21:40:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=45e3dfba542927ea58146a5d47a983feb36401ccafeea28a9e0a79534738b154
# Mon, 08 Aug 2016 21:40:47 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 08 Aug 2016 21:40:50 GMT
ENV GOPATH=/go
# Mon, 08 Aug 2016 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 08 Aug 2016 21:40:53 GMT
WORKDIR /go
# Mon, 08 Aug 2016 21:40:54 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)
	-	`sha256:9c81f9b5104e75c51d678d80525193ab71008b9c25c1a1e4694996b0744c6cbe`  
		Last Modified: Thu, 28 Jul 2016 21:53:17 GMT  
		Size: 6.7 MB (6730996 bytes)
	-	`sha256:8c8d9d9752348fab5a9cd1140f31df8ad6ce301aca3e7d4e303d14fde010ea14`  
		Last Modified: Thu, 28 Jul 2016 21:53:49 GMT  
		Size: 38.9 MB (38887392 bytes)
	-	`sha256:0238af288e95b46257dcfbe2c650681a0ee6b66bdcf2306ece99f93f1ad794a3`  
		Last Modified: Fri, 29 Jul 2016 03:59:40 GMT  
		Size: 33.9 MB (33949794 bytes)
	-	`sha256:6c0fda054df5696dae9606bb5a4998e060c7b8a7d1268541bdd74fdaeafb3199`  
		Last Modified: Mon, 08 Aug 2016 21:48:47 GMT  
		Size: 81.6 MB (81583235 bytes)
	-	`sha256:bf9e94bb7808bf601788df837987576d2a58a66f2daf166c329e099a5b3d43a5`  
		Last Modified: Mon, 08 Aug 2016 21:48:19 GMT  
		Size: 123.0 B
	-	`sha256:eddb6aae1cd220fb69a4e216d25ffea6fefc9543385d0adf5f35a8a7671a1405`  
		Last Modified: Mon, 08 Aug 2016 21:48:19 GMT  
		Size: 1.4 KB (1353 bytes)

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:92f00d142e88192b71447776a4b3f98c8aae1d6280d547679cf5ce395ade0fa2
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198362528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6672447751fb9bf889221408d71df0b890af7d60b3734c899e9252454ace815`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:27:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 03:59:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:40:36 GMT
ENV GOLANG_VERSION=1.7rc6
# Mon, 08 Aug 2016 21:40:37 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7rc6.linux-amd64.tar.gz
# Mon, 08 Aug 2016 21:40:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=45e3dfba542927ea58146a5d47a983feb36401ccafeea28a9e0a79534738b154
# Mon, 08 Aug 2016 21:40:47 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Mon, 08 Aug 2016 21:40:50 GMT
ENV GOPATH=/go
# Mon, 08 Aug 2016 21:40:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 21:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 08 Aug 2016 21:40:53 GMT
WORKDIR /go
# Mon, 08 Aug 2016 21:40:54 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)
	-	`sha256:9c81f9b5104e75c51d678d80525193ab71008b9c25c1a1e4694996b0744c6cbe`  
		Last Modified: Thu, 28 Jul 2016 21:53:17 GMT  
		Size: 6.7 MB (6730996 bytes)
	-	`sha256:8c8d9d9752348fab5a9cd1140f31df8ad6ce301aca3e7d4e303d14fde010ea14`  
		Last Modified: Thu, 28 Jul 2016 21:53:49 GMT  
		Size: 38.9 MB (38887392 bytes)
	-	`sha256:0238af288e95b46257dcfbe2c650681a0ee6b66bdcf2306ece99f93f1ad794a3`  
		Last Modified: Fri, 29 Jul 2016 03:59:40 GMT  
		Size: 33.9 MB (33949794 bytes)
	-	`sha256:6c0fda054df5696dae9606bb5a4998e060c7b8a7d1268541bdd74fdaeafb3199`  
		Last Modified: Mon, 08 Aug 2016 21:48:47 GMT  
		Size: 81.6 MB (81583235 bytes)
	-	`sha256:bf9e94bb7808bf601788df837987576d2a58a66f2daf166c329e099a5b3d43a5`  
		Last Modified: Mon, 08 Aug 2016 21:48:19 GMT  
		Size: 123.0 B
	-	`sha256:eddb6aae1cd220fb69a4e216d25ffea6fefc9543385d0adf5f35a8a7671a1405`  
		Last Modified: Mon, 08 Aug 2016 21:48:19 GMT  
		Size: 1.4 KB (1353 bytes)

## `golang:1.7rc6-alpine`

```console
$ docker pull golang@sha256:50ee00c50ffe943c414ff6ef41439434d01081172b3bb7fcfd4adace7ea6f6b5
```

-	Platforms:
	-	linux; amd64

### `golang:1.7rc6-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73262851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335daff75af87d6a24c2bd3fd0019ae5c02d41f15fee8df1632a4a5dfface83a`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Mon, 08 Aug 2016 21:40:55 GMT
ENV GOLANG_VERSION=1.7rc6
# Mon, 08 Aug 2016 21:40:55 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7rc6.src.tar.gz
# Mon, 08 Aug 2016 21:40:56 GMT
ENV GOLANG_SRC_SHA256=a289943548b838c7ef606a37836d1db080a3cb3c6df4e76456e23609b8505d05
# Mon, 08 Aug 2016 21:40:56 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in /
# Mon, 08 Aug 2016 21:42:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Mon, 08 Aug 2016 21:42:11 GMT
ENV GOPATH=/go
# Mon, 08 Aug 2016 21:42:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 21:42:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 08 Aug 2016 21:42:13 GMT
WORKDIR /go
# Mon, 08 Aug 2016 21:42:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:52829980bfdb4848cbafed2750e698aab17c6b6d6b36e93ef6a59712c1e6ffbb`  
		Last Modified: Mon, 08 Aug 2016 21:49:16 GMT  
		Size: 436.0 B
	-	`sha256:1b9af2419a55d12abdebecd3a642525c3b9a34f5dfb2fc1fc90058231b7b09bb`  
		Last Modified: Mon, 08 Aug 2016 21:49:43 GMT  
		Size: 70.6 MB (70606736 bytes)
	-	`sha256:e6a0789c8a753355027e6c449c0be32cd98ee9329adc51aeb08ac6b7b3763816`  
		Last Modified: Mon, 08 Aug 2016 21:49:16 GMT  
		Size: 123.0 B
	-	`sha256:4c277c8160a486dc7593f908e3d1e46829f765240d063035dae621ad906a051f`  
		Last Modified: Mon, 08 Aug 2016 21:49:17 GMT  
		Size: 1.3 KB (1346 bytes)

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:50ee00c50ffe943c414ff6ef41439434d01081172b3bb7fcfd4adace7ea6f6b5
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73262851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335daff75af87d6a24c2bd3fd0019ae5c02d41f15fee8df1632a4a5dfface83a`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Mon, 08 Aug 2016 21:40:55 GMT
ENV GOLANG_VERSION=1.7rc6
# Mon, 08 Aug 2016 21:40:55 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7rc6.src.tar.gz
# Mon, 08 Aug 2016 21:40:56 GMT
ENV GOLANG_SRC_SHA256=a289943548b838c7ef606a37836d1db080a3cb3c6df4e76456e23609b8505d05
# Mon, 08 Aug 2016 21:40:56 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in /
# Mon, 08 Aug 2016 21:42:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Mon, 08 Aug 2016 21:42:11 GMT
ENV GOPATH=/go
# Mon, 08 Aug 2016 21:42:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 21:42:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 08 Aug 2016 21:42:13 GMT
WORKDIR /go
# Mon, 08 Aug 2016 21:42:14 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:52829980bfdb4848cbafed2750e698aab17c6b6d6b36e93ef6a59712c1e6ffbb`  
		Last Modified: Mon, 08 Aug 2016 21:49:16 GMT  
		Size: 436.0 B
	-	`sha256:1b9af2419a55d12abdebecd3a642525c3b9a34f5dfb2fc1fc90058231b7b09bb`  
		Last Modified: Mon, 08 Aug 2016 21:49:43 GMT  
		Size: 70.6 MB (70606736 bytes)
	-	`sha256:e6a0789c8a753355027e6c449c0be32cd98ee9329adc51aeb08ac6b7b3763816`  
		Last Modified: Mon, 08 Aug 2016 21:49:16 GMT  
		Size: 123.0 B
	-	`sha256:4c277c8160a486dc7593f908e3d1e46829f765240d063035dae621ad906a051f`  
		Last Modified: Mon, 08 Aug 2016 21:49:17 GMT  
		Size: 1.3 KB (1346 bytes)
