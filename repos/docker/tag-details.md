<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.13.0-rc7`](#docker1130-rc7)
-	[`docker:1.13-rc`](#docker113-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:1.13.0-rc7-dind`](#docker1130-rc7-dind)
-	[`docker:1.13-rc-dind`](#docker113-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:1.13.0-rc7-git`](#docker1130-rc7-git)
-	[`docker:1.13-rc-git`](#docker113-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:1.12.6`](#docker1126)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.6-dind`](#docker1126-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.6-git`](#docker1126-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.6-experimental`](#docker1126-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1-experimental`](#docker1-experimental)
-	[`docker:experimental`](#dockerexperimental)
-	[`docker:1.12.6-experimental-dind`](#docker1126-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1-experimental-dind`](#docker1-experimental-dind)
-	[`docker:experimental-dind`](#dockerexperimental-dind)
-	[`docker:1.12.6-experimental-git`](#docker1126-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)
-	[`docker:1-experimental-git`](#docker1-experimental-git)
-	[`docker:experimental-git`](#dockerexperimental-git)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.13.0-rc7`

```console
$ docker pull docker@sha256:9d9eb352ce83b2a11599d661212c281ca3c8db6b9e2cfe498d086110dee12a6d
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31765235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e76b7b26863d2d1b8d6ad4e1a218100435db5fab5b4514afbc0c7314f73eabf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_VERSION=1.13.0-rc7
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_SHA256=beff8e0c5a235c0b9f374e4975401c793ceeca19332ffec965edb557ef7bfbc1
# Mon, 16 Jan 2017 20:33:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 16 Jan 2017 20:33:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:39 GMT
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
	-	`sha256:7963daa930c743dcb20a16b5342ff24732d4e907073433290e7e4880447fc293`  
		Last Modified: Mon, 16 Jan 2017 20:34:19 GMT  
		Size: 27.7 MB (27695764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3061553cad054aa8eb2de8be1e428e1862653033e53d892da91088a9c50690b`  
		Last Modified: Mon, 16 Jan 2017 20:34:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc`

```console
$ docker pull docker@sha256:9d9eb352ce83b2a11599d661212c281ca3c8db6b9e2cfe498d086110dee12a6d
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31765235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e76b7b26863d2d1b8d6ad4e1a218100435db5fab5b4514afbc0c7314f73eabf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_VERSION=1.13.0-rc7
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_SHA256=beff8e0c5a235c0b9f374e4975401c793ceeca19332ffec965edb557ef7bfbc1
# Mon, 16 Jan 2017 20:33:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 16 Jan 2017 20:33:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:39 GMT
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
	-	`sha256:7963daa930c743dcb20a16b5342ff24732d4e907073433290e7e4880447fc293`  
		Last Modified: Mon, 16 Jan 2017 20:34:19 GMT  
		Size: 27.7 MB (27695764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3061553cad054aa8eb2de8be1e428e1862653033e53d892da91088a9c50690b`  
		Last Modified: Mon, 16 Jan 2017 20:34:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:9d9eb352ce83b2a11599d661212c281ca3c8db6b9e2cfe498d086110dee12a6d
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31765235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e76b7b26863d2d1b8d6ad4e1a218100435db5fab5b4514afbc0c7314f73eabf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_VERSION=1.13.0-rc7
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_SHA256=beff8e0c5a235c0b9f374e4975401c793ceeca19332ffec965edb557ef7bfbc1
# Mon, 16 Jan 2017 20:33:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 16 Jan 2017 20:33:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:39 GMT
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
	-	`sha256:7963daa930c743dcb20a16b5342ff24732d4e907073433290e7e4880447fc293`  
		Last Modified: Mon, 16 Jan 2017 20:34:19 GMT  
		Size: 27.7 MB (27695764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3061553cad054aa8eb2de8be1e428e1862653033e53d892da91088a9c50690b`  
		Last Modified: Mon, 16 Jan 2017 20:34:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc7-dind`

```console
$ docker pull docker@sha256:e6ad3b5c9da6140f35eed2fbe529f87407eee6c091367817c1b3ae69b70c3596
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc7-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33872610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e0aef2d0188e4c0e0c48956c9f56233d700961867ad48e3ddd5d451de583feb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_VERSION=1.13.0-rc7
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_SHA256=beff8e0c5a235c0b9f374e4975401c793ceeca19332ffec965edb557ef7bfbc1
# Mon, 16 Jan 2017 20:33:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 16 Jan 2017 20:33:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:39 GMT
CMD ["sh"]
# Mon, 16 Jan 2017 20:33:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 16 Jan 2017 20:33:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 16 Jan 2017 20:33:43 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 16 Jan 2017 20:33:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 16 Jan 2017 20:33:45 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:46 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Jan 2017 20:33:46 GMT
EXPOSE 2375/tcp
# Mon, 16 Jan 2017 20:33:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:47 GMT
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
	-	`sha256:7963daa930c743dcb20a16b5342ff24732d4e907073433290e7e4880447fc293`  
		Last Modified: Mon, 16 Jan 2017 20:34:19 GMT  
		Size: 27.7 MB (27695764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3061553cad054aa8eb2de8be1e428e1862653033e53d892da91088a9c50690b`  
		Last Modified: Mon, 16 Jan 2017 20:34:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8079cda4c3bf614db22a846f08b427818a98d37845cf95a21210b60d987584c2`  
		Last Modified: Mon, 16 Jan 2017 20:35:20 GMT  
		Size: 2.1 MB (2103771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dbf60ee6de1243897c9246679c05cd905cb730954d71c7ac83de813cc5065b`  
		Last Modified: Mon, 16 Jan 2017 20:35:19 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1683dd9d30abedcad3f403b49631936e7e8906ce347e9801bf7b4e30b2c12ae2`  
		Last Modified: Mon, 16 Jan 2017 20:35:19 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2600a9446bf432ffb8204d0fbc3f69d27768f86bcb9734f9b7fad52923c24cc`  
		Last Modified: Mon, 16 Jan 2017 20:35:19 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-dind`

```console
$ docker pull docker@sha256:e6ad3b5c9da6140f35eed2fbe529f87407eee6c091367817c1b3ae69b70c3596
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33872610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e0aef2d0188e4c0e0c48956c9f56233d700961867ad48e3ddd5d451de583feb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_VERSION=1.13.0-rc7
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_SHA256=beff8e0c5a235c0b9f374e4975401c793ceeca19332ffec965edb557ef7bfbc1
# Mon, 16 Jan 2017 20:33:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 16 Jan 2017 20:33:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:39 GMT
CMD ["sh"]
# Mon, 16 Jan 2017 20:33:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 16 Jan 2017 20:33:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 16 Jan 2017 20:33:43 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 16 Jan 2017 20:33:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 16 Jan 2017 20:33:45 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:46 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Jan 2017 20:33:46 GMT
EXPOSE 2375/tcp
# Mon, 16 Jan 2017 20:33:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:47 GMT
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
	-	`sha256:7963daa930c743dcb20a16b5342ff24732d4e907073433290e7e4880447fc293`  
		Last Modified: Mon, 16 Jan 2017 20:34:19 GMT  
		Size: 27.7 MB (27695764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3061553cad054aa8eb2de8be1e428e1862653033e53d892da91088a9c50690b`  
		Last Modified: Mon, 16 Jan 2017 20:34:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8079cda4c3bf614db22a846f08b427818a98d37845cf95a21210b60d987584c2`  
		Last Modified: Mon, 16 Jan 2017 20:35:20 GMT  
		Size: 2.1 MB (2103771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dbf60ee6de1243897c9246679c05cd905cb730954d71c7ac83de813cc5065b`  
		Last Modified: Mon, 16 Jan 2017 20:35:19 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1683dd9d30abedcad3f403b49631936e7e8906ce347e9801bf7b4e30b2c12ae2`  
		Last Modified: Mon, 16 Jan 2017 20:35:19 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2600a9446bf432ffb8204d0fbc3f69d27768f86bcb9734f9b7fad52923c24cc`  
		Last Modified: Mon, 16 Jan 2017 20:35:19 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:e6ad3b5c9da6140f35eed2fbe529f87407eee6c091367817c1b3ae69b70c3596
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33872610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e0aef2d0188e4c0e0c48956c9f56233d700961867ad48e3ddd5d451de583feb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_VERSION=1.13.0-rc7
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_SHA256=beff8e0c5a235c0b9f374e4975401c793ceeca19332ffec965edb557ef7bfbc1
# Mon, 16 Jan 2017 20:33:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 16 Jan 2017 20:33:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:39 GMT
CMD ["sh"]
# Mon, 16 Jan 2017 20:33:42 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 16 Jan 2017 20:33:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 16 Jan 2017 20:33:43 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 16 Jan 2017 20:33:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 16 Jan 2017 20:33:45 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:46 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Jan 2017 20:33:46 GMT
EXPOSE 2375/tcp
# Mon, 16 Jan 2017 20:33:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:47 GMT
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
	-	`sha256:7963daa930c743dcb20a16b5342ff24732d4e907073433290e7e4880447fc293`  
		Last Modified: Mon, 16 Jan 2017 20:34:19 GMT  
		Size: 27.7 MB (27695764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3061553cad054aa8eb2de8be1e428e1862653033e53d892da91088a9c50690b`  
		Last Modified: Mon, 16 Jan 2017 20:34:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8079cda4c3bf614db22a846f08b427818a98d37845cf95a21210b60d987584c2`  
		Last Modified: Mon, 16 Jan 2017 20:35:20 GMT  
		Size: 2.1 MB (2103771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dbf60ee6de1243897c9246679c05cd905cb730954d71c7ac83de813cc5065b`  
		Last Modified: Mon, 16 Jan 2017 20:35:19 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1683dd9d30abedcad3f403b49631936e7e8906ce347e9801bf7b4e30b2c12ae2`  
		Last Modified: Mon, 16 Jan 2017 20:35:19 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2600a9446bf432ffb8204d0fbc3f69d27768f86bcb9734f9b7fad52923c24cc`  
		Last Modified: Mon, 16 Jan 2017 20:35:19 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc7-git`

```console
$ docker pull docker@sha256:e5b378f0dcbab8a4a724f0587ef013e5a5d4ecb9c51eca2d566a37db0ce17eee
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc7-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42111376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02df796309acddd017bb2377348c7a7e838b131580a5805fc7f5dc597c3694d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_VERSION=1.13.0-rc7
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_SHA256=beff8e0c5a235c0b9f374e4975401c793ceeca19332ffec965edb557ef7bfbc1
# Mon, 16 Jan 2017 20:33:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 16 Jan 2017 20:33:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:39 GMT
CMD ["sh"]
# Mon, 16 Jan 2017 20:33:49 GMT
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
	-	`sha256:7963daa930c743dcb20a16b5342ff24732d4e907073433290e7e4880447fc293`  
		Last Modified: Mon, 16 Jan 2017 20:34:19 GMT  
		Size: 27.7 MB (27695764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3061553cad054aa8eb2de8be1e428e1862653033e53d892da91088a9c50690b`  
		Last Modified: Mon, 16 Jan 2017 20:34:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27d72251d922fa5c961b504b763a1618e12d2e0acec1cdafb96acfb464fd897`  
		Last Modified: Mon, 16 Jan 2017 20:36:28 GMT  
		Size: 10.3 MB (10346141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-git`

```console
$ docker pull docker@sha256:e5b378f0dcbab8a4a724f0587ef013e5a5d4ecb9c51eca2d566a37db0ce17eee
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42111376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02df796309acddd017bb2377348c7a7e838b131580a5805fc7f5dc597c3694d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_VERSION=1.13.0-rc7
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_SHA256=beff8e0c5a235c0b9f374e4975401c793ceeca19332ffec965edb557ef7bfbc1
# Mon, 16 Jan 2017 20:33:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 16 Jan 2017 20:33:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:39 GMT
CMD ["sh"]
# Mon, 16 Jan 2017 20:33:49 GMT
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
	-	`sha256:7963daa930c743dcb20a16b5342ff24732d4e907073433290e7e4880447fc293`  
		Last Modified: Mon, 16 Jan 2017 20:34:19 GMT  
		Size: 27.7 MB (27695764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3061553cad054aa8eb2de8be1e428e1862653033e53d892da91088a9c50690b`  
		Last Modified: Mon, 16 Jan 2017 20:34:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27d72251d922fa5c961b504b763a1618e12d2e0acec1cdafb96acfb464fd897`  
		Last Modified: Mon, 16 Jan 2017 20:36:28 GMT  
		Size: 10.3 MB (10346141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:e5b378f0dcbab8a4a724f0587ef013e5a5d4ecb9c51eca2d566a37db0ce17eee
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42111376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02df796309acddd017bb2377348c7a7e838b131580a5805fc7f5dc597c3694d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_VERSION=1.13.0-rc7
# Mon, 16 Jan 2017 20:33:34 GMT
ENV DOCKER_SHA256=beff8e0c5a235c0b9f374e4975401c793ceeca19332ffec965edb557ef7bfbc1
# Mon, 16 Jan 2017 20:33:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 16 Jan 2017 20:33:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 16 Jan 2017 20:33:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Jan 2017 20:33:39 GMT
CMD ["sh"]
# Mon, 16 Jan 2017 20:33:49 GMT
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
	-	`sha256:7963daa930c743dcb20a16b5342ff24732d4e907073433290e7e4880447fc293`  
		Last Modified: Mon, 16 Jan 2017 20:34:19 GMT  
		Size: 27.7 MB (27695764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3061553cad054aa8eb2de8be1e428e1862653033e53d892da91088a9c50690b`  
		Last Modified: Mon, 16 Jan 2017 20:34:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27d72251d922fa5c961b504b763a1618e12d2e0acec1cdafb96acfb464fd897`  
		Last Modified: Mon, 16 Jan 2017 20:36:28 GMT  
		Size: 10.3 MB (10346141 bytes)  
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

## `docker:1`

```console
$ docker pull docker@sha256:8b17e2c92bedbfe6f8afab3ae2525ac3ff61748698052225b0e29333b4d53fc0
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

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

## `docker:latest`

```console
$ docker pull docker@sha256:8b17e2c92bedbfe6f8afab3ae2525ac3ff61748698052225b0e29333b4d53fc0
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

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

## `docker:1-dind`

```console
$ docker pull docker@sha256:852aa209e22c95de9c30dad23343ccb32f93556f21dc9d9bbb0b4c348e161c95
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

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

## `docker:dind`

```console
$ docker pull docker@sha256:852aa209e22c95de9c30dad23343ccb32f93556f21dc9d9bbb0b4c348e161c95
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

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

## `docker:1-git`

```console
$ docker pull docker@sha256:86291c47b5d941c81411049dcc576dfeb2496ff233ffb7c815a9ad2dcef242f2
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

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

## `docker:git`

```console
$ docker pull docker@sha256:86291c47b5d941c81411049dcc576dfeb2496ff233ffb7c815a9ad2dcef242f2
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

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

## `docker:1-experimental`

```console
$ docker pull docker@sha256:c46b4a369fcbf1476d0a415db19cb78cb475a77206bd09ddb9c488873541aee6
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

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

## `docker:experimental`

```console
$ docker pull docker@sha256:c46b4a369fcbf1476d0a415db19cb78cb475a77206bd09ddb9c488873541aee6
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

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

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:50484bbedab068e778d3356092f7a1a9efe96cffbed9a6d90be94b0ada81815f
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

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

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:50484bbedab068e778d3356092f7a1a9efe96cffbed9a6d90be94b0ada81815f
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

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

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:153537224a40b44ceb2acd219576f03807e01abe8f521f4b3ad7cf0e716a179c
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

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

## `docker:experimental-git`

```console
$ docker pull docker@sha256:153537224a40b44ceb2acd219576f03807e01abe8f521f4b3ad7cf0e716a179c
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

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

## `docker:1.11.2`

```console
$ docker pull docker@sha256:07b15519113cc4ceec0dc9b2b12753f555095f80d19ad1898c5362f589fb7dac
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759b83b2afbbda3a88bf27a8e2d573bcce4477e62b69ca6f8ea544ba4f3d6070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
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
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:07b15519113cc4ceec0dc9b2b12753f555095f80d19ad1898c5362f589fb7dac
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759b83b2afbbda3a88bf27a8e2d573bcce4477e62b69ca6f8ea544ba4f3d6070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
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
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:58e1b5ca2dcae383ac27ab60785ac320395fd7e96d866ad73047443d09e402d1
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25747666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caca9f6f5649beb60b74d79bf145fe73c0fdaeb71eae414ac9edb18b75e66222`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:36:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:36:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:36:36 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:36:37 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:37 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:36:38 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:36:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:39 GMT
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
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af551d82ba6fe116d0de37975c168ed3902e34fc9c05ba2de8e2b359e5b635cf`  
		Last Modified: Tue, 27 Dec 2016 18:38:40 GMT  
		Size: 2.1 MB (2065067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae7dd49e110648b80fc44c693c97fe45a97b5d23183b7866079d5fdf7ef77ba`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a628b9f0fb80cb0ec7191ad1b158d70396544f2011a41537d1808894492496`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fdcbf2640cd602233a1042197faae85b8ecb514d4817f24612402fea8f9bdd`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:58e1b5ca2dcae383ac27ab60785ac320395fd7e96d866ad73047443d09e402d1
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25747666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caca9f6f5649beb60b74d79bf145fe73c0fdaeb71eae414ac9edb18b75e66222`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:36:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:36:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:36:36 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:36:37 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:37 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:36:38 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:36:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:39 GMT
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
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af551d82ba6fe116d0de37975c168ed3902e34fc9c05ba2de8e2b359e5b635cf`  
		Last Modified: Tue, 27 Dec 2016 18:38:40 GMT  
		Size: 2.1 MB (2065067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae7dd49e110648b80fc44c693c97fe45a97b5d23183b7866079d5fdf7ef77ba`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a628b9f0fb80cb0ec7191ad1b158d70396544f2011a41537d1808894492496`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fdcbf2640cd602233a1042197faae85b8ecb514d4817f24612402fea8f9bdd`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:1cffa8a2110f1048a45da85defb786325030f79da154884afc0740e9452d65ed
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32817416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c0d9ecc37ab2e511ae6613d2af22c725f99a782a6495709dfca4ad57b90399`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:41 GMT
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
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54bf1b0bed7b02701800901bb07ba0f3f63e23d48a3ac6ef378d5e9b794d250`  
		Last Modified: Tue, 27 Dec 2016 18:39:18 GMT  
		Size: 9.1 MB (9138453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:1cffa8a2110f1048a45da85defb786325030f79da154884afc0740e9452d65ed
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32817416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c0d9ecc37ab2e511ae6613d2af22c725f99a782a6495709dfca4ad57b90399`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:41 GMT
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
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54bf1b0bed7b02701800901bb07ba0f3f63e23d48a3ac6ef378d5e9b794d250`  
		Last Modified: Tue, 27 Dec 2016 18:39:18 GMT  
		Size: 9.1 MB (9138453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
