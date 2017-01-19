<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.13.0`](#docker1130)
-	[`docker:1.13`](#docker113)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.13.0-dind`](#docker1130-dind)
-	[`docker:1.13-dind`](#docker113-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.13.0-git`](#docker1130-git)
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

## `docker:1.13.0`

```console
$ docker pull docker@sha256:df0eb42017e79f65f557e9b221f1dfef9bfc1e75c5cd4e386025bf8fb07baf33
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31763982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa3005db49154b54307b5f8c71ec78da529795f7a99e09cce1007372d438b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13`

```console
$ docker pull docker@sha256:df0eb42017e79f65f557e9b221f1dfef9bfc1e75c5cd4e386025bf8fb07baf33
```

-	Platforms:
	-	linux; amd64

### `docker:1.13` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31763982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa3005db49154b54307b5f8c71ec78da529795f7a99e09cce1007372d438b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:df0eb42017e79f65f557e9b221f1dfef9bfc1e75c5cd4e386025bf8fb07baf33
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31763982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa3005db49154b54307b5f8c71ec78da529795f7a99e09cce1007372d438b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:df0eb42017e79f65f557e9b221f1dfef9bfc1e75c5cd4e386025bf8fb07baf33
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31763982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa3005db49154b54307b5f8c71ec78da529795f7a99e09cce1007372d438b61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-dind`

```console
$ docker pull docker@sha256:ac39979800b91a9e61f921b9dcef5839c3165f2dec54f1ed5fe007a501513cd0
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33871355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6978320b242945706167851b69f66c799e248e117c0f7139c757c93de7ce1c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
CMD ["sh"]
# Wed, 18 Jan 2017 22:48:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 18 Jan 2017 22:48:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 18 Jan 2017 22:48:08 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 18 Jan 2017 22:48:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 18 Jan 2017 22:48:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:11 GMT
VOLUME [/var/lib/docker]
# Wed, 18 Jan 2017 22:48:11 GMT
EXPOSE 2375/tcp
# Wed, 18 Jan 2017 22:48:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:11 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0755a92ec82ee3097529300bb4100dd890a2e056195c9491a11c375c741848dd`  
		Last Modified: Wed, 18 Jan 2017 22:49:43 GMT  
		Size: 2.1 MB (2103772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3beb65a76c2e047c9fc68871c097cfc3c705af6bba8c2eaf02b0d8e3657ba30b`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793a601b0ac4a0d1b8576622ec0587c77230588e0ae5bb2b7660db28e29397b4`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf19abedf1ed2cdf346f4ccb3fd4b94a34407df535c78af265e26d758f16d20`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-dind`

```console
$ docker pull docker@sha256:ac39979800b91a9e61f921b9dcef5839c3165f2dec54f1ed5fe007a501513cd0
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33871355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6978320b242945706167851b69f66c799e248e117c0f7139c757c93de7ce1c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
CMD ["sh"]
# Wed, 18 Jan 2017 22:48:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 18 Jan 2017 22:48:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 18 Jan 2017 22:48:08 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 18 Jan 2017 22:48:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 18 Jan 2017 22:48:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:11 GMT
VOLUME [/var/lib/docker]
# Wed, 18 Jan 2017 22:48:11 GMT
EXPOSE 2375/tcp
# Wed, 18 Jan 2017 22:48:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:11 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0755a92ec82ee3097529300bb4100dd890a2e056195c9491a11c375c741848dd`  
		Last Modified: Wed, 18 Jan 2017 22:49:43 GMT  
		Size: 2.1 MB (2103772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3beb65a76c2e047c9fc68871c097cfc3c705af6bba8c2eaf02b0d8e3657ba30b`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793a601b0ac4a0d1b8576622ec0587c77230588e0ae5bb2b7660db28e29397b4`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf19abedf1ed2cdf346f4ccb3fd4b94a34407df535c78af265e26d758f16d20`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:ac39979800b91a9e61f921b9dcef5839c3165f2dec54f1ed5fe007a501513cd0
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33871355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6978320b242945706167851b69f66c799e248e117c0f7139c757c93de7ce1c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
CMD ["sh"]
# Wed, 18 Jan 2017 22:48:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 18 Jan 2017 22:48:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 18 Jan 2017 22:48:08 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 18 Jan 2017 22:48:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 18 Jan 2017 22:48:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:11 GMT
VOLUME [/var/lib/docker]
# Wed, 18 Jan 2017 22:48:11 GMT
EXPOSE 2375/tcp
# Wed, 18 Jan 2017 22:48:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:11 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0755a92ec82ee3097529300bb4100dd890a2e056195c9491a11c375c741848dd`  
		Last Modified: Wed, 18 Jan 2017 22:49:43 GMT  
		Size: 2.1 MB (2103772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3beb65a76c2e047c9fc68871c097cfc3c705af6bba8c2eaf02b0d8e3657ba30b`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793a601b0ac4a0d1b8576622ec0587c77230588e0ae5bb2b7660db28e29397b4`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf19abedf1ed2cdf346f4ccb3fd4b94a34407df535c78af265e26d758f16d20`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:ac39979800b91a9e61f921b9dcef5839c3165f2dec54f1ed5fe007a501513cd0
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33871355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6978320b242945706167851b69f66c799e248e117c0f7139c757c93de7ce1c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
CMD ["sh"]
# Wed, 18 Jan 2017 22:48:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 18 Jan 2017 22:48:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 18 Jan 2017 22:48:08 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 18 Jan 2017 22:48:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 18 Jan 2017 22:48:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:11 GMT
VOLUME [/var/lib/docker]
# Wed, 18 Jan 2017 22:48:11 GMT
EXPOSE 2375/tcp
# Wed, 18 Jan 2017 22:48:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:11 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0755a92ec82ee3097529300bb4100dd890a2e056195c9491a11c375c741848dd`  
		Last Modified: Wed, 18 Jan 2017 22:49:43 GMT  
		Size: 2.1 MB (2103772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3beb65a76c2e047c9fc68871c097cfc3c705af6bba8c2eaf02b0d8e3657ba30b`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793a601b0ac4a0d1b8576622ec0587c77230588e0ae5bb2b7660db28e29397b4`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf19abedf1ed2cdf346f4ccb3fd4b94a34407df535c78af265e26d758f16d20`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-git`

```console
$ docker pull docker@sha256:7f1958690745fb5dec6b38309a73c3367f030753ef07d149bdef07b95dae797a
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42110122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d94ba7a3929fad5b4db424cf0abc31a43d757a42f2a19363cc51ebfa03a90e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
CMD ["sh"]
# Wed, 18 Jan 2017 22:48:14 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4078a6f7d418f191b2587beb10e27ae36b2fd27fa5e2480faf9615f9366346`  
		Last Modified: Wed, 18 Jan 2017 22:50:45 GMT  
		Size: 10.3 MB (10346140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-git`

```console
$ docker pull docker@sha256:7f1958690745fb5dec6b38309a73c3367f030753ef07d149bdef07b95dae797a
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42110122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d94ba7a3929fad5b4db424cf0abc31a43d757a42f2a19363cc51ebfa03a90e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
CMD ["sh"]
# Wed, 18 Jan 2017 22:48:14 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4078a6f7d418f191b2587beb10e27ae36b2fd27fa5e2480faf9615f9366346`  
		Last Modified: Wed, 18 Jan 2017 22:50:45 GMT  
		Size: 10.3 MB (10346140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:7f1958690745fb5dec6b38309a73c3367f030753ef07d149bdef07b95dae797a
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42110122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d94ba7a3929fad5b4db424cf0abc31a43d757a42f2a19363cc51ebfa03a90e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
CMD ["sh"]
# Wed, 18 Jan 2017 22:48:14 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4078a6f7d418f191b2587beb10e27ae36b2fd27fa5e2480faf9615f9366346`  
		Last Modified: Wed, 18 Jan 2017 22:50:45 GMT  
		Size: 10.3 MB (10346140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:7f1958690745fb5dec6b38309a73c3367f030753ef07d149bdef07b95dae797a
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42110122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d94ba7a3929fad5b4db424cf0abc31a43d757a42f2a19363cc51ebfa03a90e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
CMD ["sh"]
# Wed, 18 Jan 2017 22:48:14 GMT
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
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4078a6f7d418f191b2587beb10e27ae36b2fd27fa5e2480faf9615f9366346`  
		Last Modified: Wed, 18 Jan 2017 22:50:45 GMT  
		Size: 10.3 MB (10346140 bytes)  
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
