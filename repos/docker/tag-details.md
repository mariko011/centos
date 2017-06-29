<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.06.0-ce`](#docker17060-ce)
-	[`docker:17.06.0`](#docker17060)
-	[`docker:17.06`](#docker1706)
-	[`docker:17`](#docker17)
-	[`docker:latest`](#dockerlatest)
-	[`docker:edge`](#dockeredge)
-	[`docker:17.06.0-ce-dind`](#docker17060-ce-dind)
-	[`docker:17.06.0-dind`](#docker17060-dind)
-	[`docker:17.06-dind`](#docker1706-dind)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:17.06.0-ce-git`](#docker17060-ce-git)
-	[`docker:17.06.0-git`](#docker17060-git)
-	[`docker:17.06-git`](#docker1706-git)
-	[`docker:17-git`](#docker17-git)
-	[`docker:git`](#dockergit)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:17.03.2-ce`](#docker17032-ce)
-	[`docker:17.03.2`](#docker17032)
-	[`docker:17.03`](#docker1703)
-	[`docker:stable`](#dockerstable)
-	[`docker:17.03.2-ce-dind`](#docker17032-ce-dind)
-	[`docker:17.03.2-dind`](#docker17032-dind)
-	[`docker:17.03-dind`](#docker1703-dind)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:17.03.2-ce-git`](#docker17032-ce-git)
-	[`docker:17.03.2-git`](#docker17032-git)
-	[`docker:17.03-git`](#docker1703-git)
-	[`docker:stable-git`](#dockerstable-git)

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
$ docker pull docker@sha256:2027eef029c1d505f2fff961861e4b5a625fe6b91cab44c4b4d1deac84d598fa
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c782f9e885f86c3c9349cecb14040adf553d215ccf66eb4cbcc14b17eacce159`
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
# Tue, 27 Jun 2017 20:22:18 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Tue, 27 Jun 2017 20:22:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:22:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:22:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:22:29 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:23:17 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:23:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:23:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:23:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:23:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:23:30 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:23:31 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:23:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:23:32 GMT
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
	-	`sha256:90923aae65fd46fce968e67c853cc698ebc4c2829d89636f0cf8286a72e7c835`  
		Last Modified: Thu, 29 Jun 2017 19:32:36 GMT  
		Size: 30.0 MB (29988354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129b305fe40fec0e417bd8c3b55c229fb49a370406576dfe6c62c7c39f3e00f8`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4e400f37f98c7bed7a53496f21bd6cb89a36700cc730e8947296a9c4e9b1ca`  
		Last Modified: Thu, 29 Jun 2017 19:37:30 GMT  
		Size: 2.2 MB (2209068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd6a7d18a9ebefef9bbb3e8be72a8069057b15da9c192660f11322b974ce52f`  
		Last Modified: Thu, 29 Jun 2017 19:37:30 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5210fe6ba463d8670d08e67d135fd2ddc6ea5b314eba81ba4370f08ce8b1f0bb`  
		Last Modified: Thu, 29 Jun 2017 19:37:30 GMT  
		Size: 176.2 KB (176153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e05b4442b3b7282b9214b07602096858b11143788a1e150aa00b3857e46015`  
		Last Modified: Thu, 29 Jun 2017 19:37:30 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-dind`

**does not exist** (yet?)

## `docker:17-dind`

```console
$ docker pull docker@sha256:5a6f66c29f5bf8f6211d7965750d52748f927ff90d519fcbe7e8e34d5d8f5a3d
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b0daf021803454169fca62f03ee99744ddf1fd14db23f760b0b86856ae04de`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:10:08 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 27 Jun 2017 20:10:09 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 27 Jun 2017 20:10:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:10:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:10:38 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:11:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:12:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:12:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:12:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:12:49 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:12:50 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:12:50 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:12:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:12:52 GMT
CMD []
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43208f2470b65c026864a1c56ba036f108fdafd39bed260219a2f1499b837469`  
		Last Modified: Thu, 29 Jun 2017 19:23:35 GMT  
		Size: 28.8 MB (28753637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d21c6620031b042f894308db6d47a60e7692a3d01500a7edfb7de6b93bc5e`  
		Last Modified: Thu, 29 Jun 2017 19:23:27 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b424c2063478e22280c96be1a5fba1a84a9a3ce18482d206c1dba03ddb14f89c`  
		Last Modified: Thu, 29 Jun 2017 19:26:24 GMT  
		Size: 2.2 MB (2165478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3993be2281a65719f2586082c1d94852009ffa6166bace496794a2cf018a51`  
		Last Modified: Thu, 29 Jun 2017 19:26:23 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704b937b7ad51e103c270d82cb49e4226cd1988eb6e17c022b752bf646b0a802`  
		Last Modified: Thu, 29 Jun 2017 19:26:24 GMT  
		Size: 175.7 KB (175673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc02341a24559ba0aba2f5c3778da84354d5b5cdfa74e3540dc372faf2c2c555`  
		Last Modified: Thu, 29 Jun 2017 19:26:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:5a6f66c29f5bf8f6211d7965750d52748f927ff90d519fcbe7e8e34d5d8f5a3d
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b0daf021803454169fca62f03ee99744ddf1fd14db23f760b0b86856ae04de`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:10:08 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 27 Jun 2017 20:10:09 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 27 Jun 2017 20:10:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:10:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:10:38 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:11:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:12:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:12:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:12:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:12:49 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:12:50 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:12:50 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:12:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:12:52 GMT
CMD []
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43208f2470b65c026864a1c56ba036f108fdafd39bed260219a2f1499b837469`  
		Last Modified: Thu, 29 Jun 2017 19:23:35 GMT  
		Size: 28.8 MB (28753637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d21c6620031b042f894308db6d47a60e7692a3d01500a7edfb7de6b93bc5e`  
		Last Modified: Thu, 29 Jun 2017 19:23:27 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b424c2063478e22280c96be1a5fba1a84a9a3ce18482d206c1dba03ddb14f89c`  
		Last Modified: Thu, 29 Jun 2017 19:26:24 GMT  
		Size: 2.2 MB (2165478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3993be2281a65719f2586082c1d94852009ffa6166bace496794a2cf018a51`  
		Last Modified: Thu, 29 Jun 2017 19:26:23 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704b937b7ad51e103c270d82cb49e4226cd1988eb6e17c022b752bf646b0a802`  
		Last Modified: Thu, 29 Jun 2017 19:26:24 GMT  
		Size: 175.7 KB (175673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc02341a24559ba0aba2f5c3778da84354d5b5cdfa74e3540dc372faf2c2c555`  
		Last Modified: Thu, 29 Jun 2017 19:26:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:5a6f66c29f5bf8f6211d7965750d52748f927ff90d519fcbe7e8e34d5d8f5a3d
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b0daf021803454169fca62f03ee99744ddf1fd14db23f760b0b86856ae04de`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:10:08 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 27 Jun 2017 20:10:09 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 27 Jun 2017 20:10:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:10:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:10:38 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:11:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:12:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:12:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:12:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:12:49 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:12:50 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:12:50 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:12:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:12:52 GMT
CMD []
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43208f2470b65c026864a1c56ba036f108fdafd39bed260219a2f1499b837469`  
		Last Modified: Thu, 29 Jun 2017 19:23:35 GMT  
		Size: 28.8 MB (28753637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d21c6620031b042f894308db6d47a60e7692a3d01500a7edfb7de6b93bc5e`  
		Last Modified: Thu, 29 Jun 2017 19:23:27 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b424c2063478e22280c96be1a5fba1a84a9a3ce18482d206c1dba03ddb14f89c`  
		Last Modified: Thu, 29 Jun 2017 19:26:24 GMT  
		Size: 2.2 MB (2165478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3993be2281a65719f2586082c1d94852009ffa6166bace496794a2cf018a51`  
		Last Modified: Thu, 29 Jun 2017 19:26:23 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704b937b7ad51e103c270d82cb49e4226cd1988eb6e17c022b752bf646b0a802`  
		Last Modified: Thu, 29 Jun 2017 19:26:24 GMT  
		Size: 175.7 KB (175673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc02341a24559ba0aba2f5c3778da84354d5b5cdfa74e3540dc372faf2c2c555`  
		Last Modified: Thu, 29 Jun 2017 19:26:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-git`

```console
$ docker pull docker@sha256:175d36ea5d0a21de03aa7b678e2fe3bd95c96a125ed596fec5e0f9db61bce40a
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:391ae933c9db0f657aefdf9fe30aaf22d0d2e21c8e270cfa3440b27d4041f3bf`
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
# Tue, 27 Jun 2017 20:22:18 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Tue, 27 Jun 2017 20:22:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:22:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:22:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:22:29 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:52:41 GMT
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
	-	`sha256:90923aae65fd46fce968e67c853cc698ebc4c2829d89636f0cf8286a72e7c835`  
		Last Modified: Thu, 29 Jun 2017 19:32:36 GMT  
		Size: 30.0 MB (29988354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129b305fe40fec0e417bd8c3b55c229fb49a370406576dfe6c62c7c39f3e00f8`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac57c0f3421ef3900af41385d2fd9a38fb1c290d0ffb1f8eb1f99aea9ead53e`  
		Last Modified: Thu, 29 Jun 2017 19:42:32 GMT  
		Size: 11.7 MB (11732690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-git`

```console
$ docker pull docker@sha256:175d36ea5d0a21de03aa7b678e2fe3bd95c96a125ed596fec5e0f9db61bce40a
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:391ae933c9db0f657aefdf9fe30aaf22d0d2e21c8e270cfa3440b27d4041f3bf`
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
# Tue, 27 Jun 2017 20:22:18 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Tue, 27 Jun 2017 20:22:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:22:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:22:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:22:29 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:52:41 GMT
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
	-	`sha256:90923aae65fd46fce968e67c853cc698ebc4c2829d89636f0cf8286a72e7c835`  
		Last Modified: Thu, 29 Jun 2017 19:32:36 GMT  
		Size: 30.0 MB (29988354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129b305fe40fec0e417bd8c3b55c229fb49a370406576dfe6c62c7c39f3e00f8`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac57c0f3421ef3900af41385d2fd9a38fb1c290d0ffb1f8eb1f99aea9ead53e`  
		Last Modified: Thu, 29 Jun 2017 19:42:32 GMT  
		Size: 11.7 MB (11732690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-git`

**does not exist** (yet?)

## `docker:17-git`

```console
$ docker pull docker@sha256:5e74b427a55b7e257c7f9ebba1f7765fe13ea4535debec33a9ea08a69296b2bd
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be05d92ad57e639a101ee651a626a5d8e9084093df2646a5bc7de1b74b8fff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:10:08 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 27 Jun 2017 20:10:09 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 27 Jun 2017 20:10:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:10:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:10:38 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:14:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43208f2470b65c026864a1c56ba036f108fdafd39bed260219a2f1499b837469`  
		Last Modified: Thu, 29 Jun 2017 19:23:35 GMT  
		Size: 28.8 MB (28753637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d21c6620031b042f894308db6d47a60e7692a3d01500a7edfb7de6b93bc5e`  
		Last Modified: Thu, 29 Jun 2017 19:23:27 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374a9fe43e5c23da1d913d110ab6b210626902ec6d3a676b38db64106fa47896`  
		Last Modified: Thu, 29 Jun 2017 19:29:14 GMT  
		Size: 11.0 MB (10990391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:5e74b427a55b7e257c7f9ebba1f7765fe13ea4535debec33a9ea08a69296b2bd
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be05d92ad57e639a101ee651a626a5d8e9084093df2646a5bc7de1b74b8fff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:10:08 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 27 Jun 2017 20:10:09 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 27 Jun 2017 20:10:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:10:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:10:38 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:14:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43208f2470b65c026864a1c56ba036f108fdafd39bed260219a2f1499b837469`  
		Last Modified: Thu, 29 Jun 2017 19:23:35 GMT  
		Size: 28.8 MB (28753637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d21c6620031b042f894308db6d47a60e7692a3d01500a7edfb7de6b93bc5e`  
		Last Modified: Thu, 29 Jun 2017 19:23:27 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374a9fe43e5c23da1d913d110ab6b210626902ec6d3a676b38db64106fa47896`  
		Last Modified: Thu, 29 Jun 2017 19:29:14 GMT  
		Size: 11.0 MB (10990391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:5e74b427a55b7e257c7f9ebba1f7765fe13ea4535debec33a9ea08a69296b2bd
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be05d92ad57e639a101ee651a626a5d8e9084093df2646a5bc7de1b74b8fff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:10:08 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 27 Jun 2017 20:10:09 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 27 Jun 2017 20:10:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:10:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:10:38 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:14:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43208f2470b65c026864a1c56ba036f108fdafd39bed260219a2f1499b837469`  
		Last Modified: Thu, 29 Jun 2017 19:23:35 GMT  
		Size: 28.8 MB (28753637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d21c6620031b042f894308db6d47a60e7692a3d01500a7edfb7de6b93bc5e`  
		Last Modified: Thu, 29 Jun 2017 19:23:27 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374a9fe43e5c23da1d913d110ab6b210626902ec6d3a676b38db64106fa47896`  
		Last Modified: Thu, 29 Jun 2017 19:29:14 GMT  
		Size: 11.0 MB (10990391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce`

```console
$ docker pull docker@sha256:7fe6e5220d7bb8b6eee78772a4f67f84d634003abfff392b8f127c8fde415cf6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528f20a4e6e620544868bf10b37389254e3a542ee4a31713fbef77b0801fda13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:18:10 GMT
ENV DOCKER_CHANNEL=test
# Tue, 27 Jun 2017 20:18:11 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Tue, 27 Jun 2017 20:18:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:18:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:18:29 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7f02a0e3a96c330ed827faaa1d906ba0b4459ee4244ca32d42958722620ba9`  
		Last Modified: Thu, 29 Jun 2017 19:17:46 GMT  
		Size: 28.1 MB (28111073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361f39f5d6c69c3bc700e04833b0d19b05b04b6c002036d20927e8b3a3a7f29`  
		Last Modified: Thu, 29 Jun 2017 19:17:41 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2`

```console
$ docker pull docker@sha256:7fe6e5220d7bb8b6eee78772a4f67f84d634003abfff392b8f127c8fde415cf6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528f20a4e6e620544868bf10b37389254e3a542ee4a31713fbef77b0801fda13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:18:10 GMT
ENV DOCKER_CHANNEL=test
# Tue, 27 Jun 2017 20:18:11 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Tue, 27 Jun 2017 20:18:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:18:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:18:29 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7f02a0e3a96c330ed827faaa1d906ba0b4459ee4244ca32d42958722620ba9`  
		Last Modified: Thu, 29 Jun 2017 19:17:46 GMT  
		Size: 28.1 MB (28111073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361f39f5d6c69c3bc700e04833b0d19b05b04b6c002036d20927e8b3a3a7f29`  
		Last Modified: Thu, 29 Jun 2017 19:17:41 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:ea7400913d0bf0774ace34d4e4e5fb63687f39afb395cd1e5a9756f162bd364b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f47eac34585d20cce9d8ad1f234be5bb7a44b88dbc2c74c158ddb304fc5bf4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:15:25 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 27 Jun 2017 20:15:26 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 27 Jun 2017 20:15:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:15:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:15:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d70f7471fa8935c3cde468eda9c67147020a6c624a6722fd291cdc1721109`  
		Last Modified: Thu, 29 Jun 2017 19:09:06 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c550533f0932e78512ac64b5101bfa1be4ca878163ad3dafca8cbdf007c60314`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:ea7400913d0bf0774ace34d4e4e5fb63687f39afb395cd1e5a9756f162bd364b
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f47eac34585d20cce9d8ad1f234be5bb7a44b88dbc2c74c158ddb304fc5bf4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:15:25 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 27 Jun 2017 20:15:26 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 27 Jun 2017 20:15:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:15:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:15:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d70f7471fa8935c3cde468eda9c67147020a6c624a6722fd291cdc1721109`  
		Last Modified: Thu, 29 Jun 2017 19:09:06 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c550533f0932e78512ac64b5101bfa1be4ca878163ad3dafca8cbdf007c60314`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-dind`

```console
$ docker pull docker@sha256:4b7ab9bbc24fe9c41d85d67881b8c52833ef81105fbc5a69b5575c7effe555af
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5b688b1eb4bb53f132a2678d4e654fd74b4483ad7a0859ebb70bf9bc5203d4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:18:10 GMT
ENV DOCKER_CHANNEL=test
# Tue, 27 Jun 2017 20:18:11 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Tue, 27 Jun 2017 20:18:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:18:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:18:29 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:18:59 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:19:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:19:48 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:19:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:19:57 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:19:58 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:19:59 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:20:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7f02a0e3a96c330ed827faaa1d906ba0b4459ee4244ca32d42958722620ba9`  
		Last Modified: Thu, 29 Jun 2017 19:17:46 GMT  
		Size: 28.1 MB (28111073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361f39f5d6c69c3bc700e04833b0d19b05b04b6c002036d20927e8b3a3a7f29`  
		Last Modified: Thu, 29 Jun 2017 19:17:41 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721a7ade2d928f089d7c265ec162f7468418f28496e3b2c407884c72575d4bf2`  
		Last Modified: Thu, 29 Jun 2017 19:19:38 GMT  
		Size: 2.2 MB (2165475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9397d5ce1d99181c9b1a3444293fb02b7c9eb2badd2cdd7032dc417e3ab292f`  
		Last Modified: Thu, 29 Jun 2017 19:19:38 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a00c3452dd9f2e89e09df5e42d9327ef7280f3c02a38a08912d18c96d654cf`  
		Last Modified: Thu, 29 Jun 2017 19:19:38 GMT  
		Size: 175.7 KB (175674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a3808d6fa818ce813ad6cc9aa59e6112b2a9b85df8bc41759cffb7788f8548`  
		Last Modified: Thu, 29 Jun 2017 19:19:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-dind`

```console
$ docker pull docker@sha256:4b7ab9bbc24fe9c41d85d67881b8c52833ef81105fbc5a69b5575c7effe555af
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5b688b1eb4bb53f132a2678d4e654fd74b4483ad7a0859ebb70bf9bc5203d4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:18:10 GMT
ENV DOCKER_CHANNEL=test
# Tue, 27 Jun 2017 20:18:11 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Tue, 27 Jun 2017 20:18:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:18:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:18:29 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:18:59 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:19:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:19:48 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:19:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:19:57 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:19:58 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:19:59 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:20:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7f02a0e3a96c330ed827faaa1d906ba0b4459ee4244ca32d42958722620ba9`  
		Last Modified: Thu, 29 Jun 2017 19:17:46 GMT  
		Size: 28.1 MB (28111073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361f39f5d6c69c3bc700e04833b0d19b05b04b6c002036d20927e8b3a3a7f29`  
		Last Modified: Thu, 29 Jun 2017 19:17:41 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721a7ade2d928f089d7c265ec162f7468418f28496e3b2c407884c72575d4bf2`  
		Last Modified: Thu, 29 Jun 2017 19:19:38 GMT  
		Size: 2.2 MB (2165475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9397d5ce1d99181c9b1a3444293fb02b7c9eb2badd2cdd7032dc417e3ab292f`  
		Last Modified: Thu, 29 Jun 2017 19:19:38 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a00c3452dd9f2e89e09df5e42d9327ef7280f3c02a38a08912d18c96d654cf`  
		Last Modified: Thu, 29 Jun 2017 19:19:38 GMT  
		Size: 175.7 KB (175674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a3808d6fa818ce813ad6cc9aa59e6112b2a9b85df8bc41759cffb7788f8548`  
		Last Modified: Thu, 29 Jun 2017 19:19:38 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:eb059d73e04614a59c91343a0a655be1136ee15ca23bf85cda7edee29af1703a
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32771492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6597d68d18cdb39d7aa3f57992e662069aae5e186d2da8e346c7cb48b16d997a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:15:25 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 27 Jun 2017 20:15:26 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 27 Jun 2017 20:15:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:15:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:15:35 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:16:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:16:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:16:11 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:16:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:16:19 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:16:20 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:16:21 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:16:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:16:23 GMT
CMD []
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d70f7471fa8935c3cde468eda9c67147020a6c624a6722fd291cdc1721109`  
		Last Modified: Thu, 29 Jun 2017 19:09:06 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c550533f0932e78512ac64b5101bfa1be4ca878163ad3dafca8cbdf007c60314`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6b087b83b2f2ea2f3ecd62f08c8eb3ed327ecda0013417bedec4b82d525a2b`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 2.2 MB (2165509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a197414df81dd26f8ba287c167e1755467281e218cfada68cf423c78cf0ec5`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40b27ae1434f0b46855741f9e2b8b3eb5e82ff81d1c0a3f449a7f4f2322f8ae`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 175.7 KB (175673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32609b3e959e216d9819e4b6b90f8c0b89cf046df37f98549e40dc5e714ea6e`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:eb059d73e04614a59c91343a0a655be1136ee15ca23bf85cda7edee29af1703a
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32771492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6597d68d18cdb39d7aa3f57992e662069aae5e186d2da8e346c7cb48b16d997a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:15:25 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 27 Jun 2017 20:15:26 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 27 Jun 2017 20:15:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:15:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:15:35 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:16:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:16:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:16:11 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:16:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:16:19 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:16:20 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:16:21 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:16:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:16:23 GMT
CMD []
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d70f7471fa8935c3cde468eda9c67147020a6c624a6722fd291cdc1721109`  
		Last Modified: Thu, 29 Jun 2017 19:09:06 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c550533f0932e78512ac64b5101bfa1be4ca878163ad3dafca8cbdf007c60314`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6b087b83b2f2ea2f3ecd62f08c8eb3ed327ecda0013417bedec4b82d525a2b`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 2.2 MB (2165509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a197414df81dd26f8ba287c167e1755467281e218cfada68cf423c78cf0ec5`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40b27ae1434f0b46855741f9e2b8b3eb5e82ff81d1c0a3f449a7f4f2322f8ae`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 175.7 KB (175673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32609b3e959e216d9819e4b6b90f8c0b89cf046df37f98549e40dc5e714ea6e`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-git`

```console
$ docker pull docker@sha256:7e05c61431b7aed3bb033b1c3a43a99dc3693a166158a460cfc42f1c6bcf6979
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41423100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00cd8f160bb946850e1290b287d1b6ce2986a4096497ab9820bd68d44fea94eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:18:10 GMT
ENV DOCKER_CHANNEL=test
# Tue, 27 Jun 2017 20:18:11 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Tue, 27 Jun 2017 20:18:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:18:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:18:29 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:20:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7f02a0e3a96c330ed827faaa1d906ba0b4459ee4244ca32d42958722620ba9`  
		Last Modified: Thu, 29 Jun 2017 19:17:46 GMT  
		Size: 28.1 MB (28111073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361f39f5d6c69c3bc700e04833b0d19b05b04b6c002036d20927e8b3a3a7f29`  
		Last Modified: Thu, 29 Jun 2017 19:17:41 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b5b52071c8b671e2e57d353585ede3d80c3837cfa63adbf7d2cbf1d8a92b1`  
		Last Modified: Thu, 29 Jun 2017 19:21:33 GMT  
		Size: 11.0 MB (10990401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-git`

```console
$ docker pull docker@sha256:7e05c61431b7aed3bb033b1c3a43a99dc3693a166158a460cfc42f1c6bcf6979
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41423100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00cd8f160bb946850e1290b287d1b6ce2986a4096497ab9820bd68d44fea94eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:18:10 GMT
ENV DOCKER_CHANNEL=test
# Tue, 27 Jun 2017 20:18:11 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Tue, 27 Jun 2017 20:18:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:18:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:18:29 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:20:52 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7f02a0e3a96c330ed827faaa1d906ba0b4459ee4244ca32d42958722620ba9`  
		Last Modified: Thu, 29 Jun 2017 19:17:46 GMT  
		Size: 28.1 MB (28111073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361f39f5d6c69c3bc700e04833b0d19b05b04b6c002036d20927e8b3a3a7f29`  
		Last Modified: Thu, 29 Jun 2017 19:17:41 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b5b52071c8b671e2e57d353585ede3d80c3837cfa63adbf7d2cbf1d8a92b1`  
		Last Modified: Thu, 29 Jun 2017 19:21:33 GMT  
		Size: 11.0 MB (10990401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:ec5638eba7eb3411ded8f3d182beb2d63887b3f6bc4d7ef8363bc92c14005b0e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41418933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a508929e5a3694217fa119654c5adb2fb06a2f1b4543c101b0c0d668aa622c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:15:25 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 27 Jun 2017 20:15:26 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 27 Jun 2017 20:15:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:15:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:15:35 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:16:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d70f7471fa8935c3cde468eda9c67147020a6c624a6722fd291cdc1721109`  
		Last Modified: Thu, 29 Jun 2017 19:09:06 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c550533f0932e78512ac64b5101bfa1be4ca878163ad3dafca8cbdf007c60314`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530714e897ed29da00f7359b999a154f3a53b4b786550e0683ae430fe84b3e9d`  
		Last Modified: Thu, 29 Jun 2017 19:15:32 GMT  
		Size: 11.0 MB (10990412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:ec5638eba7eb3411ded8f3d182beb2d63887b3f6bc4d7ef8363bc92c14005b0e
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41418933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a508929e5a3694217fa119654c5adb2fb06a2f1b4543c101b0c0d668aa622c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:15:25 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 27 Jun 2017 20:15:26 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 27 Jun 2017 20:15:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:15:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:15:35 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:16:58 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d70f7471fa8935c3cde468eda9c67147020a6c624a6722fd291cdc1721109`  
		Last Modified: Thu, 29 Jun 2017 19:09:06 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c550533f0932e78512ac64b5101bfa1be4ca878163ad3dafca8cbdf007c60314`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530714e897ed29da00f7359b999a154f3a53b4b786550e0683ae430fe84b3e9d`  
		Last Modified: Thu, 29 Jun 2017 19:15:32 GMT  
		Size: 11.0 MB (10990412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
