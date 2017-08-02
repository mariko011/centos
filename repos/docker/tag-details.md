<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.07.0-ce-rc1`](#docker17070-ce-rc1)
-	[`docker:17.07.0-ce`](#docker17070-ce)
-	[`docker:17.07.0`](#docker17070)
-	[`docker:17.07-rc`](#docker1707-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:test`](#dockertest)
-	[`docker:17.07.0-ce-rc1-dind`](#docker17070-ce-rc1-dind)
-	[`docker:17.07.0-ce-dind`](#docker17070-ce-dind)
-	[`docker:17.07.0-dind`](#docker17070-dind)
-	[`docker:17.07-rc-dind`](#docker1707-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:17.07.0-ce-rc1-git`](#docker17070-ce-rc1-git)
-	[`docker:17.07.0-ce-git`](#docker17070-ce-git)
-	[`docker:17.07.0-git`](#docker17070-git)
-	[`docker:17.07-rc-git`](#docker1707-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:test-git`](#dockertest-git)
-	[`docker:17.06.1-ce-rc2`](#docker17061-ce-rc2)
-	[`docker:17.06.1-ce`](#docker17061-ce)
-	[`docker:17.06.1`](#docker17061)
-	[`docker:17.06-rc`](#docker1706-rc)
-	[`docker:17.06.1-ce-rc2-dind`](#docker17061-ce-rc2-dind)
-	[`docker:17.06.1-ce-dind`](#docker17061-ce-dind)
-	[`docker:17.06.1-dind`](#docker17061-dind)
-	[`docker:17.06-rc-dind`](#docker1706-rc-dind)
-	[`docker:17.06.1-ce-rc2-git`](#docker17061-ce-rc2-git)
-	[`docker:17.06.1-ce-git`](#docker17061-ce-git)
-	[`docker:17.06.1-git`](#docker17061-git)
-	[`docker:17.06-rc-git`](#docker1706-rc-git)
-	[`docker:17.06.0-ce`](#docker17060-ce)
-	[`docker:17.06.0`](#docker17060)
-	[`docker:17.06`](#docker1706)
-	[`docker:17`](#docker17)
-	[`docker:edge`](#dockeredge)
-	[`docker:stable`](#dockerstable)
-	[`docker:latest`](#dockerlatest)
-	[`docker:17.06.0-ce-dind`](#docker17060-ce-dind)
-	[`docker:17.06.0-dind`](#docker17060-dind)
-	[`docker:17.06-dind`](#docker1706-dind)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:17.06.0-ce-git`](#docker17060-ce-git)
-	[`docker:17.06.0-git`](#docker17060-git)
-	[`docker:17.06-git`](#docker1706-git)
-	[`docker:17-git`](#docker17-git)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:git`](#dockergit)

## `docker:17.07.0-ce-rc1`

```console
$ docker pull docker@sha256:bb1897bd8309a6d5b5a7d5fcdccea18cee700c490f150749c2d1c6d10b762591
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-rc1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32801075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62aecded0be269704479426726ed70563e1f809d9111199655dd0eca9f804982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce`

```console
$ docker pull docker@sha256:bb1897bd8309a6d5b5a7d5fcdccea18cee700c490f150749c2d1c6d10b762591
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32801075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62aecded0be269704479426726ed70563e1f809d9111199655dd0eca9f804982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0`

```console
$ docker pull docker@sha256:bb1897bd8309a6d5b5a7d5fcdccea18cee700c490f150749c2d1c6d10b762591
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32801075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62aecded0be269704479426726ed70563e1f809d9111199655dd0eca9f804982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07-rc`

```console
$ docker pull docker@sha256:bb1897bd8309a6d5b5a7d5fcdccea18cee700c490f150749c2d1c6d10b762591
```

-	Platforms:
	-	linux; amd64

### `docker:17.07-rc` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32801075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62aecded0be269704479426726ed70563e1f809d9111199655dd0eca9f804982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:bb1897bd8309a6d5b5a7d5fcdccea18cee700c490f150749c2d1c6d10b762591
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32801075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62aecded0be269704479426726ed70563e1f809d9111199655dd0eca9f804982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:bb1897bd8309a6d5b5a7d5fcdccea18cee700c490f150749c2d1c6d10b762591
```

-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32801075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62aecded0be269704479426726ed70563e1f809d9111199655dd0eca9f804982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce-rc1-dind`

```console
$ docker pull docker@sha256:9e9a69755eb36822fd07a7992ba3d4de6a992e9b73481591255f4e0bb5a46118
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-rc1-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35188044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee25ffc3e20c0c870eb53dbec2d6f1eaec74571c38d680f6f0592c70728b81a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 01 Aug 2017 23:28:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 01 Aug 2017 23:28:09 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 01 Aug 2017 23:28:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 01 Aug 2017 23:28:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:13 GMT
VOLUME [/var/lib/docker]
# Tue, 01 Aug 2017 23:28:13 GMT
EXPOSE 2375/tcp
# Tue, 01 Aug 2017 23:28:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:14 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d7bc5b293344d9583f12f9794a90330a93f57490ff2a28c396d145a42a1e11`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 2.2 MB (2209053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f50b8c06248fc53a185cc1d634f567a894cd4dcd040ea2b7576a311e03116a`  
		Last Modified: Tue, 01 Aug 2017 23:29:26 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276ad24e0df933ccf55c72c0e1259b47bb57da89740bc7c79c4f3d0d9fb5835`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2659c1e48d8a33c7795049bc2c688b5bc6c2e9ed0b1df4d5b719f65186aff1a1`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce-dind`

```console
$ docker pull docker@sha256:9e9a69755eb36822fd07a7992ba3d4de6a992e9b73481591255f4e0bb5a46118
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35188044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee25ffc3e20c0c870eb53dbec2d6f1eaec74571c38d680f6f0592c70728b81a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 01 Aug 2017 23:28:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 01 Aug 2017 23:28:09 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 01 Aug 2017 23:28:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 01 Aug 2017 23:28:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:13 GMT
VOLUME [/var/lib/docker]
# Tue, 01 Aug 2017 23:28:13 GMT
EXPOSE 2375/tcp
# Tue, 01 Aug 2017 23:28:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:14 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d7bc5b293344d9583f12f9794a90330a93f57490ff2a28c396d145a42a1e11`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 2.2 MB (2209053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f50b8c06248fc53a185cc1d634f567a894cd4dcd040ea2b7576a311e03116a`  
		Last Modified: Tue, 01 Aug 2017 23:29:26 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276ad24e0df933ccf55c72c0e1259b47bb57da89740bc7c79c4f3d0d9fb5835`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2659c1e48d8a33c7795049bc2c688b5bc6c2e9ed0b1df4d5b719f65186aff1a1`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-dind`

```console
$ docker pull docker@sha256:9e9a69755eb36822fd07a7992ba3d4de6a992e9b73481591255f4e0bb5a46118
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35188044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee25ffc3e20c0c870eb53dbec2d6f1eaec74571c38d680f6f0592c70728b81a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 01 Aug 2017 23:28:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 01 Aug 2017 23:28:09 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 01 Aug 2017 23:28:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 01 Aug 2017 23:28:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:13 GMT
VOLUME [/var/lib/docker]
# Tue, 01 Aug 2017 23:28:13 GMT
EXPOSE 2375/tcp
# Tue, 01 Aug 2017 23:28:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:14 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d7bc5b293344d9583f12f9794a90330a93f57490ff2a28c396d145a42a1e11`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 2.2 MB (2209053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f50b8c06248fc53a185cc1d634f567a894cd4dcd040ea2b7576a311e03116a`  
		Last Modified: Tue, 01 Aug 2017 23:29:26 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276ad24e0df933ccf55c72c0e1259b47bb57da89740bc7c79c4f3d0d9fb5835`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2659c1e48d8a33c7795049bc2c688b5bc6c2e9ed0b1df4d5b719f65186aff1a1`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07-rc-dind`

```console
$ docker pull docker@sha256:9e9a69755eb36822fd07a7992ba3d4de6a992e9b73481591255f4e0bb5a46118
```

-	Platforms:
	-	linux; amd64

### `docker:17.07-rc-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35188044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee25ffc3e20c0c870eb53dbec2d6f1eaec74571c38d680f6f0592c70728b81a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 01 Aug 2017 23:28:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 01 Aug 2017 23:28:09 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 01 Aug 2017 23:28:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 01 Aug 2017 23:28:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:13 GMT
VOLUME [/var/lib/docker]
# Tue, 01 Aug 2017 23:28:13 GMT
EXPOSE 2375/tcp
# Tue, 01 Aug 2017 23:28:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:14 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d7bc5b293344d9583f12f9794a90330a93f57490ff2a28c396d145a42a1e11`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 2.2 MB (2209053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f50b8c06248fc53a185cc1d634f567a894cd4dcd040ea2b7576a311e03116a`  
		Last Modified: Tue, 01 Aug 2017 23:29:26 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276ad24e0df933ccf55c72c0e1259b47bb57da89740bc7c79c4f3d0d9fb5835`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2659c1e48d8a33c7795049bc2c688b5bc6c2e9ed0b1df4d5b719f65186aff1a1`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:9e9a69755eb36822fd07a7992ba3d4de6a992e9b73481591255f4e0bb5a46118
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35188044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee25ffc3e20c0c870eb53dbec2d6f1eaec74571c38d680f6f0592c70728b81a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 01 Aug 2017 23:28:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 01 Aug 2017 23:28:09 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 01 Aug 2017 23:28:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 01 Aug 2017 23:28:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:13 GMT
VOLUME [/var/lib/docker]
# Tue, 01 Aug 2017 23:28:13 GMT
EXPOSE 2375/tcp
# Tue, 01 Aug 2017 23:28:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:14 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d7bc5b293344d9583f12f9794a90330a93f57490ff2a28c396d145a42a1e11`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 2.2 MB (2209053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f50b8c06248fc53a185cc1d634f567a894cd4dcd040ea2b7576a311e03116a`  
		Last Modified: Tue, 01 Aug 2017 23:29:26 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276ad24e0df933ccf55c72c0e1259b47bb57da89740bc7c79c4f3d0d9fb5835`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2659c1e48d8a33c7795049bc2c688b5bc6c2e9ed0b1df4d5b719f65186aff1a1`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:9e9a69755eb36822fd07a7992ba3d4de6a992e9b73481591255f4e0bb5a46118
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35188044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee25ffc3e20c0c870eb53dbec2d6f1eaec74571c38d680f6f0592c70728b81a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 01 Aug 2017 23:28:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 01 Aug 2017 23:28:09 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 01 Aug 2017 23:28:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 01 Aug 2017 23:28:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:13 GMT
VOLUME [/var/lib/docker]
# Tue, 01 Aug 2017 23:28:13 GMT
EXPOSE 2375/tcp
# Tue, 01 Aug 2017 23:28:14 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:14 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d7bc5b293344d9583f12f9794a90330a93f57490ff2a28c396d145a42a1e11`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 2.2 MB (2209053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f50b8c06248fc53a185cc1d634f567a894cd4dcd040ea2b7576a311e03116a`  
		Last Modified: Tue, 01 Aug 2017 23:29:26 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276ad24e0df933ccf55c72c0e1259b47bb57da89740bc7c79c4f3d0d9fb5835`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2659c1e48d8a33c7795049bc2c688b5bc6c2e9ed0b1df4d5b719f65186aff1a1`  
		Last Modified: Tue, 01 Aug 2017 23:29:27 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce-rc1-git`

```console
$ docker pull docker@sha256:9650bf2cd5c94d68564b0e4d095a18b5ccb6e4959fbe7931e5ce00943b8f1afd
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-rc1-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44533782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1b78e9cb07171f33d241ecbcbe3b9beb5b46d6212eda6be075960caffa0e39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:36 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7427d26ce40b6313f9164dc71b7b8640d75ffbf932a00d5e70b5f1b17769907f`  
		Last Modified: Tue, 01 Aug 2017 23:30:04 GMT  
		Size: 11.7 MB (11732707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce-git`

```console
$ docker pull docker@sha256:9650bf2cd5c94d68564b0e4d095a18b5ccb6e4959fbe7931e5ce00943b8f1afd
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44533782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1b78e9cb07171f33d241ecbcbe3b9beb5b46d6212eda6be075960caffa0e39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:36 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7427d26ce40b6313f9164dc71b7b8640d75ffbf932a00d5e70b5f1b17769907f`  
		Last Modified: Tue, 01 Aug 2017 23:30:04 GMT  
		Size: 11.7 MB (11732707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-git`

```console
$ docker pull docker@sha256:9650bf2cd5c94d68564b0e4d095a18b5ccb6e4959fbe7931e5ce00943b8f1afd
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44533782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1b78e9cb07171f33d241ecbcbe3b9beb5b46d6212eda6be075960caffa0e39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:36 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7427d26ce40b6313f9164dc71b7b8640d75ffbf932a00d5e70b5f1b17769907f`  
		Last Modified: Tue, 01 Aug 2017 23:30:04 GMT  
		Size: 11.7 MB (11732707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07-rc-git`

```console
$ docker pull docker@sha256:9650bf2cd5c94d68564b0e4d095a18b5ccb6e4959fbe7931e5ce00943b8f1afd
```

-	Platforms:
	-	linux; amd64

### `docker:17.07-rc-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44533782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1b78e9cb07171f33d241ecbcbe3b9beb5b46d6212eda6be075960caffa0e39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:36 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7427d26ce40b6313f9164dc71b7b8640d75ffbf932a00d5e70b5f1b17769907f`  
		Last Modified: Tue, 01 Aug 2017 23:30:04 GMT  
		Size: 11.7 MB (11732707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:9650bf2cd5c94d68564b0e4d095a18b5ccb6e4959fbe7931e5ce00943b8f1afd
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44533782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1b78e9cb07171f33d241ecbcbe3b9beb5b46d6212eda6be075960caffa0e39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:36 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7427d26ce40b6313f9164dc71b7b8640d75ffbf932a00d5e70b5f1b17769907f`  
		Last Modified: Tue, 01 Aug 2017 23:30:04 GMT  
		Size: 11.7 MB (11732707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:9650bf2cd5c94d68564b0e4d095a18b5ccb6e4959fbe7931e5ce00943b8f1afd
```

-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44533782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1b78e9cb07171f33d241ecbcbe3b9beb5b46d6212eda6be075960caffa0e39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Tue, 01 Aug 2017 23:28:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 01 Aug 2017 23:28:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 01 Aug 2017 23:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Aug 2017 23:28:01 GMT
CMD ["sh"]
# Tue, 01 Aug 2017 23:28:36 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8486e96c03c91627d651272f331a5219d5f31745a31d7eae3653cfdcfc424410`  
		Last Modified: Tue, 01 Aug 2017 23:28:52 GMT  
		Size: 30.5 MB (30458642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20644ef8d1e8fa923942e412d7f107919cb376e7ae54edc0f9f114f4a67a525`  
		Last Modified: Tue, 01 Aug 2017 23:28:45 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7427d26ce40b6313f9164dc71b7b8640d75ffbf932a00d5e70b5f1b17769907f`  
		Last Modified: Tue, 01 Aug 2017 23:30:04 GMT  
		Size: 11.7 MB (11732707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-rc2`

```console
$ docker pull docker@sha256:170d77ea5c7dc50973a19d17988a3a9f223baff1a67f0e929530c9c34fc15744
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-rc2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32358861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba61d082cefddead9f56fdadefc665018b7adb7e8ebcfebefdef77d691764c04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce`

```console
$ docker pull docker@sha256:170d77ea5c7dc50973a19d17988a3a9f223baff1a67f0e929530c9c34fc15744
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32358861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba61d082cefddead9f56fdadefc665018b7adb7e8ebcfebefdef77d691764c04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1`

```console
$ docker pull docker@sha256:170d77ea5c7dc50973a19d17988a3a9f223baff1a67f0e929530c9c34fc15744
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32358861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba61d082cefddead9f56fdadefc665018b7adb7e8ebcfebefdef77d691764c04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc`

```console
$ docker pull docker@sha256:170d77ea5c7dc50973a19d17988a3a9f223baff1a67f0e929530c9c34fc15744
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32358861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba61d082cefddead9f56fdadefc665018b7adb7e8ebcfebefdef77d691764c04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-rc2-dind`

```console
$ docker pull docker@sha256:699d5da8bdf4a8fd133f000ebd749c817c1fa67456c425d9679e3c61402456ee
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-rc2-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34745844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca79b6895cf916f3e5b0b20e31710d6c5e58d8f2c6ce14df620cb3db1eb3a1fd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:45:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 27 Jul 2017 18:45:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 27 Jul 2017 18:45:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 27 Jul 2017 18:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 27 Jul 2017 18:45:31 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:32 GMT
VOLUME [/var/lib/docker]
# Thu, 27 Jul 2017 18:45:32 GMT
EXPOSE 2375/tcp
# Thu, 27 Jul 2017 18:45:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:32 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeae0b16b30f9e44fc90277529b0100cc6b6d82b3c54ed5deaac5c784c559798`  
		Last Modified: Thu, 27 Jul 2017 18:47:57 GMT  
		Size: 2.2 MB (2209059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7bc0c57485491ca3acc849e6917082a8514619226b9fe9be03a5d63df49627`  
		Last Modified: Thu, 27 Jul 2017 18:47:57 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96013271f3e5630cadbce9005511f0a82396b5d5e2d58827c047cdf490a8fd3e`  
		Last Modified: Thu, 27 Jul 2017 18:47:56 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800207473e8cbbfbf7ff72aa6a36b828c2660a03db34372c75425b03aad3351`  
		Last Modified: Thu, 27 Jul 2017 18:47:56 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-dind`

```console
$ docker pull docker@sha256:699d5da8bdf4a8fd133f000ebd749c817c1fa67456c425d9679e3c61402456ee
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34745844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca79b6895cf916f3e5b0b20e31710d6c5e58d8f2c6ce14df620cb3db1eb3a1fd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:45:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 27 Jul 2017 18:45:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 27 Jul 2017 18:45:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 27 Jul 2017 18:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 27 Jul 2017 18:45:31 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:32 GMT
VOLUME [/var/lib/docker]
# Thu, 27 Jul 2017 18:45:32 GMT
EXPOSE 2375/tcp
# Thu, 27 Jul 2017 18:45:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:32 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeae0b16b30f9e44fc90277529b0100cc6b6d82b3c54ed5deaac5c784c559798`  
		Last Modified: Thu, 27 Jul 2017 18:47:57 GMT  
		Size: 2.2 MB (2209059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7bc0c57485491ca3acc849e6917082a8514619226b9fe9be03a5d63df49627`  
		Last Modified: Thu, 27 Jul 2017 18:47:57 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96013271f3e5630cadbce9005511f0a82396b5d5e2d58827c047cdf490a8fd3e`  
		Last Modified: Thu, 27 Jul 2017 18:47:56 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800207473e8cbbfbf7ff72aa6a36b828c2660a03db34372c75425b03aad3351`  
		Last Modified: Thu, 27 Jul 2017 18:47:56 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-dind`

```console
$ docker pull docker@sha256:699d5da8bdf4a8fd133f000ebd749c817c1fa67456c425d9679e3c61402456ee
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34745844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca79b6895cf916f3e5b0b20e31710d6c5e58d8f2c6ce14df620cb3db1eb3a1fd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:45:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 27 Jul 2017 18:45:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 27 Jul 2017 18:45:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 27 Jul 2017 18:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 27 Jul 2017 18:45:31 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:32 GMT
VOLUME [/var/lib/docker]
# Thu, 27 Jul 2017 18:45:32 GMT
EXPOSE 2375/tcp
# Thu, 27 Jul 2017 18:45:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:32 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeae0b16b30f9e44fc90277529b0100cc6b6d82b3c54ed5deaac5c784c559798`  
		Last Modified: Thu, 27 Jul 2017 18:47:57 GMT  
		Size: 2.2 MB (2209059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7bc0c57485491ca3acc849e6917082a8514619226b9fe9be03a5d63df49627`  
		Last Modified: Thu, 27 Jul 2017 18:47:57 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96013271f3e5630cadbce9005511f0a82396b5d5e2d58827c047cdf490a8fd3e`  
		Last Modified: Thu, 27 Jul 2017 18:47:56 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800207473e8cbbfbf7ff72aa6a36b828c2660a03db34372c75425b03aad3351`  
		Last Modified: Thu, 27 Jul 2017 18:47:56 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-dind`

```console
$ docker pull docker@sha256:699d5da8bdf4a8fd133f000ebd749c817c1fa67456c425d9679e3c61402456ee
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34745844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca79b6895cf916f3e5b0b20e31710d6c5e58d8f2c6ce14df620cb3db1eb3a1fd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:45:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 27 Jul 2017 18:45:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 27 Jul 2017 18:45:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 27 Jul 2017 18:45:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 27 Jul 2017 18:45:31 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:32 GMT
VOLUME [/var/lib/docker]
# Thu, 27 Jul 2017 18:45:32 GMT
EXPOSE 2375/tcp
# Thu, 27 Jul 2017 18:45:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:32 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeae0b16b30f9e44fc90277529b0100cc6b6d82b3c54ed5deaac5c784c559798`  
		Last Modified: Thu, 27 Jul 2017 18:47:57 GMT  
		Size: 2.2 MB (2209059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7bc0c57485491ca3acc849e6917082a8514619226b9fe9be03a5d63df49627`  
		Last Modified: Thu, 27 Jul 2017 18:47:57 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96013271f3e5630cadbce9005511f0a82396b5d5e2d58827c047cdf490a8fd3e`  
		Last Modified: Thu, 27 Jul 2017 18:47:56 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800207473e8cbbfbf7ff72aa6a36b828c2660a03db34372c75425b03aad3351`  
		Last Modified: Thu, 27 Jul 2017 18:47:56 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-rc2-git`

```console
$ docker pull docker@sha256:ebc922a88629579624ef156348451cc8f4fc962776298e5844876b72b3fa6c26
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-rc2-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44091552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e464bc53e8aa557535385780427ecd567101c08278e6af39c267ad2b18dc8e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:45:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979b04c691015a851e1a1d8c6ed1eb195cb5bc8bc39b442ac4be1f54dffebbc3`  
		Last Modified: Thu, 27 Jul 2017 18:48:25 GMT  
		Size: 11.7 MB (11732691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-git`

```console
$ docker pull docker@sha256:ebc922a88629579624ef156348451cc8f4fc962776298e5844876b72b3fa6c26
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44091552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e464bc53e8aa557535385780427ecd567101c08278e6af39c267ad2b18dc8e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:45:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979b04c691015a851e1a1d8c6ed1eb195cb5bc8bc39b442ac4be1f54dffebbc3`  
		Last Modified: Thu, 27 Jul 2017 18:48:25 GMT  
		Size: 11.7 MB (11732691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-git`

```console
$ docker pull docker@sha256:ebc922a88629579624ef156348451cc8f4fc962776298e5844876b72b3fa6c26
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44091552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e464bc53e8aa557535385780427ecd567101c08278e6af39c267ad2b18dc8e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:45:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979b04c691015a851e1a1d8c6ed1eb195cb5bc8bc39b442ac4be1f54dffebbc3`  
		Last Modified: Thu, 27 Jul 2017 18:48:25 GMT  
		Size: 11.7 MB (11732691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-git`

```console
$ docker pull docker@sha256:ebc922a88629579624ef156348451cc8f4fc962776298e5844876b72b3fa6c26
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44091552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e464bc53e8aa557535385780427ecd567101c08278e6af39c267ad2b18dc8e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Thu, 27 Jul 2017 18:45:09 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc2
# Thu, 27 Jul 2017 18:45:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 27 Jul 2017 18:45:18 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 27 Jul 2017 18:45:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Jul 2017 18:45:19 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:45:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b4f63d504eff9fffd8bfb752a5533f3c7401d1a717903faaff443cde19b9d`  
		Last Modified: Thu, 27 Jul 2017 18:47:30 GMT  
		Size: 30.0 MB (30016427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ccdb01dcc7c38777e41d7332d75f03c88cb1525dfeee94e171d4c3ea8254c5`  
		Last Modified: Thu, 27 Jul 2017 18:47:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979b04c691015a851e1a1d8c6ed1eb195cb5bc8bc39b442ac4be1f54dffebbc3`  
		Last Modified: Thu, 27 Jul 2017 18:48:25 GMT  
		Size: 11.7 MB (11732691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce`

```console
$ docker pull docker@sha256:37b446cf66f028b60b2704015a601839ff1a28892006cd77684422beaf02ca58
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e3edb771f334fbc2e1941b22a0b3ecd8545a86744ce8fc2fe98a3d5774273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0`

```console
$ docker pull docker@sha256:37b446cf66f028b60b2704015a601839ff1a28892006cd77684422beaf02ca58
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e3edb771f334fbc2e1941b22a0b3ecd8545a86744ce8fc2fe98a3d5774273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06`

```console
$ docker pull docker@sha256:37b446cf66f028b60b2704015a601839ff1a28892006cd77684422beaf02ca58
```

-	Platforms:
	-	linux; amd64

### `docker:17.06` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e3edb771f334fbc2e1941b22a0b3ecd8545a86744ce8fc2fe98a3d5774273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:37b446cf66f028b60b2704015a601839ff1a28892006cd77684422beaf02ca58
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e3edb771f334fbc2e1941b22a0b3ecd8545a86744ce8fc2fe98a3d5774273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:37b446cf66f028b60b2704015a601839ff1a28892006cd77684422beaf02ca58
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e3edb771f334fbc2e1941b22a0b3ecd8545a86744ce8fc2fe98a3d5774273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:37b446cf66f028b60b2704015a601839ff1a28892006cd77684422beaf02ca58
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e3edb771f334fbc2e1941b22a0b3ecd8545a86744ce8fc2fe98a3d5774273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:37b446cf66f028b60b2704015a601839ff1a28892006cd77684422beaf02ca58
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e3edb771f334fbc2e1941b22a0b3ecd8545a86744ce8fc2fe98a3d5774273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-dind`

```console
$ docker pull docker@sha256:f7f89123cca4f27930c776ee24d8a4959ee8ca9ca20682bd6c680ed8db9ae5ea
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5096e5a0cba00693905879b09e24a487dc244b56e8e15349fd5b71b432c6ec9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:35:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:36:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:36:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:36:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:37:20 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:37:21 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:37:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:37:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc3e53b54a0f2e00ebe105c412093834b0f7c41f596b193792361fd10eee0e8`  
		Last Modified: Thu, 29 Jun 2017 22:03:13 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc1d8eb0881cebcbd3a3a830fdcecb66634bc9660ad76382566db5e442043f`  
		Last Modified: Thu, 29 Jun 2017 22:03:11 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2bfa9e3965129f2f3d16daf2a45f154edd68012206c3542bd6d1c7b6002328`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5bc16f4c0974211a256b560ec6bc19ac34ed02f01fd365ad7b057fa40ff16d`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-dind`

```console
$ docker pull docker@sha256:f7f89123cca4f27930c776ee24d8a4959ee8ca9ca20682bd6c680ed8db9ae5ea
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5096e5a0cba00693905879b09e24a487dc244b56e8e15349fd5b71b432c6ec9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:35:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:36:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:36:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:36:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:37:20 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:37:21 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:37:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:37:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc3e53b54a0f2e00ebe105c412093834b0f7c41f596b193792361fd10eee0e8`  
		Last Modified: Thu, 29 Jun 2017 22:03:13 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc1d8eb0881cebcbd3a3a830fdcecb66634bc9660ad76382566db5e442043f`  
		Last Modified: Thu, 29 Jun 2017 22:03:11 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2bfa9e3965129f2f3d16daf2a45f154edd68012206c3542bd6d1c7b6002328`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5bc16f4c0974211a256b560ec6bc19ac34ed02f01fd365ad7b057fa40ff16d`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-dind`

```console
$ docker pull docker@sha256:f7f89123cca4f27930c776ee24d8a4959ee8ca9ca20682bd6c680ed8db9ae5ea
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5096e5a0cba00693905879b09e24a487dc244b56e8e15349fd5b71b432c6ec9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:35:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:36:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:36:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:36:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:37:20 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:37:21 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:37:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:37:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc3e53b54a0f2e00ebe105c412093834b0f7c41f596b193792361fd10eee0e8`  
		Last Modified: Thu, 29 Jun 2017 22:03:13 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc1d8eb0881cebcbd3a3a830fdcecb66634bc9660ad76382566db5e442043f`  
		Last Modified: Thu, 29 Jun 2017 22:03:11 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2bfa9e3965129f2f3d16daf2a45f154edd68012206c3542bd6d1c7b6002328`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5bc16f4c0974211a256b560ec6bc19ac34ed02f01fd365ad7b057fa40ff16d`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:f7f89123cca4f27930c776ee24d8a4959ee8ca9ca20682bd6c680ed8db9ae5ea
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5096e5a0cba00693905879b09e24a487dc244b56e8e15349fd5b71b432c6ec9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:35:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:36:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:36:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:36:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:37:20 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:37:21 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:37:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:37:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc3e53b54a0f2e00ebe105c412093834b0f7c41f596b193792361fd10eee0e8`  
		Last Modified: Thu, 29 Jun 2017 22:03:13 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc1d8eb0881cebcbd3a3a830fdcecb66634bc9660ad76382566db5e442043f`  
		Last Modified: Thu, 29 Jun 2017 22:03:11 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2bfa9e3965129f2f3d16daf2a45f154edd68012206c3542bd6d1c7b6002328`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5bc16f4c0974211a256b560ec6bc19ac34ed02f01fd365ad7b057fa40ff16d`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:f7f89123cca4f27930c776ee24d8a4959ee8ca9ca20682bd6c680ed8db9ae5ea
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5096e5a0cba00693905879b09e24a487dc244b56e8e15349fd5b71b432c6ec9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:35:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:36:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:36:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:36:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:37:20 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:37:21 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:37:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:37:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc3e53b54a0f2e00ebe105c412093834b0f7c41f596b193792361fd10eee0e8`  
		Last Modified: Thu, 29 Jun 2017 22:03:13 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc1d8eb0881cebcbd3a3a830fdcecb66634bc9660ad76382566db5e442043f`  
		Last Modified: Thu, 29 Jun 2017 22:03:11 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2bfa9e3965129f2f3d16daf2a45f154edd68012206c3542bd6d1c7b6002328`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5bc16f4c0974211a256b560ec6bc19ac34ed02f01fd365ad7b057fa40ff16d`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:f7f89123cca4f27930c776ee24d8a4959ee8ca9ca20682bd6c680ed8db9ae5ea
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5096e5a0cba00693905879b09e24a487dc244b56e8e15349fd5b71b432c6ec9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:35:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:36:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:36:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:36:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:37:20 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:37:21 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:37:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:37:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc3e53b54a0f2e00ebe105c412093834b0f7c41f596b193792361fd10eee0e8`  
		Last Modified: Thu, 29 Jun 2017 22:03:13 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc1d8eb0881cebcbd3a3a830fdcecb66634bc9660ad76382566db5e442043f`  
		Last Modified: Thu, 29 Jun 2017 22:03:11 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2bfa9e3965129f2f3d16daf2a45f154edd68012206c3542bd6d1c7b6002328`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5bc16f4c0974211a256b560ec6bc19ac34ed02f01fd365ad7b057fa40ff16d`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:f7f89123cca4f27930c776ee24d8a4959ee8ca9ca20682bd6c680ed8db9ae5ea
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5096e5a0cba00693905879b09e24a487dc244b56e8e15349fd5b71b432c6ec9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:35:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:36:22 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:36:23 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:36:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:37:20 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:37:21 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:37:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:37:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc3e53b54a0f2e00ebe105c412093834b0f7c41f596b193792361fd10eee0e8`  
		Last Modified: Thu, 29 Jun 2017 22:03:13 GMT  
		Size: 2.2 MB (2209037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc1d8eb0881cebcbd3a3a830fdcecb66634bc9660ad76382566db5e442043f`  
		Last Modified: Thu, 29 Jun 2017 22:03:11 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2bfa9e3965129f2f3d16daf2a45f154edd68012206c3542bd6d1c7b6002328`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5bc16f4c0974211a256b560ec6bc19ac34ed02f01fd365ad7b057fa40ff16d`  
		Last Modified: Thu, 29 Jun 2017 22:03:12 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-git`

```console
$ docker pull docker@sha256:b5ff49006c6d5f6a4962953c6cafe3949c43f342c1eea84c12b76a9f5f4a1777
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13455d9a5a879f7bfe41124a4c5eec4fdbef760d02e5600ba3f736a5c24e499d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:38:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec33fee374b5eaa2c128a4ebec674fad8ef1036d765fa8da9c7a638b2027ce71`  
		Last Modified: Thu, 29 Jun 2017 22:08:12 GMT  
		Size: 11.7 MB (11732680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-git`

```console
$ docker pull docker@sha256:b5ff49006c6d5f6a4962953c6cafe3949c43f342c1eea84c12b76a9f5f4a1777
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13455d9a5a879f7bfe41124a4c5eec4fdbef760d02e5600ba3f736a5c24e499d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:38:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec33fee374b5eaa2c128a4ebec674fad8ef1036d765fa8da9c7a638b2027ce71`  
		Last Modified: Thu, 29 Jun 2017 22:08:12 GMT  
		Size: 11.7 MB (11732680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-git`

```console
$ docker pull docker@sha256:b5ff49006c6d5f6a4962953c6cafe3949c43f342c1eea84c12b76a9f5f4a1777
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13455d9a5a879f7bfe41124a4c5eec4fdbef760d02e5600ba3f736a5c24e499d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:38:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec33fee374b5eaa2c128a4ebec674fad8ef1036d765fa8da9c7a638b2027ce71`  
		Last Modified: Thu, 29 Jun 2017 22:08:12 GMT  
		Size: 11.7 MB (11732680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:b5ff49006c6d5f6a4962953c6cafe3949c43f342c1eea84c12b76a9f5f4a1777
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13455d9a5a879f7bfe41124a4c5eec4fdbef760d02e5600ba3f736a5c24e499d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:38:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec33fee374b5eaa2c128a4ebec674fad8ef1036d765fa8da9c7a638b2027ce71`  
		Last Modified: Thu, 29 Jun 2017 22:08:12 GMT  
		Size: 11.7 MB (11732680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:b5ff49006c6d5f6a4962953c6cafe3949c43f342c1eea84c12b76a9f5f4a1777
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13455d9a5a879f7bfe41124a4c5eec4fdbef760d02e5600ba3f736a5c24e499d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:38:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec33fee374b5eaa2c128a4ebec674fad8ef1036d765fa8da9c7a638b2027ce71`  
		Last Modified: Thu, 29 Jun 2017 22:08:12 GMT  
		Size: 11.7 MB (11732680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:b5ff49006c6d5f6a4962953c6cafe3949c43f342c1eea84c12b76a9f5f4a1777
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13455d9a5a879f7bfe41124a4c5eec4fdbef760d02e5600ba3f736a5c24e499d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:38:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec33fee374b5eaa2c128a4ebec674fad8ef1036d765fa8da9c7a638b2027ce71`  
		Last Modified: Thu, 29 Jun 2017 22:08:12 GMT  
		Size: 11.7 MB (11732680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:b5ff49006c6d5f6a4962953c6cafe3949c43f342c1eea84c12b76a9f5f4a1777
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13455d9a5a879f7bfe41124a4c5eec4fdbef760d02e5600ba3f736a5c24e499d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:38:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec33fee374b5eaa2c128a4ebec674fad8ef1036d765fa8da9c7a638b2027ce71`  
		Last Modified: Thu, 29 Jun 2017 22:08:12 GMT  
		Size: 11.7 MB (11732680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
