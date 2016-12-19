<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.13.0-rc4`](#docker1130-rc4)
-	[`docker:1.13-rc`](#docker113-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:1.13.0-rc4-dind`](#docker1130-rc4-dind)
-	[`docker:1.13-rc-dind`](#docker113-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:1.13.0-rc4-git`](#docker1130-rc4-git)
-	[`docker:1.13-rc-git`](#docker113-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:1.12.5`](#docker1125)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.5-dind`](#docker1125-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.5-git`](#docker1125-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.5-experimental`](#docker1125-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1-experimental`](#docker1-experimental)
-	[`docker:experimental`](#dockerexperimental)
-	[`docker:1.12.5-experimental-dind`](#docker1125-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1-experimental-dind`](#docker1-experimental-dind)
-	[`docker:experimental-dind`](#dockerexperimental-dind)
-	[`docker:1.12.5-experimental-git`](#docker1125-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)
-	[`docker:1-experimental-git`](#docker1-experimental-git)
-	[`docker:experimental-git`](#dockerexperimental-git)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.13.0-rc4`

```console
$ docker pull docker@sha256:d37eb1240099e43f129fa3fd453061e0601e52eb1c98bcc07756359098a1daa9
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30806003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa5796da71b18803aeb8c9d8178737d3bcc422809b6bef827c4a60916e9d17b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc`

```console
$ docker pull docker@sha256:d37eb1240099e43f129fa3fd453061e0601e52eb1c98bcc07756359098a1daa9
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30806003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa5796da71b18803aeb8c9d8178737d3bcc422809b6bef827c4a60916e9d17b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:d37eb1240099e43f129fa3fd453061e0601e52eb1c98bcc07756359098a1daa9
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30806003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa5796da71b18803aeb8c9d8178737d3bcc422809b6bef827c4a60916e9d17b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc4-dind`

```console
$ docker pull docker@sha256:a8b9ade641c6a976f4e1ec19817c92754345037f4fcc05f19dac0653e49c4ee7
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc4-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32874727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ed23f5ed2eac532b09d6d4d629d2b27514c079977532157ecbde8c69835271`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:07:58 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:07:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:00 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:01 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:01 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:02 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:03 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05248e945ea9980cedfd697892aed159e1719869c1cf44b52bdbcabb48fe775`  
		Last Modified: Mon, 19 Dec 2016 22:10:00 GMT  
		Size: 2.1 MB (2065103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c681f471e065764802ac406378aa9b5732558c3dd85ba256fdc168b2b6bb8f`  
		Last Modified: Mon, 19 Dec 2016 22:10:01 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f188d1566cdc9d76f57ae7b483151b0b3380139cc7067487d086d9813bb0576`  
		Last Modified: Mon, 19 Dec 2016 22:09:59 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab9849a30514ce758106492614c0ab0fc6d351ac36778f96e001ae068d95451`  
		Last Modified: Mon, 19 Dec 2016 22:09:59 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-dind`

```console
$ docker pull docker@sha256:a8b9ade641c6a976f4e1ec19817c92754345037f4fcc05f19dac0653e49c4ee7
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32874727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ed23f5ed2eac532b09d6d4d629d2b27514c079977532157ecbde8c69835271`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:07:58 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:07:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:00 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:01 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:01 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:02 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:03 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05248e945ea9980cedfd697892aed159e1719869c1cf44b52bdbcabb48fe775`  
		Last Modified: Mon, 19 Dec 2016 22:10:00 GMT  
		Size: 2.1 MB (2065103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c681f471e065764802ac406378aa9b5732558c3dd85ba256fdc168b2b6bb8f`  
		Last Modified: Mon, 19 Dec 2016 22:10:01 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f188d1566cdc9d76f57ae7b483151b0b3380139cc7067487d086d9813bb0576`  
		Last Modified: Mon, 19 Dec 2016 22:09:59 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab9849a30514ce758106492614c0ab0fc6d351ac36778f96e001ae068d95451`  
		Last Modified: Mon, 19 Dec 2016 22:09:59 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:a8b9ade641c6a976f4e1ec19817c92754345037f4fcc05f19dac0653e49c4ee7
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32874727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ed23f5ed2eac532b09d6d4d629d2b27514c079977532157ecbde8c69835271`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:07:58 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:07:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:00 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:01 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:01 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:02 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:03 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05248e945ea9980cedfd697892aed159e1719869c1cf44b52bdbcabb48fe775`  
		Last Modified: Mon, 19 Dec 2016 22:10:00 GMT  
		Size: 2.1 MB (2065103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c681f471e065764802ac406378aa9b5732558c3dd85ba256fdc168b2b6bb8f`  
		Last Modified: Mon, 19 Dec 2016 22:10:01 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f188d1566cdc9d76f57ae7b483151b0b3380139cc7067487d086d9813bb0576`  
		Last Modified: Mon, 19 Dec 2016 22:09:59 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab9849a30514ce758106492614c0ab0fc6d351ac36778f96e001ae068d95451`  
		Last Modified: Mon, 19 Dec 2016 22:09:59 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc4-git`

```console
$ docker pull docker@sha256:15e6d5ca104e06801fa52a770ab773409bd248a6e3f62013e2b9a448becc44b0
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc4-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39944549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45df8ce87bdc7d8cc91db1868bdd4bfbf2209d432cf2af27ad27f4584b8dd7cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:05 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc53d91e4a653e3d6ca752550defb14919fcb82edd215e46684b4252665c11b`  
		Last Modified: Mon, 19 Dec 2016 22:11:14 GMT  
		Size: 9.1 MB (9138546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-git`

```console
$ docker pull docker@sha256:15e6d5ca104e06801fa52a770ab773409bd248a6e3f62013e2b9a448becc44b0
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39944549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45df8ce87bdc7d8cc91db1868bdd4bfbf2209d432cf2af27ad27f4584b8dd7cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:05 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc53d91e4a653e3d6ca752550defb14919fcb82edd215e46684b4252665c11b`  
		Last Modified: Mon, 19 Dec 2016 22:11:14 GMT  
		Size: 9.1 MB (9138546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:15e6d5ca104e06801fa52a770ab773409bd248a6e3f62013e2b9a448becc44b0
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39944549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45df8ce87bdc7d8cc91db1868bdd4bfbf2209d432cf2af27ad27f4584b8dd7cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:05 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc53d91e4a653e3d6ca752550defb14919fcb82edd215e46684b4252665c11b`  
		Last Modified: Mon, 19 Dec 2016 22:11:14 GMT  
		Size: 9.1 MB (9138546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5`

```console
$ docker pull docker@sha256:c28e254cd1aa71ea44b76ba28a9f0ff031f3d789c78cd4efa0583044f32ba822
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32040916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd09a452aedee72f92345977fa1301ee5d078128cb61911cb5cc85add0d379f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:c28e254cd1aa71ea44b76ba28a9f0ff031f3d789c78cd4efa0583044f32ba822
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32040916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd09a452aedee72f92345977fa1301ee5d078128cb61911cb5cc85add0d379f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:c28e254cd1aa71ea44b76ba28a9f0ff031f3d789c78cd4efa0583044f32ba822
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32040916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd09a452aedee72f92345977fa1301ee5d078128cb61911cb5cc85add0d379f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:c28e254cd1aa71ea44b76ba28a9f0ff031f3d789c78cd4efa0583044f32ba822
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32040916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd09a452aedee72f92345977fa1301ee5d078128cb61911cb5cc85add0d379f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-dind`

```console
$ docker pull docker@sha256:6438ab2564667f31a3bcd6bea78aa4e792985ebb8eefc5dc7e2e2207e2ce4ac7
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34109616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d858ce3dbd2cbf8389673d3c8c8c98ae6bdcd9c38f1ba2827694a8860aed9c8a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:15 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:08:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:19 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:19 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:20 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86e8c174f9c59b23db6232da29b60334da7eb6074eec1c84c715ddfaf86cc9b`  
		Last Modified: Mon, 19 Dec 2016 22:13:26 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98af5756be02f9fd8fffd016f1b361445becb25b91ead35abcafc0998a63193`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34950cefe44743d67471449d9bd69d17c6b407ceecf21875874822e57c41c13`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ad47c33653a6f4795a3ef67478bf49fedf85ab5e93bf505953bdef6faabbb3`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:6438ab2564667f31a3bcd6bea78aa4e792985ebb8eefc5dc7e2e2207e2ce4ac7
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34109616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d858ce3dbd2cbf8389673d3c8c8c98ae6bdcd9c38f1ba2827694a8860aed9c8a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:15 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:08:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:19 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:19 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:20 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86e8c174f9c59b23db6232da29b60334da7eb6074eec1c84c715ddfaf86cc9b`  
		Last Modified: Mon, 19 Dec 2016 22:13:26 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98af5756be02f9fd8fffd016f1b361445becb25b91ead35abcafc0998a63193`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34950cefe44743d67471449d9bd69d17c6b407ceecf21875874822e57c41c13`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ad47c33653a6f4795a3ef67478bf49fedf85ab5e93bf505953bdef6faabbb3`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:6438ab2564667f31a3bcd6bea78aa4e792985ebb8eefc5dc7e2e2207e2ce4ac7
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34109616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d858ce3dbd2cbf8389673d3c8c8c98ae6bdcd9c38f1ba2827694a8860aed9c8a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:15 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:08:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:19 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:19 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:20 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86e8c174f9c59b23db6232da29b60334da7eb6074eec1c84c715ddfaf86cc9b`  
		Last Modified: Mon, 19 Dec 2016 22:13:26 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98af5756be02f9fd8fffd016f1b361445becb25b91ead35abcafc0998a63193`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34950cefe44743d67471449d9bd69d17c6b407ceecf21875874822e57c41c13`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ad47c33653a6f4795a3ef67478bf49fedf85ab5e93bf505953bdef6faabbb3`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:6438ab2564667f31a3bcd6bea78aa4e792985ebb8eefc5dc7e2e2207e2ce4ac7
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34109616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d858ce3dbd2cbf8389673d3c8c8c98ae6bdcd9c38f1ba2827694a8860aed9c8a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:15 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:08:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:19 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:19 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:20 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86e8c174f9c59b23db6232da29b60334da7eb6074eec1c84c715ddfaf86cc9b`  
		Last Modified: Mon, 19 Dec 2016 22:13:26 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98af5756be02f9fd8fffd016f1b361445becb25b91ead35abcafc0998a63193`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34950cefe44743d67471449d9bd69d17c6b407ceecf21875874822e57c41c13`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ad47c33653a6f4795a3ef67478bf49fedf85ab5e93bf505953bdef6faabbb3`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-git`

```console
$ docker pull docker@sha256:f74ccc7f7ad7947ec182d56a67f23073cd4599da95dd30621ef3384be284d4e2
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41179445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20acc36c2dfd417c9bf5168ee372350b5ebdc18ce2de8026aead2ae768456e3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8eccf737966842c2aca739fecbda88e906a1edc3152d303fce1c38e93232fbc`  
		Last Modified: Mon, 19 Dec 2016 22:14:38 GMT  
		Size: 9.1 MB (9138529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:f74ccc7f7ad7947ec182d56a67f23073cd4599da95dd30621ef3384be284d4e2
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41179445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20acc36c2dfd417c9bf5168ee372350b5ebdc18ce2de8026aead2ae768456e3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8eccf737966842c2aca739fecbda88e906a1edc3152d303fce1c38e93232fbc`  
		Last Modified: Mon, 19 Dec 2016 22:14:38 GMT  
		Size: 9.1 MB (9138529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:f74ccc7f7ad7947ec182d56a67f23073cd4599da95dd30621ef3384be284d4e2
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41179445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20acc36c2dfd417c9bf5168ee372350b5ebdc18ce2de8026aead2ae768456e3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8eccf737966842c2aca739fecbda88e906a1edc3152d303fce1c38e93232fbc`  
		Last Modified: Mon, 19 Dec 2016 22:14:38 GMT  
		Size: 9.1 MB (9138529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:f74ccc7f7ad7947ec182d56a67f23073cd4599da95dd30621ef3384be284d4e2
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41179445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20acc36c2dfd417c9bf5168ee372350b5ebdc18ce2de8026aead2ae768456e3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8eccf737966842c2aca739fecbda88e906a1edc3152d303fce1c38e93232fbc`  
		Last Modified: Mon, 19 Dec 2016 22:14:38 GMT  
		Size: 9.1 MB (9138529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental`

```console
$ docker pull docker@sha256:621a22e6351876532a7879f2d01b2039a254d904afd2c077492eb2a8726a4377
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32173047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f417bbc18f6f8330b5fae370ca852ca60f2ade5252c144f0680973d53bac40a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:621a22e6351876532a7879f2d01b2039a254d904afd2c077492eb2a8726a4377
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32173047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f417bbc18f6f8330b5fae370ca852ca60f2ade5252c144f0680973d53bac40a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:621a22e6351876532a7879f2d01b2039a254d904afd2c077492eb2a8726a4377
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32173047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f417bbc18f6f8330b5fae370ca852ca60f2ade5252c144f0680973d53bac40a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:621a22e6351876532a7879f2d01b2039a254d904afd2c077492eb2a8726a4377
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32173047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f417bbc18f6f8330b5fae370ca852ca60f2ade5252c144f0680973d53bac40a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental-dind`

```console
$ docker pull docker@sha256:ae32f975f48d28953656a12b17be86b9fabfed3b0ad7b042bb9f9f8d351459a6
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34241748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19463866b9739df3d5516dd1038df59a4c010c5941935e98503aeeb18ad8bc2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:08:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:36 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:36 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:37 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:38 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6689049f5353ca50209de4d071af5fdde6e465127fa67ba85c781e7a313d9bb`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f1b329d8dc5145b540004b5c878b99afd552b629045a1308140123859a5ab`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d4111d6dc04a5de59662c792854597db946e891502e52fc974271ede4a4fbf`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b5072794fce85ab99dd489531cc17bdf37fbf605bc0057895d1c15e24841eb`  
		Last Modified: Mon, 19 Dec 2016 22:17:04 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:ae32f975f48d28953656a12b17be86b9fabfed3b0ad7b042bb9f9f8d351459a6
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34241748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19463866b9739df3d5516dd1038df59a4c010c5941935e98503aeeb18ad8bc2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:08:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:36 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:36 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:37 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:38 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6689049f5353ca50209de4d071af5fdde6e465127fa67ba85c781e7a313d9bb`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f1b329d8dc5145b540004b5c878b99afd552b629045a1308140123859a5ab`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d4111d6dc04a5de59662c792854597db946e891502e52fc974271ede4a4fbf`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b5072794fce85ab99dd489531cc17bdf37fbf605bc0057895d1c15e24841eb`  
		Last Modified: Mon, 19 Dec 2016 22:17:04 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:ae32f975f48d28953656a12b17be86b9fabfed3b0ad7b042bb9f9f8d351459a6
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34241748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19463866b9739df3d5516dd1038df59a4c010c5941935e98503aeeb18ad8bc2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:08:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:36 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:36 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:37 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:38 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6689049f5353ca50209de4d071af5fdde6e465127fa67ba85c781e7a313d9bb`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f1b329d8dc5145b540004b5c878b99afd552b629045a1308140123859a5ab`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d4111d6dc04a5de59662c792854597db946e891502e52fc974271ede4a4fbf`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b5072794fce85ab99dd489531cc17bdf37fbf605bc0057895d1c15e24841eb`  
		Last Modified: Mon, 19 Dec 2016 22:17:04 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:ae32f975f48d28953656a12b17be86b9fabfed3b0ad7b042bb9f9f8d351459a6
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34241748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19463866b9739df3d5516dd1038df59a4c010c5941935e98503aeeb18ad8bc2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:08:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:36 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:36 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:37 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:38 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6689049f5353ca50209de4d071af5fdde6e465127fa67ba85c781e7a313d9bb`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f1b329d8dc5145b540004b5c878b99afd552b629045a1308140123859a5ab`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d4111d6dc04a5de59662c792854597db946e891502e52fc974271ede4a4fbf`  
		Last Modified: Mon, 19 Dec 2016 22:17:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b5072794fce85ab99dd489531cc17bdf37fbf605bc0057895d1c15e24841eb`  
		Last Modified: Mon, 19 Dec 2016 22:17:04 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental-git`

```console
$ docker pull docker@sha256:95a91e5c12097577c4a14af7f4243080995bf861b5019650b235539469bea75a
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41311532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2cd6fda6b8c890e91a8c1751f80531c1ac92471b01826bedeff6b03bc0e09a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c35ad3bbd08f830008ea278a234343f078768d0289e3344044fdc0f826dd98`  
		Last Modified: Mon, 19 Dec 2016 22:18:16 GMT  
		Size: 9.1 MB (9138485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:95a91e5c12097577c4a14af7f4243080995bf861b5019650b235539469bea75a
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41311532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2cd6fda6b8c890e91a8c1751f80531c1ac92471b01826bedeff6b03bc0e09a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c35ad3bbd08f830008ea278a234343f078768d0289e3344044fdc0f826dd98`  
		Last Modified: Mon, 19 Dec 2016 22:18:16 GMT  
		Size: 9.1 MB (9138485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:95a91e5c12097577c4a14af7f4243080995bf861b5019650b235539469bea75a
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41311532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2cd6fda6b8c890e91a8c1751f80531c1ac92471b01826bedeff6b03bc0e09a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c35ad3bbd08f830008ea278a234343f078768d0289e3344044fdc0f826dd98`  
		Last Modified: Mon, 19 Dec 2016 22:18:16 GMT  
		Size: 9.1 MB (9138485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:95a91e5c12097577c4a14af7f4243080995bf861b5019650b235539469bea75a
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41311532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2cd6fda6b8c890e91a8c1751f80531c1ac92471b01826bedeff6b03bc0e09a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:23 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Mon, 19 Dec 2016 22:08:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:29 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:29 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c72df1e694a93fa0494f4b22cf700e1ce336076665d59ccb3a614ff239e76`  
		Last Modified: Mon, 19 Dec 2016 22:15:55 GMT  
		Size: 28.9 MB (28944537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4800979e53730812ce76542475b6d329610b5c4d32d353a1c828f87354759c`  
		Last Modified: Mon, 19 Dec 2016 22:15:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c35ad3bbd08f830008ea278a234343f078768d0289e3344044fdc0f826dd98`  
		Last Modified: Mon, 19 Dec 2016 22:18:16 GMT  
		Size: 9.1 MB (9138485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2`

```console
$ docker pull docker@sha256:a0deefa4192e432d627b4a197cb9b311e90f5f61b806a26f3fdcad9723d607d8
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c3bcdb1a5ba3f25e0bccfe1fac47d55cbdaeaf86227bc6f6e6fd075929b068`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:a0deefa4192e432d627b4a197cb9b311e90f5f61b806a26f3fdcad9723d607d8
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c3bcdb1a5ba3f25e0bccfe1fac47d55cbdaeaf86227bc6f6e6fd075929b068`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:cb63608d5ef2295d7f454b63f51da1e73f834c5cae1ad4f5f8ce19009ed4e4f9
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2656b8d08fc0addba9e97842184ee58218b36036b90a8513e29719525eb1ba19`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:33:02 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:33:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:33:03 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:33:04 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:33:05 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:33:05 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:33:06 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:33:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:33:07 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3a043ecad0dce3f4056d9202e8da329fdfd850c2fc405934b3024b02c7bd44`  
		Last Modified: Tue, 06 Dec 2016 20:42:40 GMT  
		Size: 2.1 MB (2065068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6efedf0c12b6277ad2cf476bda10ce48c638f078f0f66df9f8b4f719c1ff78`  
		Last Modified: Tue, 06 Dec 2016 20:42:40 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61f8a2999df468488bc480ed3876364a7898e415b3f83557378af725bcc7def`  
		Last Modified: Tue, 06 Dec 2016 20:42:38 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62eec15f56195074f1140e127d0066094afd4da6c64f6e342627d5f7e3c63aa`  
		Last Modified: Tue, 06 Dec 2016 20:42:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:cb63608d5ef2295d7f454b63f51da1e73f834c5cae1ad4f5f8ce19009ed4e4f9
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2656b8d08fc0addba9e97842184ee58218b36036b90a8513e29719525eb1ba19`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:33:02 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 06 Dec 2016 20:33:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 06 Dec 2016 20:33:03 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 06 Dec 2016 20:33:04 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 06 Dec 2016 20:33:05 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:33:05 GMT
VOLUME [/var/lib/docker]
# Tue, 06 Dec 2016 20:33:06 GMT
EXPOSE 2375/tcp
# Tue, 06 Dec 2016 20:33:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 06 Dec 2016 20:33:07 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3a043ecad0dce3f4056d9202e8da329fdfd850c2fc405934b3024b02c7bd44`  
		Last Modified: Tue, 06 Dec 2016 20:42:40 GMT  
		Size: 2.1 MB (2065068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6efedf0c12b6277ad2cf476bda10ce48c638f078f0f66df9f8b4f719c1ff78`  
		Last Modified: Tue, 06 Dec 2016 20:42:40 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61f8a2999df468488bc480ed3876364a7898e415b3f83557378af725bcc7def`  
		Last Modified: Tue, 06 Dec 2016 20:42:38 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62eec15f56195074f1140e127d0066094afd4da6c64f6e342627d5f7e3c63aa`  
		Last Modified: Tue, 06 Dec 2016 20:42:38 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:49bd726dec2d7a02cea5bd2059b7dc251b4698d09f30454a83981a60e1722ec3
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2150b9c812f7e9b50bf5b97eddbaabaf49bc9006bbc112c75fda5fea9ab3fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:33:10 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f21cac9a6ed9a9428df37acc8b1bc3fc588903c0993dee36a4c4a346cda0c90`  
		Last Modified: Tue, 06 Dec 2016 20:43:18 GMT  
		Size: 9.1 MB (9138545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:49bd726dec2d7a02cea5bd2059b7dc251b4698d09f30454a83981a60e1722ec3
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2150b9c812f7e9b50bf5b97eddbaabaf49bc9006bbc112c75fda5fea9ab3fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 18 Oct 2016 23:10:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 18 Oct 2016 23:11:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:58 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:59 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:33:10 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf75a7b67c311ebeae95f4648a5777a38fa41172c35cd7e572f0d961c6dfe7b`  
		Last Modified: Tue, 18 Oct 2016 23:11:19 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122027d965ee8a1101062f437acd8092dfcaedb5fdaf41511e1bb6e80955d7c`  
		Last Modified: Tue, 06 Dec 2016 20:42:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f21cac9a6ed9a9428df37acc8b1bc3fc588903c0993dee36a4c4a346cda0c90`  
		Last Modified: Tue, 06 Dec 2016 20:43:18 GMT  
		Size: 9.1 MB (9138545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
