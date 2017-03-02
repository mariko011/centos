<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.03.0-ce`](#docker17030-ce)
-	[`docker:17.03.0`](#docker17030)
-	[`docker:17.03`](#docker1703)
-	[`docker:17`](#docker17)
-	[`docker:latest`](#dockerlatest)
-	[`docker:17.03.0-ce-dind`](#docker17030-ce-dind)
-	[`docker:17.03.0-dind`](#docker17030-dind)
-	[`docker:17.03-dind`](#docker1703-dind)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:17.03.0-ce-git`](#docker17030-ce-git)
-	[`docker:17.03.0-git`](#docker17030-git)
-	[`docker:17.03-git`](#docker1703-git)
-	[`docker:17-git`](#docker17-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.13.1`](#docker1131)
-	[`docker:1.13`](#docker113)
-	[`docker:1.13.1-dind`](#docker1131-dind)
-	[`docker:1.13-dind`](#docker113-dind)
-	[`docker:1.13.1-git`](#docker1131-git)
-	[`docker:1.13-git`](#docker113-git)

## `docker:17.03.0-ce`

```console
$ docker pull docker@sha256:a74b4a89bef5addc9aea48d9f80b8764192168619d6c9cabf6b398c0a31f8439
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-ce` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31810643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2113a44e88fd2f4cf5c103b6541ff4bd36155096b216358e38e605a4ade7f04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0`

```console
$ docker pull docker@sha256:a74b4a89bef5addc9aea48d9f80b8764192168619d6c9cabf6b398c0a31f8439
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31810643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2113a44e88fd2f4cf5c103b6541ff4bd36155096b216358e38e605a4ade7f04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:a74b4a89bef5addc9aea48d9f80b8764192168619d6c9cabf6b398c0a31f8439
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31810643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2113a44e88fd2f4cf5c103b6541ff4bd36155096b216358e38e605a4ade7f04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:a74b4a89bef5addc9aea48d9f80b8764192168619d6c9cabf6b398c0a31f8439
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31810643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2113a44e88fd2f4cf5c103b6541ff4bd36155096b216358e38e605a4ade7f04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:a74b4a89bef5addc9aea48d9f80b8764192168619d6c9cabf6b398c0a31f8439
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31810643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2113a44e88fd2f4cf5c103b6541ff4bd36155096b216358e38e605a4ade7f04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-ce-dind`

```console
$ docker pull docker@sha256:ab8aecfabdfc67b4e49f2f9b02c9c68e722fb6a86d9d7fb06bb5ab4b163d5566
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-ce-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33918027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d054ff5213dd0e240292443581b59680e5e6483a7ad29cadd849dd2bccde348`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:06 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 02 Mar 2017 21:12:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 02 Mar 2017 21:12:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 02 Mar 2017 21:12:09 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 02 Mar 2017 21:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:09 GMT
VOLUME [/var/lib/docker]
# Thu, 02 Mar 2017 21:12:10 GMT
EXPOSE 2375/tcp
# Thu, 02 Mar 2017 21:12:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:10 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a17fc53d4b9d1540011448c164681892a0cd535bc27b652db4da834bcdf3920`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b359d52284119e4533cd2f1d7937a75eae18b9b38a030aedc449a1780c53a`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13493db93bfa64331d67c3cafa1787cc6bb0473d6ad6c1b7467040458cccf6ae`  
		Last Modified: Thu, 02 Mar 2017 21:14:14 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b4f7dd3568e7ffd70ce5f54f89f0ce865dc6902c05f6db258a4600ed336818`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-dind`

```console
$ docker pull docker@sha256:ab8aecfabdfc67b4e49f2f9b02c9c68e722fb6a86d9d7fb06bb5ab4b163d5566
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33918027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d054ff5213dd0e240292443581b59680e5e6483a7ad29cadd849dd2bccde348`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:06 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 02 Mar 2017 21:12:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 02 Mar 2017 21:12:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 02 Mar 2017 21:12:09 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 02 Mar 2017 21:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:09 GMT
VOLUME [/var/lib/docker]
# Thu, 02 Mar 2017 21:12:10 GMT
EXPOSE 2375/tcp
# Thu, 02 Mar 2017 21:12:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:10 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a17fc53d4b9d1540011448c164681892a0cd535bc27b652db4da834bcdf3920`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b359d52284119e4533cd2f1d7937a75eae18b9b38a030aedc449a1780c53a`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13493db93bfa64331d67c3cafa1787cc6bb0473d6ad6c1b7467040458cccf6ae`  
		Last Modified: Thu, 02 Mar 2017 21:14:14 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b4f7dd3568e7ffd70ce5f54f89f0ce865dc6902c05f6db258a4600ed336818`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:ab8aecfabdfc67b4e49f2f9b02c9c68e722fb6a86d9d7fb06bb5ab4b163d5566
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33918027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d054ff5213dd0e240292443581b59680e5e6483a7ad29cadd849dd2bccde348`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:06 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 02 Mar 2017 21:12:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 02 Mar 2017 21:12:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 02 Mar 2017 21:12:09 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 02 Mar 2017 21:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:09 GMT
VOLUME [/var/lib/docker]
# Thu, 02 Mar 2017 21:12:10 GMT
EXPOSE 2375/tcp
# Thu, 02 Mar 2017 21:12:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:10 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a17fc53d4b9d1540011448c164681892a0cd535bc27b652db4da834bcdf3920`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b359d52284119e4533cd2f1d7937a75eae18b9b38a030aedc449a1780c53a`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13493db93bfa64331d67c3cafa1787cc6bb0473d6ad6c1b7467040458cccf6ae`  
		Last Modified: Thu, 02 Mar 2017 21:14:14 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b4f7dd3568e7ffd70ce5f54f89f0ce865dc6902c05f6db258a4600ed336818`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:ab8aecfabdfc67b4e49f2f9b02c9c68e722fb6a86d9d7fb06bb5ab4b163d5566
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33918027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d054ff5213dd0e240292443581b59680e5e6483a7ad29cadd849dd2bccde348`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:06 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 02 Mar 2017 21:12:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 02 Mar 2017 21:12:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 02 Mar 2017 21:12:09 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 02 Mar 2017 21:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:09 GMT
VOLUME [/var/lib/docker]
# Thu, 02 Mar 2017 21:12:10 GMT
EXPOSE 2375/tcp
# Thu, 02 Mar 2017 21:12:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:10 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a17fc53d4b9d1540011448c164681892a0cd535bc27b652db4da834bcdf3920`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b359d52284119e4533cd2f1d7937a75eae18b9b38a030aedc449a1780c53a`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13493db93bfa64331d67c3cafa1787cc6bb0473d6ad6c1b7467040458cccf6ae`  
		Last Modified: Thu, 02 Mar 2017 21:14:14 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b4f7dd3568e7ffd70ce5f54f89f0ce865dc6902c05f6db258a4600ed336818`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:ab8aecfabdfc67b4e49f2f9b02c9c68e722fb6a86d9d7fb06bb5ab4b163d5566
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33918027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d054ff5213dd0e240292443581b59680e5e6483a7ad29cadd849dd2bccde348`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:06 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 02 Mar 2017 21:12:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 02 Mar 2017 21:12:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 02 Mar 2017 21:12:09 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 02 Mar 2017 21:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:09 GMT
VOLUME [/var/lib/docker]
# Thu, 02 Mar 2017 21:12:10 GMT
EXPOSE 2375/tcp
# Thu, 02 Mar 2017 21:12:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:10 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a17fc53d4b9d1540011448c164681892a0cd535bc27b652db4da834bcdf3920`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b359d52284119e4533cd2f1d7937a75eae18b9b38a030aedc449a1780c53a`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13493db93bfa64331d67c3cafa1787cc6bb0473d6ad6c1b7467040458cccf6ae`  
		Last Modified: Thu, 02 Mar 2017 21:14:14 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b4f7dd3568e7ffd70ce5f54f89f0ce865dc6902c05f6db258a4600ed336818`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-ce-git`

```console
$ docker pull docker@sha256:a77208a29e5f9e751bae0a4344d415e383c2ba13fe6f81854d5d7c130075cd59
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-ce-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42183174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746ab2a5c7afcf1f4305837a7e6a47a26726ba2ceb00f0e3b53187eea5bff8a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:13 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7479b99a47af34997cb3470cd4f140a48a47aa4791245b3743b5910718af3`  
		Last Modified: Thu, 02 Mar 2017 21:15:48 GMT  
		Size: 10.4 MB (10372531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.0-git`

```console
$ docker pull docker@sha256:a77208a29e5f9e751bae0a4344d415e383c2ba13fe6f81854d5d7c130075cd59
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.0-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42183174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746ab2a5c7afcf1f4305837a7e6a47a26726ba2ceb00f0e3b53187eea5bff8a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:13 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7479b99a47af34997cb3470cd4f140a48a47aa4791245b3743b5910718af3`  
		Last Modified: Thu, 02 Mar 2017 21:15:48 GMT  
		Size: 10.4 MB (10372531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:a77208a29e5f9e751bae0a4344d415e383c2ba13fe6f81854d5d7c130075cd59
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42183174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746ab2a5c7afcf1f4305837a7e6a47a26726ba2ceb00f0e3b53187eea5bff8a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:13 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7479b99a47af34997cb3470cd4f140a48a47aa4791245b3743b5910718af3`  
		Last Modified: Thu, 02 Mar 2017 21:15:48 GMT  
		Size: 10.4 MB (10372531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:a77208a29e5f9e751bae0a4344d415e383c2ba13fe6f81854d5d7c130075cd59
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42183174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746ab2a5c7afcf1f4305837a7e6a47a26726ba2ceb00f0e3b53187eea5bff8a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:13 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7479b99a47af34997cb3470cd4f140a48a47aa4791245b3743b5910718af3`  
		Last Modified: Thu, 02 Mar 2017 21:15:48 GMT  
		Size: 10.4 MB (10372531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:a77208a29e5f9e751bae0a4344d415e383c2ba13fe6f81854d5d7c130075cd59
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42183174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746ab2a5c7afcf1f4305837a7e6a47a26726ba2ceb00f0e3b53187eea5bff8a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:13 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7479b99a47af34997cb3470cd4f140a48a47aa4791245b3743b5910718af3`  
		Last Modified: Thu, 02 Mar 2017 21:15:48 GMT  
		Size: 10.4 MB (10372531 bytes)  
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
