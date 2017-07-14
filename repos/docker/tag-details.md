<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.06.1-ce-rc1`](#docker17061-ce-rc1)
-	[`docker:17.06.1-ce`](#docker17061-ce)
-	[`docker:17.06.1`](#docker17061)
-	[`docker:17.06-rc`](#docker1706-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:test`](#dockertest)
-	[`docker:17.06.1-ce-rc1-dind`](#docker17061-ce-rc1-dind)
-	[`docker:17.06.1-ce-dind`](#docker17061-ce-dind)
-	[`docker:17.06.1-dind`](#docker17061-dind)
-	[`docker:17.06-rc-dind`](#docker1706-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:17.06.1-ce-rc1-git`](#docker17061-ce-rc1-git)
-	[`docker:17.06.1-ce-git`](#docker17061-ce-git)
-	[`docker:17.06.1-git`](#docker17061-git)
-	[`docker:17.06-rc-git`](#docker1706-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:test-git`](#dockertest-git)
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

## `docker:17.06.1-ce-rc1`

```console
$ docker pull docker@sha256:1fa4c8fcddd06dacb4e90a7406deed8a478d248d3df95cce8c0ef7441461d627
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-rc1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32331571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ccc0c5e7a38d0485a685e7463b332404089c3f5bf136af7c16352caecc59fc`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce`

```console
$ docker pull docker@sha256:1fa4c8fcddd06dacb4e90a7406deed8a478d248d3df95cce8c0ef7441461d627
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32331571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ccc0c5e7a38d0485a685e7463b332404089c3f5bf136af7c16352caecc59fc`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1`

```console
$ docker pull docker@sha256:1fa4c8fcddd06dacb4e90a7406deed8a478d248d3df95cce8c0ef7441461d627
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32331571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ccc0c5e7a38d0485a685e7463b332404089c3f5bf136af7c16352caecc59fc`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc`

```console
$ docker pull docker@sha256:1fa4c8fcddd06dacb4e90a7406deed8a478d248d3df95cce8c0ef7441461d627
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32331571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ccc0c5e7a38d0485a685e7463b332404089c3f5bf136af7c16352caecc59fc`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:1fa4c8fcddd06dacb4e90a7406deed8a478d248d3df95cce8c0ef7441461d627
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32331571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ccc0c5e7a38d0485a685e7463b332404089c3f5bf136af7c16352caecc59fc`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:1fa4c8fcddd06dacb4e90a7406deed8a478d248d3df95cce8c0ef7441461d627
```

-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32331571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ccc0c5e7a38d0485a685e7463b332404089c3f5bf136af7c16352caecc59fc`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-rc1-dind`

```console
$ docker pull docker@sha256:32608a9a4e617ff175688ddd08e70f2f221535e4c1f1bc2dbb5454b0dc9df1bc
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-rc1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34718539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d55e8efd1d83538f4480eea4dceb2fcc48862d6a045e21594acfbd1f2c6838`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 21:59:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Jul 2017 21:59:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jul 2017 21:59:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Jul 2017 21:59:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 14 Jul 2017 21:59:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:47 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jul 2017 21:59:48 GMT
EXPOSE 2375/tcp
# Fri, 14 Jul 2017 21:59:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:49 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027a97c4435a8eeb4c7524194eb0fb9019771413caaf1883b2b605c75f1cfd2`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59370bc135781d3a5d83a98aa5af83d21be94d10457fb2edf0af5932b184217`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b7e5ea1907d893045533f9c0541b24ef87c272c8c6b48af939bc778a48a2d`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff91dd13fa0a93b198d15f961619ed8b5b48f902fc8dbcabebdfbf9502fc7c`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-dind`

```console
$ docker pull docker@sha256:32608a9a4e617ff175688ddd08e70f2f221535e4c1f1bc2dbb5454b0dc9df1bc
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34718539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d55e8efd1d83538f4480eea4dceb2fcc48862d6a045e21594acfbd1f2c6838`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 21:59:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Jul 2017 21:59:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jul 2017 21:59:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Jul 2017 21:59:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 14 Jul 2017 21:59:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:47 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jul 2017 21:59:48 GMT
EXPOSE 2375/tcp
# Fri, 14 Jul 2017 21:59:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:49 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027a97c4435a8eeb4c7524194eb0fb9019771413caaf1883b2b605c75f1cfd2`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59370bc135781d3a5d83a98aa5af83d21be94d10457fb2edf0af5932b184217`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b7e5ea1907d893045533f9c0541b24ef87c272c8c6b48af939bc778a48a2d`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff91dd13fa0a93b198d15f961619ed8b5b48f902fc8dbcabebdfbf9502fc7c`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-dind`

```console
$ docker pull docker@sha256:32608a9a4e617ff175688ddd08e70f2f221535e4c1f1bc2dbb5454b0dc9df1bc
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34718539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d55e8efd1d83538f4480eea4dceb2fcc48862d6a045e21594acfbd1f2c6838`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 21:59:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Jul 2017 21:59:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jul 2017 21:59:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Jul 2017 21:59:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 14 Jul 2017 21:59:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:47 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jul 2017 21:59:48 GMT
EXPOSE 2375/tcp
# Fri, 14 Jul 2017 21:59:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:49 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027a97c4435a8eeb4c7524194eb0fb9019771413caaf1883b2b605c75f1cfd2`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59370bc135781d3a5d83a98aa5af83d21be94d10457fb2edf0af5932b184217`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b7e5ea1907d893045533f9c0541b24ef87c272c8c6b48af939bc778a48a2d`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff91dd13fa0a93b198d15f961619ed8b5b48f902fc8dbcabebdfbf9502fc7c`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-dind`

```console
$ docker pull docker@sha256:32608a9a4e617ff175688ddd08e70f2f221535e4c1f1bc2dbb5454b0dc9df1bc
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34718539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d55e8efd1d83538f4480eea4dceb2fcc48862d6a045e21594acfbd1f2c6838`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 21:59:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Jul 2017 21:59:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jul 2017 21:59:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Jul 2017 21:59:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 14 Jul 2017 21:59:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:47 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jul 2017 21:59:48 GMT
EXPOSE 2375/tcp
# Fri, 14 Jul 2017 21:59:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:49 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027a97c4435a8eeb4c7524194eb0fb9019771413caaf1883b2b605c75f1cfd2`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59370bc135781d3a5d83a98aa5af83d21be94d10457fb2edf0af5932b184217`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b7e5ea1907d893045533f9c0541b24ef87c272c8c6b48af939bc778a48a2d`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff91dd13fa0a93b198d15f961619ed8b5b48f902fc8dbcabebdfbf9502fc7c`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:32608a9a4e617ff175688ddd08e70f2f221535e4c1f1bc2dbb5454b0dc9df1bc
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34718539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d55e8efd1d83538f4480eea4dceb2fcc48862d6a045e21594acfbd1f2c6838`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 21:59:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Jul 2017 21:59:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jul 2017 21:59:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Jul 2017 21:59:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 14 Jul 2017 21:59:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:47 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jul 2017 21:59:48 GMT
EXPOSE 2375/tcp
# Fri, 14 Jul 2017 21:59:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:49 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027a97c4435a8eeb4c7524194eb0fb9019771413caaf1883b2b605c75f1cfd2`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59370bc135781d3a5d83a98aa5af83d21be94d10457fb2edf0af5932b184217`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b7e5ea1907d893045533f9c0541b24ef87c272c8c6b48af939bc778a48a2d`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff91dd13fa0a93b198d15f961619ed8b5b48f902fc8dbcabebdfbf9502fc7c`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:32608a9a4e617ff175688ddd08e70f2f221535e4c1f1bc2dbb5454b0dc9df1bc
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34718539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d55e8efd1d83538f4480eea4dceb2fcc48862d6a045e21594acfbd1f2c6838`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 21:59:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Jul 2017 21:59:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Jul 2017 21:59:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Jul 2017 21:59:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 14 Jul 2017 21:59:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:47 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Jul 2017 21:59:48 GMT
EXPOSE 2375/tcp
# Fri, 14 Jul 2017 21:59:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:49 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027a97c4435a8eeb4c7524194eb0fb9019771413caaf1883b2b605c75f1cfd2`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59370bc135781d3a5d83a98aa5af83d21be94d10457fb2edf0af5932b184217`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b7e5ea1907d893045533f9c0541b24ef87c272c8c6b48af939bc778a48a2d`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff91dd13fa0a93b198d15f961619ed8b5b48f902fc8dbcabebdfbf9502fc7c`  
		Last Modified: Fri, 14 Jul 2017 22:01:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-rc1-git`

```console
$ docker pull docker@sha256:ad3d0f1fbaa58c0efb851a2eeff147f460dad3a11d59a899cbee3745c9a7bb6f
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-rc1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44064259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f503249e97275c39acdfa7a297ef9e1b3eaed057b3b8ea197eb58eddf9772e0d`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 22:00:01 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57647886b44775b9d4028425207cfab5399e75d628cb0553d7015fef7fbb60bb`  
		Last Modified: Fri, 14 Jul 2017 22:02:28 GMT  
		Size: 11.7 MB (11732688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-ce-git`

```console
$ docker pull docker@sha256:ad3d0f1fbaa58c0efb851a2eeff147f460dad3a11d59a899cbee3745c9a7bb6f
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44064259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f503249e97275c39acdfa7a297ef9e1b3eaed057b3b8ea197eb58eddf9772e0d`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 22:00:01 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57647886b44775b9d4028425207cfab5399e75d628cb0553d7015fef7fbb60bb`  
		Last Modified: Fri, 14 Jul 2017 22:02:28 GMT  
		Size: 11.7 MB (11732688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.1-git`

```console
$ docker pull docker@sha256:ad3d0f1fbaa58c0efb851a2eeff147f460dad3a11d59a899cbee3745c9a7bb6f
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44064259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f503249e97275c39acdfa7a297ef9e1b3eaed057b3b8ea197eb58eddf9772e0d`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 22:00:01 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57647886b44775b9d4028425207cfab5399e75d628cb0553d7015fef7fbb60bb`  
		Last Modified: Fri, 14 Jul 2017 22:02:28 GMT  
		Size: 11.7 MB (11732688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-git`

```console
$ docker pull docker@sha256:ad3d0f1fbaa58c0efb851a2eeff147f460dad3a11d59a899cbee3745c9a7bb6f
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44064259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f503249e97275c39acdfa7a297ef9e1b3eaed057b3b8ea197eb58eddf9772e0d`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 22:00:01 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57647886b44775b9d4028425207cfab5399e75d628cb0553d7015fef7fbb60bb`  
		Last Modified: Fri, 14 Jul 2017 22:02:28 GMT  
		Size: 11.7 MB (11732688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:ad3d0f1fbaa58c0efb851a2eeff147f460dad3a11d59a899cbee3745c9a7bb6f
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44064259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f503249e97275c39acdfa7a297ef9e1b3eaed057b3b8ea197eb58eddf9772e0d`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 22:00:01 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57647886b44775b9d4028425207cfab5399e75d628cb0553d7015fef7fbb60bb`  
		Last Modified: Fri, 14 Jul 2017 22:02:28 GMT  
		Size: 11.7 MB (11732688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:ad3d0f1fbaa58c0efb851a2eeff147f460dad3a11d59a899cbee3745c9a7bb6f
```

-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44064259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f503249e97275c39acdfa7a297ef9e1b3eaed057b3b8ea197eb58eddf9772e0d`
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
# Fri, 14 Jul 2017 21:59:19 GMT
ENV DOCKER_VERSION=17.06.1-ce-rc1
# Fri, 14 Jul 2017 21:59:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 14 Jul 2017 21:59:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 14 Jul 2017 21:59:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Jul 2017 21:59:28 GMT
CMD ["sh"]
# Fri, 14 Jul 2017 22:00:01 GMT
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
	-	`sha256:8df96975acc07347c62579f52c51e8c48c3af53508a140d7a5bd3b393bb6c77c`  
		Last Modified: Fri, 14 Jul 2017 22:00:24 GMT  
		Size: 30.0 MB (29989141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d50017aa3f2a4d0402a5bb7800b75527d1c931ddaa6405214e50047d4c4598`  
		Last Modified: Fri, 14 Jul 2017 22:00:18 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57647886b44775b9d4028425207cfab5399e75d628cb0553d7015fef7fbb60bb`  
		Last Modified: Fri, 14 Jul 2017 22:02:28 GMT  
		Size: 11.7 MB (11732688 bytes)  
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

## `docker:17.03.2-ce`

```console
$ docker pull docker@sha256:721c3b584b37e95ab6ab63449830fb39f626c8c48ae9bfd9cf663f01b8610e58
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf8acd484169b2a2da49d7e3e5aee089072236eab46c2f459da722a258bc165`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2`

```console
$ docker pull docker@sha256:721c3b584b37e95ab6ab63449830fb39f626c8c48ae9bfd9cf663f01b8610e58
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf8acd484169b2a2da49d7e3e5aee089072236eab46c2f459da722a258bc165`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:721c3b584b37e95ab6ab63449830fb39f626c8c48ae9bfd9cf663f01b8610e58
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf8acd484169b2a2da49d7e3e5aee089072236eab46c2f459da722a258bc165`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:721c3b584b37e95ab6ab63449830fb39f626c8c48ae9bfd9cf663f01b8610e58
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf8acd484169b2a2da49d7e3e5aee089072236eab46c2f459da722a258bc165`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-dind`

```console
$ docker pull docker@sha256:fbd827a4cd92b82822ffbc4cd453f25ce3c5f7e260b4a6ca9838f4c159f31a7d
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f40a275afb001ef3646d435713072b80d0755c482d1594202d19ca069d35fa2`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:41:29 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:41:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:41:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:42:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:42:01 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:42:02 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:42:03 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:42:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:42:05 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc7e160b045bbb58540ce72961e74300ee2eb3d473d7ea084e8222b0dc6596`  
		Last Modified: Thu, 29 Jun 2017 22:16:56 GMT  
		Size: 2.2 MB (2165476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c403799a483c389cbb30e75a706c4f9c99dab8f4c4d041546818b5272e80a67f`  
		Last Modified: Thu, 29 Jun 2017 22:16:54 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d0c64cd1ec3fe5373f6f5b23ab3a6b38311d4e208ee29ec8e84cf73fe3c99b`  
		Last Modified: Thu, 29 Jun 2017 22:16:54 GMT  
		Size: 175.7 KB (175679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d148546f89ae558faac06fa61e5ad399573e94caa4dddee874e3a7c7a0091d1`  
		Last Modified: Thu, 29 Jun 2017 22:16:58 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-dind`

```console
$ docker pull docker@sha256:fbd827a4cd92b82822ffbc4cd453f25ce3c5f7e260b4a6ca9838f4c159f31a7d
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f40a275afb001ef3646d435713072b80d0755c482d1594202d19ca069d35fa2`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:41:29 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:41:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:41:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:42:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:42:01 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:42:02 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:42:03 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:42:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:42:05 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc7e160b045bbb58540ce72961e74300ee2eb3d473d7ea084e8222b0dc6596`  
		Last Modified: Thu, 29 Jun 2017 22:16:56 GMT  
		Size: 2.2 MB (2165476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c403799a483c389cbb30e75a706c4f9c99dab8f4c4d041546818b5272e80a67f`  
		Last Modified: Thu, 29 Jun 2017 22:16:54 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d0c64cd1ec3fe5373f6f5b23ab3a6b38311d4e208ee29ec8e84cf73fe3c99b`  
		Last Modified: Thu, 29 Jun 2017 22:16:54 GMT  
		Size: 175.7 KB (175679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d148546f89ae558faac06fa61e5ad399573e94caa4dddee874e3a7c7a0091d1`  
		Last Modified: Thu, 29 Jun 2017 22:16:58 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:fbd827a4cd92b82822ffbc4cd453f25ce3c5f7e260b4a6ca9838f4c159f31a7d
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f40a275afb001ef3646d435713072b80d0755c482d1594202d19ca069d35fa2`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:41:29 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:41:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:41:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:42:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:42:01 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:42:02 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:42:03 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:42:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:42:05 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc7e160b045bbb58540ce72961e74300ee2eb3d473d7ea084e8222b0dc6596`  
		Last Modified: Thu, 29 Jun 2017 22:16:56 GMT  
		Size: 2.2 MB (2165476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c403799a483c389cbb30e75a706c4f9c99dab8f4c4d041546818b5272e80a67f`  
		Last Modified: Thu, 29 Jun 2017 22:16:54 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d0c64cd1ec3fe5373f6f5b23ab3a6b38311d4e208ee29ec8e84cf73fe3c99b`  
		Last Modified: Thu, 29 Jun 2017 22:16:54 GMT  
		Size: 175.7 KB (175679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d148546f89ae558faac06fa61e5ad399573e94caa4dddee874e3a7c7a0091d1`  
		Last Modified: Thu, 29 Jun 2017 22:16:58 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:fbd827a4cd92b82822ffbc4cd453f25ce3c5f7e260b4a6ca9838f4c159f31a7d
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f40a275afb001ef3646d435713072b80d0755c482d1594202d19ca069d35fa2`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:41:29 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 29 Jun 2017 21:41:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 29 Jun 2017 21:41:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 29 Jun 2017 21:42:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 29 Jun 2017 21:42:01 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:42:02 GMT
VOLUME [/var/lib/docker]
# Thu, 29 Jun 2017 21:42:03 GMT
EXPOSE 2375/tcp
# Thu, 29 Jun 2017 21:42:04 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 29 Jun 2017 21:42:05 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cc7e160b045bbb58540ce72961e74300ee2eb3d473d7ea084e8222b0dc6596`  
		Last Modified: Thu, 29 Jun 2017 22:16:56 GMT  
		Size: 2.2 MB (2165476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c403799a483c389cbb30e75a706c4f9c99dab8f4c4d041546818b5272e80a67f`  
		Last Modified: Thu, 29 Jun 2017 22:16:54 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d0c64cd1ec3fe5373f6f5b23ab3a6b38311d4e208ee29ec8e84cf73fe3c99b`  
		Last Modified: Thu, 29 Jun 2017 22:16:54 GMT  
		Size: 175.7 KB (175679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d148546f89ae558faac06fa61e5ad399573e94caa4dddee874e3a7c7a0091d1`  
		Last Modified: Thu, 29 Jun 2017 22:16:58 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-git`

```console
$ docker pull docker@sha256:1334596561b0d545a0f9829f7a6901f452700c3adb5ca8997c17f042f163c6e7
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41422683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988e1d2f18e1f65e51eaf064302c7b39d15f39189a17e5353442ad75e4a84071`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:43:01 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9ba40f5a0e21be49c372df884a6587f602bdffecc8f9fcd6a785c4ad46e9a1`  
		Last Modified: Thu, 29 Jun 2017 22:20:16 GMT  
		Size: 11.0 MB (10990411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-git`

```console
$ docker pull docker@sha256:1334596561b0d545a0f9829f7a6901f452700c3adb5ca8997c17f042f163c6e7
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41422683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988e1d2f18e1f65e51eaf064302c7b39d15f39189a17e5353442ad75e4a84071`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:43:01 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9ba40f5a0e21be49c372df884a6587f602bdffecc8f9fcd6a785c4ad46e9a1`  
		Last Modified: Thu, 29 Jun 2017 22:20:16 GMT  
		Size: 11.0 MB (10990411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:1334596561b0d545a0f9829f7a6901f452700c3adb5ca8997c17f042f163c6e7
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41422683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988e1d2f18e1f65e51eaf064302c7b39d15f39189a17e5353442ad75e4a84071`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:43:01 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9ba40f5a0e21be49c372df884a6587f602bdffecc8f9fcd6a785c4ad46e9a1`  
		Last Modified: Thu, 29 Jun 2017 22:20:16 GMT  
		Size: 11.0 MB (10990411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:1334596561b0d545a0f9829f7a6901f452700c3adb5ca8997c17f042f163c6e7
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41422683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988e1d2f18e1f65e51eaf064302c7b39d15f39189a17e5353442ad75e4a84071`
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
# Thu, 29 Jun 2017 21:39:59 GMT
ENV DOCKER_VERSION=17.03.2-ce
# Thu, 29 Jun 2017 21:40:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:40:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:40:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:40:34 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:43:01 GMT
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
	-	`sha256:d097821ea2c9d225166fe3401d4fb3539096cd03f47ecf2605fcb5c6583a9e92`  
		Last Modified: Thu, 29 Jun 2017 22:13:16 GMT  
		Size: 28.1 MB (28110648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f5b9db32b4c9eec4278d5c656bf09154420adf7a44292a765d216de6df08eb`  
		Last Modified: Thu, 29 Jun 2017 22:13:08 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9ba40f5a0e21be49c372df884a6587f602bdffecc8f9fcd6a785c4ad46e9a1`  
		Last Modified: Thu, 29 Jun 2017 22:20:16 GMT  
		Size: 11.0 MB (10990411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
