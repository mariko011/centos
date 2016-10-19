<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.12.2`](#docker1122)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.2-dind`](#docker1122-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.2-git`](#docker1122-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.2-experimental`](#docker1122-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1-experimental`](#docker1-experimental)
-	[`docker:experimental`](#dockerexperimental)
-	[`docker:1.12.2-experimental-dind`](#docker1122-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1-experimental-dind`](#docker1-experimental-dind)
-	[`docker:experimental-dind`](#dockerexperimental-dind)
-	[`docker:1.12.2-experimental-git`](#docker1122-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)
-	[`docker:1-experimental-git`](#docker1-experimental-git)
-	[`docker:experimental-git`](#dockerexperimental-git)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.12.2`

```console
$ docker pull docker@sha256:b08023cb4cbae1088e5c58de781676493ea802113def889d15623e585a50322d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aed5271702ddf32198563690cd7ac52112506c786caa5bea09779cc82f84add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:b08023cb4cbae1088e5c58de781676493ea802113def889d15623e585a50322d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aed5271702ddf32198563690cd7ac52112506c786caa5bea09779cc82f84add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:b08023cb4cbae1088e5c58de781676493ea802113def889d15623e585a50322d
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aed5271702ddf32198563690cd7ac52112506c786caa5bea09779cc82f84add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:b08023cb4cbae1088e5c58de781676493ea802113def889d15623e585a50322d
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aed5271702ddf32198563690cd7ac52112506c786caa5bea09779cc82f84add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-dind`

```console
$ docker pull docker@sha256:8c01f9e7037c9aef65564b059d03add0b6f286df07c71927bc8980be6cf996a9
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ddb0269e3eda0b4f295badb4cff040d7adda412d103803b882dff8f552b2a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:06:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:06:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:06:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:06:02 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:06:03 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:06:08 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:06:09 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:06:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:06:09 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d76cd808bdd24341e1c5af13cd251087456ca7b84f2d5dbb6b87b04a8da79c`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3851cc4604249b873c8972116ffe987f36e979f12dd6e30c126a0204e3592fb`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74c490b62a121ee8d81a8b5b665af61620e5e56af41142ad65f6c222fdf454`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085036866c4584616685e87f0ade9964ff1d9ad6e8c55e8c0538d58aace6b346`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:8c01f9e7037c9aef65564b059d03add0b6f286df07c71927bc8980be6cf996a9
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ddb0269e3eda0b4f295badb4cff040d7adda412d103803b882dff8f552b2a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:06:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:06:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:06:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:06:02 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:06:03 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:06:08 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:06:09 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:06:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:06:09 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d76cd808bdd24341e1c5af13cd251087456ca7b84f2d5dbb6b87b04a8da79c`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3851cc4604249b873c8972116ffe987f36e979f12dd6e30c126a0204e3592fb`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74c490b62a121ee8d81a8b5b665af61620e5e56af41142ad65f6c222fdf454`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085036866c4584616685e87f0ade9964ff1d9ad6e8c55e8c0538d58aace6b346`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:8c01f9e7037c9aef65564b059d03add0b6f286df07c71927bc8980be6cf996a9
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ddb0269e3eda0b4f295badb4cff040d7adda412d103803b882dff8f552b2a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:06:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:06:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:06:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:06:02 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:06:03 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:06:08 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:06:09 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:06:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:06:09 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d76cd808bdd24341e1c5af13cd251087456ca7b84f2d5dbb6b87b04a8da79c`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3851cc4604249b873c8972116ffe987f36e979f12dd6e30c126a0204e3592fb`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74c490b62a121ee8d81a8b5b665af61620e5e56af41142ad65f6c222fdf454`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085036866c4584616685e87f0ade9964ff1d9ad6e8c55e8c0538d58aace6b346`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:8c01f9e7037c9aef65564b059d03add0b6f286df07c71927bc8980be6cf996a9
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ddb0269e3eda0b4f295badb4cff040d7adda412d103803b882dff8f552b2a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:06:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:06:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:06:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:06:02 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:06:03 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:06:08 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:06:09 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:06:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:06:09 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d76cd808bdd24341e1c5af13cd251087456ca7b84f2d5dbb6b87b04a8da79c`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3851cc4604249b873c8972116ffe987f36e979f12dd6e30c126a0204e3592fb`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74c490b62a121ee8d81a8b5b665af61620e5e56af41142ad65f6c222fdf454`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085036866c4584616685e87f0ade9964ff1d9ad6e8c55e8c0538d58aace6b346`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-git`

```console
$ docker pull docker@sha256:222d2e4a194151d062327cc3b1edaa1f3b3d4182ffdcadb66bc6735404cdf231
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adc546fa267fa84484124d620927e20aebcd5519816fa951974c7e889dead1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:10:07 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3abcff0c5227878926f6c3a970c1ff3f80706611dd2ea75bf250de7bfcfd5a`  
		Last Modified: Tue, 18 Oct 2016 23:10:19 GMT  
		Size: 9.1 MB (9138526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:222d2e4a194151d062327cc3b1edaa1f3b3d4182ffdcadb66bc6735404cdf231
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adc546fa267fa84484124d620927e20aebcd5519816fa951974c7e889dead1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:10:07 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3abcff0c5227878926f6c3a970c1ff3f80706611dd2ea75bf250de7bfcfd5a`  
		Last Modified: Tue, 18 Oct 2016 23:10:19 GMT  
		Size: 9.1 MB (9138526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:222d2e4a194151d062327cc3b1edaa1f3b3d4182ffdcadb66bc6735404cdf231
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adc546fa267fa84484124d620927e20aebcd5519816fa951974c7e889dead1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:10:07 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3abcff0c5227878926f6c3a970c1ff3f80706611dd2ea75bf250de7bfcfd5a`  
		Last Modified: Tue, 18 Oct 2016 23:10:19 GMT  
		Size: 9.1 MB (9138526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:222d2e4a194151d062327cc3b1edaa1f3b3d4182ffdcadb66bc6735404cdf231
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adc546fa267fa84484124d620927e20aebcd5519816fa951974c7e889dead1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:10:07 GMT
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3abcff0c5227878926f6c3a970c1ff3f80706611dd2ea75bf250de7bfcfd5a`  
		Last Modified: Tue, 18 Oct 2016 23:10:19 GMT  
		Size: 9.1 MB (9138526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-experimental`

```console
$ docker pull docker@sha256:538e93db5b6b4ef980a66856a1948c21f51d087023c31f856321570b915d0179
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570043c613cdf14625eb8351c2d6ab3fde0930d5c6cf85e65b62b230e40d5294`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:538e93db5b6b4ef980a66856a1948c21f51d087023c31f856321570b915d0179
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570043c613cdf14625eb8351c2d6ab3fde0930d5c6cf85e65b62b230e40d5294`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:538e93db5b6b4ef980a66856a1948c21f51d087023c31f856321570b915d0179
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570043c613cdf14625eb8351c2d6ab3fde0930d5c6cf85e65b62b230e40d5294`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:538e93db5b6b4ef980a66856a1948c21f51d087023c31f856321570b915d0179
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570043c613cdf14625eb8351c2d6ab3fde0930d5c6cf85e65b62b230e40d5294`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-experimental-dind`

```console
$ docker pull docker@sha256:7b44652c89d3846cb5754aa962e7469599256c435bba5e7916d206ad1439b2cd
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae40621873d717cb6efbbd08f8806f1cb8a3130942bba1f984943164de4148f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:08:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:08:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:08:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:08:21 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:08:22 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:08:22 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:08:22 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:08:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:08:23 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585f597085b7e2e5b2cefa645f364e7c71ea69d35877ba0a6b19778ff8f08629`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 2.1 MB (2065088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1a778762ad1bab49e0765aaaf712c4e82198a7cdc8e0aaa7f62985b0efec8`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3066564be46ee3fe137e0ed6bec47832abffe021daa49b2c8166935e85491c`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1434f8ec76233b30724513778b8064abb9067b42ce36c3106d4b533a9759dca6`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:7b44652c89d3846cb5754aa962e7469599256c435bba5e7916d206ad1439b2cd
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae40621873d717cb6efbbd08f8806f1cb8a3130942bba1f984943164de4148f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:08:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:08:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:08:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:08:21 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:08:22 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:08:22 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:08:22 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:08:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:08:23 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585f597085b7e2e5b2cefa645f364e7c71ea69d35877ba0a6b19778ff8f08629`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 2.1 MB (2065088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1a778762ad1bab49e0765aaaf712c4e82198a7cdc8e0aaa7f62985b0efec8`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3066564be46ee3fe137e0ed6bec47832abffe021daa49b2c8166935e85491c`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1434f8ec76233b30724513778b8064abb9067b42ce36c3106d4b533a9759dca6`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:7b44652c89d3846cb5754aa962e7469599256c435bba5e7916d206ad1439b2cd
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae40621873d717cb6efbbd08f8806f1cb8a3130942bba1f984943164de4148f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:08:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:08:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:08:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:08:21 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:08:22 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:08:22 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:08:22 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:08:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:08:23 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585f597085b7e2e5b2cefa645f364e7c71ea69d35877ba0a6b19778ff8f08629`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 2.1 MB (2065088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1a778762ad1bab49e0765aaaf712c4e82198a7cdc8e0aaa7f62985b0efec8`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3066564be46ee3fe137e0ed6bec47832abffe021daa49b2c8166935e85491c`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1434f8ec76233b30724513778b8064abb9067b42ce36c3106d4b533a9759dca6`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:7b44652c89d3846cb5754aa962e7469599256c435bba5e7916d206ad1439b2cd
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae40621873d717cb6efbbd08f8806f1cb8a3130942bba1f984943164de4148f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:08:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:08:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:08:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:08:21 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:08:22 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:08:22 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:08:22 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:08:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:08:23 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585f597085b7e2e5b2cefa645f364e7c71ea69d35877ba0a6b19778ff8f08629`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 2.1 MB (2065088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1a778762ad1bab49e0765aaaf712c4e82198a7cdc8e0aaa7f62985b0efec8`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3066564be46ee3fe137e0ed6bec47832abffe021daa49b2c8166935e85491c`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1434f8ec76233b30724513778b8064abb9067b42ce36c3106d4b533a9759dca6`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.2-experimental-git`

```console
$ docker pull docker@sha256:da495f208a75f29bdbb75ca602263dfd42543185ebe1d382084952e18282bd4c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.2-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17d6daaeb81d973910f99683503d8954c03660210366ea48c6b269c6702dd64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:09:17 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3a4d2bd5297d16132c4f35778a043bd6c2293cd5613352afdd13f7c54f045`  
		Last Modified: Tue, 18 Oct 2016 23:09:29 GMT  
		Size: 9.1 MB (9138560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:da495f208a75f29bdbb75ca602263dfd42543185ebe1d382084952e18282bd4c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17d6daaeb81d973910f99683503d8954c03660210366ea48c6b269c6702dd64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:09:17 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3a4d2bd5297d16132c4f35778a043bd6c2293cd5613352afdd13f7c54f045`  
		Last Modified: Tue, 18 Oct 2016 23:09:29 GMT  
		Size: 9.1 MB (9138560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:da495f208a75f29bdbb75ca602263dfd42543185ebe1d382084952e18282bd4c
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17d6daaeb81d973910f99683503d8954c03660210366ea48c6b269c6702dd64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:09:17 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3a4d2bd5297d16132c4f35778a043bd6c2293cd5613352afdd13f7c54f045`  
		Last Modified: Tue, 18 Oct 2016 23:09:29 GMT  
		Size: 9.1 MB (9138560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:da495f208a75f29bdbb75ca602263dfd42543185ebe1d382084952e18282bd4c
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17d6daaeb81d973910f99683503d8954c03660210366ea48c6b269c6702dd64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:09:17 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3a4d2bd5297d16132c4f35778a043bd6c2293cd5613352afdd13f7c54f045`  
		Last Modified: Tue, 18 Oct 2016 23:09:29 GMT  
		Size: 9.1 MB (9138560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2`

```console
$ docker pull docker@sha256:9cfeaf7b1d09b5a388b8e98fcd132fdf272edd13751b2a1057a781daac07cab7
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e6dbed5c6db733ad05bc4827f80396cbd9bd74069887911bd22d4c951e70f0`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:9cfeaf7b1d09b5a388b8e98fcd132fdf272edd13751b2a1057a781daac07cab7
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e6dbed5c6db733ad05bc4827f80396cbd9bd74069887911bd22d4c951e70f0`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:77cd335b016e0f35a0723deb6fe22169d47146aff792f5ff7b37d0af3c2c5a5f
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf10e9c35ef0ce1ea1607ac96f5e1f8cc51c13b2694df6a1d0fcefd5b48f7257`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:11:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:11:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:11:41 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:11:42 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:11:43 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:43 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:11:43 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:44 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff3b2a83dfd5829d9d2fadd86786c559f1112f417ff4bfdfded1f8f4a4f320`  
		Last Modified: Tue, 18 Oct 2016 23:11:54 GMT  
		Size: 2.1 MB (2065094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c150fe13a7a475a623e4b377402d85f12cd8ea6165507086d082990fb69b57`  
		Last Modified: Tue, 18 Oct 2016 23:11:55 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a52d05388d38b63893cf012f4b94092c12e1f575f61f6016b3bf4b923740b4e`  
		Last Modified: Tue, 18 Oct 2016 23:11:53 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d576deb826d04814c6ea0636c1f915099ee9ac5cf5fa8837597084870cc521`  
		Last Modified: Tue, 18 Oct 2016 23:11:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:77cd335b016e0f35a0723deb6fe22169d47146aff792f5ff7b37d0af3c2c5a5f
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25746943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf10e9c35ef0ce1ea1607ac96f5e1f8cc51c13b2694df6a1d0fcefd5b48f7257`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:11:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:11:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:11:41 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:11:42 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:11:43 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:43 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:11:43 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:11:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:44 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff3b2a83dfd5829d9d2fadd86786c559f1112f417ff4bfdfded1f8f4a4f320`  
		Last Modified: Tue, 18 Oct 2016 23:11:54 GMT  
		Size: 2.1 MB (2065094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c150fe13a7a475a623e4b377402d85f12cd8ea6165507086d082990fb69b57`  
		Last Modified: Tue, 18 Oct 2016 23:11:55 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a52d05388d38b63893cf012f4b94092c12e1f575f61f6016b3bf4b923740b4e`  
		Last Modified: Tue, 18 Oct 2016 23:11:53 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d576deb826d04814c6ea0636c1f915099ee9ac5cf5fa8837597084870cc521`  
		Last Modified: Tue, 18 Oct 2016 23:11:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:2c09470e13aa2edfad5846898eac22a2249f3980dca44239e10f547effc1a506
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00b79c99132efcacddad30e67aae39a63e9bd8227389a3dcc25e5efe2be4731`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:12:14 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2a01c992c1da5273137df440db474cac3632a0492e3723d78bf77e0a1890a`  
		Last Modified: Tue, 18 Oct 2016 23:12:27 GMT  
		Size: 9.1 MB (9138540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:2c09470e13aa2edfad5846898eac22a2249f3980dca44239e10f547effc1a506
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32816756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00b79c99132efcacddad30e67aae39a63e9bd8227389a3dcc25e5efe2be4731`
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
# Tue, 18 Oct 2016 23:11:02 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:11:03 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:12:14 GMT
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
	-	`sha256:3f595846c5ed93cc0673128dab05006cf5095ab6ae39d3bfcbc76c9e0a923964`  
		Last Modified: Tue, 18 Oct 2016 23:11:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2a01c992c1da5273137df440db474cac3632a0492e3723d78bf77e0a1890a`  
		Last Modified: Tue, 18 Oct 2016 23:12:27 GMT  
		Size: 9.1 MB (9138540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
