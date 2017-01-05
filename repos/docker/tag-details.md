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
$ docker pull docker@sha256:18bc3636943dbca200953c90f9f6cb63a9cb64b1c0abea2dacb608eb7f5a6648
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31646934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae02b20ed139c0e35930a48dab4c2cad09e05d8679c68b2ac67cca9204f9c91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc`

```console
$ docker pull docker@sha256:18bc3636943dbca200953c90f9f6cb63a9cb64b1c0abea2dacb608eb7f5a6648
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31646934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae02b20ed139c0e35930a48dab4c2cad09e05d8679c68b2ac67cca9204f9c91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:18bc3636943dbca200953c90f9f6cb63a9cb64b1c0abea2dacb608eb7f5a6648
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31646934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae02b20ed139c0e35930a48dab4c2cad09e05d8679c68b2ac67cca9204f9c91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc4-dind`

```console
$ docker pull docker@sha256:8c0045115bd17d3ddb6fb29b2b3f41033f9338ce7ff3fce30082fe85f95ee6ba
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc4-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33754326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07853fc00510d59a1382ef622d3bb018bab7254345d51e03c49b0ebdcb0623cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:20 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:22 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:23 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:23 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:23 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb458b2af3aa098ffb3cd0dc26374fb1f4aa3bcb32049fe0850513cda1b1bb5f`  
		Last Modified: Wed, 04 Jan 2017 23:29:09 GMT  
		Size: 2.1 MB (2103790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29e901c1fec0141069c7de252d6a3290a94328236620532bcd677d5cbcba3c2`  
		Last Modified: Wed, 04 Jan 2017 23:29:10 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abc9b8d1c1936f480ddbb232ae366b5c46b09beebeec331acacec1d4b0105a8`  
		Last Modified: Wed, 04 Jan 2017 23:29:08 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a7b4eff3bf1d334e0cfc499b9116945e7cb24b244fa18188ec4b573d2243ab`  
		Last Modified: Wed, 04 Jan 2017 23:29:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-dind`

```console
$ docker pull docker@sha256:8c0045115bd17d3ddb6fb29b2b3f41033f9338ce7ff3fce30082fe85f95ee6ba
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33754326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07853fc00510d59a1382ef622d3bb018bab7254345d51e03c49b0ebdcb0623cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:20 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:22 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:23 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:23 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:23 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb458b2af3aa098ffb3cd0dc26374fb1f4aa3bcb32049fe0850513cda1b1bb5f`  
		Last Modified: Wed, 04 Jan 2017 23:29:09 GMT  
		Size: 2.1 MB (2103790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29e901c1fec0141069c7de252d6a3290a94328236620532bcd677d5cbcba3c2`  
		Last Modified: Wed, 04 Jan 2017 23:29:10 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abc9b8d1c1936f480ddbb232ae366b5c46b09beebeec331acacec1d4b0105a8`  
		Last Modified: Wed, 04 Jan 2017 23:29:08 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a7b4eff3bf1d334e0cfc499b9116945e7cb24b244fa18188ec4b573d2243ab`  
		Last Modified: Wed, 04 Jan 2017 23:29:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:8c0045115bd17d3ddb6fb29b2b3f41033f9338ce7ff3fce30082fe85f95ee6ba
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33754326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07853fc00510d59a1382ef622d3bb018bab7254345d51e03c49b0ebdcb0623cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:20 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:22 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:23 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:23 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:23 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb458b2af3aa098ffb3cd0dc26374fb1f4aa3bcb32049fe0850513cda1b1bb5f`  
		Last Modified: Wed, 04 Jan 2017 23:29:09 GMT  
		Size: 2.1 MB (2103790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29e901c1fec0141069c7de252d6a3290a94328236620532bcd677d5cbcba3c2`  
		Last Modified: Wed, 04 Jan 2017 23:29:10 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abc9b8d1c1936f480ddbb232ae366b5c46b09beebeec331acacec1d4b0105a8`  
		Last Modified: Wed, 04 Jan 2017 23:29:08 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a7b4eff3bf1d334e0cfc499b9116945e7cb24b244fa18188ec4b573d2243ab`  
		Last Modified: Wed, 04 Jan 2017 23:29:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc4-git`

```console
$ docker pull docker@sha256:307be230a39161d293380a260fec4d56c291fd0bd4ec324a1c5912b45553da36
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc4-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41993069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc7035701115974bacc5256a3193c9c5c2a511aedd964c5a8e13aad3adb3f6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:26 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e82100ffed97fede2b14cd3b017563fdc16730cd72cc5a1c23294e35e4859b9`  
		Last Modified: Wed, 04 Jan 2017 23:29:58 GMT  
		Size: 10.3 MB (10346135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-git`

```console
$ docker pull docker@sha256:307be230a39161d293380a260fec4d56c291fd0bd4ec324a1c5912b45553da36
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41993069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc7035701115974bacc5256a3193c9c5c2a511aedd964c5a8e13aad3adb3f6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:26 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e82100ffed97fede2b14cd3b017563fdc16730cd72cc5a1c23294e35e4859b9`  
		Last Modified: Wed, 04 Jan 2017 23:29:58 GMT  
		Size: 10.3 MB (10346135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:307be230a39161d293380a260fec4d56c291fd0bd4ec324a1c5912b45553da36
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41993069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc7035701115974bacc5256a3193c9c5c2a511aedd964c5a8e13aad3adb3f6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:26 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e82100ffed97fede2b14cd3b017563fdc16730cd72cc5a1c23294e35e4859b9`  
		Last Modified: Wed, 04 Jan 2017 23:29:58 GMT  
		Size: 10.3 MB (10346135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5`

```console
$ docker pull docker@sha256:287f856d993ada59ce48aee7fadd5e61bb20ccd65ee2ef337e981e0d542d2845
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32881882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d811cc6c20a354ac7aa1fc8b26b1c29f6541c2b9e49cce9c0bdb2e6c79c191e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:287f856d993ada59ce48aee7fadd5e61bb20ccd65ee2ef337e981e0d542d2845
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32881882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d811cc6c20a354ac7aa1fc8b26b1c29f6541c2b9e49cce9c0bdb2e6c79c191e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:287f856d993ada59ce48aee7fadd5e61bb20ccd65ee2ef337e981e0d542d2845
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32881882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d811cc6c20a354ac7aa1fc8b26b1c29f6541c2b9e49cce9c0bdb2e6c79c191e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:287f856d993ada59ce48aee7fadd5e61bb20ccd65ee2ef337e981e0d542d2845
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32881882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d811cc6c20a354ac7aa1fc8b26b1c29f6541c2b9e49cce9c0bdb2e6c79c191e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-dind`

```console
$ docker pull docker@sha256:29bf6840fca3bd482655a5a0e69d6595249521259511b3859024db105a622fc5
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34989265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078d0811b9b3ad81d87d419059a0ea07c2ca97b573ae84f7d629bdc4ed30ced1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:36 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:37 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:38 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:38 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:38 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:39 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:39 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b47f71cada926733b4d4121f488f1ec160ba68f72921be5fbaf856aa644df5`  
		Last Modified: Wed, 04 Jan 2017 23:31:57 GMT  
		Size: 2.1 MB (2103782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a414fdc7493c2a36c210b1ee4ca20ece67058484000aab12bc3a788db5e22ab2`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac32974756210cd47a35a4518138781d05ce6ff9dc9e7b5ea885fd7e182ecd2`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdceba455eedcf0bb2c5585fa7be46d77ef562defa9aa341e2e3f0c27684646`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:29bf6840fca3bd482655a5a0e69d6595249521259511b3859024db105a622fc5
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34989265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078d0811b9b3ad81d87d419059a0ea07c2ca97b573ae84f7d629bdc4ed30ced1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:36 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:37 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:38 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:38 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:38 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:39 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:39 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b47f71cada926733b4d4121f488f1ec160ba68f72921be5fbaf856aa644df5`  
		Last Modified: Wed, 04 Jan 2017 23:31:57 GMT  
		Size: 2.1 MB (2103782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a414fdc7493c2a36c210b1ee4ca20ece67058484000aab12bc3a788db5e22ab2`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac32974756210cd47a35a4518138781d05ce6ff9dc9e7b5ea885fd7e182ecd2`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdceba455eedcf0bb2c5585fa7be46d77ef562defa9aa341e2e3f0c27684646`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:29bf6840fca3bd482655a5a0e69d6595249521259511b3859024db105a622fc5
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34989265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078d0811b9b3ad81d87d419059a0ea07c2ca97b573ae84f7d629bdc4ed30ced1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:36 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:37 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:38 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:38 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:38 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:39 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:39 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b47f71cada926733b4d4121f488f1ec160ba68f72921be5fbaf856aa644df5`  
		Last Modified: Wed, 04 Jan 2017 23:31:57 GMT  
		Size: 2.1 MB (2103782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a414fdc7493c2a36c210b1ee4ca20ece67058484000aab12bc3a788db5e22ab2`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac32974756210cd47a35a4518138781d05ce6ff9dc9e7b5ea885fd7e182ecd2`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdceba455eedcf0bb2c5585fa7be46d77ef562defa9aa341e2e3f0c27684646`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:29bf6840fca3bd482655a5a0e69d6595249521259511b3859024db105a622fc5
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34989265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078d0811b9b3ad81d87d419059a0ea07c2ca97b573ae84f7d629bdc4ed30ced1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:36 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:37 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:38 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:38 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:38 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:39 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:39 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b47f71cada926733b4d4121f488f1ec160ba68f72921be5fbaf856aa644df5`  
		Last Modified: Wed, 04 Jan 2017 23:31:57 GMT  
		Size: 2.1 MB (2103782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a414fdc7493c2a36c210b1ee4ca20ece67058484000aab12bc3a788db5e22ab2`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac32974756210cd47a35a4518138781d05ce6ff9dc9e7b5ea885fd7e182ecd2`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdceba455eedcf0bb2c5585fa7be46d77ef562defa9aa341e2e3f0c27684646`  
		Last Modified: Wed, 04 Jan 2017 23:31:56 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-git`

```console
$ docker pull docker@sha256:13d8f0be9d31a17dd1484102f84e162efb67e04152aeba57446051c9c6e4e974
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43228019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ebc07819d3a996c698844da05b751be0202d8d3dd10fbc9146c9e54cb176d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:42 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ecf21da146bf8e9ab8cc62a18784771e72ef25200c20a1eac9af9f3129f5ca`  
		Last Modified: Wed, 04 Jan 2017 23:33:01 GMT  
		Size: 10.3 MB (10346137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:13d8f0be9d31a17dd1484102f84e162efb67e04152aeba57446051c9c6e4e974
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43228019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ebc07819d3a996c698844da05b751be0202d8d3dd10fbc9146c9e54cb176d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:42 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ecf21da146bf8e9ab8cc62a18784771e72ef25200c20a1eac9af9f3129f5ca`  
		Last Modified: Wed, 04 Jan 2017 23:33:01 GMT  
		Size: 10.3 MB (10346137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:13d8f0be9d31a17dd1484102f84e162efb67e04152aeba57446051c9c6e4e974
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43228019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ebc07819d3a996c698844da05b751be0202d8d3dd10fbc9146c9e54cb176d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:42 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ecf21da146bf8e9ab8cc62a18784771e72ef25200c20a1eac9af9f3129f5ca`  
		Last Modified: Wed, 04 Jan 2017 23:33:01 GMT  
		Size: 10.3 MB (10346137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:13d8f0be9d31a17dd1484102f84e162efb67e04152aeba57446051c9c6e4e974
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43228019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ebc07819d3a996c698844da05b751be0202d8d3dd10fbc9146c9e54cb176d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:42 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ecf21da146bf8e9ab8cc62a18784771e72ef25200c20a1eac9af9f3129f5ca`  
		Last Modified: Wed, 04 Jan 2017 23:33:01 GMT  
		Size: 10.3 MB (10346137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental`

```console
$ docker pull docker@sha256:6da0870d45103776789fdc2da3fa89619b0ed896fcc2ed9a683af92a74623168
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33013984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52a00970ec5938c1bcc517013b3fff120a600c3e40a9773fd20f67a43b05eb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:6da0870d45103776789fdc2da3fa89619b0ed896fcc2ed9a683af92a74623168
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33013984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52a00970ec5938c1bcc517013b3fff120a600c3e40a9773fd20f67a43b05eb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:6da0870d45103776789fdc2da3fa89619b0ed896fcc2ed9a683af92a74623168
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33013984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52a00970ec5938c1bcc517013b3fff120a600c3e40a9773fd20f67a43b05eb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:6da0870d45103776789fdc2da3fa89619b0ed896fcc2ed9a683af92a74623168
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33013984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52a00970ec5938c1bcc517013b3fff120a600c3e40a9773fd20f67a43b05eb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental-dind`

```console
$ docker pull docker@sha256:ad58947c3e1c25f592fa34c1e4b1b5bee477aad64dc923e6ae3e5eed5a887d0c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35121389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35ae4e584f1e06019145605d7dddd5b84f5d41b8d4f9bb5d50f7c5b102537c7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:51 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:53 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:54 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:54 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:55 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c54f359297c785ecc82ccbb67536d30da4aa5bacc81c2de14381d06ffd3354`  
		Last Modified: Wed, 04 Jan 2017 23:35:13 GMT  
		Size: 2.1 MB (2103807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43f18c26ebf932359435e164f82a872ecda3e663d291ac0ec54005aaec58760`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b039dafef1801af401305c0771bc3fe6dc42665b4fddae8743bba81f43b7086`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d63d98e43e8aea194067e9f040ef14a7af0d2e26684e4fc94285ff658e3458`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:ad58947c3e1c25f592fa34c1e4b1b5bee477aad64dc923e6ae3e5eed5a887d0c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35121389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35ae4e584f1e06019145605d7dddd5b84f5d41b8d4f9bb5d50f7c5b102537c7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:51 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:53 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:54 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:54 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:55 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c54f359297c785ecc82ccbb67536d30da4aa5bacc81c2de14381d06ffd3354`  
		Last Modified: Wed, 04 Jan 2017 23:35:13 GMT  
		Size: 2.1 MB (2103807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43f18c26ebf932359435e164f82a872ecda3e663d291ac0ec54005aaec58760`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b039dafef1801af401305c0771bc3fe6dc42665b4fddae8743bba81f43b7086`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d63d98e43e8aea194067e9f040ef14a7af0d2e26684e4fc94285ff658e3458`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:ad58947c3e1c25f592fa34c1e4b1b5bee477aad64dc923e6ae3e5eed5a887d0c
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35121389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35ae4e584f1e06019145605d7dddd5b84f5d41b8d4f9bb5d50f7c5b102537c7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:51 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:53 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:54 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:54 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:55 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c54f359297c785ecc82ccbb67536d30da4aa5bacc81c2de14381d06ffd3354`  
		Last Modified: Wed, 04 Jan 2017 23:35:13 GMT  
		Size: 2.1 MB (2103807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43f18c26ebf932359435e164f82a872ecda3e663d291ac0ec54005aaec58760`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b039dafef1801af401305c0771bc3fe6dc42665b4fddae8743bba81f43b7086`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d63d98e43e8aea194067e9f040ef14a7af0d2e26684e4fc94285ff658e3458`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:ad58947c3e1c25f592fa34c1e4b1b5bee477aad64dc923e6ae3e5eed5a887d0c
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35121389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35ae4e584f1e06019145605d7dddd5b84f5d41b8d4f9bb5d50f7c5b102537c7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:51 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:53 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:54 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:54 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:55 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c54f359297c785ecc82ccbb67536d30da4aa5bacc81c2de14381d06ffd3354`  
		Last Modified: Wed, 04 Jan 2017 23:35:13 GMT  
		Size: 2.1 MB (2103807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43f18c26ebf932359435e164f82a872ecda3e663d291ac0ec54005aaec58760`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b039dafef1801af401305c0771bc3fe6dc42665b4fddae8743bba81f43b7086`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d63d98e43e8aea194067e9f040ef14a7af0d2e26684e4fc94285ff658e3458`  
		Last Modified: Wed, 04 Jan 2017 23:35:12 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental-git`

```console
$ docker pull docker@sha256:e403dd7bb8f0222396b15c2ab1697ac5622eb101c01f7d349f42896404476938
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43360135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e3d7878184011fe1da7e0ce1957ad66f25b888730fc1cc7d9315226ed2070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:58 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac2c970824b6504145e9168767d7a553151618c33703fe4edc79b6d4f12284`  
		Last Modified: Wed, 04 Jan 2017 23:36:19 GMT  
		Size: 10.3 MB (10346151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:e403dd7bb8f0222396b15c2ab1697ac5622eb101c01f7d349f42896404476938
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43360135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e3d7878184011fe1da7e0ce1957ad66f25b888730fc1cc7d9315226ed2070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:58 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac2c970824b6504145e9168767d7a553151618c33703fe4edc79b6d4f12284`  
		Last Modified: Wed, 04 Jan 2017 23:36:19 GMT  
		Size: 10.3 MB (10346151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:e403dd7bb8f0222396b15c2ab1697ac5622eb101c01f7d349f42896404476938
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43360135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e3d7878184011fe1da7e0ce1957ad66f25b888730fc1cc7d9315226ed2070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:58 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac2c970824b6504145e9168767d7a553151618c33703fe4edc79b6d4f12284`  
		Last Modified: Wed, 04 Jan 2017 23:36:19 GMT  
		Size: 10.3 MB (10346151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:e403dd7bb8f0222396b15c2ab1697ac5622eb101c01f7d349f42896404476938
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43360135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e3d7878184011fe1da7e0ce1957ad66f25b888730fc1cc7d9315226ed2070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:58 GMT
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
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eac2c970824b6504145e9168767d7a553151618c33703fe4edc79b6d4f12284`  
		Last Modified: Wed, 04 Jan 2017 23:36:19 GMT  
		Size: 10.3 MB (10346151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2`

```console
$ docker pull docker@sha256:b0e87a285dac1e0e153f7a2fffa391e83a20424fdaef65be5597010f5e109696
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24519176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3fdb2ce8ab82fe6d3ae44bb8f8be1a0a0b48d658cdaf625c02511bce9ef96a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:58 GMT
ENV DOCKER_VERSION=1.11.2
# Wed, 04 Jan 2017 21:04:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Wed, 04 Jan 2017 21:05:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:05:02 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:05:02 GMT
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
	-	`sha256:447e4fa056eb30e1a86783adfbc63f7a0faac84429d58b42b9bb75ab22be3b4d`  
		Last Modified: Wed, 04 Jan 2017 23:37:59 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edac7c6e8511b30821b12af37d411b086a105265dc4edfaf4accc69641435346`  
		Last Modified: Wed, 04 Jan 2017 23:37:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:b0e87a285dac1e0e153f7a2fffa391e83a20424fdaef65be5597010f5e109696
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24519176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3fdb2ce8ab82fe6d3ae44bb8f8be1a0a0b48d658cdaf625c02511bce9ef96a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:58 GMT
ENV DOCKER_VERSION=1.11.2
# Wed, 04 Jan 2017 21:04:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Wed, 04 Jan 2017 21:05:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:05:02 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:05:02 GMT
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
	-	`sha256:447e4fa056eb30e1a86783adfbc63f7a0faac84429d58b42b9bb75ab22be3b4d`  
		Last Modified: Wed, 04 Jan 2017 23:37:59 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edac7c6e8511b30821b12af37d411b086a105265dc4edfaf4accc69641435346`  
		Last Modified: Wed, 04 Jan 2017 23:37:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:9fd21928ac88710a1270bf6e41c3435c299363a03504b64447f8340328307d5c
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26626580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17bb996a701052adb475b04b0e8675314cb4db450c8110469d7b6460841285b7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:58 GMT
ENV DOCKER_VERSION=1.11.2
# Wed, 04 Jan 2017 21:04:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Wed, 04 Jan 2017 21:05:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:05:02 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:05:02 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:05:06 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:05:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:05:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:05:08 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:05:08 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:05:08 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:05:09 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:05:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:05:09 GMT
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
	-	`sha256:447e4fa056eb30e1a86783adfbc63f7a0faac84429d58b42b9bb75ab22be3b4d`  
		Last Modified: Wed, 04 Jan 2017 23:37:59 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edac7c6e8511b30821b12af37d411b086a105265dc4edfaf4accc69641435346`  
		Last Modified: Wed, 04 Jan 2017 23:37:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db27e0b1ef507521122032102fbeee35dac98dfc05dd048663b91b162ce75367`  
		Last Modified: Wed, 04 Jan 2017 23:38:51 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed53c1c28aeaf227f31bd0b22df53a0d7e5400aa9c25e79283e27349ae061d2`  
		Last Modified: Wed, 04 Jan 2017 23:38:50 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e85bb3b61b2daceb579eda95a066b923eb568ae4cead7ff8d028a71bebbe0`  
		Last Modified: Wed, 04 Jan 2017 23:38:51 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23892039b14fc7691c9aa1f21bf1aa86bb8d8b1181ab1ff18ea8fcd4a38651c1`  
		Last Modified: Wed, 04 Jan 2017 23:38:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:9fd21928ac88710a1270bf6e41c3435c299363a03504b64447f8340328307d5c
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26626580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17bb996a701052adb475b04b0e8675314cb4db450c8110469d7b6460841285b7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:58 GMT
ENV DOCKER_VERSION=1.11.2
# Wed, 04 Jan 2017 21:04:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Wed, 04 Jan 2017 21:05:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:05:02 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:05:02 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:05:06 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:05:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:05:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:05:08 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:05:08 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:05:08 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:05:09 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:05:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:05:09 GMT
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
	-	`sha256:447e4fa056eb30e1a86783adfbc63f7a0faac84429d58b42b9bb75ab22be3b4d`  
		Last Modified: Wed, 04 Jan 2017 23:37:59 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edac7c6e8511b30821b12af37d411b086a105265dc4edfaf4accc69641435346`  
		Last Modified: Wed, 04 Jan 2017 23:37:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db27e0b1ef507521122032102fbeee35dac98dfc05dd048663b91b162ce75367`  
		Last Modified: Wed, 04 Jan 2017 23:38:51 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed53c1c28aeaf227f31bd0b22df53a0d7e5400aa9c25e79283e27349ae061d2`  
		Last Modified: Wed, 04 Jan 2017 23:38:50 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e85bb3b61b2daceb579eda95a066b923eb568ae4cead7ff8d028a71bebbe0`  
		Last Modified: Wed, 04 Jan 2017 23:38:51 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23892039b14fc7691c9aa1f21bf1aa86bb8d8b1181ab1ff18ea8fcd4a38651c1`  
		Last Modified: Wed, 04 Jan 2017 23:38:50 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:8cc637b4150c3b187bd395d1fbab05224beec096a1be285ab8d423137e49d60e
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34865331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd1817666e3e20c42f4f1a5cc5b5f2e966cd08eb86f369143fc2f2373ed89911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:58 GMT
ENV DOCKER_VERSION=1.11.2
# Wed, 04 Jan 2017 21:04:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Wed, 04 Jan 2017 21:05:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:05:02 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:05:02 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:05:12 GMT
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
	-	`sha256:447e4fa056eb30e1a86783adfbc63f7a0faac84429d58b42b9bb75ab22be3b4d`  
		Last Modified: Wed, 04 Jan 2017 23:37:59 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edac7c6e8511b30821b12af37d411b086a105265dc4edfaf4accc69641435346`  
		Last Modified: Wed, 04 Jan 2017 23:37:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c52fcd9b2a7db8dbc91a2f0d7d217d8a5922eeff3d43a3c0973f2d2020769a`  
		Last Modified: Wed, 04 Jan 2017 23:39:40 GMT  
		Size: 10.3 MB (10346155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:8cc637b4150c3b187bd395d1fbab05224beec096a1be285ab8d423137e49d60e
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34865331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd1817666e3e20c42f4f1a5cc5b5f2e966cd08eb86f369143fc2f2373ed89911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:58 GMT
ENV DOCKER_VERSION=1.11.2
# Wed, 04 Jan 2017 21:04:59 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Wed, 04 Jan 2017 21:05:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:05:02 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:05:02 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:05:12 GMT
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
	-	`sha256:447e4fa056eb30e1a86783adfbc63f7a0faac84429d58b42b9bb75ab22be3b4d`  
		Last Modified: Wed, 04 Jan 2017 23:37:59 GMT  
		Size: 20.4 MB (20449706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edac7c6e8511b30821b12af37d411b086a105265dc4edfaf4accc69641435346`  
		Last Modified: Wed, 04 Jan 2017 23:37:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c52fcd9b2a7db8dbc91a2f0d7d217d8a5922eeff3d43a3c0973f2d2020769a`  
		Last Modified: Wed, 04 Jan 2017 23:39:40 GMT  
		Size: 10.3 MB (10346155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
