<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

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
-	[`golang:1.7.1`](#golang171)
-	[`golang:1.7`](#golang17)
-	[`golang:1`](#golang1)
-	[`golang:latest`](#golanglatest)
-	[`golang:1.7.1-onbuild`](#golang171-onbuild)
-	[`golang:1.7-onbuild`](#golang17-onbuild)
-	[`golang:1-onbuild`](#golang1-onbuild)
-	[`golang:onbuild`](#golangonbuild)
-	[`golang:1.7.1-wheezy`](#golang171-wheezy)
-	[`golang:1.7-wheezy`](#golang17-wheezy)
-	[`golang:1-wheezy`](#golang1-wheezy)
-	[`golang:wheezy`](#golangwheezy)
-	[`golang:1.7.1-alpine`](#golang171-alpine)
-	[`golang:1.7-alpine`](#golang17-alpine)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:alpine`](#golangalpine)
-	[`golang:1.7.1-windowsservercore`](#golang171-windowsservercore)
-	[`golang:1.7-windowsservercore`](#golang17-windowsservercore)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:windowsservercore`](#golangwindowsservercore)

## `golang:1.6.3`

```console
$ docker pull golang@sha256:a11e2838252ad36dab571280ef3954bc5fe1c752fb924169dcc2c619f29b70ae
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254162932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f74760851be96931b3bbf78f0a5aada71ef5ad48a44696bf1f275fb56febf14`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:07:48 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 23 Sep 2016 19:07:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:07:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 23 Sep 2016 19:07:58 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:07:59 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:07:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:08:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:08:00 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:08:01 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f906a28bb0f7d78f2a1bc168ae6e4696a50ec9ea3bbd10e254e6570390d647d`  
		Last Modified: Fri, 23 Sep 2016 19:08:35 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2ecfcc3db8d75303681af1e93418d949446524a75944eb2160e4b95ca0842f`  
		Last Modified: Fri, 23 Sep 2016 19:08:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f4a08bda0cc826d70a07b9c888de1d4edf3a143e52e0c6782c5cddb03bfee0`  
		Last Modified: Fri, 23 Sep 2016 19:08:08 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6`

```console
$ docker pull golang@sha256:a11e2838252ad36dab571280ef3954bc5fe1c752fb924169dcc2c619f29b70ae
```

-	Platforms:
	-	linux; amd64

### `golang:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254162932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f74760851be96931b3bbf78f0a5aada71ef5ad48a44696bf1f275fb56febf14`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:07:48 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 23 Sep 2016 19:07:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:07:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 23 Sep 2016 19:07:58 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:07:59 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:07:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:08:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:08:00 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:08:01 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f906a28bb0f7d78f2a1bc168ae6e4696a50ec9ea3bbd10e254e6570390d647d`  
		Last Modified: Fri, 23 Sep 2016 19:08:35 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2ecfcc3db8d75303681af1e93418d949446524a75944eb2160e4b95ca0842f`  
		Last Modified: Fri, 23 Sep 2016 19:08:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f4a08bda0cc826d70a07b9c888de1d4edf3a143e52e0c6782c5cddb03bfee0`  
		Last Modified: Fri, 23 Sep 2016 19:08:08 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-onbuild`

```console
$ docker pull golang@sha256:ec6f44a6d2dee5e8f14883effe10583cb3114683bef81eb6f866ed20b3bddedf
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3b1be5aa30a9db58fe1ff7dfc98471553d38dd4caf56800ffa65023e776ba0`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:07:48 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 23 Sep 2016 19:07:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:07:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 23 Sep 2016 19:07:58 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:07:59 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:07:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:08:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:08:00 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:08:01 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 23 Sep 2016 19:08:52 GMT
RUN mkdir -p /go/src/app
# Fri, 23 Sep 2016 19:08:52 GMT
WORKDIR /go/src/app
# Fri, 23 Sep 2016 19:08:53 GMT
CMD ["go-wrapper" "run"]
# Fri, 23 Sep 2016 19:08:53 GMT
ONBUILD COPY . /go/src/app
# Fri, 23 Sep 2016 19:08:53 GMT
ONBUILD RUN go-wrapper download
# Fri, 23 Sep 2016 19:08:54 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f906a28bb0f7d78f2a1bc168ae6e4696a50ec9ea3bbd10e254e6570390d647d`  
		Last Modified: Fri, 23 Sep 2016 19:08:35 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2ecfcc3db8d75303681af1e93418d949446524a75944eb2160e4b95ca0842f`  
		Last Modified: Fri, 23 Sep 2016 19:08:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f4a08bda0cc826d70a07b9c888de1d4edf3a143e52e0c6782c5cddb03bfee0`  
		Last Modified: Fri, 23 Sep 2016 19:08:08 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d88367310815294304293707dd7686218fd97c479e92ce0e5ca3cefee16b6f`  
		Last Modified: Fri, 23 Sep 2016 19:09:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-onbuild`

```console
$ docker pull golang@sha256:ec6f44a6d2dee5e8f14883effe10583cb3114683bef81eb6f866ed20b3bddedf
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254163061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3b1be5aa30a9db58fe1ff7dfc98471553d38dd4caf56800ffa65023e776ba0`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:07:48 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 23 Sep 2016 19:07:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:07:49 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Fri, 23 Sep 2016 19:07:58 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:07:59 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:07:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:08:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:08:00 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:08:01 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 23 Sep 2016 19:08:52 GMT
RUN mkdir -p /go/src/app
# Fri, 23 Sep 2016 19:08:52 GMT
WORKDIR /go/src/app
# Fri, 23 Sep 2016 19:08:53 GMT
CMD ["go-wrapper" "run"]
# Fri, 23 Sep 2016 19:08:53 GMT
ONBUILD COPY . /go/src/app
# Fri, 23 Sep 2016 19:08:53 GMT
ONBUILD RUN go-wrapper download
# Fri, 23 Sep 2016 19:08:54 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f906a28bb0f7d78f2a1bc168ae6e4696a50ec9ea3bbd10e254e6570390d647d`  
		Last Modified: Fri, 23 Sep 2016 19:08:35 GMT  
		Size: 84.9 MB (84869332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2ecfcc3db8d75303681af1e93418d949446524a75944eb2160e4b95ca0842f`  
		Last Modified: Fri, 23 Sep 2016 19:08:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f4a08bda0cc826d70a07b9c888de1d4edf3a143e52e0c6782c5cddb03bfee0`  
		Last Modified: Fri, 23 Sep 2016 19:08:08 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d88367310815294304293707dd7686218fd97c479e92ce0e5ca3cefee16b6f`  
		Last Modified: Fri, 23 Sep 2016 19:09:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-wheezy`

```console
$ docker pull golang@sha256:bed001b76acd4e9ba878c8a93d1d6932b0aadd373a6f38bd5a92787a0affa4b4
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200131345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a091a65557d63b9267678404dccc419e3951b53192a166f7cbb6825a45f1e56a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:57 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 20 Sep 2016 04:47:57 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 20 Sep 2016 04:47:58 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 20 Sep 2016 04:48:08 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 20 Sep 2016 04:48:09 GMT
ENV GOPATH=/go
# Tue, 20 Sep 2016 04:48:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 04:48:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 20 Sep 2016 04:48:11 GMT
WORKDIR /go
# Tue, 20 Sep 2016 04:48:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f2642fa6c10cd41dc5fb0a2fee2b1a2e5a65cbb995522e6b977831a5d3c0ca`  
		Last Modified: Fri, 23 Sep 2016 19:06:54 GMT  
		Size: 33.9 MB (33949674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe2f2fae2867eb245b44d590d5dafcd8dcaa0ff6ddd446289af492390349720`  
		Last Modified: Fri, 23 Sep 2016 19:09:54 GMT  
		Size: 84.9 MB (84869321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92911943e90e993f7c6ad6ed451ca51d6ccd80078cc3c1355668f47282ef6f45`  
		Last Modified: Fri, 23 Sep 2016 19:09:25 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197f871ec0476adc2c9a7f4c057946d5e037cf2bc8ee4901c43c86aa3952ab02`  
		Last Modified: Fri, 23 Sep 2016 19:09:25 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-wheezy`

```console
$ docker pull golang@sha256:bed001b76acd4e9ba878c8a93d1d6932b0aadd373a6f38bd5a92787a0affa4b4
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200131345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a091a65557d63b9267678404dccc419e3951b53192a166f7cbb6825a45f1e56a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:57 GMT
ENV GOLANG_VERSION=1.6.3
# Tue, 20 Sep 2016 04:47:57 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.linux-amd64.tar.gz
# Tue, 20 Sep 2016 04:47:58 GMT
ENV GOLANG_DOWNLOAD_SHA256=cdde5e08530c0579255d6153b08fdb3b8e47caabbe717bc7bcd7561275a87aeb
# Tue, 20 Sep 2016 04:48:08 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 20 Sep 2016 04:48:09 GMT
ENV GOPATH=/go
# Tue, 20 Sep 2016 04:48:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 04:48:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 20 Sep 2016 04:48:11 GMT
WORKDIR /go
# Tue, 20 Sep 2016 04:48:11 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f2642fa6c10cd41dc5fb0a2fee2b1a2e5a65cbb995522e6b977831a5d3c0ca`  
		Last Modified: Fri, 23 Sep 2016 19:06:54 GMT  
		Size: 33.9 MB (33949674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe2f2fae2867eb245b44d590d5dafcd8dcaa0ff6ddd446289af492390349720`  
		Last Modified: Fri, 23 Sep 2016 19:09:54 GMT  
		Size: 84.9 MB (84869321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92911943e90e993f7c6ad6ed451ca51d6ccd80078cc3c1355668f47282ef6f45`  
		Last Modified: Fri, 23 Sep 2016 19:09:25 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197f871ec0476adc2c9a7f4c057946d5e037cf2bc8ee4901c43c86aa3952ab02`  
		Last Modified: Fri, 23 Sep 2016 19:09:25 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-alpine`

```console
$ docker pull golang@sha256:12b8f518fe8b7578293a326d7ab475fa3ead2afdee66928e54443f1a23da710d
```

-	Platforms:
	-	linux; amd64

### `golang:1.6.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72158660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e2cb0f17a90a9219d13b6b4c16a0ad21dd33ed300cb547d4363399e48dff4f`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:48:58 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 23 Sep 2016 16:48:59 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Fri, 23 Sep 2016 16:48:59 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Fri, 23 Sep 2016 16:49:00 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Fri, 23 Sep 2016 16:49:52 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:49:53 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:49:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:49:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:49:55 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:49:55 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a78dab547df8ac51ea4f79e4cd929537952959d738ab1dfc7857955c8d6ae7`  
		Last Modified: Fri, 23 Sep 2016 16:50:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7295bf09b3dac6807c846b0151d89325acf31b52bed8467517650a488f6e96`  
		Last Modified: Fri, 23 Sep 2016 16:50:27 GMT  
		Size: 69.5 MB (69499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa31e83efef7743385a5effb3ecd3395139f86e57c2106af4ea8c6d573b23981`  
		Last Modified: Fri, 23 Sep 2016 16:50:02 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8d3a99367e4efb69d2c7925cceddc0237c634bb399af1bb3a87098198a694a`  
		Last Modified: Fri, 23 Sep 2016 16:50:08 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-alpine`

```console
$ docker pull golang@sha256:12b8f518fe8b7578293a326d7ab475fa3ead2afdee66928e54443f1a23da710d
```

-	Platforms:
	-	linux; amd64

### `golang:1.6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72158660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e2cb0f17a90a9219d13b6b4c16a0ad21dd33ed300cb547d4363399e48dff4f`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:48:58 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 23 Sep 2016 16:48:59 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.6.3.src.tar.gz
# Fri, 23 Sep 2016 16:48:59 GMT
ENV GOLANG_SRC_SHA256=6326aeed5f86cf18f16d6dc831405614f855e2d416a91fd3fdc334f772345b00
# Fri, 23 Sep 2016 16:49:00 GMT
COPY file:b2d7156cdbff1193fb20efaf40b201017b0396eb5b2e0adb97970615a8fcf61d in / 
# Fri, 23 Sep 2016 16:49:52 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:49:53 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:49:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:49:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:49:55 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:49:55 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a78dab547df8ac51ea4f79e4cd929537952959d738ab1dfc7857955c8d6ae7`  
		Last Modified: Fri, 23 Sep 2016 16:50:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7295bf09b3dac6807c846b0151d89325acf31b52bed8467517650a488f6e96`  
		Last Modified: Fri, 23 Sep 2016 16:50:27 GMT  
		Size: 69.5 MB (69499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa31e83efef7743385a5effb3ecd3395139f86e57c2106af4ea8c6d573b23981`  
		Last Modified: Fri, 23 Sep 2016 16:50:02 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8d3a99367e4efb69d2c7925cceddc0237c634bb399af1bb3a87098198a694a`  
		Last Modified: Fri, 23 Sep 2016 16:50:08 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6.3-windowsservercore`

```console
$ docker pull golang@sha256:c9bab07d3dd2b64f0173fa4e5018097a960b5f9c919a5271eae2418477634a1d
```

-	Platforms:
	-	windows; amd64

### `golang:1.6.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3784047918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df27af2ae7b93b6318556028495c550b530cc24d6c6d3bf270e2a010821818a6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Fri, 12 Aug 2016 23:52:46 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 12 Aug 2016 23:52:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Fri, 12 Aug 2016 23:52:52 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Fri, 12 Aug 2016 23:57:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:57:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1660cb70ff7044778f5bb23312723c7300a3e00a851ff2b530315747103c7245`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5742033e60baa1364a2cdd957f6061fdaef7abd51cbe5eac8e5414564a7da417`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980f57a7d2524daad53adb069be9f9485d038809fc393c83af58a16880787adb`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f9d4477d9e6b931411dad018ac1a0a713c952a8bb51763f44b9c62fd425bab`  
		Last Modified: Tue, 16 Aug 2016 16:16:56 GMT  
		Size: 96.1 MB (96146274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52289dc770d3b6da4f2c1db2cab8052677149d7d86e3f66cdc528a8dfbba467d`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.6-windowsservercore`

```console
$ docker pull golang@sha256:c9bab07d3dd2b64f0173fa4e5018097a960b5f9c919a5271eae2418477634a1d
```

-	Platforms:
	-	windows; amd64

### `golang:1.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3784047918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df27af2ae7b93b6318556028495c550b530cc24d6c6d3bf270e2a010821818a6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Fri, 12 Aug 2016 23:52:46 GMT
ENV GOLANG_VERSION=1.6.3
# Fri, 12 Aug 2016 23:52:49 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.6.3.windows-amd64.zip
# Fri, 12 Aug 2016 23:52:52 GMT
ENV GOLANG_DOWNLOAD_SHA256=6a18e5ed8b39785338986aecc6a3f36f5c4be286ff52db0ae3bcd2275ab70df0
# Fri, 12 Aug 2016 23:57:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:57:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1660cb70ff7044778f5bb23312723c7300a3e00a851ff2b530315747103c7245`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5742033e60baa1364a2cdd957f6061fdaef7abd51cbe5eac8e5414564a7da417`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980f57a7d2524daad53adb069be9f9485d038809fc393c83af58a16880787adb`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f9d4477d9e6b931411dad018ac1a0a713c952a8bb51763f44b9c62fd425bab`  
		Last Modified: Tue, 16 Aug 2016 16:16:56 GMT  
		Size: 96.1 MB (96146274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52289dc770d3b6da4f2c1db2cab8052677149d7d86e3f66cdc528a8dfbba467d`  
		Last Modified: Tue, 16 Aug 2016 16:15:31 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1`

```console
$ docker pull golang@sha256:312137f52f100a005ecebbf75b84ad1f695212ba5c80186d98d29907cb9604a5
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250922657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12231e6a3e14470af591124c2f29016640e48ea9b88a52e0ede373b41a5217b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Fri, 23 Sep 2016 19:04:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:04:41 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:04:43 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:04:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac6749e202c21b12b3bc2f48a7cd3a284f14dd91c5cd29e34e4e79705f2e58d`  
		Last Modified: Fri, 23 Sep 2016 19:05:16 GMT  
		Size: 81.6 MB (81629056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80302b4e1d83cd6a5badd3205f591430d9a6313969767bb2fd83fe3b0b6aa7c0`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fefc8a47308d2f963554c913d87c27c5854b32e3b3a59d3e324e946bf8f90ce`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7`

```console
$ docker pull golang@sha256:312137f52f100a005ecebbf75b84ad1f695212ba5c80186d98d29907cb9604a5
```

-	Platforms:
	-	linux; amd64

### `golang:1.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250922657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12231e6a3e14470af591124c2f29016640e48ea9b88a52e0ede373b41a5217b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Fri, 23 Sep 2016 19:04:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:04:41 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:04:43 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:04:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac6749e202c21b12b3bc2f48a7cd3a284f14dd91c5cd29e34e4e79705f2e58d`  
		Last Modified: Fri, 23 Sep 2016 19:05:16 GMT  
		Size: 81.6 MB (81629056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80302b4e1d83cd6a5badd3205f591430d9a6313969767bb2fd83fe3b0b6aa7c0`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fefc8a47308d2f963554c913d87c27c5854b32e3b3a59d3e324e946bf8f90ce`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1`

```console
$ docker pull golang@sha256:312137f52f100a005ecebbf75b84ad1f695212ba5c80186d98d29907cb9604a5
```

-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250922657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12231e6a3e14470af591124c2f29016640e48ea9b88a52e0ede373b41a5217b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Fri, 23 Sep 2016 19:04:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:04:41 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:04:43 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:04:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac6749e202c21b12b3bc2f48a7cd3a284f14dd91c5cd29e34e4e79705f2e58d`  
		Last Modified: Fri, 23 Sep 2016 19:05:16 GMT  
		Size: 81.6 MB (81629056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80302b4e1d83cd6a5badd3205f591430d9a6313969767bb2fd83fe3b0b6aa7c0`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fefc8a47308d2f963554c913d87c27c5854b32e3b3a59d3e324e946bf8f90ce`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:312137f52f100a005ecebbf75b84ad1f695212ba5c80186d98d29907cb9604a5
```

-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250922657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12231e6a3e14470af591124c2f29016640e48ea9b88a52e0ede373b41a5217b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Fri, 23 Sep 2016 19:04:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:04:41 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:04:43 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:04:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac6749e202c21b12b3bc2f48a7cd3a284f14dd91c5cd29e34e4e79705f2e58d`  
		Last Modified: Fri, 23 Sep 2016 19:05:16 GMT  
		Size: 81.6 MB (81629056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80302b4e1d83cd6a5badd3205f591430d9a6313969767bb2fd83fe3b0b6aa7c0`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fefc8a47308d2f963554c913d87c27c5854b32e3b3a59d3e324e946bf8f90ce`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-onbuild`

```console
$ docker pull golang@sha256:c762121e50f817cce5950375cf79271213ed927c6b97a4fdb85c35482ef14e9e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250922787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2a227950234c4eb81c4ade35061fc4d3f79ac19b72144ce20859a0989f979e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Fri, 23 Sep 2016 19:04:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:04:41 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:04:43 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:04:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 23 Sep 2016 19:05:52 GMT
RUN mkdir -p /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
WORKDIR /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
CMD ["go-wrapper" "run"]
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD COPY . /go/src/app
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper download
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac6749e202c21b12b3bc2f48a7cd3a284f14dd91c5cd29e34e4e79705f2e58d`  
		Last Modified: Fri, 23 Sep 2016 19:05:16 GMT  
		Size: 81.6 MB (81629056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80302b4e1d83cd6a5badd3205f591430d9a6313969767bb2fd83fe3b0b6aa7c0`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fefc8a47308d2f963554c913d87c27c5854b32e3b3a59d3e324e946bf8f90ce`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05305eebfe4a472d7461a1206308f8457e46aad6120d7c9fdb0c27ce1d7d5fca`  
		Last Modified: Fri, 23 Sep 2016 19:06:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-onbuild`

```console
$ docker pull golang@sha256:c762121e50f817cce5950375cf79271213ed927c6b97a4fdb85c35482ef14e9e
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250922787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2a227950234c4eb81c4ade35061fc4d3f79ac19b72144ce20859a0989f979e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Fri, 23 Sep 2016 19:04:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:04:41 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:04:43 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:04:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 23 Sep 2016 19:05:52 GMT
RUN mkdir -p /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
WORKDIR /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
CMD ["go-wrapper" "run"]
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD COPY . /go/src/app
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper download
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac6749e202c21b12b3bc2f48a7cd3a284f14dd91c5cd29e34e4e79705f2e58d`  
		Last Modified: Fri, 23 Sep 2016 19:05:16 GMT  
		Size: 81.6 MB (81629056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80302b4e1d83cd6a5badd3205f591430d9a6313969767bb2fd83fe3b0b6aa7c0`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fefc8a47308d2f963554c913d87c27c5854b32e3b3a59d3e324e946bf8f90ce`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05305eebfe4a472d7461a1206308f8457e46aad6120d7c9fdb0c27ce1d7d5fca`  
		Last Modified: Fri, 23 Sep 2016 19:06:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-onbuild`

```console
$ docker pull golang@sha256:c762121e50f817cce5950375cf79271213ed927c6b97a4fdb85c35482ef14e9e
```

-	Platforms:
	-	linux; amd64

### `golang:1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250922787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2a227950234c4eb81c4ade35061fc4d3f79ac19b72144ce20859a0989f979e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Fri, 23 Sep 2016 19:04:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:04:41 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:04:43 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:04:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 23 Sep 2016 19:05:52 GMT
RUN mkdir -p /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
WORKDIR /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
CMD ["go-wrapper" "run"]
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD COPY . /go/src/app
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper download
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac6749e202c21b12b3bc2f48a7cd3a284f14dd91c5cd29e34e4e79705f2e58d`  
		Last Modified: Fri, 23 Sep 2016 19:05:16 GMT  
		Size: 81.6 MB (81629056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80302b4e1d83cd6a5badd3205f591430d9a6313969767bb2fd83fe3b0b6aa7c0`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fefc8a47308d2f963554c913d87c27c5854b32e3b3a59d3e324e946bf8f90ce`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05305eebfe4a472d7461a1206308f8457e46aad6120d7c9fdb0c27ce1d7d5fca`  
		Last Modified: Fri, 23 Sep 2016 19:06:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:onbuild`

```console
$ docker pull golang@sha256:c762121e50f817cce5950375cf79271213ed927c6b97a4fdb85c35482ef14e9e
```

-	Platforms:
	-	linux; amd64

### `golang:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250922787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2a227950234c4eb81c4ade35061fc4d3f79ac19b72144ce20859a0989f979e`
-	Default Command: `["go-wrapper","run"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Fri, 23 Sep 2016 19:04:32 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Fri, 23 Sep 2016 19:04:41 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Fri, 23 Sep 2016 19:04:41 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 19:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 19:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 19:04:43 GMT
WORKDIR /go
# Fri, 23 Sep 2016 19:04:43 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
# Fri, 23 Sep 2016 19:05:52 GMT
RUN mkdir -p /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
WORKDIR /go/src/app
# Fri, 23 Sep 2016 19:05:52 GMT
CMD ["go-wrapper" "run"]
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD COPY . /go/src/app
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper download
# Fri, 23 Sep 2016 19:05:53 GMT
ONBUILD RUN go-wrapper install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16e36b7fbf86ce5eccc4eb320d6a57c33dfd11b75f2f7ead9acf82c2727c48`  
		Last Modified: Fri, 23 Sep 2016 19:05:05 GMT  
		Size: 56.9 MB (56913540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac6749e202c21b12b3bc2f48a7cd3a284f14dd91c5cd29e34e4e79705f2e58d`  
		Last Modified: Fri, 23 Sep 2016 19:05:16 GMT  
		Size: 81.6 MB (81629056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80302b4e1d83cd6a5badd3205f591430d9a6313969767bb2fd83fe3b0b6aa7c0`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fefc8a47308d2f963554c913d87c27c5854b32e3b3a59d3e324e946bf8f90ce`  
		Last Modified: Fri, 23 Sep 2016 19:04:51 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05305eebfe4a472d7461a1206308f8457e46aad6120d7c9fdb0c27ce1d7d5fca`  
		Last Modified: Fri, 23 Sep 2016 19:06:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-wheezy`

```console
$ docker pull golang@sha256:fbb0cae7dbe6424ad481a37460b1458b99db6ab0d43b0f194b4113cf78c0b94b
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196891069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1eb5e8ac568452b5778e9bdcfa34922de4af077edb832f8f366d8c8078cd783`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:36 GMT
ENV GOLANG_VERSION=1.7.1
# Tue, 20 Sep 2016 04:47:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Tue, 20 Sep 2016 04:47:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Tue, 20 Sep 2016 04:47:46 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 20 Sep 2016 04:47:47 GMT
ENV GOPATH=/go
# Tue, 20 Sep 2016 04:47:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 04:47:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 20 Sep 2016 04:47:49 GMT
WORKDIR /go
# Tue, 20 Sep 2016 04:47:51 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f2642fa6c10cd41dc5fb0a2fee2b1a2e5a65cbb995522e6b977831a5d3c0ca`  
		Last Modified: Fri, 23 Sep 2016 19:06:54 GMT  
		Size: 33.9 MB (33949674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016062244f4dbbb208e34b490be9d2a5ed52c00035f7403fae6421f40337afcb`  
		Last Modified: Fri, 23 Sep 2016 19:07:11 GMT  
		Size: 81.6 MB (81629049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04088b602d50a40d6d3ed4edbadfafa0593c288e5025e0c5515964654a0ff0a6`  
		Last Modified: Fri, 23 Sep 2016 19:06:42 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d662d17c72bbf834c367d869f0e12f898f39a690d1c610c9fb36d77a309e28a8`  
		Last Modified: Fri, 23 Sep 2016 19:06:44 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-wheezy`

```console
$ docker pull golang@sha256:fbb0cae7dbe6424ad481a37460b1458b99db6ab0d43b0f194b4113cf78c0b94b
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196891069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1eb5e8ac568452b5778e9bdcfa34922de4af077edb832f8f366d8c8078cd783`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:36 GMT
ENV GOLANG_VERSION=1.7.1
# Tue, 20 Sep 2016 04:47:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Tue, 20 Sep 2016 04:47:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Tue, 20 Sep 2016 04:47:46 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 20 Sep 2016 04:47:47 GMT
ENV GOPATH=/go
# Tue, 20 Sep 2016 04:47:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 04:47:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 20 Sep 2016 04:47:49 GMT
WORKDIR /go
# Tue, 20 Sep 2016 04:47:51 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f2642fa6c10cd41dc5fb0a2fee2b1a2e5a65cbb995522e6b977831a5d3c0ca`  
		Last Modified: Fri, 23 Sep 2016 19:06:54 GMT  
		Size: 33.9 MB (33949674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016062244f4dbbb208e34b490be9d2a5ed52c00035f7403fae6421f40337afcb`  
		Last Modified: Fri, 23 Sep 2016 19:07:11 GMT  
		Size: 81.6 MB (81629049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04088b602d50a40d6d3ed4edbadfafa0593c288e5025e0c5515964654a0ff0a6`  
		Last Modified: Fri, 23 Sep 2016 19:06:42 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d662d17c72bbf834c367d869f0e12f898f39a690d1c610c9fb36d77a309e28a8`  
		Last Modified: Fri, 23 Sep 2016 19:06:44 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-wheezy`

```console
$ docker pull golang@sha256:fbb0cae7dbe6424ad481a37460b1458b99db6ab0d43b0f194b4113cf78c0b94b
```

-	Platforms:
	-	linux; amd64

### `golang:1-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196891069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1eb5e8ac568452b5778e9bdcfa34922de4af077edb832f8f366d8c8078cd783`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:36 GMT
ENV GOLANG_VERSION=1.7.1
# Tue, 20 Sep 2016 04:47:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Tue, 20 Sep 2016 04:47:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Tue, 20 Sep 2016 04:47:46 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 20 Sep 2016 04:47:47 GMT
ENV GOPATH=/go
# Tue, 20 Sep 2016 04:47:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 04:47:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 20 Sep 2016 04:47:49 GMT
WORKDIR /go
# Tue, 20 Sep 2016 04:47:51 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f2642fa6c10cd41dc5fb0a2fee2b1a2e5a65cbb995522e6b977831a5d3c0ca`  
		Last Modified: Fri, 23 Sep 2016 19:06:54 GMT  
		Size: 33.9 MB (33949674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016062244f4dbbb208e34b490be9d2a5ed52c00035f7403fae6421f40337afcb`  
		Last Modified: Fri, 23 Sep 2016 19:07:11 GMT  
		Size: 81.6 MB (81629049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04088b602d50a40d6d3ed4edbadfafa0593c288e5025e0c5515964654a0ff0a6`  
		Last Modified: Fri, 23 Sep 2016 19:06:42 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d662d17c72bbf834c367d869f0e12f898f39a690d1c610c9fb36d77a309e28a8`  
		Last Modified: Fri, 23 Sep 2016 19:06:44 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:wheezy`

```console
$ docker pull golang@sha256:fbb0cae7dbe6424ad481a37460b1458b99db6ab0d43b0f194b4113cf78c0b94b
```

-	Platforms:
	-	linux; amd64

### `golang:wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196891069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1eb5e8ac568452b5778e9bdcfa34922de4af077edb832f8f366d8c8078cd783`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:47:36 GMT
ENV GOLANG_VERSION=1.7.1
# Tue, 20 Sep 2016 04:47:36 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.linux-amd64.tar.gz
# Tue, 20 Sep 2016 04:47:37 GMT
ENV GOLANG_DOWNLOAD_SHA256=43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182
# Tue, 20 Sep 2016 04:47:46 GMT
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz 	&& echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz
# Tue, 20 Sep 2016 04:47:47 GMT
ENV GOPATH=/go
# Tue, 20 Sep 2016 04:47:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 04:47:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 20 Sep 2016 04:47:49 GMT
WORKDIR /go
# Tue, 20 Sep 2016 04:47:51 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75c691829ac57648477d2256c2be0844f91886837a7738ff1d35ba143ddff16`  
		Last Modified: Mon, 19 Sep 2016 18:03:47 GMT  
		Size: 37.4 MB (37365131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f2642fa6c10cd41dc5fb0a2fee2b1a2e5a65cbb995522e6b977831a5d3c0ca`  
		Last Modified: Fri, 23 Sep 2016 19:06:54 GMT  
		Size: 33.9 MB (33949674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016062244f4dbbb208e34b490be9d2a5ed52c00035f7403fae6421f40337afcb`  
		Last Modified: Fri, 23 Sep 2016 19:07:11 GMT  
		Size: 81.6 MB (81629049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04088b602d50a40d6d3ed4edbadfafa0593c288e5025e0c5515964654a0ff0a6`  
		Last Modified: Fri, 23 Sep 2016 19:06:42 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d662d17c72bbf834c367d869f0e12f898f39a690d1c610c9fb36d77a309e28a8`  
		Last Modified: Fri, 23 Sep 2016 19:06:44 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-alpine`

```console
$ docker pull golang@sha256:03ca8be2e13e3f83af9ce3fa181f88bddd39e83f1d2714ae7153620e9f051069
```

-	Platforms:
	-	linux; amd64

### `golang:1.7.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72888923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161e259af05dada7864ebb4450b752c37fcd0ad47c35ee2c85365983d75c55aa`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Fri, 23 Sep 2016 16:46:55 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Fri, 23 Sep 2016 16:46:55 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 23 Sep 2016 16:47:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:47:51 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:47:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:47:52 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:47:53 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcd83a56f7ed0a584325a5d6998e59771e64377507b45b5d1507ccb18890e4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66eadb847c4356bced1f79d9782ddd40ecf7de72359d2c5d259dfd938b30d8d`  
		Last Modified: Fri, 23 Sep 2016 16:48:25 GMT  
		Size: 70.2 MB (70230132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10b0b960355237c872fb807d3f8ee911fa62e0f46242712131c9a468c5d118`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326e8297fa2a13c617e84dcbf6cd056fe9f1ac06ee0474974a4b808b00d90f4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-alpine`

```console
$ docker pull golang@sha256:03ca8be2e13e3f83af9ce3fa181f88bddd39e83f1d2714ae7153620e9f051069
```

-	Platforms:
	-	linux; amd64

### `golang:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72888923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161e259af05dada7864ebb4450b752c37fcd0ad47c35ee2c85365983d75c55aa`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Fri, 23 Sep 2016 16:46:55 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Fri, 23 Sep 2016 16:46:55 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 23 Sep 2016 16:47:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:47:51 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:47:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:47:52 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:47:53 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcd83a56f7ed0a584325a5d6998e59771e64377507b45b5d1507ccb18890e4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66eadb847c4356bced1f79d9782ddd40ecf7de72359d2c5d259dfd938b30d8d`  
		Last Modified: Fri, 23 Sep 2016 16:48:25 GMT  
		Size: 70.2 MB (70230132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10b0b960355237c872fb807d3f8ee911fa62e0f46242712131c9a468c5d118`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326e8297fa2a13c617e84dcbf6cd056fe9f1ac06ee0474974a4b808b00d90f4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:03ca8be2e13e3f83af9ce3fa181f88bddd39e83f1d2714ae7153620e9f051069
```

-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72888923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161e259af05dada7864ebb4450b752c37fcd0ad47c35ee2c85365983d75c55aa`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Fri, 23 Sep 2016 16:46:55 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Fri, 23 Sep 2016 16:46:55 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 23 Sep 2016 16:47:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:47:51 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:47:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:47:52 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:47:53 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcd83a56f7ed0a584325a5d6998e59771e64377507b45b5d1507ccb18890e4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66eadb847c4356bced1f79d9782ddd40ecf7de72359d2c5d259dfd938b30d8d`  
		Last Modified: Fri, 23 Sep 2016 16:48:25 GMT  
		Size: 70.2 MB (70230132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10b0b960355237c872fb807d3f8ee911fa62e0f46242712131c9a468c5d118`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326e8297fa2a13c617e84dcbf6cd056fe9f1ac06ee0474974a4b808b00d90f4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:03ca8be2e13e3f83af9ce3fa181f88bddd39e83f1d2714ae7153620e9f051069
```

-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72888923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161e259af05dada7864ebb4450b752c37fcd0ad47c35ee2c85365983d75c55aa`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:46:54 GMT
RUN apk add --no-cache ca-certificates
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_VERSION=1.7.1
# Fri, 23 Sep 2016 16:46:54 GMT
ENV GOLANG_SRC_URL=https://golang.org/dl/go1.7.1.src.tar.gz
# Fri, 23 Sep 2016 16:46:55 GMT
ENV GOLANG_SRC_SHA256=2b843f133b81b7995f26d0cb64bbdbb9d0704b90c44df45f844d28881ad442d3
# Fri, 23 Sep 2016 16:46:55 GMT
COPY file:b54d7d4313a41e3729d6f4b7aa6e6f33a1e99759cb2a04149fae89f8211c3a65 in / 
# Fri, 23 Sep 2016 16:47:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 		&& export GOROOT_BOOTSTRAP="$(go env GOROOT)" 		&& wget -q "$GOLANG_SRC_URL" -O golang.tar.gz 	&& echo "$GOLANG_SRC_SHA256  golang.tar.gz" | sha256sum -c - 	&& tar -C /usr/local -xzf golang.tar.gz 	&& rm golang.tar.gz 	&& cd /usr/local/go/src 	&& patch -p2 -i /no-pic.patch 	&& ./make.bash 		&& rm -rf /*.patch 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:47:51 GMT
ENV GOPATH=/go
# Fri, 23 Sep 2016 16:47:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 23 Sep 2016 16:47:52 GMT
WORKDIR /go
# Fri, 23 Sep 2016 16:47:53 GMT
COPY file:f6191f2c86edc9343569339f101facba47e886e33e29d70da6916ca6b1101a53 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47662356bd75fa559619bb97c4c0e6c2461ccc0300ce73681f935ee69ebd019`  
		Last Modified: Fri, 23 Sep 2016 16:48:01 GMT  
		Size: 344.0 KB (343954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fcd83a56f7ed0a584325a5d6998e59771e64377507b45b5d1507ccb18890e4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66eadb847c4356bced1f79d9782ddd40ecf7de72359d2c5d259dfd938b30d8d`  
		Last Modified: Fri, 23 Sep 2016 16:48:25 GMT  
		Size: 70.2 MB (70230132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a10b0b960355237c872fb807d3f8ee911fa62e0f46242712131c9a468c5d118`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3326e8297fa2a13c617e84dcbf6cd056fe9f1ac06ee0474974a4b808b00d90f4`  
		Last Modified: Fri, 23 Sep 2016 16:48:00 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7.1-windowsservercore`

```console
$ docker pull golang@sha256:cad6300ee1f7c7e376a67bcae96be5e75cda6ca96f7f591bfeb300a79bf55323
```

-	Platforms:
	-	windows; amd64

### `golang:1.7.1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781140377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735790fa70ee877a3bb62e363e13da21599e28f71e5ee066aabf032b9ec620f9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Sep 2016 22:41:37 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 22:41:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 07 Sep 2016 22:41:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 07 Sep 2016 22:46:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Sep 2016 22:46:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7ec0586b6de3b27d0213113d8637508b192990388cdd0bbac3558fcbe9b68`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520284a1c3edac3412cbe224316d666743a6ed1c2d16b9788372010196071ae`  
		Last Modified: Wed, 07 Sep 2016 23:12:59 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f138c9595d3df49d92e10d6457a01c90443492c5593b9e2c6f1c4c7b75ed5b`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c61fe0d1200ce86a3a5170236c017ccd43305aac6709319ac7c008e835aa9`  
		Last Modified: Wed, 07 Sep 2016 23:13:50 GMT  
		Size: 93.2 MB (93238729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434ccc3318e63dd37e3c4088c8afe592f476aa3117171535e96577dcba339cf`  
		Last Modified: Wed, 07 Sep 2016 23:13:01 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.7-windowsservercore`

```console
$ docker pull golang@sha256:cad6300ee1f7c7e376a67bcae96be5e75cda6ca96f7f591bfeb300a79bf55323
```

-	Platforms:
	-	windows; amd64

### `golang:1.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781140377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735790fa70ee877a3bb62e363e13da21599e28f71e5ee066aabf032b9ec620f9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Sep 2016 22:41:37 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 22:41:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 07 Sep 2016 22:41:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 07 Sep 2016 22:46:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Sep 2016 22:46:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7ec0586b6de3b27d0213113d8637508b192990388cdd0bbac3558fcbe9b68`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520284a1c3edac3412cbe224316d666743a6ed1c2d16b9788372010196071ae`  
		Last Modified: Wed, 07 Sep 2016 23:12:59 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f138c9595d3df49d92e10d6457a01c90443492c5593b9e2c6f1c4c7b75ed5b`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c61fe0d1200ce86a3a5170236c017ccd43305aac6709319ac7c008e835aa9`  
		Last Modified: Wed, 07 Sep 2016 23:13:50 GMT  
		Size: 93.2 MB (93238729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434ccc3318e63dd37e3c4088c8afe592f476aa3117171535e96577dcba339cf`  
		Last Modified: Wed, 07 Sep 2016 23:13:01 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:cad6300ee1f7c7e376a67bcae96be5e75cda6ca96f7f591bfeb300a79bf55323
```

-	Platforms:
	-	windows; amd64

### `golang:1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781140377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735790fa70ee877a3bb62e363e13da21599e28f71e5ee066aabf032b9ec620f9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Sep 2016 22:41:37 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 22:41:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 07 Sep 2016 22:41:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 07 Sep 2016 22:46:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Sep 2016 22:46:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7ec0586b6de3b27d0213113d8637508b192990388cdd0bbac3558fcbe9b68`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520284a1c3edac3412cbe224316d666743a6ed1c2d16b9788372010196071ae`  
		Last Modified: Wed, 07 Sep 2016 23:12:59 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f138c9595d3df49d92e10d6457a01c90443492c5593b9e2c6f1c4c7b75ed5b`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c61fe0d1200ce86a3a5170236c017ccd43305aac6709319ac7c008e835aa9`  
		Last Modified: Wed, 07 Sep 2016 23:13:50 GMT  
		Size: 93.2 MB (93238729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434ccc3318e63dd37e3c4088c8afe592f476aa3117171535e96577dcba339cf`  
		Last Modified: Wed, 07 Sep 2016 23:13:01 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:cad6300ee1f7c7e376a67bcae96be5e75cda6ca96f7f591bfeb300a79bf55323
```

-	Platforms:
	-	windows; amd64

### `golang:windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3781140377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735790fa70ee877a3bb62e363e13da21599e28f71e5ee066aabf032b9ec620f9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 12 Aug 2016 17:01:53 GMT
ENV GIT_VERSION=2.9.2
# Fri, 12 Aug 2016 17:01:58 GMT
ENV GIT_TAG=v2.9.2.windows.1
# Fri, 12 Aug 2016 17:02:02 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.9.2.windows.1/Git-2.9.2-64-bit.exe
# Fri, 12 Aug 2016 17:03:48 GMT
ENV GIT_DOWNLOAD_SHA256=006d971bcbe73cc8d841a100a4eb20d22e135142bf5b0f2120722fd420e166e5
# Fri, 12 Aug 2016 23:47:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GIT_DOWNLOAD_URL, 'git.exe'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.exe -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-Wait 		-FilePath ./git.exe 		-ArgumentList @( 			'/VERYSILENT', 			'/NORESTART', 			'/NOCANCEL', 			'/SP-', 			'/SUPPRESSMSGBOXES', 						'/COMPONENTS=assoc_sh', 						'/DIR=C:\git' 		); 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\bin;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 	Write-Host '  bash --version'; bash --version; 	Write-Host '  curl --version'; curl.exe --version; 		Write-Host 'Removing installer ...'; 	Remove-Item git.exe -Force; 		Write-Host 'Complete.';
# Fri, 12 Aug 2016 23:47:34 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Aug 2016 23:47:57 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', $env:GOPATH + '\bin;C:\go\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 07 Sep 2016 22:41:37 GMT
ENV GOLANG_VERSION=1.7.1
# Wed, 07 Sep 2016 22:41:41 GMT
ENV GOLANG_DOWNLOAD_URL=https://golang.org/dl/go1.7.1.windows-amd64.zip
# Wed, 07 Sep 2016 22:41:44 GMT
ENV GOLANG_DOWNLOAD_SHA256=af2b836bb894672cf4c28df32a2ee3ff560e2b463e1ab44bb99833064ba09e5f
# Wed, 07 Sep 2016 22:46:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GOLANG_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:GOLANG_DOWNLOAD_URL, 'go.zip'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GOLANG_DOWNLOAD_SHA256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $env:GOLANG_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 07 Sep 2016 22:46:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9f7fc8b1eb04be3a8b1a8fc1f9e6c7a1e41689a2676e152c25d9358dee1341`  
		Last Modified: Tue, 16 Aug 2016 16:11:51 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bdc4e8ef7ba6e9f01909b8cb91c6a122e96baef29babe69a01102bcae148c9`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bbfdc9f3a15e9a0bde254b6ab26f6f076cf940ef39c7d7176f7642275bbfda`  
		Last Modified: Tue, 16 Aug 2016 16:11:47 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64b13a7ee93c6f86303ad2fe1d9185da583cd6e7ab1671efe67b13e2993a11`  
		Last Modified: Tue, 16 Aug 2016 16:11:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e143173cb47f97febd951190e060d115fa15cf474acfb5759c8b410b45a1087`  
		Last Modified: Tue, 16 Aug 2016 16:15:14 GMT  
		Size: 222.7 MB (222712489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de436d4008dda1c26e300dd25d9cc67c8a59a2c0547febbcad41ae4499ea8882`  
		Last Modified: Tue, 16 Aug 2016 16:11:36 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230b17b0e770bf3e266ac0f228d84bf32d942d15e3e5c57d4ec1e5061aa3e51e`  
		Last Modified: Tue, 16 Aug 2016 16:11:42 GMT  
		Size: 4.0 MB (4030539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7ec0586b6de3b27d0213113d8637508b192990388cdd0bbac3558fcbe9b68`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a520284a1c3edac3412cbe224316d666743a6ed1c2d16b9788372010196071ae`  
		Last Modified: Wed, 07 Sep 2016 23:12:59 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f138c9595d3df49d92e10d6457a01c90443492c5593b9e2c6f1c4c7b75ed5b`  
		Last Modified: Wed, 07 Sep 2016 23:12:58 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c61fe0d1200ce86a3a5170236c017ccd43305aac6709319ac7c008e835aa9`  
		Last Modified: Wed, 07 Sep 2016 23:13:50 GMT  
		Size: 93.2 MB (93238729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434ccc3318e63dd37e3c4088c8afe592f476aa3117171535e96577dcba339cf`  
		Last Modified: Wed, 07 Sep 2016 23:13:01 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
