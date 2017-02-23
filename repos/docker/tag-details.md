<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.03.0-ce-rc1`](#docker17030-ce-rc1)
-	[`docker:17.03-rc`](#docker1703-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:17.03.0-ce-rc1-dind`](#docker17030-ce-rc1-dind)
-	[`docker:17.03-rc-dind`](#docker1703-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:17.03.0-ce-rc1-git`](#docker17030-ce-rc1-git)
-	[`docker:17.03-rc-git`](#docker1703-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:1.13.1`](#docker1131)
-	[`docker:1.13`](#docker113)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.13.1-dind`](#docker1131-dind)
-	[`docker:1.13-dind`](#docker113-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.13.1-git`](#docker1131-git)
-	[`docker:1.13-git`](#docker113-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.6`](#docker1126)
-	[`docker:1.12`](#docker112)
-	[`docker:1.12.6-dind`](#docker1126-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1.12.6-git`](#docker1126-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1.12.6-experimental`](#docker1126-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1.12.6-experimental-dind`](#docker1126-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1.12.6-experimental-git`](#docker1126-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)

## `docker:17.03.0-ce-rc1`

```console
$ docker pull docker@sha256:52d492b3029b6ad6de6d6962a1cbae6175f4698c40610196bac83157e1f8931b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-ce-rc1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31808269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e117bb1e8f28341c44e51f3f88d7cc21ccfcc8c5458b33d67db5f8edeb5b06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc`

```console
$ docker pull docker@sha256:52d492b3029b6ad6de6d6962a1cbae6175f4698c40610196bac83157e1f8931b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31808269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e117bb1e8f28341c44e51f3f88d7cc21ccfcc8c5458b33d67db5f8edeb5b06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:52d492b3029b6ad6de6d6962a1cbae6175f4698c40610196bac83157e1f8931b
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31808269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e117bb1e8f28341c44e51f3f88d7cc21ccfcc8c5458b33d67db5f8edeb5b06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-ce-rc1-dind`

```console
$ docker pull docker@sha256:a500a6076863c56a0f4f1f6e7e4f64ad6a613409cb877f4c155a0ae3c43d0203
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-ce-rc1-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33915648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6963b4e56d00860fa25accfe7116e02dd140f2b4c9948e1f0b8801ce622d9636`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
# Thu, 23 Feb 2017 19:22:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 23 Feb 2017 19:22:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Feb 2017 19:22:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 23 Feb 2017 19:22:43 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 23 Feb 2017 19:22:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:44 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Feb 2017 19:22:45 GMT
EXPOSE 2375/tcp
# Thu, 23 Feb 2017 19:22:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:46 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0920f0ec5088315ab411ef27f25d1d0ea6cc0801f41855311b8e328150763c`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 2.1 MB (2103778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8085d877cb46b4d46735eaa061253ae5984a9c576406ccdd9a97180b91ffd9ea`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476755cd35e135fcd5bb926d98a2922ebd4b7ee5465a45f00ec90df4219ac6b`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0139e2f89d07983de0666f309fa4bd4451d88773cf5c97c79ae63f0a8814b1`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc-dind`

```console
$ docker pull docker@sha256:a500a6076863c56a0f4f1f6e7e4f64ad6a613409cb877f4c155a0ae3c43d0203
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33915648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6963b4e56d00860fa25accfe7116e02dd140f2b4c9948e1f0b8801ce622d9636`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
# Thu, 23 Feb 2017 19:22:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 23 Feb 2017 19:22:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Feb 2017 19:22:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 23 Feb 2017 19:22:43 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 23 Feb 2017 19:22:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:44 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Feb 2017 19:22:45 GMT
EXPOSE 2375/tcp
# Thu, 23 Feb 2017 19:22:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:46 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0920f0ec5088315ab411ef27f25d1d0ea6cc0801f41855311b8e328150763c`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 2.1 MB (2103778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8085d877cb46b4d46735eaa061253ae5984a9c576406ccdd9a97180b91ffd9ea`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476755cd35e135fcd5bb926d98a2922ebd4b7ee5465a45f00ec90df4219ac6b`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0139e2f89d07983de0666f309fa4bd4451d88773cf5c97c79ae63f0a8814b1`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:a500a6076863c56a0f4f1f6e7e4f64ad6a613409cb877f4c155a0ae3c43d0203
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33915648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6963b4e56d00860fa25accfe7116e02dd140f2b4c9948e1f0b8801ce622d9636`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
# Thu, 23 Feb 2017 19:22:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 23 Feb 2017 19:22:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Feb 2017 19:22:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 23 Feb 2017 19:22:43 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 23 Feb 2017 19:22:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:44 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Feb 2017 19:22:45 GMT
EXPOSE 2375/tcp
# Thu, 23 Feb 2017 19:22:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:46 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0920f0ec5088315ab411ef27f25d1d0ea6cc0801f41855311b8e328150763c`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 2.1 MB (2103778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8085d877cb46b4d46735eaa061253ae5984a9c576406ccdd9a97180b91ffd9ea`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476755cd35e135fcd5bb926d98a2922ebd4b7ee5465a45f00ec90df4219ac6b`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0139e2f89d07983de0666f309fa4bd4451d88773cf5c97c79ae63f0a8814b1`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-ce-rc1-git`

```console
$ docker pull docker@sha256:0bef0d024c20e6c67e02dc3f7f50cc3a335baebd01a8b84a5d23e8ace2b1fade
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-ce-rc1-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42180791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5feabce1c53e5434d0a8f6a20b2a33f87fbe766084fee5c9ba228b6cad8fa9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
# Thu, 23 Feb 2017 19:22:48 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c1b8749ac70a875b9fee6afbc48c3cce1e3d0a8cc87bdf8d333882cd0baba9`  
		Last Modified: Thu, 23 Feb 2017 19:25:12 GMT  
		Size: 10.4 MB (10372522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc-git`

```console
$ docker pull docker@sha256:0bef0d024c20e6c67e02dc3f7f50cc3a335baebd01a8b84a5d23e8ace2b1fade
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42180791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5feabce1c53e5434d0a8f6a20b2a33f87fbe766084fee5c9ba228b6cad8fa9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
# Thu, 23 Feb 2017 19:22:48 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c1b8749ac70a875b9fee6afbc48c3cce1e3d0a8cc87bdf8d333882cd0baba9`  
		Last Modified: Thu, 23 Feb 2017 19:25:12 GMT  
		Size: 10.4 MB (10372522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:0bef0d024c20e6c67e02dc3f7f50cc3a335baebd01a8b84a5d23e8ace2b1fade
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42180791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5feabce1c53e5434d0a8f6a20b2a33f87fbe766084fee5c9ba228b6cad8fa9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
# Thu, 23 Feb 2017 19:22:48 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c1b8749ac70a875b9fee6afbc48c3cce1e3d0a8cc87bdf8d333882cd0baba9`  
		Last Modified: Thu, 23 Feb 2017 19:25:12 GMT  
		Size: 10.4 MB (10372522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.1`

```console
$ docker pull docker@sha256:2870ee7f9a06bcba502716d7eb968d83762df55b9eb95276f6feaaf2cf872669
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31800553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab87264167a6781c848acdf2b50d43e376b9aa25f410653b1c7ac2ba892557f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13`

```console
$ docker pull docker@sha256:2870ee7f9a06bcba502716d7eb968d83762df55b9eb95276f6feaaf2cf872669
```

-	Platforms:
	-	linux; amd64

### `docker:1.13` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31800553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab87264167a6781c848acdf2b50d43e376b9aa25f410653b1c7ac2ba892557f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:2870ee7f9a06bcba502716d7eb968d83762df55b9eb95276f6feaaf2cf872669
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31800553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab87264167a6781c848acdf2b50d43e376b9aa25f410653b1c7ac2ba892557f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:2870ee7f9a06bcba502716d7eb968d83762df55b9eb95276f6feaaf2cf872669
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31800553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab87264167a6781c848acdf2b50d43e376b9aa25f410653b1c7ac2ba892557f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.1-dind`

```console
$ docker pull docker@sha256:6040b7eecd8db30d6130b6d76abd35054d3eae3cbffaa7bfffee912a5de1fe20
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.1-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33907932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6c61fc2dce798a274a50137b2966177b41827659f593d47363917d68f6a537`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
# Thu, 09 Feb 2017 23:44:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 09 Feb 2017 23:44:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 09 Feb 2017 23:44:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 09 Feb 2017 23:44:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 09 Feb 2017 23:44:46 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:47 GMT
VOLUME [/var/lib/docker]
# Thu, 09 Feb 2017 23:44:47 GMT
EXPOSE 2375/tcp
# Thu, 09 Feb 2017 23:44:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:48 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5a5b2f7bb7dd8f6d2e5d49b4426cd873a03113a61872d63f2753e858fb578`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 2.1 MB (2103783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db34f5c37f963c3f77e220e1c562703316465301c0720a511db881104b8ef2cc`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb11e3cf9c6de89b13f90a67bb40b2a95c894a84508ed2b9a90bc5a1a0e6c8a1`  
		Last Modified: Fri, 10 Feb 2017 00:06:11 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9379c25626665f91b2160ff57735dfd88781288683d3f89bc1b125b040145f68`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-dind`

```console
$ docker pull docker@sha256:6040b7eecd8db30d6130b6d76abd35054d3eae3cbffaa7bfffee912a5de1fe20
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33907932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6c61fc2dce798a274a50137b2966177b41827659f593d47363917d68f6a537`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
# Thu, 09 Feb 2017 23:44:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 09 Feb 2017 23:44:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 09 Feb 2017 23:44:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 09 Feb 2017 23:44:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 09 Feb 2017 23:44:46 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:47 GMT
VOLUME [/var/lib/docker]
# Thu, 09 Feb 2017 23:44:47 GMT
EXPOSE 2375/tcp
# Thu, 09 Feb 2017 23:44:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:48 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5a5b2f7bb7dd8f6d2e5d49b4426cd873a03113a61872d63f2753e858fb578`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 2.1 MB (2103783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db34f5c37f963c3f77e220e1c562703316465301c0720a511db881104b8ef2cc`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb11e3cf9c6de89b13f90a67bb40b2a95c894a84508ed2b9a90bc5a1a0e6c8a1`  
		Last Modified: Fri, 10 Feb 2017 00:06:11 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9379c25626665f91b2160ff57735dfd88781288683d3f89bc1b125b040145f68`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:6040b7eecd8db30d6130b6d76abd35054d3eae3cbffaa7bfffee912a5de1fe20
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33907932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6c61fc2dce798a274a50137b2966177b41827659f593d47363917d68f6a537`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
# Thu, 09 Feb 2017 23:44:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 09 Feb 2017 23:44:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 09 Feb 2017 23:44:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 09 Feb 2017 23:44:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 09 Feb 2017 23:44:46 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:47 GMT
VOLUME [/var/lib/docker]
# Thu, 09 Feb 2017 23:44:47 GMT
EXPOSE 2375/tcp
# Thu, 09 Feb 2017 23:44:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:48 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5a5b2f7bb7dd8f6d2e5d49b4426cd873a03113a61872d63f2753e858fb578`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 2.1 MB (2103783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db34f5c37f963c3f77e220e1c562703316465301c0720a511db881104b8ef2cc`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb11e3cf9c6de89b13f90a67bb40b2a95c894a84508ed2b9a90bc5a1a0e6c8a1`  
		Last Modified: Fri, 10 Feb 2017 00:06:11 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9379c25626665f91b2160ff57735dfd88781288683d3f89bc1b125b040145f68`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:6040b7eecd8db30d6130b6d76abd35054d3eae3cbffaa7bfffee912a5de1fe20
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33907932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6c61fc2dce798a274a50137b2966177b41827659f593d47363917d68f6a537`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
# Thu, 09 Feb 2017 23:44:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 09 Feb 2017 23:44:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 09 Feb 2017 23:44:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 09 Feb 2017 23:44:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 09 Feb 2017 23:44:46 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:47 GMT
VOLUME [/var/lib/docker]
# Thu, 09 Feb 2017 23:44:47 GMT
EXPOSE 2375/tcp
# Thu, 09 Feb 2017 23:44:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:48 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5a5b2f7bb7dd8f6d2e5d49b4426cd873a03113a61872d63f2753e858fb578`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 2.1 MB (2103783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db34f5c37f963c3f77e220e1c562703316465301c0720a511db881104b8ef2cc`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb11e3cf9c6de89b13f90a67bb40b2a95c894a84508ed2b9a90bc5a1a0e6c8a1`  
		Last Modified: Fri, 10 Feb 2017 00:06:11 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9379c25626665f91b2160ff57735dfd88781288683d3f89bc1b125b040145f68`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.1-git`

```console
$ docker pull docker@sha256:f840f4968765dc80dc346c0444770dfdef1aea51e6a216814b830d7766e61921
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.1-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42173062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733982e68bdac6c03cbe6149206cdcf052cad89dae93341c76672db701052d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
# Thu, 09 Feb 2017 23:44:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9cfc6e1db19f02f2eee266650b24d188f12af34ff2d4dce11f105d26de70d2`  
		Last Modified: Fri, 10 Feb 2017 00:07:35 GMT  
		Size: 10.4 MB (10372509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-git`

```console
$ docker pull docker@sha256:f840f4968765dc80dc346c0444770dfdef1aea51e6a216814b830d7766e61921
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42173062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733982e68bdac6c03cbe6149206cdcf052cad89dae93341c76672db701052d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
# Thu, 09 Feb 2017 23:44:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9cfc6e1db19f02f2eee266650b24d188f12af34ff2d4dce11f105d26de70d2`  
		Last Modified: Fri, 10 Feb 2017 00:07:35 GMT  
		Size: 10.4 MB (10372509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:f840f4968765dc80dc346c0444770dfdef1aea51e6a216814b830d7766e61921
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42173062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733982e68bdac6c03cbe6149206cdcf052cad89dae93341c76672db701052d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
# Thu, 09 Feb 2017 23:44:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9cfc6e1db19f02f2eee266650b24d188f12af34ff2d4dce11f105d26de70d2`  
		Last Modified: Fri, 10 Feb 2017 00:07:35 GMT  
		Size: 10.4 MB (10372509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:f840f4968765dc80dc346c0444770dfdef1aea51e6a216814b830d7766e61921
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42173062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733982e68bdac6c03cbe6149206cdcf052cad89dae93341c76672db701052d4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
# Thu, 09 Feb 2017 23:44:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9cfc6e1db19f02f2eee266650b24d188f12af34ff2d4dce11f105d26de70d2`  
		Last Modified: Fri, 10 Feb 2017 00:07:35 GMT  
		Size: 10.4 MB (10372509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.6`

```console
$ docker pull docker@sha256:8b17e2c92bedbfe6f8afab3ae2525ac3ff61748698052225b0e29333b4d53fc0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32042267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d1f5d13fa8c6060c301dcd3e561ebd96f2af16b3faf39e5d81ee9fcfec20b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_SHA256=cadc6025c841e034506703a06cf54204e51d0cadfae4bae62628ac648d82efdd
# Wed, 11 Jan 2017 03:24:09 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:10 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096f0da5eadba56602996a11598164d7693a664183d9477d01b940e0b0ad371`  
		Last Modified: Wed, 11 Jan 2017 03:27:07 GMT  
		Size: 28.8 MB (28813018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8d140dbabd05e2ac9f441d1d61653f4c080460c88d22e83dc9ddc1cdf0b2a2`  
		Last Modified: Wed, 11 Jan 2017 03:26:56 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:8b17e2c92bedbfe6f8afab3ae2525ac3ff61748698052225b0e29333b4d53fc0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32042267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d1f5d13fa8c6060c301dcd3e561ebd96f2af16b3faf39e5d81ee9fcfec20b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_SHA256=cadc6025c841e034506703a06cf54204e51d0cadfae4bae62628ac648d82efdd
# Wed, 11 Jan 2017 03:24:09 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:10 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096f0da5eadba56602996a11598164d7693a664183d9477d01b940e0b0ad371`  
		Last Modified: Wed, 11 Jan 2017 03:27:07 GMT  
		Size: 28.8 MB (28813018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8d140dbabd05e2ac9f441d1d61653f4c080460c88d22e83dc9ddc1cdf0b2a2`  
		Last Modified: Wed, 11 Jan 2017 03:26:56 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.6-dind`

```console
$ docker pull docker@sha256:852aa209e22c95de9c30dad23343ccb32f93556f21dc9d9bbb0b4c348e161c95
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.6-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34110955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2102ff6d9b43ae4bac8facb8ce0ede2cedd21b148a2c45d8f048af7ee184e256`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_SHA256=cadc6025c841e034506703a06cf54204e51d0cadfae4bae62628ac648d82efdd
# Wed, 11 Jan 2017 03:24:09 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:10 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:10 GMT
CMD ["sh"]
# Wed, 11 Jan 2017 03:24:14 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 11 Jan 2017 03:24:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 11 Jan 2017 03:24:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 11 Jan 2017 03:24:16 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 11 Jan 2017 03:24:17 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:17 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Jan 2017 03:24:17 GMT
EXPOSE 2375/tcp
# Wed, 11 Jan 2017 03:24:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:18 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096f0da5eadba56602996a11598164d7693a664183d9477d01b940e0b0ad371`  
		Last Modified: Wed, 11 Jan 2017 03:27:07 GMT  
		Size: 28.8 MB (28813018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8d140dbabd05e2ac9f441d1d61653f4c080460c88d22e83dc9ddc1cdf0b2a2`  
		Last Modified: Wed, 11 Jan 2017 03:26:56 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dc44be1534c698e10a6f02d84eccb61caacf88e30a36652410b02fe07c9e9c`  
		Last Modified: Wed, 11 Jan 2017 03:28:07 GMT  
		Size: 2.1 MB (2065063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6d474463ce96af7ed36436e7a223c6d949a62589a4c125e1c6aa8db5021d61`  
		Last Modified: Wed, 11 Jan 2017 03:28:06 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872dd45d3a2239087bc387e8e398756a109845127d92178997665731759a229a`  
		Last Modified: Wed, 11 Jan 2017 03:28:06 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1169f19385d5c6da623df4b322d83088ecc80a1b4cd672822a0de79e2903d0f3`  
		Last Modified: Wed, 11 Jan 2017 03:28:06 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:852aa209e22c95de9c30dad23343ccb32f93556f21dc9d9bbb0b4c348e161c95
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34110955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2102ff6d9b43ae4bac8facb8ce0ede2cedd21b148a2c45d8f048af7ee184e256`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_SHA256=cadc6025c841e034506703a06cf54204e51d0cadfae4bae62628ac648d82efdd
# Wed, 11 Jan 2017 03:24:09 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:10 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:10 GMT
CMD ["sh"]
# Wed, 11 Jan 2017 03:24:14 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 11 Jan 2017 03:24:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 11 Jan 2017 03:24:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 11 Jan 2017 03:24:16 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 11 Jan 2017 03:24:17 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:17 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Jan 2017 03:24:17 GMT
EXPOSE 2375/tcp
# Wed, 11 Jan 2017 03:24:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:18 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096f0da5eadba56602996a11598164d7693a664183d9477d01b940e0b0ad371`  
		Last Modified: Wed, 11 Jan 2017 03:27:07 GMT  
		Size: 28.8 MB (28813018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8d140dbabd05e2ac9f441d1d61653f4c080460c88d22e83dc9ddc1cdf0b2a2`  
		Last Modified: Wed, 11 Jan 2017 03:26:56 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dc44be1534c698e10a6f02d84eccb61caacf88e30a36652410b02fe07c9e9c`  
		Last Modified: Wed, 11 Jan 2017 03:28:07 GMT  
		Size: 2.1 MB (2065063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6d474463ce96af7ed36436e7a223c6d949a62589a4c125e1c6aa8db5021d61`  
		Last Modified: Wed, 11 Jan 2017 03:28:06 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872dd45d3a2239087bc387e8e398756a109845127d92178997665731759a229a`  
		Last Modified: Wed, 11 Jan 2017 03:28:06 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1169f19385d5c6da623df4b322d83088ecc80a1b4cd672822a0de79e2903d0f3`  
		Last Modified: Wed, 11 Jan 2017 03:28:06 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.6-git`

```console
$ docker pull docker@sha256:86291c47b5d941c81411049dcc576dfeb2496ff233ffb7c815a9ad2dcef242f2
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.6-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41181312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c01b4e077d1d62cb2cb903d9188852656bc2b6f1a91b57ea3c88e3bd6a6312`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_SHA256=cadc6025c841e034506703a06cf54204e51d0cadfae4bae62628ac648d82efdd
# Wed, 11 Jan 2017 03:24:09 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:10 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:10 GMT
CMD ["sh"]
# Wed, 11 Jan 2017 03:24:21 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096f0da5eadba56602996a11598164d7693a664183d9477d01b940e0b0ad371`  
		Last Modified: Wed, 11 Jan 2017 03:27:07 GMT  
		Size: 28.8 MB (28813018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8d140dbabd05e2ac9f441d1d61653f4c080460c88d22e83dc9ddc1cdf0b2a2`  
		Last Modified: Wed, 11 Jan 2017 03:26:56 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e12e87231556fdf7425aeef4ead45da3f84e6a9cc8b780ca91487be2e06f9c`  
		Last Modified: Wed, 11 Jan 2017 03:29:09 GMT  
		Size: 9.1 MB (9139045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:86291c47b5d941c81411049dcc576dfeb2496ff233ffb7c815a9ad2dcef242f2
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41181312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c01b4e077d1d62cb2cb903d9188852656bc2b6f1a91b57ea3c88e3bd6a6312`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:05 GMT
ENV DOCKER_SHA256=cadc6025c841e034506703a06cf54204e51d0cadfae4bae62628ac648d82efdd
# Wed, 11 Jan 2017 03:24:09 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:10 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:10 GMT
CMD ["sh"]
# Wed, 11 Jan 2017 03:24:21 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096f0da5eadba56602996a11598164d7693a664183d9477d01b940e0b0ad371`  
		Last Modified: Wed, 11 Jan 2017 03:27:07 GMT  
		Size: 28.8 MB (28813018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8d140dbabd05e2ac9f441d1d61653f4c080460c88d22e83dc9ddc1cdf0b2a2`  
		Last Modified: Wed, 11 Jan 2017 03:26:56 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e12e87231556fdf7425aeef4ead45da3f84e6a9cc8b780ca91487be2e06f9c`  
		Last Modified: Wed, 11 Jan 2017 03:29:09 GMT  
		Size: 9.1 MB (9139045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.6-experimental`

```console
$ docker pull docker@sha256:c46b4a369fcbf1476d0a415db19cb78cb475a77206bd09ddb9c488873541aee6
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.6-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32174284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8799e75794aca62b8d71082e07d244b421e5f2ae7c64aff08ca8d9320be5b230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_SHA256=7f0c0fee0a302a4c3b6f62f9ed063813976200386b2299b36db52a6b67994674
# Wed, 11 Jan 2017 03:24:26 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:26 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453645374b4731f9b386af4256a9bf5987a6b4a46ac15129938c132d0edd8723`  
		Last Modified: Wed, 11 Jan 2017 03:30:19 GMT  
		Size: 28.9 MB (28945031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d486dc75fe765f5b88bf07f3477dd9ca7806952d376a9270051ac3058f20662`  
		Last Modified: Wed, 11 Jan 2017 03:30:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:c46b4a369fcbf1476d0a415db19cb78cb475a77206bd09ddb9c488873541aee6
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32174284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8799e75794aca62b8d71082e07d244b421e5f2ae7c64aff08ca8d9320be5b230`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_SHA256=7f0c0fee0a302a4c3b6f62f9ed063813976200386b2299b36db52a6b67994674
# Wed, 11 Jan 2017 03:24:26 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:26 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453645374b4731f9b386af4256a9bf5987a6b4a46ac15129938c132d0edd8723`  
		Last Modified: Wed, 11 Jan 2017 03:30:19 GMT  
		Size: 28.9 MB (28945031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d486dc75fe765f5b88bf07f3477dd9ca7806952d376a9270051ac3058f20662`  
		Last Modified: Wed, 11 Jan 2017 03:30:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.6-experimental-dind`

```console
$ docker pull docker@sha256:50484bbedab068e778d3356092f7a1a9efe96cffbed9a6d90be94b0ada81815f
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.6-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34242951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff51b3124dfd274cb2861cd41dbf7598529d898d2d9ad764d08ed87d6dd6d20`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_SHA256=7f0c0fee0a302a4c3b6f62f9ed063813976200386b2299b36db52a6b67994674
# Wed, 11 Jan 2017 03:24:26 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:26 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:27 GMT
CMD ["sh"]
# Wed, 11 Jan 2017 03:24:29 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 11 Jan 2017 03:24:30 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 11 Jan 2017 03:24:31 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 11 Jan 2017 03:24:32 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 11 Jan 2017 03:24:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:33 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Jan 2017 03:24:33 GMT
EXPOSE 2375/tcp
# Wed, 11 Jan 2017 03:24:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:33 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453645374b4731f9b386af4256a9bf5987a6b4a46ac15129938c132d0edd8723`  
		Last Modified: Wed, 11 Jan 2017 03:30:19 GMT  
		Size: 28.9 MB (28945031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d486dc75fe765f5b88bf07f3477dd9ca7806952d376a9270051ac3058f20662`  
		Last Modified: Wed, 11 Jan 2017 03:30:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aa6b0fa72788dba6fa729a0a173ad4598aad3b3a45f38d4e480c5b40496492`  
		Last Modified: Wed, 11 Jan 2017 03:31:22 GMT  
		Size: 2.1 MB (2065044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5957f662dafb3f23c9d40f6068d8b9f8d34144c9a5a98453c03e975f953038c`  
		Last Modified: Wed, 11 Jan 2017 03:31:20 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a704ffce55db70019ba548394751e3bd7142f94a02f1b773dc782eac680f34`  
		Last Modified: Wed, 11 Jan 2017 03:31:20 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73e3dc6ef191d47432f5bbe8f63b8631e69e42603c55191d429880510c97939`  
		Last Modified: Wed, 11 Jan 2017 03:31:20 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:50484bbedab068e778d3356092f7a1a9efe96cffbed9a6d90be94b0ada81815f
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34242951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff51b3124dfd274cb2861cd41dbf7598529d898d2d9ad764d08ed87d6dd6d20`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_SHA256=7f0c0fee0a302a4c3b6f62f9ed063813976200386b2299b36db52a6b67994674
# Wed, 11 Jan 2017 03:24:26 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:26 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:27 GMT
CMD ["sh"]
# Wed, 11 Jan 2017 03:24:29 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 11 Jan 2017 03:24:30 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 11 Jan 2017 03:24:31 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 11 Jan 2017 03:24:32 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 11 Jan 2017 03:24:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:33 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Jan 2017 03:24:33 GMT
EXPOSE 2375/tcp
# Wed, 11 Jan 2017 03:24:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:33 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453645374b4731f9b386af4256a9bf5987a6b4a46ac15129938c132d0edd8723`  
		Last Modified: Wed, 11 Jan 2017 03:30:19 GMT  
		Size: 28.9 MB (28945031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d486dc75fe765f5b88bf07f3477dd9ca7806952d376a9270051ac3058f20662`  
		Last Modified: Wed, 11 Jan 2017 03:30:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aa6b0fa72788dba6fa729a0a173ad4598aad3b3a45f38d4e480c5b40496492`  
		Last Modified: Wed, 11 Jan 2017 03:31:22 GMT  
		Size: 2.1 MB (2065044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5957f662dafb3f23c9d40f6068d8b9f8d34144c9a5a98453c03e975f953038c`  
		Last Modified: Wed, 11 Jan 2017 03:31:20 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a704ffce55db70019ba548394751e3bd7142f94a02f1b773dc782eac680f34`  
		Last Modified: Wed, 11 Jan 2017 03:31:20 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73e3dc6ef191d47432f5bbe8f63b8631e69e42603c55191d429880510c97939`  
		Last Modified: Wed, 11 Jan 2017 03:31:20 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.6-experimental-git`

```console
$ docker pull docker@sha256:153537224a40b44ceb2acd219576f03807e01abe8f521f4b3ad7cf0e716a179c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.6-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41313314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e256cf8ba7370c9e84283f1273e32cf6dc95c8ce49dc4f9b48a89bd156905e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_SHA256=7f0c0fee0a302a4c3b6f62f9ed063813976200386b2299b36db52a6b67994674
# Wed, 11 Jan 2017 03:24:26 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:26 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:27 GMT
CMD ["sh"]
# Wed, 11 Jan 2017 03:24:36 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453645374b4731f9b386af4256a9bf5987a6b4a46ac15129938c132d0edd8723`  
		Last Modified: Wed, 11 Jan 2017 03:30:19 GMT  
		Size: 28.9 MB (28945031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d486dc75fe765f5b88bf07f3477dd9ca7806952d376a9270051ac3058f20662`  
		Last Modified: Wed, 11 Jan 2017 03:30:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7db2e4fd3cda88a02a49f8193999eda133e1b8b1b342846084a9d4f8fab7dce`  
		Last Modified: Wed, 11 Jan 2017 03:32:24 GMT  
		Size: 9.1 MB (9139030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:153537224a40b44ceb2acd219576f03807e01abe8f521f4b3ad7cf0e716a179c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41313314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e256cf8ba7370c9e84283f1273e32cf6dc95c8ce49dc4f9b48a89bd156905e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_VERSION=1.12.6
# Wed, 11 Jan 2017 03:24:21 GMT
ENV DOCKER_SHA256=7f0c0fee0a302a4c3b6f62f9ed063813976200386b2299b36db52a6b67994674
# Wed, 11 Jan 2017 03:24:26 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 11 Jan 2017 03:24:26 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 11 Jan 2017 03:24:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jan 2017 03:24:27 GMT
CMD ["sh"]
# Wed, 11 Jan 2017 03:24:36 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453645374b4731f9b386af4256a9bf5987a6b4a46ac15129938c132d0edd8723`  
		Last Modified: Wed, 11 Jan 2017 03:30:19 GMT  
		Size: 28.9 MB (28945031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d486dc75fe765f5b88bf07f3477dd9ca7806952d376a9270051ac3058f20662`  
		Last Modified: Wed, 11 Jan 2017 03:30:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7db2e4fd3cda88a02a49f8193999eda133e1b8b1b342846084a9d4f8fab7dce`  
		Last Modified: Wed, 11 Jan 2017 03:32:24 GMT  
		Size: 9.1 MB (9139030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
