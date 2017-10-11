<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17`](#docker17)
-	[`docker:17.06`](#docker1706)
-	[`docker:17.06.2`](#docker17062)
-	[`docker:17.06.2-ce`](#docker17062-ce)
-	[`docker:17.06.2-ce-dind`](#docker17062-ce-dind)
-	[`docker:17.06.2-ce-git`](#docker17062-ce-git)
-	[`docker:17.06.2-dind`](#docker17062-dind)
-	[`docker:17.06.2-git`](#docker17062-git)
-	[`docker:17.06-dind`](#docker1706-dind)
-	[`docker:17.06-git`](#docker1706-git)
-	[`docker:17.07`](#docker1707)
-	[`docker:17.07.0`](#docker17070)
-	[`docker:17.07.0-ce`](#docker17070-ce)
-	[`docker:17.07.0-ce-dind`](#docker17070-ce-dind)
-	[`docker:17.07.0-ce-git`](#docker17070-ce-git)
-	[`docker:17.07.0-dind`](#docker17070-dind)
-	[`docker:17.07.0-git`](#docker17070-git)
-	[`docker:17.07-dind`](#docker1707-dind)
-	[`docker:17.07-git`](#docker1707-git)
-	[`docker:17.09`](#docker1709)
-	[`docker:17.09.0`](#docker17090)
-	[`docker:17.09.0-ce`](#docker17090-ce)
-	[`docker:17.09.0-ce-dind`](#docker17090-ce-dind)
-	[`docker:17.09.0-ce-git`](#docker17090-ce-git)
-	[`docker:17.09.0-dind`](#docker17090-dind)
-	[`docker:17.09.0-git`](#docker17090-git)
-	[`docker:17.09-dind`](#docker1709-dind)
-	[`docker:17.09-git`](#docker1709-git)
-	[`docker:17.10.0-ce-rc1`](#docker17100-ce-rc1)
-	[`docker:17.10.0-ce-rc1-dind`](#docker17100-ce-rc1-dind)
-	[`docker:17.10.0-ce-rc1-git`](#docker17100-ce-rc1-git)
-	[`docker:17.10-rc`](#docker1710-rc)
-	[`docker:17.10-rc-dind`](#docker1710-rc-dind)
-	[`docker:17.10-rc-git`](#docker1710-rc-git)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:17-git`](#docker17-git)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge`](#dockeredge)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:git`](#dockergit)
-	[`docker:latest`](#dockerlatest)
-	[`docker:rc`](#dockerrc)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:stable`](#dockerstable)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:test`](#dockertest)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:test-git`](#dockertest-git)

## `docker:17`

```console
$ docker pull docker@sha256:9bdfaf061dff5dd3ccdcb857321c2204ff99d955d7a9f77c6387bca490264382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

```console
$ docker pull docker@sha256:d70e456860ea53dd58966fa717e7bfcd90bf30bfdc8ff14de3f87b919b209ae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33031907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f114d6c63208eabe25ee9639004a9afd2a3e3bd7e523ac08f5894e1d6b5c916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06`

```console
$ docker pull docker@sha256:bfef648006f93c5dc01de6e7db947ac97e2e752b532212e259cafcfc44cc9e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06` - linux; amd64

```console
$ docker pull docker@sha256:138094a63e0886080fd9eada2102ce2779602c9761f44cecf3c99056bb121e03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d38b85410a517f1a9bf73450f5a2d68a9e984f40dadac2e1ba34770a6012916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2`

```console
$ docker pull docker@sha256:bfef648006f93c5dc01de6e7db947ac97e2e752b532212e259cafcfc44cc9e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2` - linux; amd64

```console
$ docker pull docker@sha256:138094a63e0886080fd9eada2102ce2779602c9761f44cecf3c99056bb121e03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d38b85410a517f1a9bf73450f5a2d68a9e984f40dadac2e1ba34770a6012916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce`

```console
$ docker pull docker@sha256:bfef648006f93c5dc01de6e7db947ac97e2e752b532212e259cafcfc44cc9e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce` - linux; amd64

```console
$ docker pull docker@sha256:138094a63e0886080fd9eada2102ce2779602c9761f44cecf3c99056bb121e03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d38b85410a517f1a9bf73450f5a2d68a9e984f40dadac2e1ba34770a6012916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-dind`

```console
$ docker pull docker@sha256:2f56f3f65376e4f33a6ae8dbe9ed567ecebfbb691fa1947a5f9cfebb42ac5ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:d925d2e21e373e51e3993c9c239614b755a40ff8ea94449f95046b6e8a16d251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49aa309624bd93208a19cd8400895a788c25d879419ba89a11e03dd080561cf7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:41:04 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:41:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:41:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:41:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:41:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:41:07 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:41:08 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:41:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:41:08 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1a7d17178e188532dcfb017c2256bb717115d667f83a40d53cf983334e6c9`  
		Last Modified: Wed, 13 Sep 2017 21:44:52 GMT  
		Size: 2.2 MB (2209125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878fa9ee837cbfa3265b46a304cc5f2d716e81fe154b2bd533b96e4e43982254`  
		Last Modified: Wed, 13 Sep 2017 21:44:52 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2573fddee9ab9470e474633208dd1fb03ff6a92c6c40cf4e4c74e13612dd12`  
		Last Modified: Wed, 13 Sep 2017 21:44:52 GMT  
		Size: 176.2 KB (176200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac937820aab7abdbc4c4ba2737534c231e23b9138c650a23b672cc8317e32ffc`  
		Last Modified: Wed, 13 Sep 2017 21:44:51 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-git`

```console
$ docker pull docker@sha256:ef7dff1103c7f0aae76e7b8e1f21a4ea8ad1ad0b54c4c38ba8a88c28a966a766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:ba225d908a5f92614e4d0220fa4d37be689628314c1c605e2d491ebbc63fc13d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44130355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6d20ec6419d549d5e26c2df0b2d11c8a76c36f8827e0ebfb6803252fb8bf5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:41:13 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1bca0629db602c9caa7fb109286dde134e2bd74ad4623ca76d9e5e22f42c9d`  
		Last Modified: Wed, 13 Sep 2017 21:45:14 GMT  
		Size: 11.8 MB (11769658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-dind`

```console
$ docker pull docker@sha256:2f56f3f65376e4f33a6ae8dbe9ed567ecebfbb691fa1947a5f9cfebb42ac5ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-dind` - linux; amd64

```console
$ docker pull docker@sha256:d925d2e21e373e51e3993c9c239614b755a40ff8ea94449f95046b6e8a16d251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49aa309624bd93208a19cd8400895a788c25d879419ba89a11e03dd080561cf7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:41:04 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:41:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:41:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:41:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:41:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:41:07 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:41:08 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:41:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:41:08 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1a7d17178e188532dcfb017c2256bb717115d667f83a40d53cf983334e6c9`  
		Last Modified: Wed, 13 Sep 2017 21:44:52 GMT  
		Size: 2.2 MB (2209125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878fa9ee837cbfa3265b46a304cc5f2d716e81fe154b2bd533b96e4e43982254`  
		Last Modified: Wed, 13 Sep 2017 21:44:52 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2573fddee9ab9470e474633208dd1fb03ff6a92c6c40cf4e4c74e13612dd12`  
		Last Modified: Wed, 13 Sep 2017 21:44:52 GMT  
		Size: 176.2 KB (176200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac937820aab7abdbc4c4ba2737534c231e23b9138c650a23b672cc8317e32ffc`  
		Last Modified: Wed, 13 Sep 2017 21:44:51 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-git`

```console
$ docker pull docker@sha256:ef7dff1103c7f0aae76e7b8e1f21a4ea8ad1ad0b54c4c38ba8a88c28a966a766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-git` - linux; amd64

```console
$ docker pull docker@sha256:ba225d908a5f92614e4d0220fa4d37be689628314c1c605e2d491ebbc63fc13d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44130355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6d20ec6419d549d5e26c2df0b2d11c8a76c36f8827e0ebfb6803252fb8bf5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:41:13 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1bca0629db602c9caa7fb109286dde134e2bd74ad4623ca76d9e5e22f42c9d`  
		Last Modified: Wed, 13 Sep 2017 21:45:14 GMT  
		Size: 11.8 MB (11769658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-dind`

```console
$ docker pull docker@sha256:2f56f3f65376e4f33a6ae8dbe9ed567ecebfbb691fa1947a5f9cfebb42ac5ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06-dind` - linux; amd64

```console
$ docker pull docker@sha256:d925d2e21e373e51e3993c9c239614b755a40ff8ea94449f95046b6e8a16d251
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49aa309624bd93208a19cd8400895a788c25d879419ba89a11e03dd080561cf7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:41:04 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:41:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:41:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:41:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:41:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:41:07 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:41:08 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:41:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:41:08 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1a7d17178e188532dcfb017c2256bb717115d667f83a40d53cf983334e6c9`  
		Last Modified: Wed, 13 Sep 2017 21:44:52 GMT  
		Size: 2.2 MB (2209125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878fa9ee837cbfa3265b46a304cc5f2d716e81fe154b2bd533b96e4e43982254`  
		Last Modified: Wed, 13 Sep 2017 21:44:52 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2573fddee9ab9470e474633208dd1fb03ff6a92c6c40cf4e4c74e13612dd12`  
		Last Modified: Wed, 13 Sep 2017 21:44:52 GMT  
		Size: 176.2 KB (176200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac937820aab7abdbc4c4ba2737534c231e23b9138c650a23b672cc8317e32ffc`  
		Last Modified: Wed, 13 Sep 2017 21:44:51 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-git`

```console
$ docker pull docker@sha256:ef7dff1103c7f0aae76e7b8e1f21a4ea8ad1ad0b54c4c38ba8a88c28a966a766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06-git` - linux; amd64

```console
$ docker pull docker@sha256:ba225d908a5f92614e4d0220fa4d37be689628314c1c605e2d491ebbc63fc13d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44130355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6d20ec6419d549d5e26c2df0b2d11c8a76c36f8827e0ebfb6803252fb8bf5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:41:13 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1bca0629db602c9caa7fb109286dde134e2bd74ad4623ca76d9e5e22f42c9d`  
		Last Modified: Wed, 13 Sep 2017 21:45:14 GMT  
		Size: 11.8 MB (11769658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07`

```console
$ docker pull docker@sha256:47f55b639b8a123da3a08b5114c8fb5a620828cb2d8de7912fc9de68e7e802ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07` - linux; amd64

```console
$ docker pull docker@sha256:259ab0b9eca8d4d540e1823ad9b669053701da20cb7682997f130204f9094a9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7585e8dd70eadf71435f10a6490d8d17a950c49e86f48810b5bdc6219b2765`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Wed, 13 Sep 2017 21:40:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedfa3ae56f384cfc1ec93720826bd2bcc5c3b0447c97a0587b7bcf1c1784d8b`  
		Last Modified: Wed, 13 Sep 2017 21:42:59 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0846abed0f293e0fcf9557068da21daaf8ce0573c77095aa4ff0d7f82b1b6968`  
		Last Modified: Wed, 13 Sep 2017 21:42:53 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0`

```console
$ docker pull docker@sha256:47f55b639b8a123da3a08b5114c8fb5a620828cb2d8de7912fc9de68e7e802ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0` - linux; amd64

```console
$ docker pull docker@sha256:259ab0b9eca8d4d540e1823ad9b669053701da20cb7682997f130204f9094a9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7585e8dd70eadf71435f10a6490d8d17a950c49e86f48810b5bdc6219b2765`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Wed, 13 Sep 2017 21:40:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedfa3ae56f384cfc1ec93720826bd2bcc5c3b0447c97a0587b7bcf1c1784d8b`  
		Last Modified: Wed, 13 Sep 2017 21:42:59 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0846abed0f293e0fcf9557068da21daaf8ce0573c77095aa4ff0d7f82b1b6968`  
		Last Modified: Wed, 13 Sep 2017 21:42:53 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce`

```console
$ docker pull docker@sha256:47f55b639b8a123da3a08b5114c8fb5a620828cb2d8de7912fc9de68e7e802ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce` - linux; amd64

```console
$ docker pull docker@sha256:259ab0b9eca8d4d540e1823ad9b669053701da20cb7682997f130204f9094a9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7585e8dd70eadf71435f10a6490d8d17a950c49e86f48810b5bdc6219b2765`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Wed, 13 Sep 2017 21:40:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedfa3ae56f384cfc1ec93720826bd2bcc5c3b0447c97a0587b7bcf1c1784d8b`  
		Last Modified: Wed, 13 Sep 2017 21:42:59 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0846abed0f293e0fcf9557068da21daaf8ce0573c77095aa4ff0d7f82b1b6968`  
		Last Modified: Wed, 13 Sep 2017 21:42:53 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce-dind`

```console
$ docker pull docker@sha256:6563270f13cf2d67aebbf9198782df9644cd98e9a27fbb7f9503b7e104a22feb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:e26f5790464779bcd8993d79bc4b1a367cbf4a8c46c02891fcb7734642909a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab52967778e46d72867aa7cc962fa5aff6fc2fa56cf0564d49e392531853f7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Wed, 13 Sep 2017 21:40:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:35 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:40:40 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:40:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:40:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:40:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:45 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:40:45 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:40:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:45 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedfa3ae56f384cfc1ec93720826bd2bcc5c3b0447c97a0587b7bcf1c1784d8b`  
		Last Modified: Wed, 13 Sep 2017 21:42:59 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0846abed0f293e0fcf9557068da21daaf8ce0573c77095aa4ff0d7f82b1b6968`  
		Last Modified: Wed, 13 Sep 2017 21:42:53 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5a23716aef7201afecfc79a278668bc5f2d27750fdc4af1788658146b7980b`  
		Last Modified: Wed, 13 Sep 2017 21:43:25 GMT  
		Size: 2.2 MB (2209130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf76d2d52f94c5c5335e8820eca3767278255db3811c60ffe4a159812f34ea5`  
		Last Modified: Wed, 13 Sep 2017 21:43:24 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a684ead2d8b6a8cc70eb082732aa7ac084100dc8d85181580324dc4821e96`  
		Last Modified: Wed, 13 Sep 2017 21:43:24 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb2e48ed8d85dcc2bf857a65774a41015b51cdd3cd6a43a141c7f5ac2b9acfa`  
		Last Modified: Wed, 13 Sep 2017 21:43:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce-git`

```console
$ docker pull docker@sha256:d2dfa824e685229004900af33d1b832f0f9bf854acc54d8599132f201d051532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:da4d70c7317f3d59c30b24706ca6a2f94ceb0efb4e4922d7400bdbcfc62f97a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495a38c313233cf316b6ec3cc6e3eb00e0a329a30cbf7354d396b388f2086cdc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Wed, 13 Sep 2017 21:40:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:35 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedfa3ae56f384cfc1ec93720826bd2bcc5c3b0447c97a0587b7bcf1c1784d8b`  
		Last Modified: Wed, 13 Sep 2017 21:42:59 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0846abed0f293e0fcf9557068da21daaf8ce0573c77095aa4ff0d7f82b1b6968`  
		Last Modified: Wed, 13 Sep 2017 21:42:53 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553d5e1d5bf4af1f54ccbee7e0f5cf7b9b92b926ae3bb2cd87375fdc4e613034`  
		Last Modified: Wed, 13 Sep 2017 21:43:55 GMT  
		Size: 11.8 MB (11769655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-dind`

```console
$ docker pull docker@sha256:6563270f13cf2d67aebbf9198782df9644cd98e9a27fbb7f9503b7e104a22feb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-dind` - linux; amd64

```console
$ docker pull docker@sha256:e26f5790464779bcd8993d79bc4b1a367cbf4a8c46c02891fcb7734642909a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab52967778e46d72867aa7cc962fa5aff6fc2fa56cf0564d49e392531853f7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Wed, 13 Sep 2017 21:40:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:35 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:40:40 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:40:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:40:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:40:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:45 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:40:45 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:40:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:45 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedfa3ae56f384cfc1ec93720826bd2bcc5c3b0447c97a0587b7bcf1c1784d8b`  
		Last Modified: Wed, 13 Sep 2017 21:42:59 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0846abed0f293e0fcf9557068da21daaf8ce0573c77095aa4ff0d7f82b1b6968`  
		Last Modified: Wed, 13 Sep 2017 21:42:53 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5a23716aef7201afecfc79a278668bc5f2d27750fdc4af1788658146b7980b`  
		Last Modified: Wed, 13 Sep 2017 21:43:25 GMT  
		Size: 2.2 MB (2209130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf76d2d52f94c5c5335e8820eca3767278255db3811c60ffe4a159812f34ea5`  
		Last Modified: Wed, 13 Sep 2017 21:43:24 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a684ead2d8b6a8cc70eb082732aa7ac084100dc8d85181580324dc4821e96`  
		Last Modified: Wed, 13 Sep 2017 21:43:24 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb2e48ed8d85dcc2bf857a65774a41015b51cdd3cd6a43a141c7f5ac2b9acfa`  
		Last Modified: Wed, 13 Sep 2017 21:43:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-git`

```console
$ docker pull docker@sha256:d2dfa824e685229004900af33d1b832f0f9bf854acc54d8599132f201d051532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-git` - linux; amd64

```console
$ docker pull docker@sha256:da4d70c7317f3d59c30b24706ca6a2f94ceb0efb4e4922d7400bdbcfc62f97a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495a38c313233cf316b6ec3cc6e3eb00e0a329a30cbf7354d396b388f2086cdc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Wed, 13 Sep 2017 21:40:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:35 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedfa3ae56f384cfc1ec93720826bd2bcc5c3b0447c97a0587b7bcf1c1784d8b`  
		Last Modified: Wed, 13 Sep 2017 21:42:59 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0846abed0f293e0fcf9557068da21daaf8ce0573c77095aa4ff0d7f82b1b6968`  
		Last Modified: Wed, 13 Sep 2017 21:42:53 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553d5e1d5bf4af1f54ccbee7e0f5cf7b9b92b926ae3bb2cd87375fdc4e613034`  
		Last Modified: Wed, 13 Sep 2017 21:43:55 GMT  
		Size: 11.8 MB (11769655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07-dind`

```console
$ docker pull docker@sha256:6563270f13cf2d67aebbf9198782df9644cd98e9a27fbb7f9503b7e104a22feb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07-dind` - linux; amd64

```console
$ docker pull docker@sha256:e26f5790464779bcd8993d79bc4b1a367cbf4a8c46c02891fcb7734642909a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab52967778e46d72867aa7cc962fa5aff6fc2fa56cf0564d49e392531853f7a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Wed, 13 Sep 2017 21:40:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:35 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:40:40 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:40:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:40:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:40:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:45 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:40:45 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:40:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:45 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedfa3ae56f384cfc1ec93720826bd2bcc5c3b0447c97a0587b7bcf1c1784d8b`  
		Last Modified: Wed, 13 Sep 2017 21:42:59 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0846abed0f293e0fcf9557068da21daaf8ce0573c77095aa4ff0d7f82b1b6968`  
		Last Modified: Wed, 13 Sep 2017 21:42:53 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5a23716aef7201afecfc79a278668bc5f2d27750fdc4af1788658146b7980b`  
		Last Modified: Wed, 13 Sep 2017 21:43:25 GMT  
		Size: 2.2 MB (2209130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf76d2d52f94c5c5335e8820eca3767278255db3811c60ffe4a159812f34ea5`  
		Last Modified: Wed, 13 Sep 2017 21:43:24 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a684ead2d8b6a8cc70eb082732aa7ac084100dc8d85181580324dc4821e96`  
		Last Modified: Wed, 13 Sep 2017 21:43:24 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb2e48ed8d85dcc2bf857a65774a41015b51cdd3cd6a43a141c7f5ac2b9acfa`  
		Last Modified: Wed, 13 Sep 2017 21:43:24 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07-git`

```console
$ docker pull docker@sha256:d2dfa824e685229004900af33d1b832f0f9bf854acc54d8599132f201d051532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07-git` - linux; amd64

```console
$ docker pull docker@sha256:da4d70c7317f3d59c30b24706ca6a2f94ceb0efb4e4922d7400bdbcfc62f97a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495a38c313233cf316b6ec3cc6e3eb00e0a329a30cbf7354d396b388f2086cdc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 13 Sep 2017 21:40:29 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Wed, 13 Sep 2017 21:40:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:35 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedfa3ae56f384cfc1ec93720826bd2bcc5c3b0447c97a0587b7bcf1c1784d8b`  
		Last Modified: Wed, 13 Sep 2017 21:42:59 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0846abed0f293e0fcf9557068da21daaf8ce0573c77095aa4ff0d7f82b1b6968`  
		Last Modified: Wed, 13 Sep 2017 21:42:53 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553d5e1d5bf4af1f54ccbee7e0f5cf7b9b92b926ae3bb2cd87375fdc4e613034`  
		Last Modified: Wed, 13 Sep 2017 21:43:55 GMT  
		Size: 11.8 MB (11769655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09`

```console
$ docker pull docker@sha256:9bdfaf061dff5dd3ccdcb857321c2204ff99d955d7a9f77c6387bca490264382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09` - linux; amd64

```console
$ docker pull docker@sha256:d70e456860ea53dd58966fa717e7bfcd90bf30bfdc8ff14de3f87b919b209ae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33031907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f114d6c63208eabe25ee9639004a9afd2a3e3bd7e523ac08f5894e1d6b5c916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0`

```console
$ docker pull docker@sha256:9bdfaf061dff5dd3ccdcb857321c2204ff99d955d7a9f77c6387bca490264382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0` - linux; amd64

```console
$ docker pull docker@sha256:d70e456860ea53dd58966fa717e7bfcd90bf30bfdc8ff14de3f87b919b209ae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33031907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f114d6c63208eabe25ee9639004a9afd2a3e3bd7e523ac08f5894e1d6b5c916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce`

```console
$ docker pull docker@sha256:9bdfaf061dff5dd3ccdcb857321c2204ff99d955d7a9f77c6387bca490264382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce` - linux; amd64

```console
$ docker pull docker@sha256:d70e456860ea53dd58966fa717e7bfcd90bf30bfdc8ff14de3f87b919b209ae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33031907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f114d6c63208eabe25ee9639004a9afd2a3e3bd7e523ac08f5894e1d6b5c916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-dind`

```console
$ docker pull docker@sha256:5506acd92efcf375363cdeeceedc85d16337442c76143797541bfc3d228e466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:b41fadffcecfe92a27f2281bbf1bb8bb51e4b6a2ba7d83c9c2c9cd82e474dbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9145b364a203c0afc538ca615b3470e41729edfb7338017f5d4eeb5b13b2d90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 27 Sep 2017 20:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 27 Sep 2017 20:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 27 Sep 2017 20:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 27 Sep 2017 20:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 27 Sep 2017 20:50:48 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:48 GMT
VOLUME [/var/lib/docker]
# Wed, 27 Sep 2017 20:50:48 GMT
EXPOSE 2375/tcp
# Wed, 27 Sep 2017 20:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75929dd0d7d129b25672d717fad42b62205e655941e4313018c1b967bd5a55c8`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 2.2 MB (2209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cc445fece8b3bf3df92a8e9bda246bc4975514e32030aa2ec9c04faf4d183e`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e02310062c89da967c63fbeceddb04ba696f3f51a15a2b38b37bda9adbc279`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbd6f1217de19a56250ddac88b508caf5fa320f58bf859d9f04162b43cd402`  
		Last Modified: Wed, 27 Sep 2017 20:52:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-git`

```console
$ docker pull docker@sha256:0d53276d97ffd1348cd1c9d56f3d1497dbd890a2060aa05fd8e8ff67a412b03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:c70d046173b8d5e769893d3af1bfa84a49e12004b1630e34e305733bf72ca1e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf1027c6e6f4d6cfee51e97130b5a0d62b32dd48e03279891cbd1f96b9669a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 11 Oct 2017 18:41:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ba896fc6fbe287bffc47d03134aa4a580a0db995e767ac6cc698caa9949c`  
		Last Modified: Wed, 11 Oct 2017 18:42:05 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-dind`

```console
$ docker pull docker@sha256:5506acd92efcf375363cdeeceedc85d16337442c76143797541bfc3d228e466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-dind` - linux; amd64

```console
$ docker pull docker@sha256:b41fadffcecfe92a27f2281bbf1bb8bb51e4b6a2ba7d83c9c2c9cd82e474dbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9145b364a203c0afc538ca615b3470e41729edfb7338017f5d4eeb5b13b2d90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 27 Sep 2017 20:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 27 Sep 2017 20:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 27 Sep 2017 20:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 27 Sep 2017 20:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 27 Sep 2017 20:50:48 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:48 GMT
VOLUME [/var/lib/docker]
# Wed, 27 Sep 2017 20:50:48 GMT
EXPOSE 2375/tcp
# Wed, 27 Sep 2017 20:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75929dd0d7d129b25672d717fad42b62205e655941e4313018c1b967bd5a55c8`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 2.2 MB (2209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cc445fece8b3bf3df92a8e9bda246bc4975514e32030aa2ec9c04faf4d183e`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e02310062c89da967c63fbeceddb04ba696f3f51a15a2b38b37bda9adbc279`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbd6f1217de19a56250ddac88b508caf5fa320f58bf859d9f04162b43cd402`  
		Last Modified: Wed, 27 Sep 2017 20:52:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-git`

```console
$ docker pull docker@sha256:0d53276d97ffd1348cd1c9d56f3d1497dbd890a2060aa05fd8e8ff67a412b03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-git` - linux; amd64

```console
$ docker pull docker@sha256:c70d046173b8d5e769893d3af1bfa84a49e12004b1630e34e305733bf72ca1e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf1027c6e6f4d6cfee51e97130b5a0d62b32dd48e03279891cbd1f96b9669a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 11 Oct 2017 18:41:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ba896fc6fbe287bffc47d03134aa4a580a0db995e767ac6cc698caa9949c`  
		Last Modified: Wed, 11 Oct 2017 18:42:05 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-dind`

```console
$ docker pull docker@sha256:5506acd92efcf375363cdeeceedc85d16337442c76143797541bfc3d228e466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:b41fadffcecfe92a27f2281bbf1bb8bb51e4b6a2ba7d83c9c2c9cd82e474dbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9145b364a203c0afc538ca615b3470e41729edfb7338017f5d4eeb5b13b2d90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 27 Sep 2017 20:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 27 Sep 2017 20:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 27 Sep 2017 20:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 27 Sep 2017 20:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 27 Sep 2017 20:50:48 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:48 GMT
VOLUME [/var/lib/docker]
# Wed, 27 Sep 2017 20:50:48 GMT
EXPOSE 2375/tcp
# Wed, 27 Sep 2017 20:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75929dd0d7d129b25672d717fad42b62205e655941e4313018c1b967bd5a55c8`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 2.2 MB (2209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cc445fece8b3bf3df92a8e9bda246bc4975514e32030aa2ec9c04faf4d183e`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e02310062c89da967c63fbeceddb04ba696f3f51a15a2b38b37bda9adbc279`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbd6f1217de19a56250ddac88b508caf5fa320f58bf859d9f04162b43cd402`  
		Last Modified: Wed, 27 Sep 2017 20:52:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-git`

```console
$ docker pull docker@sha256:0d53276d97ffd1348cd1c9d56f3d1497dbd890a2060aa05fd8e8ff67a412b03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09-git` - linux; amd64

```console
$ docker pull docker@sha256:c70d046173b8d5e769893d3af1bfa84a49e12004b1630e34e305733bf72ca1e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf1027c6e6f4d6cfee51e97130b5a0d62b32dd48e03279891cbd1f96b9669a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 11 Oct 2017 18:41:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ba896fc6fbe287bffc47d03134aa4a580a0db995e767ac6cc698caa9949c`  
		Last Modified: Wed, 11 Oct 2017 18:42:05 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-ce-rc1`

```console
$ docker pull docker@sha256:347105885c6ebf77f7182afa702ef19a1863310ce3f4a9b75ed413a197f33bc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.10.0-ce-rc1` - linux; amd64

```console
$ docker pull docker@sha256:80da0d799307865654c981d767452fdc28e214d145c3a0aceb395be1f9654c52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33141362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3000b0cf8a602cac3d7d749d0ca6acc860b540b33e1e6ccbb45bc006f26b5e71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-ce-rc1-dind`

```console
$ docker pull docker@sha256:3aabe488df713ed905fdf0f4ec818a76803dbdfb57d6282820b5e65d49ed7dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.10.0-ce-rc1-dind` - linux; amd64

```console
$ docker pull docker@sha256:532a65324a9d6134d8137b8392ed538be1bfa18889423a454c617d72e568d472
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35528483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5f0d76229a488b008e1a6653de29e392b1055b1f587b0952f05d75bb38d8fe`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
# Thu, 05 Oct 2017 19:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 05 Oct 2017 19:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 05 Oct 2017 19:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 05 Oct 2017 19:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 05 Oct 2017 19:50:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:47 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Oct 2017 19:50:47 GMT
EXPOSE 2375/tcp
# Thu, 05 Oct 2017 19:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc078b65798f50bd3ab33a11abf5b88222dae9c3eadbb3140194884a484349b`  
		Last Modified: Thu, 05 Oct 2017 19:51:56 GMT  
		Size: 2.2 MB (2209120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1747dbd68ed05cfc1cfeb0f8ab4ccb0cb688454b1949368ec32dab1c3e5faaf`  
		Last Modified: Thu, 05 Oct 2017 19:51:56 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fc0de65b77765137adfe984b6eaa61b2550bbe5bb2246ede52c40818bbe7d`  
		Last Modified: Thu, 05 Oct 2017 19:51:55 GMT  
		Size: 176.2 KB (176199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e186780a52486cdd6e302ea73a4f37d12d681be6466fc563fdd396cf0ef32d8c`  
		Last Modified: Thu, 05 Oct 2017 19:51:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10.0-ce-rc1-git`

```console
$ docker pull docker@sha256:4922173e42d267fdbaa2acf440f27c3cd3c20b436ea476552873742d76ad9447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.10.0-ce-rc1-git` - linux; amd64

```console
$ docker pull docker@sha256:ad1cf786d5228118f095f6ea12bb2829434b3b5d7d15697e14cd31b6c774d089
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44921519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1948022efe0219d3103c97f7f80065a09e0ddee809c25c855bb1d717634047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
# Thu, 05 Oct 2017 19:50:56 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f42232a4d9f69e62a2f6f0eb5253cc659956bfd76c5ac0e472a9da0b612ef8`  
		Last Modified: Thu, 05 Oct 2017 19:52:23 GMT  
		Size: 11.8 MB (11780157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10-rc`

```console
$ docker pull docker@sha256:347105885c6ebf77f7182afa702ef19a1863310ce3f4a9b75ed413a197f33bc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.10-rc` - linux; amd64

```console
$ docker pull docker@sha256:80da0d799307865654c981d767452fdc28e214d145c3a0aceb395be1f9654c52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33141362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3000b0cf8a602cac3d7d749d0ca6acc860b540b33e1e6ccbb45bc006f26b5e71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10-rc-dind`

```console
$ docker pull docker@sha256:3aabe488df713ed905fdf0f4ec818a76803dbdfb57d6282820b5e65d49ed7dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.10-rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:532a65324a9d6134d8137b8392ed538be1bfa18889423a454c617d72e568d472
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35528483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5f0d76229a488b008e1a6653de29e392b1055b1f587b0952f05d75bb38d8fe`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
# Thu, 05 Oct 2017 19:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 05 Oct 2017 19:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 05 Oct 2017 19:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 05 Oct 2017 19:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 05 Oct 2017 19:50:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:47 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Oct 2017 19:50:47 GMT
EXPOSE 2375/tcp
# Thu, 05 Oct 2017 19:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc078b65798f50bd3ab33a11abf5b88222dae9c3eadbb3140194884a484349b`  
		Last Modified: Thu, 05 Oct 2017 19:51:56 GMT  
		Size: 2.2 MB (2209120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1747dbd68ed05cfc1cfeb0f8ab4ccb0cb688454b1949368ec32dab1c3e5faaf`  
		Last Modified: Thu, 05 Oct 2017 19:51:56 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fc0de65b77765137adfe984b6eaa61b2550bbe5bb2246ede52c40818bbe7d`  
		Last Modified: Thu, 05 Oct 2017 19:51:55 GMT  
		Size: 176.2 KB (176199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e186780a52486cdd6e302ea73a4f37d12d681be6466fc563fdd396cf0ef32d8c`  
		Last Modified: Thu, 05 Oct 2017 19:51:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.10-rc-git`

```console
$ docker pull docker@sha256:4922173e42d267fdbaa2acf440f27c3cd3c20b436ea476552873742d76ad9447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.10-rc-git` - linux; amd64

```console
$ docker pull docker@sha256:ad1cf786d5228118f095f6ea12bb2829434b3b5d7d15697e14cd31b6c774d089
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44921519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1948022efe0219d3103c97f7f80065a09e0ddee809c25c855bb1d717634047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
# Thu, 05 Oct 2017 19:50:56 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f42232a4d9f69e62a2f6f0eb5253cc659956bfd76c5ac0e472a9da0b612ef8`  
		Last Modified: Thu, 05 Oct 2017 19:52:23 GMT  
		Size: 11.8 MB (11780157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:5506acd92efcf375363cdeeceedc85d16337442c76143797541bfc3d228e466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

```console
$ docker pull docker@sha256:b41fadffcecfe92a27f2281bbf1bb8bb51e4b6a2ba7d83c9c2c9cd82e474dbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9145b364a203c0afc538ca615b3470e41729edfb7338017f5d4eeb5b13b2d90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 27 Sep 2017 20:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 27 Sep 2017 20:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 27 Sep 2017 20:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 27 Sep 2017 20:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 27 Sep 2017 20:50:48 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:48 GMT
VOLUME [/var/lib/docker]
# Wed, 27 Sep 2017 20:50:48 GMT
EXPOSE 2375/tcp
# Wed, 27 Sep 2017 20:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75929dd0d7d129b25672d717fad42b62205e655941e4313018c1b967bd5a55c8`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 2.2 MB (2209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cc445fece8b3bf3df92a8e9bda246bc4975514e32030aa2ec9c04faf4d183e`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e02310062c89da967c63fbeceddb04ba696f3f51a15a2b38b37bda9adbc279`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbd6f1217de19a56250ddac88b508caf5fa320f58bf859d9f04162b43cd402`  
		Last Modified: Wed, 27 Sep 2017 20:52:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:0d53276d97ffd1348cd1c9d56f3d1497dbd890a2060aa05fd8e8ff67a412b03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

```console
$ docker pull docker@sha256:c70d046173b8d5e769893d3af1bfa84a49e12004b1630e34e305733bf72ca1e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf1027c6e6f4d6cfee51e97130b5a0d62b32dd48e03279891cbd1f96b9669a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 11 Oct 2017 18:41:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ba896fc6fbe287bffc47d03134aa4a580a0db995e767ac6cc698caa9949c`  
		Last Modified: Wed, 11 Oct 2017 18:42:05 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:5506acd92efcf375363cdeeceedc85d16337442c76143797541bfc3d228e466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:b41fadffcecfe92a27f2281bbf1bb8bb51e4b6a2ba7d83c9c2c9cd82e474dbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9145b364a203c0afc538ca615b3470e41729edfb7338017f5d4eeb5b13b2d90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 27 Sep 2017 20:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 27 Sep 2017 20:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 27 Sep 2017 20:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 27 Sep 2017 20:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 27 Sep 2017 20:50:48 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:48 GMT
VOLUME [/var/lib/docker]
# Wed, 27 Sep 2017 20:50:48 GMT
EXPOSE 2375/tcp
# Wed, 27 Sep 2017 20:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75929dd0d7d129b25672d717fad42b62205e655941e4313018c1b967bd5a55c8`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 2.2 MB (2209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cc445fece8b3bf3df92a8e9bda246bc4975514e32030aa2ec9c04faf4d183e`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e02310062c89da967c63fbeceddb04ba696f3f51a15a2b38b37bda9adbc279`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbd6f1217de19a56250ddac88b508caf5fa320f58bf859d9f04162b43cd402`  
		Last Modified: Wed, 27 Sep 2017 20:52:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:9bdfaf061dff5dd3ccdcb857321c2204ff99d955d7a9f77c6387bca490264382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

```console
$ docker pull docker@sha256:d70e456860ea53dd58966fa717e7bfcd90bf30bfdc8ff14de3f87b919b209ae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33031907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f114d6c63208eabe25ee9639004a9afd2a3e3bd7e523ac08f5894e1d6b5c916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:5506acd92efcf375363cdeeceedc85d16337442c76143797541bfc3d228e466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:b41fadffcecfe92a27f2281bbf1bb8bb51e4b6a2ba7d83c9c2c9cd82e474dbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9145b364a203c0afc538ca615b3470e41729edfb7338017f5d4eeb5b13b2d90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 27 Sep 2017 20:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 27 Sep 2017 20:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 27 Sep 2017 20:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 27 Sep 2017 20:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 27 Sep 2017 20:50:48 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:48 GMT
VOLUME [/var/lib/docker]
# Wed, 27 Sep 2017 20:50:48 GMT
EXPOSE 2375/tcp
# Wed, 27 Sep 2017 20:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75929dd0d7d129b25672d717fad42b62205e655941e4313018c1b967bd5a55c8`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 2.2 MB (2209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cc445fece8b3bf3df92a8e9bda246bc4975514e32030aa2ec9c04faf4d183e`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e02310062c89da967c63fbeceddb04ba696f3f51a15a2b38b37bda9adbc279`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbd6f1217de19a56250ddac88b508caf5fa320f58bf859d9f04162b43cd402`  
		Last Modified: Wed, 27 Sep 2017 20:52:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:0d53276d97ffd1348cd1c9d56f3d1497dbd890a2060aa05fd8e8ff67a412b03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

```console
$ docker pull docker@sha256:c70d046173b8d5e769893d3af1bfa84a49e12004b1630e34e305733bf72ca1e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf1027c6e6f4d6cfee51e97130b5a0d62b32dd48e03279891cbd1f96b9669a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 11 Oct 2017 18:41:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ba896fc6fbe287bffc47d03134aa4a580a0db995e767ac6cc698caa9949c`  
		Last Modified: Wed, 11 Oct 2017 18:42:05 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:0d53276d97ffd1348cd1c9d56f3d1497dbd890a2060aa05fd8e8ff67a412b03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:c70d046173b8d5e769893d3af1bfa84a49e12004b1630e34e305733bf72ca1e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf1027c6e6f4d6cfee51e97130b5a0d62b32dd48e03279891cbd1f96b9669a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 11 Oct 2017 18:41:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ba896fc6fbe287bffc47d03134aa4a580a0db995e767ac6cc698caa9949c`  
		Last Modified: Wed, 11 Oct 2017 18:42:05 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:9bdfaf061dff5dd3ccdcb857321c2204ff99d955d7a9f77c6387bca490264382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:d70e456860ea53dd58966fa717e7bfcd90bf30bfdc8ff14de3f87b919b209ae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33031907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f114d6c63208eabe25ee9639004a9afd2a3e3bd7e523ac08f5894e1d6b5c916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:347105885c6ebf77f7182afa702ef19a1863310ce3f4a9b75ed413a197f33bc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:80da0d799307865654c981d767452fdc28e214d145c3a0aceb395be1f9654c52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33141362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3000b0cf8a602cac3d7d749d0ca6acc860b540b33e1e6ccbb45bc006f26b5e71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:3aabe488df713ed905fdf0f4ec818a76803dbdfb57d6282820b5e65d49ed7dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:532a65324a9d6134d8137b8392ed538be1bfa18889423a454c617d72e568d472
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35528483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5f0d76229a488b008e1a6653de29e392b1055b1f587b0952f05d75bb38d8fe`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
# Thu, 05 Oct 2017 19:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 05 Oct 2017 19:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 05 Oct 2017 19:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 05 Oct 2017 19:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 05 Oct 2017 19:50:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:47 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Oct 2017 19:50:47 GMT
EXPOSE 2375/tcp
# Thu, 05 Oct 2017 19:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc078b65798f50bd3ab33a11abf5b88222dae9c3eadbb3140194884a484349b`  
		Last Modified: Thu, 05 Oct 2017 19:51:56 GMT  
		Size: 2.2 MB (2209120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1747dbd68ed05cfc1cfeb0f8ab4ccb0cb688454b1949368ec32dab1c3e5faaf`  
		Last Modified: Thu, 05 Oct 2017 19:51:56 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fc0de65b77765137adfe984b6eaa61b2550bbe5bb2246ede52c40818bbe7d`  
		Last Modified: Thu, 05 Oct 2017 19:51:55 GMT  
		Size: 176.2 KB (176199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e186780a52486cdd6e302ea73a4f37d12d681be6466fc563fdd396cf0ef32d8c`  
		Last Modified: Thu, 05 Oct 2017 19:51:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:4922173e42d267fdbaa2acf440f27c3cd3c20b436ea476552873742d76ad9447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:ad1cf786d5228118f095f6ea12bb2829434b3b5d7d15697e14cd31b6c774d089
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44921519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1948022efe0219d3103c97f7f80065a09e0ddee809c25c855bb1d717634047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
# Thu, 05 Oct 2017 19:50:56 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f42232a4d9f69e62a2f6f0eb5253cc659956bfd76c5ac0e472a9da0b612ef8`  
		Last Modified: Thu, 05 Oct 2017 19:52:23 GMT  
		Size: 11.8 MB (11780157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:9bdfaf061dff5dd3ccdcb857321c2204ff99d955d7a9f77c6387bca490264382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:d70e456860ea53dd58966fa717e7bfcd90bf30bfdc8ff14de3f87b919b209ae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33031907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f114d6c63208eabe25ee9639004a9afd2a3e3bd7e523ac08f5894e1d6b5c916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:5506acd92efcf375363cdeeceedc85d16337442c76143797541bfc3d228e466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:b41fadffcecfe92a27f2281bbf1bb8bb51e4b6a2ba7d83c9c2c9cd82e474dbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9145b364a203c0afc538ca615b3470e41729edfb7338017f5d4eeb5b13b2d90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 27 Sep 2017 20:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 27 Sep 2017 20:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 27 Sep 2017 20:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 27 Sep 2017 20:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 27 Sep 2017 20:50:48 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:48 GMT
VOLUME [/var/lib/docker]
# Wed, 27 Sep 2017 20:50:48 GMT
EXPOSE 2375/tcp
# Wed, 27 Sep 2017 20:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75929dd0d7d129b25672d717fad42b62205e655941e4313018c1b967bd5a55c8`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 2.2 MB (2209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cc445fece8b3bf3df92a8e9bda246bc4975514e32030aa2ec9c04faf4d183e`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e02310062c89da967c63fbeceddb04ba696f3f51a15a2b38b37bda9adbc279`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbd6f1217de19a56250ddac88b508caf5fa320f58bf859d9f04162b43cd402`  
		Last Modified: Wed, 27 Sep 2017 20:52:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:0d53276d97ffd1348cd1c9d56f3d1497dbd890a2060aa05fd8e8ff67a412b03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:c70d046173b8d5e769893d3af1bfa84a49e12004b1630e34e305733bf72ca1e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf1027c6e6f4d6cfee51e97130b5a0d62b32dd48e03279891cbd1f96b9669a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 11 Oct 2017 18:41:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ba896fc6fbe287bffc47d03134aa4a580a0db995e767ac6cc698caa9949c`  
		Last Modified: Wed, 11 Oct 2017 18:42:05 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:9bdfaf061dff5dd3ccdcb857321c2204ff99d955d7a9f77c6387bca490264382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:d70e456860ea53dd58966fa717e7bfcd90bf30bfdc8ff14de3f87b919b209ae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33031907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f114d6c63208eabe25ee9639004a9afd2a3e3bd7e523ac08f5894e1d6b5c916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:5506acd92efcf375363cdeeceedc85d16337442c76143797541bfc3d228e466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:b41fadffcecfe92a27f2281bbf1bb8bb51e4b6a2ba7d83c9c2c9cd82e474dbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9145b364a203c0afc538ca615b3470e41729edfb7338017f5d4eeb5b13b2d90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 27 Sep 2017 20:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 27 Sep 2017 20:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 27 Sep 2017 20:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 27 Sep 2017 20:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 27 Sep 2017 20:50:48 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:48 GMT
VOLUME [/var/lib/docker]
# Wed, 27 Sep 2017 20:50:48 GMT
EXPOSE 2375/tcp
# Wed, 27 Sep 2017 20:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75929dd0d7d129b25672d717fad42b62205e655941e4313018c1b967bd5a55c8`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 2.2 MB (2209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cc445fece8b3bf3df92a8e9bda246bc4975514e32030aa2ec9c04faf4d183e`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e02310062c89da967c63fbeceddb04ba696f3f51a15a2b38b37bda9adbc279`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbd6f1217de19a56250ddac88b508caf5fa320f58bf859d9f04162b43cd402`  
		Last Modified: Wed, 27 Sep 2017 20:52:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:0d53276d97ffd1348cd1c9d56f3d1497dbd890a2060aa05fd8e8ff67a412b03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:c70d046173b8d5e769893d3af1bfa84a49e12004b1630e34e305733bf72ca1e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebf1027c6e6f4d6cfee51e97130b5a0d62b32dd48e03279891cbd1f96b9669a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 11 Oct 2017 18:41:40 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b78ba896fc6fbe287bffc47d03134aa4a580a0db995e767ac6cc698caa9949c`  
		Last Modified: Wed, 11 Oct 2017 18:42:05 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
