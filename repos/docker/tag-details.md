<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.07.0-ce`](#docker17070-ce)
-	[`docker:17.07.0`](#docker17070)
-	[`docker:17.07`](#docker1707)
-	[`docker:17`](#docker17)
-	[`docker:edge`](#dockeredge)
-	[`docker:latest`](#dockerlatest)
-	[`docker:17.07.0-ce-dind`](#docker17070-ce-dind)
-	[`docker:17.07.0-dind`](#docker17070-dind)
-	[`docker:17.07-dind`](#docker1707-dind)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:17.07.0-ce-git`](#docker17070-ce-git)
-	[`docker:17.07.0-git`](#docker17070-git)
-	[`docker:17.07-git`](#docker1707-git)
-	[`docker:17-git`](#docker17-git)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:git`](#dockergit)
-	[`docker:17.06.2-ce-rc1`](#docker17062-ce-rc1)
-	[`docker:17.06.2-ce`](#docker17062-ce)
-	[`docker:17.06.2`](#docker17062)
-	[`docker:17.06-rc`](#docker1706-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:test`](#dockertest)
-	[`docker:17.06.2-ce-rc1-dind`](#docker17062-ce-rc1-dind)
-	[`docker:17.06.2-ce-dind`](#docker17062-ce-dind)
-	[`docker:17.06.2-dind`](#docker17062-dind)
-	[`docker:17.06-rc-dind`](#docker1706-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:17.06.2-ce-rc1-git`](#docker17062-ce-rc1-git)
-	[`docker:17.06.2-ce-git`](#docker17062-ce-git)
-	[`docker:17.06.2-git`](#docker17062-git)
-	[`docker:17.06-rc-git`](#docker1706-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:test-git`](#dockertest-git)
-	[`docker:17.06.1-ce`](#docker17061-ce)
-	[`docker:17.06.1`](#docker17061)
-	[`docker:17.06`](#docker1706)
-	[`docker:stable`](#dockerstable)
-	[`docker:17.06.1-ce-dind`](#docker17061-ce-dind)
-	[`docker:17.06.1-dind`](#docker17061-dind)
-	[`docker:17.06-dind`](#docker1706-dind)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:17.06.1-ce-git`](#docker17061-ce-git)
-	[`docker:17.06.1-git`](#docker17061-git)
-	[`docker:17.06-git`](#docker1706-git)
-	[`docker:stable-git`](#dockerstable-git)

## `docker:17.07.0-ce`

```console
$ docker pull docker@sha256:30a4b605c71aebd233def588b0b048b87e2f2e0f6406552579de7e3173cd40d5
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be47faef67c2e5950a540799e72189867b517010ad8ef98aa0181878d81b0064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0`

```console
$ docker pull docker@sha256:30a4b605c71aebd233def588b0b048b87e2f2e0f6406552579de7e3173cd40d5
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be47faef67c2e5950a540799e72189867b517010ad8ef98aa0181878d81b0064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07`

```console
$ docker pull docker@sha256:30a4b605c71aebd233def588b0b048b87e2f2e0f6406552579de7e3173cd40d5
```

-	Platforms:
	-	linux; amd64

### `docker:17.07` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be47faef67c2e5950a540799e72189867b517010ad8ef98aa0181878d81b0064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:30a4b605c71aebd233def588b0b048b87e2f2e0f6406552579de7e3173cd40d5
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be47faef67c2e5950a540799e72189867b517010ad8ef98aa0181878d81b0064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:30a4b605c71aebd233def588b0b048b87e2f2e0f6406552579de7e3173cd40d5
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be47faef67c2e5950a540799e72189867b517010ad8ef98aa0181878d81b0064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:30a4b605c71aebd233def588b0b048b87e2f2e0f6406552579de7e3173cd40d5
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be47faef67c2e5950a540799e72189867b517010ad8ef98aa0181878d81b0064`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce-dind`

```console
$ docker pull docker@sha256:e30313b3ca34033bd6f7c026f9637b985e529f40eab3c9bedea0dddf76f8f7c6
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7731e67e3def0af852ea8ab3788063fc640ce359d399b86fe5a009e6d814f625`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 23:55:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 23:55:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 23:55:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 23:55:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:44 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 23:55:44 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 23:55:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:45 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8294f3609fbd410a42d7e65b153adf6c7daef972030f4b2762bc44cd1fd3984f`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dd6b15fd03b92b8f11c5f5d0e341adac86d7ced3842d627aa5b8e55f9caff2`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06ac085c20800dc34fe1e8a222af2da8d182238762972da9ee80c9c88becb3`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303adae475268eba8beffab71975812a708fc98fed288d3219f0272a5ca20056`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-dind`

```console
$ docker pull docker@sha256:e30313b3ca34033bd6f7c026f9637b985e529f40eab3c9bedea0dddf76f8f7c6
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7731e67e3def0af852ea8ab3788063fc640ce359d399b86fe5a009e6d814f625`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 23:55:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 23:55:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 23:55:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 23:55:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:44 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 23:55:44 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 23:55:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:45 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8294f3609fbd410a42d7e65b153adf6c7daef972030f4b2762bc44cd1fd3984f`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dd6b15fd03b92b8f11c5f5d0e341adac86d7ced3842d627aa5b8e55f9caff2`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06ac085c20800dc34fe1e8a222af2da8d182238762972da9ee80c9c88becb3`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303adae475268eba8beffab71975812a708fc98fed288d3219f0272a5ca20056`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07-dind`

```console
$ docker pull docker@sha256:e30313b3ca34033bd6f7c026f9637b985e529f40eab3c9bedea0dddf76f8f7c6
```

-	Platforms:
	-	linux; amd64

### `docker:17.07-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7731e67e3def0af852ea8ab3788063fc640ce359d399b86fe5a009e6d814f625`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 23:55:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 23:55:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 23:55:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 23:55:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:44 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 23:55:44 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 23:55:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:45 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8294f3609fbd410a42d7e65b153adf6c7daef972030f4b2762bc44cd1fd3984f`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dd6b15fd03b92b8f11c5f5d0e341adac86d7ced3842d627aa5b8e55f9caff2`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06ac085c20800dc34fe1e8a222af2da8d182238762972da9ee80c9c88becb3`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303adae475268eba8beffab71975812a708fc98fed288d3219f0272a5ca20056`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:e30313b3ca34033bd6f7c026f9637b985e529f40eab3c9bedea0dddf76f8f7c6
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7731e67e3def0af852ea8ab3788063fc640ce359d399b86fe5a009e6d814f625`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 23:55:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 23:55:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 23:55:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 23:55:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:44 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 23:55:44 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 23:55:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:45 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8294f3609fbd410a42d7e65b153adf6c7daef972030f4b2762bc44cd1fd3984f`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dd6b15fd03b92b8f11c5f5d0e341adac86d7ced3842d627aa5b8e55f9caff2`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06ac085c20800dc34fe1e8a222af2da8d182238762972da9ee80c9c88becb3`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303adae475268eba8beffab71975812a708fc98fed288d3219f0272a5ca20056`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:e30313b3ca34033bd6f7c026f9637b985e529f40eab3c9bedea0dddf76f8f7c6
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7731e67e3def0af852ea8ab3788063fc640ce359d399b86fe5a009e6d814f625`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 23:55:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 23:55:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 23:55:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 23:55:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:44 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 23:55:44 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 23:55:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:45 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8294f3609fbd410a42d7e65b153adf6c7daef972030f4b2762bc44cd1fd3984f`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dd6b15fd03b92b8f11c5f5d0e341adac86d7ced3842d627aa5b8e55f9caff2`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06ac085c20800dc34fe1e8a222af2da8d182238762972da9ee80c9c88becb3`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303adae475268eba8beffab71975812a708fc98fed288d3219f0272a5ca20056`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:e30313b3ca34033bd6f7c026f9637b985e529f40eab3c9bedea0dddf76f8f7c6
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7731e67e3def0af852ea8ab3788063fc640ce359d399b86fe5a009e6d814f625`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 23:55:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 23:55:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 23:55:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 23:55:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:44 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 23:55:44 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 23:55:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:45 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8294f3609fbd410a42d7e65b153adf6c7daef972030f4b2762bc44cd1fd3984f`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dd6b15fd03b92b8f11c5f5d0e341adac86d7ced3842d627aa5b8e55f9caff2`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06ac085c20800dc34fe1e8a222af2da8d182238762972da9ee80c9c88becb3`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303adae475268eba8beffab71975812a708fc98fed288d3219f0272a5ca20056`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-ce-git`

```console
$ docker pull docker@sha256:0140747de751c7eb3e10d611c7f75c725943ca9712eee3a6633b8d546d377a10
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbf23232776ff80a3e098c2f54794e0b581e9dccf81a1bbc0349ab5baf0d220`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:53 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69c102de51596874b41f7d168c17a27e36340a4119a37e1a3337dc177556f77`  
		Last Modified: Tue, 29 Aug 2017 23:57:41 GMT  
		Size: 11.8 MB (11769689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-git`

```console
$ docker pull docker@sha256:0140747de751c7eb3e10d611c7f75c725943ca9712eee3a6633b8d546d377a10
```

-	Platforms:
	-	linux; amd64

### `docker:17.07.0-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbf23232776ff80a3e098c2f54794e0b581e9dccf81a1bbc0349ab5baf0d220`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:53 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69c102de51596874b41f7d168c17a27e36340a4119a37e1a3337dc177556f77`  
		Last Modified: Tue, 29 Aug 2017 23:57:41 GMT  
		Size: 11.8 MB (11769689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07-git`

```console
$ docker pull docker@sha256:0140747de751c7eb3e10d611c7f75c725943ca9712eee3a6633b8d546d377a10
```

-	Platforms:
	-	linux; amd64

### `docker:17.07-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbf23232776ff80a3e098c2f54794e0b581e9dccf81a1bbc0349ab5baf0d220`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:53 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69c102de51596874b41f7d168c17a27e36340a4119a37e1a3337dc177556f77`  
		Last Modified: Tue, 29 Aug 2017 23:57:41 GMT  
		Size: 11.8 MB (11769689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:0140747de751c7eb3e10d611c7f75c725943ca9712eee3a6633b8d546d377a10
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbf23232776ff80a3e098c2f54794e0b581e9dccf81a1bbc0349ab5baf0d220`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:53 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69c102de51596874b41f7d168c17a27e36340a4119a37e1a3337dc177556f77`  
		Last Modified: Tue, 29 Aug 2017 23:57:41 GMT  
		Size: 11.8 MB (11769689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:0140747de751c7eb3e10d611c7f75c725943ca9712eee3a6633b8d546d377a10
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbf23232776ff80a3e098c2f54794e0b581e9dccf81a1bbc0349ab5baf0d220`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:53 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69c102de51596874b41f7d168c17a27e36340a4119a37e1a3337dc177556f77`  
		Last Modified: Tue, 29 Aug 2017 23:57:41 GMT  
		Size: 11.8 MB (11769689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:0140747de751c7eb3e10d611c7f75c725943ca9712eee3a6633b8d546d377a10
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbf23232776ff80a3e098c2f54794e0b581e9dccf81a1bbc0349ab5baf0d220`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:53 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69c102de51596874b41f7d168c17a27e36340a4119a37e1a3337dc177556f77`  
		Last Modified: Tue, 29 Aug 2017 23:57:41 GMT  
		Size: 11.8 MB (11769689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-rc1`

```console
$ docker pull docker@sha256:cac6a2b989758a14f46a2ac80f8ae26971d3741b18ba2cb9da5fc7c5e3e823e5
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-rc1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f60c81a55d4d236a7b2f6ea903fd3b96444b5f799d78b5e26b03737a24f1943`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce`

```console
$ docker pull docker@sha256:cac6a2b989758a14f46a2ac80f8ae26971d3741b18ba2cb9da5fc7c5e3e823e5
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f60c81a55d4d236a7b2f6ea903fd3b96444b5f799d78b5e26b03737a24f1943`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2`

```console
$ docker pull docker@sha256:cac6a2b989758a14f46a2ac80f8ae26971d3741b18ba2cb9da5fc7c5e3e823e5
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f60c81a55d4d236a7b2f6ea903fd3b96444b5f799d78b5e26b03737a24f1943`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc`

```console
$ docker pull docker@sha256:cac6a2b989758a14f46a2ac80f8ae26971d3741b18ba2cb9da5fc7c5e3e823e5
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f60c81a55d4d236a7b2f6ea903fd3b96444b5f799d78b5e26b03737a24f1943`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:cac6a2b989758a14f46a2ac80f8ae26971d3741b18ba2cb9da5fc7c5e3e823e5
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f60c81a55d4d236a7b2f6ea903fd3b96444b5f799d78b5e26b03737a24f1943`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:cac6a2b989758a14f46a2ac80f8ae26971d3741b18ba2cb9da5fc7c5e3e823e5
```

-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f60c81a55d4d236a7b2f6ea903fd3b96444b5f799d78b5e26b03737a24f1943`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-rc1-dind`

```console
$ docker pull docker@sha256:1a390f9bcc3adbaf5f53b010248523f537062bbceb1b9766e1f5e474de9a4805
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-rc1-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a71752e33474f0aa7080c6d18b128931c2fa1ac7bc645ef6d80a46b50baabe3`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 20:09:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 20:09:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 20:09:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 20:09:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:39 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 20:09:40 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 20:09:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:40 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223651b2e9e13a7c85f9d518a5b220d1bb14c20c160600e2a77c6c0c6333892e`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 2.2 MB (2209078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe21b3e12b22fc71d23bd2bebf4b57fb7fa22d8b4c6cd589d634761b2f1d84`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cb701c68787dde820bda5f38150d34ed1b7e8d319a1e5233f16e4d850805e2`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8596f9726afb0798d2909faf6201a6115276d1f6706f46831403166f6edb38`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-dind`

```console
$ docker pull docker@sha256:1a390f9bcc3adbaf5f53b010248523f537062bbceb1b9766e1f5e474de9a4805
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a71752e33474f0aa7080c6d18b128931c2fa1ac7bc645ef6d80a46b50baabe3`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 20:09:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 20:09:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 20:09:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 20:09:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:39 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 20:09:40 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 20:09:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:40 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223651b2e9e13a7c85f9d518a5b220d1bb14c20c160600e2a77c6c0c6333892e`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 2.2 MB (2209078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe21b3e12b22fc71d23bd2bebf4b57fb7fa22d8b4c6cd589d634761b2f1d84`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cb701c68787dde820bda5f38150d34ed1b7e8d319a1e5233f16e4d850805e2`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8596f9726afb0798d2909faf6201a6115276d1f6706f46831403166f6edb38`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-dind`

```console
$ docker pull docker@sha256:1a390f9bcc3adbaf5f53b010248523f537062bbceb1b9766e1f5e474de9a4805
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.2-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a71752e33474f0aa7080c6d18b128931c2fa1ac7bc645ef6d80a46b50baabe3`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 20:09:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 20:09:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 20:09:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 20:09:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:39 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 20:09:40 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 20:09:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:40 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223651b2e9e13a7c85f9d518a5b220d1bb14c20c160600e2a77c6c0c6333892e`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 2.2 MB (2209078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe21b3e12b22fc71d23bd2bebf4b57fb7fa22d8b4c6cd589d634761b2f1d84`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cb701c68787dde820bda5f38150d34ed1b7e8d319a1e5233f16e4d850805e2`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8596f9726afb0798d2909faf6201a6115276d1f6706f46831403166f6edb38`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-dind`

```console
$ docker pull docker@sha256:1a390f9bcc3adbaf5f53b010248523f537062bbceb1b9766e1f5e474de9a4805
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a71752e33474f0aa7080c6d18b128931c2fa1ac7bc645ef6d80a46b50baabe3`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 20:09:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 20:09:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 20:09:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 20:09:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:39 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 20:09:40 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 20:09:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:40 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223651b2e9e13a7c85f9d518a5b220d1bb14c20c160600e2a77c6c0c6333892e`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 2.2 MB (2209078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe21b3e12b22fc71d23bd2bebf4b57fb7fa22d8b4c6cd589d634761b2f1d84`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cb701c68787dde820bda5f38150d34ed1b7e8d319a1e5233f16e4d850805e2`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8596f9726afb0798d2909faf6201a6115276d1f6706f46831403166f6edb38`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:1a390f9bcc3adbaf5f53b010248523f537062bbceb1b9766e1f5e474de9a4805
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a71752e33474f0aa7080c6d18b128931c2fa1ac7bc645ef6d80a46b50baabe3`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 20:09:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 20:09:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 20:09:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 20:09:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:39 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 20:09:40 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 20:09:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:40 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223651b2e9e13a7c85f9d518a5b220d1bb14c20c160600e2a77c6c0c6333892e`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 2.2 MB (2209078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe21b3e12b22fc71d23bd2bebf4b57fb7fa22d8b4c6cd589d634761b2f1d84`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cb701c68787dde820bda5f38150d34ed1b7e8d319a1e5233f16e4d850805e2`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8596f9726afb0798d2909faf6201a6115276d1f6706f46831403166f6edb38`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:1a390f9bcc3adbaf5f53b010248523f537062bbceb1b9766e1f5e474de9a4805
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a71752e33474f0aa7080c6d18b128931c2fa1ac7bc645ef6d80a46b50baabe3`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 20:09:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 20:09:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 20:09:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 20:09:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:39 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 20:09:40 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 20:09:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:40 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223651b2e9e13a7c85f9d518a5b220d1bb14c20c160600e2a77c6c0c6333892e`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 2.2 MB (2209078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe21b3e12b22fc71d23bd2bebf4b57fb7fa22d8b4c6cd589d634761b2f1d84`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cb701c68787dde820bda5f38150d34ed1b7e8d319a1e5233f16e4d850805e2`  
		Last Modified: Tue, 29 Aug 2017 20:10:38 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8596f9726afb0798d2909faf6201a6115276d1f6706f46831403166f6edb38`  
		Last Modified: Tue, 29 Aug 2017 20:10:37 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-rc1-git`

```console
$ docker pull docker@sha256:5247ff0873973b11e0d0682ab74919088c7831deebe5fb921acf3935a4b32424
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-rc1-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44129965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d644b7bfa10f9245e2c093c184f073928f7a37a074d46d770e68639139da1924`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:46 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b5c1628b77e956bc758a8547daebf651e1882a257fae0ee2099168eb7093b9`  
		Last Modified: Tue, 29 Aug 2017 20:11:10 GMT  
		Size: 11.8 MB (11769679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-git`

```console
$ docker pull docker@sha256:5247ff0873973b11e0d0682ab74919088c7831deebe5fb921acf3935a4b32424
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44129965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d644b7bfa10f9245e2c093c184f073928f7a37a074d46d770e68639139da1924`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:46 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b5c1628b77e956bc758a8547daebf651e1882a257fae0ee2099168eb7093b9`  
		Last Modified: Tue, 29 Aug 2017 20:11:10 GMT  
		Size: 11.8 MB (11769679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-git`

```console
$ docker pull docker@sha256:5247ff0873973b11e0d0682ab74919088c7831deebe5fb921acf3935a4b32424
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.2-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44129965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d644b7bfa10f9245e2c093c184f073928f7a37a074d46d770e68639139da1924`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:46 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b5c1628b77e956bc758a8547daebf651e1882a257fae0ee2099168eb7093b9`  
		Last Modified: Tue, 29 Aug 2017 20:11:10 GMT  
		Size: 11.8 MB (11769679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-git`

```console
$ docker pull docker@sha256:5247ff0873973b11e0d0682ab74919088c7831deebe5fb921acf3935a4b32424
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44129965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d644b7bfa10f9245e2c093c184f073928f7a37a074d46d770e68639139da1924`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:46 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b5c1628b77e956bc758a8547daebf651e1882a257fae0ee2099168eb7093b9`  
		Last Modified: Tue, 29 Aug 2017 20:11:10 GMT  
		Size: 11.8 MB (11769679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:5247ff0873973b11e0d0682ab74919088c7831deebe5fb921acf3935a4b32424
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44129965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d644b7bfa10f9245e2c093c184f073928f7a37a074d46d770e68639139da1924`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:46 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b5c1628b77e956bc758a8547daebf651e1882a257fae0ee2099168eb7093b9`  
		Last Modified: Tue, 29 Aug 2017 20:11:10 GMT  
		Size: 11.8 MB (11769679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:5247ff0873973b11e0d0682ab74919088c7831deebe5fb921acf3935a4b32424
```

-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44129965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d644b7bfa10f9245e2c093c184f073928f7a37a074d46d770e68639139da1924`
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
# Tue, 29 Aug 2017 20:09:19 GMT
ENV DOCKER_VERSION=17.06.2-ce-rc1
# Tue, 29 Aug 2017 20:09:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 20:09:26 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 20:09:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 20:09:27 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 20:09:46 GMT
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
	-	`sha256:7cacccf1394c802f86f2eb89a6b1534b872aac91b18d7cd482946d916d2506ab`  
		Last Modified: Tue, 29 Aug 2017 20:10:07 GMT  
		Size: 30.0 MB (30017854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586516aaec8e201d5f228da0b8c45d49e0931ad08c90b70994182d5040fe6ff`  
		Last Modified: Tue, 29 Aug 2017 20:10:01 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b5c1628b77e956bc758a8547daebf651e1882a257fae0ee2099168eb7093b9`  
		Last Modified: Tue, 29 Aug 2017 20:11:10 GMT  
		Size: 11.8 MB (11769679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce`

```console
$ docker pull docker@sha256:c650be63741ae40f0ab35f004a4eb5cd3fb56e6324627053937205484bc5226f
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f181f113b9323117f71d905f29da7fe0320ef9b23051bef8c6189422fc4107a6`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1`

```console
$ docker pull docker@sha256:c650be63741ae40f0ab35f004a4eb5cd3fb56e6324627053937205484bc5226f
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f181f113b9323117f71d905f29da7fe0320ef9b23051bef8c6189422fc4107a6`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06`

```console
$ docker pull docker@sha256:c650be63741ae40f0ab35f004a4eb5cd3fb56e6324627053937205484bc5226f
```

-	Platforms:
	-	linux; amd64

### `docker:17.06` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f181f113b9323117f71d905f29da7fe0320ef9b23051bef8c6189422fc4107a6`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:c650be63741ae40f0ab35f004a4eb5cd3fb56e6324627053937205484bc5226f
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32359170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f181f113b9323117f71d905f29da7fe0320ef9b23051bef8c6189422fc4107a6`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-dind`

```console
$ docker pull docker@sha256:5ab0c3b183ce81162deac4e733435b28cb2642597fecc9561369ccdefb4ae434
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34746133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720a752dfda8b4b84090ed935ef6a7366fe8cc416edc78446d09b2fe0c97043`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:05:54 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 21 Aug 2017 18:05:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 21 Aug 2017 18:05:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 21 Aug 2017 18:05:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 21 Aug 2017 18:05:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:59 GMT
VOLUME [/var/lib/docker]
# Mon, 21 Aug 2017 18:05:59 GMT
EXPOSE 2375/tcp
# Mon, 21 Aug 2017 18:06:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 21 Aug 2017 18:06:00 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312bd234fe7aed658b59d73c436309c99a33a72dcc7f167419c40d73c023b7c2`  
		Last Modified: Mon, 21 Aug 2017 18:10:44 GMT  
		Size: 2.2 MB (2209045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ec551e2a45add90643754089d40cc875538fd7ca6e8c0c0fa1f68a9ece914`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa7668afd436d4c6d18fe6df976fdcb8dffa0ff98f6dcb4124638937b3bf41a`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b7d4b5c3f419eb19e09cf2c89e62c98439ce0249c3cc95d78c1b642753c97b`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-dind`

```console
$ docker pull docker@sha256:5ab0c3b183ce81162deac4e733435b28cb2642597fecc9561369ccdefb4ae434
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34746133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720a752dfda8b4b84090ed935ef6a7366fe8cc416edc78446d09b2fe0c97043`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:05:54 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 21 Aug 2017 18:05:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 21 Aug 2017 18:05:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 21 Aug 2017 18:05:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 21 Aug 2017 18:05:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:59 GMT
VOLUME [/var/lib/docker]
# Mon, 21 Aug 2017 18:05:59 GMT
EXPOSE 2375/tcp
# Mon, 21 Aug 2017 18:06:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 21 Aug 2017 18:06:00 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312bd234fe7aed658b59d73c436309c99a33a72dcc7f167419c40d73c023b7c2`  
		Last Modified: Mon, 21 Aug 2017 18:10:44 GMT  
		Size: 2.2 MB (2209045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ec551e2a45add90643754089d40cc875538fd7ca6e8c0c0fa1f68a9ece914`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa7668afd436d4c6d18fe6df976fdcb8dffa0ff98f6dcb4124638937b3bf41a`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b7d4b5c3f419eb19e09cf2c89e62c98439ce0249c3cc95d78c1b642753c97b`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-dind`

```console
$ docker pull docker@sha256:5ab0c3b183ce81162deac4e733435b28cb2642597fecc9561369ccdefb4ae434
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34746133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720a752dfda8b4b84090ed935ef6a7366fe8cc416edc78446d09b2fe0c97043`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:05:54 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 21 Aug 2017 18:05:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 21 Aug 2017 18:05:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 21 Aug 2017 18:05:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 21 Aug 2017 18:05:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:59 GMT
VOLUME [/var/lib/docker]
# Mon, 21 Aug 2017 18:05:59 GMT
EXPOSE 2375/tcp
# Mon, 21 Aug 2017 18:06:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 21 Aug 2017 18:06:00 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312bd234fe7aed658b59d73c436309c99a33a72dcc7f167419c40d73c023b7c2`  
		Last Modified: Mon, 21 Aug 2017 18:10:44 GMT  
		Size: 2.2 MB (2209045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ec551e2a45add90643754089d40cc875538fd7ca6e8c0c0fa1f68a9ece914`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa7668afd436d4c6d18fe6df976fdcb8dffa0ff98f6dcb4124638937b3bf41a`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b7d4b5c3f419eb19e09cf2c89e62c98439ce0249c3cc95d78c1b642753c97b`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:5ab0c3b183ce81162deac4e733435b28cb2642597fecc9561369ccdefb4ae434
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34746133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4720a752dfda8b4b84090ed935ef6a7366fe8cc416edc78446d09b2fe0c97043`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:05:54 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 21 Aug 2017 18:05:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 21 Aug 2017 18:05:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 21 Aug 2017 18:05:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 21 Aug 2017 18:05:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:59 GMT
VOLUME [/var/lib/docker]
# Mon, 21 Aug 2017 18:05:59 GMT
EXPOSE 2375/tcp
# Mon, 21 Aug 2017 18:06:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 21 Aug 2017 18:06:00 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312bd234fe7aed658b59d73c436309c99a33a72dcc7f167419c40d73c023b7c2`  
		Last Modified: Mon, 21 Aug 2017 18:10:44 GMT  
		Size: 2.2 MB (2209045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ec551e2a45add90643754089d40cc875538fd7ca6e8c0c0fa1f68a9ece914`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa7668afd436d4c6d18fe6df976fdcb8dffa0ff98f6dcb4124638937b3bf41a`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b7d4b5c3f419eb19e09cf2c89e62c98439ce0249c3cc95d78c1b642753c97b`  
		Last Modified: Mon, 21 Aug 2017 18:10:43 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-git`

```console
$ docker pull docker@sha256:b64242e3ea268f7f9d6f1c28cd494f62bf6ac85b8d7586efad18e81112f62be2
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44128855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff6e95ab6d50a61e2b238ab82d28dfc16138f2050247582952b09a6097571c0`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:06:08 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6895664c8e7e256bd9086ade9e5027c1f6953730486e319b432e629baceec3`  
		Last Modified: Mon, 21 Aug 2017 18:11:45 GMT  
		Size: 11.8 MB (11769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-git`

```console
$ docker pull docker@sha256:b64242e3ea268f7f9d6f1c28cd494f62bf6ac85b8d7586efad18e81112f62be2
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44128855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff6e95ab6d50a61e2b238ab82d28dfc16138f2050247582952b09a6097571c0`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:06:08 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6895664c8e7e256bd9086ade9e5027c1f6953730486e319b432e629baceec3`  
		Last Modified: Mon, 21 Aug 2017 18:11:45 GMT  
		Size: 11.8 MB (11769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-git`

```console
$ docker pull docker@sha256:b64242e3ea268f7f9d6f1c28cd494f62bf6ac85b8d7586efad18e81112f62be2
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44128855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff6e95ab6d50a61e2b238ab82d28dfc16138f2050247582952b09a6097571c0`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:06:08 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6895664c8e7e256bd9086ade9e5027c1f6953730486e319b432e629baceec3`  
		Last Modified: Mon, 21 Aug 2017 18:11:45 GMT  
		Size: 11.8 MB (11769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:b64242e3ea268f7f9d6f1c28cd494f62bf6ac85b8d7586efad18e81112f62be2
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44128855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff6e95ab6d50a61e2b238ab82d28dfc16138f2050247582952b09a6097571c0`
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
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:06:08 GMT
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
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6895664c8e7e256bd9086ade9e5027c1f6953730486e319b432e629baceec3`  
		Last Modified: Mon, 21 Aug 2017 18:11:45 GMT  
		Size: 11.8 MB (11769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
