<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `golang`

-	[`golang:1.6.3`](#golang163)
-	[`golang:1.6`](#golang16)
-	[`golang:1.6.3-onbuild`](#golang163-onbuild)
-	[`golang:1.6-onbuild`](#golang16-onbuild)
-	[`golang:1.6.3-wheezy`](#golang163-wheezy)
-	[`golang:1.6-wheezy`](#golang16-wheezy)
-	[`golang:1.6.3-alpine`](#golang163-alpine)
-	[`golang:1.6-alpine`](#golang16-alpine)
-	[`golang:1.6.3-windowsservercore`](#golang163-windowsservercore)
-	[`golang:1.6-windowsservercore`](#golang16-windowsservercore)
-	[`golang:1.7.0`](#golang170)
-	[`golang:1.7`](#golang17)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.7.0-onbuild`](#golang170-onbuild)
-	[`golang:1.7-onbuild`](#golang17-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.7.0-wheezy`](#golang170-wheezy)
-	[`golang:1.7-wheezy`](#golang17-wheezy)
-	[`golang:1-wheezy`](#golang1-wheezy)
-	[`golang:wheezy`](#golangwheezy)
-	[`golang:1.7.0-alpine`](#golang170-alpine)
-	[`golang:1.7-alpine`](#golang17-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.7.0-windowsservercore`](#golang170-windowsservercore)
-	[`golang:1.7-windowsservercore`](#golang17-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)

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

## `golang:1.6.3-windowsservercore`

**does not exist** (yet?)

## `golang:1.6-windowsservercore`

**does not exist** (yet?)

## `golang:1.7.0`

```console
$ docker pull golang@sha256:6cdf751b76c8e2c52319941fb189967c1bac3911433871349ac56b82d28e367b
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250878134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe25c00086fbc46741fc62150d197a2f59db658b7f035e0340191079cdbf0baa`
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
# Tue, 16 Aug 2016 17:09:22 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 17:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 16 Aug 2016 17:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 16 Aug 2016 17:09:36 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 16 Aug 2016 17:09:38 GMT
ENV GOPATH=/go
# Tue, 16 Aug 2016 17:09:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Aug 2016 17:09:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Aug 2016 17:09:48 GMT
WORKDIR /go
# Tue, 16 Aug 2016 17:09:49 GMT
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
	-	`sha256:1b9a447620c727235489b4feaf150bbd9f44951c36cdaeee0d927e5daaff3c68`  
		Last Modified: Tue, 16 Aug 2016 17:14:15 GMT  
		Size: 81.6 MB (81584218 bytes)
	-	`sha256:11eeb61bb0b67b6f3fcf78adbd2408b553818d55cab666a818278efe55ff6db2`  
		Last Modified: Tue, 16 Aug 2016 17:13:50 GMT  
		Size: 123.0 B
	-	`sha256:487c6f81373dfd17f84c60a77d8e5ecace3543a6c6b538f83d6e3a008b6f8f9c`  
		Last Modified: Tue, 16 Aug 2016 17:13:50 GMT  
		Size: 1.4 KB (1352 bytes)

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

## `golang:1`

```console
$ docker pull golang@sha256:6cdf751b76c8e2c52319941fb189967c1bac3911433871349ac56b82d28e367b
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250878134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe25c00086fbc46741fc62150d197a2f59db658b7f035e0340191079cdbf0baa`
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
# Tue, 16 Aug 2016 17:09:22 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 17:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 16 Aug 2016 17:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 16 Aug 2016 17:09:36 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 16 Aug 2016 17:09:38 GMT
ENV GOPATH=/go
# Tue, 16 Aug 2016 17:09:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Aug 2016 17:09:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Aug 2016 17:09:48 GMT
WORKDIR /go
# Tue, 16 Aug 2016 17:09:49 GMT
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
	-	`sha256:1b9a447620c727235489b4feaf150bbd9f44951c36cdaeee0d927e5daaff3c68`  
		Last Modified: Tue, 16 Aug 2016 17:14:15 GMT  
		Size: 81.6 MB (81584218 bytes)
	-	`sha256:11eeb61bb0b67b6f3fcf78adbd2408b553818d55cab666a818278efe55ff6db2`  
		Last Modified: Tue, 16 Aug 2016 17:13:50 GMT  
		Size: 123.0 B
	-	`sha256:487c6f81373dfd17f84c60a77d8e5ecace3543a6c6b538f83d6e3a008b6f8f9c`  
		Last Modified: Tue, 16 Aug 2016 17:13:50 GMT  
		Size: 1.4 KB (1352 bytes)

## `golang:latest`

```console
$ docker pull golang@sha256:6cdf751b76c8e2c52319941fb189967c1bac3911433871349ac56b82d28e367b
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250878134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe25c00086fbc46741fc62150d197a2f59db658b7f035e0340191079cdbf0baa`
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
# Tue, 16 Aug 2016 17:09:22 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 17:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 16 Aug 2016 17:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 16 Aug 2016 17:09:36 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 16 Aug 2016 17:09:38 GMT
ENV GOPATH=/go
# Tue, 16 Aug 2016 17:09:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Aug 2016 17:09:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Aug 2016 17:09:48 GMT
WORKDIR /go
# Tue, 16 Aug 2016 17:09:49 GMT
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
	-	`sha256:1b9a447620c727235489b4feaf150bbd9f44951c36cdaeee0d927e5daaff3c68`  
		Last Modified: Tue, 16 Aug 2016 17:14:15 GMT  
		Size: 81.6 MB (81584218 bytes)
	-	`sha256:11eeb61bb0b67b6f3fcf78adbd2408b553818d55cab666a818278efe55ff6db2`  
		Last Modified: Tue, 16 Aug 2016 17:13:50 GMT  
		Size: 123.0 B
	-	`sha256:487c6f81373dfd17f84c60a77d8e5ecace3543a6c6b538f83d6e3a008b6f8f9c`  
		Last Modified: Tue, 16 Aug 2016 17:13:50 GMT  
		Size: 1.4 KB (1352 bytes)

## `golang:1.7.0-onbuild`

**does not exist** (yet?)

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

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:28bcf425e686b554e5d1e2651115e85f50aa45ecfdeac5f5f8f579e748cae732
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250878264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d20e6703500b53bc61682eb8ee617b69494fb0370b1f51694b31172074579a5`
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
# Tue, 16 Aug 2016 17:09:22 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 17:09:23 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 16 Aug 2016 17:09:24 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 16 Aug 2016 17:09:36 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 16 Aug 2016 17:09:38 GMT
ENV GOPATH=/go
# Tue, 16 Aug 2016 17:09:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Aug 2016 17:09:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Aug 2016 17:09:48 GMT
WORKDIR /go
# Tue, 16 Aug 2016 17:09:49 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
# Tue, 16 Aug 2016 17:09:52 GMT
RUN mkdir -p /go/src/app
# Tue, 16 Aug 2016 17:09:53 GMT
WORKDIR /go/src/app
# Tue, 16 Aug 2016 17:09:54 GMT
CMD ["go-wrapper" "run"]
# Tue, 16 Aug 2016 17:09:55 GMT
ONBUILD COPY . /go/src/app
# Tue, 16 Aug 2016 17:10:02 GMT
ONBUILD RUN go-wrapper download
# Tue, 16 Aug 2016 17:10:03 GMT
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
	-	`sha256:1b9a447620c727235489b4feaf150bbd9f44951c36cdaeee0d927e5daaff3c68`  
		Last Modified: Tue, 16 Aug 2016 17:14:15 GMT  
		Size: 81.6 MB (81584218 bytes)
	-	`sha256:11eeb61bb0b67b6f3fcf78adbd2408b553818d55cab666a818278efe55ff6db2`  
		Last Modified: Tue, 16 Aug 2016 17:13:50 GMT  
		Size: 123.0 B
	-	`sha256:487c6f81373dfd17f84c60a77d8e5ecace3543a6c6b538f83d6e3a008b6f8f9c`  
		Last Modified: Tue, 16 Aug 2016 17:13:50 GMT  
		Size: 1.4 KB (1352 bytes)
	-	`sha256:471e4d355f729ef1819e723e39cace3045b56cf4888246e41bbe71a3fda188c2`  
		Last Modified: Tue, 16 Aug 2016 17:15:08 GMT  
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

## `golang:1.7.0-wheezy`

```console
$ docker pull golang@sha256:79cab6e3c835c081f5a446076f1b448539dcb2d203116041ff0e6e1b8447b337
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.0-wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198363563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a144f4fe2c464697ab54d43c2c2a731ab5dfb0f8a22a037659785e0d0d267ac7`
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
# Tue, 16 Aug 2016 17:10:05 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 17:10:06 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 16 Aug 2016 17:10:07 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 16 Aug 2016 17:10:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 16 Aug 2016 17:10:20 GMT
ENV GOPATH=/go
# Tue, 16 Aug 2016 17:10:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Aug 2016 17:10:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Aug 2016 17:10:31 GMT
WORKDIR /go
# Tue, 16 Aug 2016 17:10:32 GMT
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
	-	`sha256:5766aef40ab5df7cbf2931555beafb9335801643169cb8b5c30ebc931442aad6`  
		Last Modified: Tue, 16 Aug 2016 17:16:24 GMT  
		Size: 81.6 MB (81584267 bytes)
	-	`sha256:cea8baade0747a902d1c87f81b7c47a5c5d4303aa49ac291d9957b117fc8e59c`  
		Last Modified: Tue, 16 Aug 2016 17:15:58 GMT  
		Size: 123.0 B
	-	`sha256:187f24b06c1f598955220f8729dbced84fee66d386d2055700d6085f002a363c`  
		Last Modified: Tue, 16 Aug 2016 17:15:58 GMT  
		Size: 1.4 KB (1356 bytes)

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:79cab6e3c835c081f5a446076f1b448539dcb2d203116041ff0e6e1b8447b337
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198363563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a144f4fe2c464697ab54d43c2c2a731ab5dfb0f8a22a037659785e0d0d267ac7`
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
# Tue, 16 Aug 2016 17:10:05 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 17:10:06 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 16 Aug 2016 17:10:07 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 16 Aug 2016 17:10:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 16 Aug 2016 17:10:20 GMT
ENV GOPATH=/go
# Tue, 16 Aug 2016 17:10:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Aug 2016 17:10:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Aug 2016 17:10:31 GMT
WORKDIR /go
# Tue, 16 Aug 2016 17:10:32 GMT
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
	-	`sha256:5766aef40ab5df7cbf2931555beafb9335801643169cb8b5c30ebc931442aad6`  
		Last Modified: Tue, 16 Aug 2016 17:16:24 GMT  
		Size: 81.6 MB (81584267 bytes)
	-	`sha256:cea8baade0747a902d1c87f81b7c47a5c5d4303aa49ac291d9957b117fc8e59c`  
		Last Modified: Tue, 16 Aug 2016 17:15:58 GMT  
		Size: 123.0 B
	-	`sha256:187f24b06c1f598955220f8729dbced84fee66d386d2055700d6085f002a363c`  
		Last Modified: Tue, 16 Aug 2016 17:15:58 GMT  
		Size: 1.4 KB (1356 bytes)

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
$ docker pull golang@sha256:79cab6e3c835c081f5a446076f1b448539dcb2d203116041ff0e6e1b8447b337
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198363563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a144f4fe2c464697ab54d43c2c2a731ab5dfb0f8a22a037659785e0d0d267ac7`
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
# Tue, 16 Aug 2016 17:10:05 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 17:10:06 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.linux-amd64.tar.gz
# Tue, 16 Aug 2016 17:10:07 GMT
ENV GOLANG_DOWNLOAD_SHA256=702ad90f705365227e902b42d91dd1a40e48ca7f67a2f4b2fd052aaa4295cd95
# Tue, 16 Aug 2016 17:10:19 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 16 Aug 2016 17:10:20 GMT
ENV GOPATH=/go
# Tue, 16 Aug 2016 17:10:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Aug 2016 17:10:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Aug 2016 17:10:31 GMT
WORKDIR /go
# Tue, 16 Aug 2016 17:10:32 GMT
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
	-	`sha256:5766aef40ab5df7cbf2931555beafb9335801643169cb8b5c30ebc931442aad6`  
		Last Modified: Tue, 16 Aug 2016 17:16:24 GMT  
		Size: 81.6 MB (81584267 bytes)
	-	`sha256:cea8baade0747a902d1c87f81b7c47a5c5d4303aa49ac291d9957b117fc8e59c`  
		Last Modified: Tue, 16 Aug 2016 17:15:58 GMT  
		Size: 123.0 B
	-	`sha256:187f24b06c1f598955220f8729dbced84fee66d386d2055700d6085f002a363c`  
		Last Modified: Tue, 16 Aug 2016 17:15:58 GMT  
		Size: 1.4 KB (1356 bytes)

## `golang:1.7.0-alpine`

```console
$ docker pull golang@sha256:e91d55a5eaf99dcd05391094cb33a33e728384d9d05673e6749584246ea79206
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.0-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73263041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52493611af1ebc424812b8ad8029b2c6c53b4d0551052e65c985efefcd688547`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Tue, 16 Aug 2016 17:10:34 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 17:10:35 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.src.tar.gz
# Tue, 16 Aug 2016 17:10:36 GMT
ENV GOLANG_SRC_SHA256=72680c16ba0891fcf2ccf46d0f809e4ecf47bbf889f5d884ccb54c5e9a17e1c0
# Tue, 16 Aug 2016 17:10:37 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in /
# Tue, 16 Aug 2016 17:12:01 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 16 Aug 2016 17:12:02 GMT
ENV GOPATH=/go
# Tue, 16 Aug 2016 17:12:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Aug 2016 17:12:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Aug 2016 17:12:07 GMT
WORKDIR /go
# Tue, 16 Aug 2016 17:12:08 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:d730108ef4ddf04d261f18ee59590e84c4f72c59e25df6d45747d7443af9bc64`  
		Last Modified: Tue, 16 Aug 2016 17:17:16 GMT  
		Size: 435.0 B
	-	`sha256:a4c9a517a6ac1e571d5f5a872aa5a1fd0d202dd711f51fcaa778f407c8206152`  
		Last Modified: Tue, 16 Aug 2016 17:17:39 GMT  
		Size: 70.6 MB (70606927 bytes)
	-	`sha256:0f9d02ce012bc58b5a8d75993625cd8ffc7945c3bf2bdcde128a471369008e33`  
		Last Modified: Tue, 16 Aug 2016 17:17:16 GMT  
		Size: 123.0 B
	-	`sha256:2fca6005cc852f36060697fbcc205308c24eaf2b2d03dd0743f258bc4ba34dc6`  
		Last Modified: Tue, 16 Aug 2016 17:17:15 GMT  
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

## `golang:1-alpine`

```console
$ docker pull golang@sha256:e91d55a5eaf99dcd05391094cb33a33e728384d9d05673e6749584246ea79206
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73263041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52493611af1ebc424812b8ad8029b2c6c53b4d0551052e65c985efefcd688547`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Fri, 01 Jul 2016 19:29:12 GMT
RUN apk add --no-cache ca-certificates
# Tue, 16 Aug 2016 17:10:34 GMT
ENV GOLANG_VERSION=1.7
# Tue, 16 Aug 2016 17:10:35 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.src.tar.gz
# Tue, 16 Aug 2016 17:10:36 GMT
ENV GOLANG_SRC_SHA256=72680c16ba0891fcf2ccf46d0f809e4ecf47bbf889f5d884ccb54c5e9a17e1c0
# Tue, 16 Aug 2016 17:10:37 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in /
# Tue, 16 Aug 2016 17:12:01 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Tue, 16 Aug 2016 17:12:02 GMT
ENV GOPATH=/go
# Tue, 16 Aug 2016 17:12:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Aug 2016 17:12:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Aug 2016 17:12:07 GMT
WORKDIR /go
# Tue, 16 Aug 2016 17:12:08 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:ac58758e6ad5928c40fe2ce1b955a5f9d1c4889667874887960ff0c00f2ebcf6`  
		Last Modified: Fri, 01 Jul 2016 19:34:13 GMT  
		Size: 343.9 KB (343924 bytes)
	-	`sha256:d730108ef4ddf04d261f18ee59590e84c4f72c59e25df6d45747d7443af9bc64`  
		Last Modified: Tue, 16 Aug 2016 17:17:16 GMT  
		Size: 435.0 B
	-	`sha256:a4c9a517a6ac1e571d5f5a872aa5a1fd0d202dd711f51fcaa778f407c8206152`  
		Last Modified: Tue, 16 Aug 2016 17:17:39 GMT  
		Size: 70.6 MB (70606927 bytes)
	-	`sha256:0f9d02ce012bc58b5a8d75993625cd8ffc7945c3bf2bdcde128a471369008e33`  
		Last Modified: Tue, 16 Aug 2016 17:17:16 GMT  
		Size: 123.0 B
	-	`sha256:2fca6005cc852f36060697fbcc205308c24eaf2b2d03dd0743f258bc4ba34dc6`  
		Last Modified: Tue, 16 Aug 2016 17:17:15 GMT  
		Size: 1.3 KB (1346 bytes)

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

## `golang:1.7.0-windowsservercore`

**does not exist** (yet?)

## `golang:1.7-windowsservercore`

**does not exist** (yet?)

## `golang:1-windowsservercore`

**does not exist** (yet?)

## `golang:windowsservercore`

**does not exist** (yet?)
