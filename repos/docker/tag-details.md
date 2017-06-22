<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.06.0-ce-rc5`](#docker17060-ce-rc5)
-	[`docker:17.06.0-ce`](#docker17060-ce)
-	[`docker:17.06.0`](#docker17060)
-	[`docker:17.06-rc`](#docker1706-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:test`](#dockertest)
-	[`docker:17.06.0-ce-rc5-dind`](#docker17060-ce-rc5-dind)
-	[`docker:17.06.0-ce-dind`](#docker17060-ce-dind)
-	[`docker:17.06.0-dind`](#docker17060-dind)
-	[`docker:17.06-rc-dind`](#docker1706-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:17.06.0-ce-rc5-git`](#docker17060-ce-rc5-git)
-	[`docker:17.06.0-ce-git`](#docker17060-ce-git)
-	[`docker:17.06.0-git`](#docker17060-git)
-	[`docker:17.06-rc-git`](#docker1706-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:test-git`](#dockertest-git)
-	[`docker:17.05.0-ce`](#docker17050-ce)
-	[`docker:17.05.0`](#docker17050)
-	[`docker:17.05`](#docker1705)
-	[`docker:17`](#docker17)
-	[`docker:latest`](#dockerlatest)
-	[`docker:edge`](#dockeredge)
-	[`docker:17.05.0-ce-dind`](#docker17050-ce-dind)
-	[`docker:17.05.0-dind`](#docker17050-dind)
-	[`docker:17.05-dind`](#docker1705-dind)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:17.05.0-ce-git`](#docker17050-ce-git)
-	[`docker:17.05.0-git`](#docker17050-git)
-	[`docker:17.05-git`](#docker1705-git)
-	[`docker:17-git`](#docker17-git)
-	[`docker:git`](#dockergit)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:17.03.2-ce-rc1`](#docker17032-ce-rc1)
-	[`docker:17.03.2-ce`](#docker17032-ce)
-	[`docker:17.03.2`](#docker17032)
-	[`docker:17.03-rc`](#docker1703-rc)
-	[`docker:17.03.2-ce-rc1-dind`](#docker17032-ce-rc1-dind)
-	[`docker:17.03.2-ce-dind`](#docker17032-ce-dind)
-	[`docker:17.03.2-dind`](#docker17032-dind)
-	[`docker:17.03-rc-dind`](#docker1703-rc-dind)
-	[`docker:17.03.2-ce-rc1-git`](#docker17032-ce-rc1-git)
-	[`docker:17.03.2-ce-git`](#docker17032-ce-git)
-	[`docker:17.03.2-git`](#docker17032-git)
-	[`docker:17.03-rc-git`](#docker1703-rc-git)
-	[`docker:17.03.1-ce`](#docker17031-ce)
-	[`docker:17.03.1`](#docker17031)
-	[`docker:17.03`](#docker1703)
-	[`docker:stable`](#dockerstable)
-	[`docker:17.03.1-ce-dind`](#docker17031-ce-dind)
-	[`docker:17.03.1-dind`](#docker17031-dind)
-	[`docker:17.03-dind`](#docker1703-dind)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:17.03.1-ce-git`](#docker17031-ce-git)
-	[`docker:17.03.1-git`](#docker17031-git)
-	[`docker:17.03-git`](#docker1703-git)
-	[`docker:stable-git`](#dockerstable-git)

## `docker:17.06.0-ce-rc5`

**does not exist** (yet?)

## `docker:17.06.0-ce`

```console
$ docker pull docker@sha256:fe403255fada23f363837953efcdf85340fd0c56fc58d1188de38194094b4daf
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f10506f060e45cc26ec4c4e0568ed856b93aab466b529c518191ce46c8cb34e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0`

```console
$ docker pull docker@sha256:fe403255fada23f363837953efcdf85340fd0c56fc58d1188de38194094b4daf
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f10506f060e45cc26ec4c4e0568ed856b93aab466b529c518191ce46c8cb34e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc`

```console
$ docker pull docker@sha256:fe403255fada23f363837953efcdf85340fd0c56fc58d1188de38194094b4daf
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f10506f060e45cc26ec4c4e0568ed856b93aab466b529c518191ce46c8cb34e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:fe403255fada23f363837953efcdf85340fd0c56fc58d1188de38194094b4daf
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f10506f060e45cc26ec4c4e0568ed856b93aab466b529c518191ce46c8cb34e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:fe403255fada23f363837953efcdf85340fd0c56fc58d1188de38194094b4daf
```

-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f10506f060e45cc26ec4c4e0568ed856b93aab466b529c518191ce46c8cb34e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc5-dind`

**does not exist** (yet?)

## `docker:17.06.0-ce-dind`

```console
$ docker pull docker@sha256:99c78e6d185e779011172cc538ed0ccfc6dd2ff91ad64241cee907ab336382bf
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731ef8897f9b74cf5a2a997c891b3e61ab74569acc66f1df3a7c2773cc6cca1d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:04:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:04:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:04:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:04:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:04:31 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:04:32 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:04:32 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:04:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:04:34 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd45896a41e470e61907f4d139850c4d0bc8587781d15b6d438bd28e0415972`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 2.2 MB (2209014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25f03b2c9b4dff5c55a2041eddfa94ca09955b589e861c05cf0446250cb2253`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deeef466708b5d251c3c722aee213fc2ccc0bbdad6382ea6b9d2a7276334a6e4`  
		Last Modified: Fri, 16 Jun 2017 00:13:32 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a3217a7261b0525763a490d27a600aa92a2d8cb886f145ac0fbe7abe33cb1a`  
		Last Modified: Fri, 16 Jun 2017 00:13:31 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-dind`

```console
$ docker pull docker@sha256:99c78e6d185e779011172cc538ed0ccfc6dd2ff91ad64241cee907ab336382bf
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731ef8897f9b74cf5a2a997c891b3e61ab74569acc66f1df3a7c2773cc6cca1d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:04:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:04:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:04:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:04:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:04:31 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:04:32 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:04:32 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:04:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:04:34 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd45896a41e470e61907f4d139850c4d0bc8587781d15b6d438bd28e0415972`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 2.2 MB (2209014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25f03b2c9b4dff5c55a2041eddfa94ca09955b589e861c05cf0446250cb2253`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deeef466708b5d251c3c722aee213fc2ccc0bbdad6382ea6b9d2a7276334a6e4`  
		Last Modified: Fri, 16 Jun 2017 00:13:32 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a3217a7261b0525763a490d27a600aa92a2d8cb886f145ac0fbe7abe33cb1a`  
		Last Modified: Fri, 16 Jun 2017 00:13:31 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-dind`

```console
$ docker pull docker@sha256:99c78e6d185e779011172cc538ed0ccfc6dd2ff91ad64241cee907ab336382bf
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731ef8897f9b74cf5a2a997c891b3e61ab74569acc66f1df3a7c2773cc6cca1d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:04:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:04:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:04:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:04:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:04:31 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:04:32 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:04:32 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:04:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:04:34 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd45896a41e470e61907f4d139850c4d0bc8587781d15b6d438bd28e0415972`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 2.2 MB (2209014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25f03b2c9b4dff5c55a2041eddfa94ca09955b589e861c05cf0446250cb2253`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deeef466708b5d251c3c722aee213fc2ccc0bbdad6382ea6b9d2a7276334a6e4`  
		Last Modified: Fri, 16 Jun 2017 00:13:32 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a3217a7261b0525763a490d27a600aa92a2d8cb886f145ac0fbe7abe33cb1a`  
		Last Modified: Fri, 16 Jun 2017 00:13:31 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:99c78e6d185e779011172cc538ed0ccfc6dd2ff91ad64241cee907ab336382bf
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731ef8897f9b74cf5a2a997c891b3e61ab74569acc66f1df3a7c2773cc6cca1d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:04:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:04:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:04:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:04:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:04:31 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:04:32 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:04:32 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:04:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:04:34 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd45896a41e470e61907f4d139850c4d0bc8587781d15b6d438bd28e0415972`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 2.2 MB (2209014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25f03b2c9b4dff5c55a2041eddfa94ca09955b589e861c05cf0446250cb2253`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deeef466708b5d251c3c722aee213fc2ccc0bbdad6382ea6b9d2a7276334a6e4`  
		Last Modified: Fri, 16 Jun 2017 00:13:32 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a3217a7261b0525763a490d27a600aa92a2d8cb886f145ac0fbe7abe33cb1a`  
		Last Modified: Fri, 16 Jun 2017 00:13:31 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:99c78e6d185e779011172cc538ed0ccfc6dd2ff91ad64241cee907ab336382bf
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731ef8897f9b74cf5a2a997c891b3e61ab74569acc66f1df3a7c2773cc6cca1d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:04:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:04:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:04:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:04:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:04:31 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:04:32 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:04:32 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:04:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:04:34 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd45896a41e470e61907f4d139850c4d0bc8587781d15b6d438bd28e0415972`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 2.2 MB (2209014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25f03b2c9b4dff5c55a2041eddfa94ca09955b589e861c05cf0446250cb2253`  
		Last Modified: Fri, 16 Jun 2017 00:13:33 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deeef466708b5d251c3c722aee213fc2ccc0bbdad6382ea6b9d2a7276334a6e4`  
		Last Modified: Fri, 16 Jun 2017 00:13:32 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a3217a7261b0525763a490d27a600aa92a2d8cb886f145ac0fbe7abe33cb1a`  
		Last Modified: Fri, 16 Jun 2017 00:13:31 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc5-git`

**does not exist** (yet?)

## `docker:17.06.0-ce-git`

```console
$ docker pull docker@sha256:e61b48fb7548be7bf04dab9bfa916f8f3a5f65b43653ee95b07dfa340ed92f80
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a0535bc3ddbe5414308e2e5bbfb979561a9dbcde3e97ad05fc444dfe4af403`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:05:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc8ce1258c9138d4b55f3a28d76ccac5e5202bb6b98cf43784924eb09c86230`  
		Last Modified: Fri, 16 Jun 2017 00:16:09 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-git`

```console
$ docker pull docker@sha256:e61b48fb7548be7bf04dab9bfa916f8f3a5f65b43653ee95b07dfa340ed92f80
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a0535bc3ddbe5414308e2e5bbfb979561a9dbcde3e97ad05fc444dfe4af403`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:05:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc8ce1258c9138d4b55f3a28d76ccac5e5202bb6b98cf43784924eb09c86230`  
		Last Modified: Fri, 16 Jun 2017 00:16:09 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-git`

```console
$ docker pull docker@sha256:e61b48fb7548be7bf04dab9bfa916f8f3a5f65b43653ee95b07dfa340ed92f80
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a0535bc3ddbe5414308e2e5bbfb979561a9dbcde3e97ad05fc444dfe4af403`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:05:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc8ce1258c9138d4b55f3a28d76ccac5e5202bb6b98cf43784924eb09c86230`  
		Last Modified: Fri, 16 Jun 2017 00:16:09 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:e61b48fb7548be7bf04dab9bfa916f8f3a5f65b43653ee95b07dfa340ed92f80
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a0535bc3ddbe5414308e2e5bbfb979561a9dbcde3e97ad05fc444dfe4af403`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:05:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc8ce1258c9138d4b55f3a28d76ccac5e5202bb6b98cf43784924eb09c86230`  
		Last Modified: Fri, 16 Jun 2017 00:16:09 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:e61b48fb7548be7bf04dab9bfa916f8f3a5f65b43653ee95b07dfa340ed92f80
```

-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a0535bc3ddbe5414308e2e5bbfb979561a9dbcde3e97ad05fc444dfe4af403`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Fri, 16 Jun 2017 00:03:45 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc4
# Fri, 16 Jun 2017 00:03:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:03:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:03:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:03:54 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:05:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491ccbdf1032a9fbef20bb3ddc5b2daba222d96b0a36c522316b12aea6c78e35`  
		Last Modified: Fri, 16 Jun 2017 00:10:58 GMT  
		Size: 30.0 MB (29984644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3b33c3ccb41586a9f2927d9e1fdab83a3e89d7beef4a009cf684b75238bc6`  
		Last Modified: Fri, 16 Jun 2017 00:10:54 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc8ce1258c9138d4b55f3a28d76ccac5e5202bb6b98cf43784924eb09c86230`  
		Last Modified: Fri, 16 Jun 2017 00:16:09 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:7aa7b7d280c04942056a968518d78ba19112bcee84c1bbe7e560396fd329256e
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7d28a50502616459ad199e85c14fd58cf58889f4a5c0e24a0add91150062ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:7aa7b7d280c04942056a968518d78ba19112bcee84c1bbe7e560396fd329256e
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7d28a50502616459ad199e85c14fd58cf58889f4a5c0e24a0add91150062ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05`

```console
$ docker pull docker@sha256:7aa7b7d280c04942056a968518d78ba19112bcee84c1bbe7e560396fd329256e
```

-	Platforms:
	-	linux; amd64

### `docker:17.05` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7d28a50502616459ad199e85c14fd58cf58889f4a5c0e24a0add91150062ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:7aa7b7d280c04942056a968518d78ba19112bcee84c1bbe7e560396fd329256e
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7d28a50502616459ad199e85c14fd58cf58889f4a5c0e24a0add91150062ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:7aa7b7d280c04942056a968518d78ba19112bcee84c1bbe7e560396fd329256e
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7d28a50502616459ad199e85c14fd58cf58889f4a5c0e24a0add91150062ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:7aa7b7d280c04942056a968518d78ba19112bcee84c1bbe7e560396fd329256e
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7d28a50502616459ad199e85c14fd58cf58889f4a5c0e24a0add91150062ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:563bc0876ccd147ad5cfaf2b899b28605780a80cc73c915fd3d55e00a66260bd
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9e404d202f23d57f6234cc352889fbffee7830a324e1402e5f6ae367edf3bd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:06:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:06:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:06:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:06:14 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:06:15 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:06:16 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:06:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:06:18 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcb2c23e5e9db8f7b9beb8a3a6d4f82f58387b7d4dc869a802edf038a66629`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbb2554c7906b1e27d32ad65d65f9252ac4b94479dcdb3415be7ca1ec06e73a`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f310717ded66af693c9ef03e4f0f848c2bbb60d4816cd1b658502dc03b951b72`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3926f29d025a56d7ff3a3b4b21bb42c87b7fe1cbcd9603fe7579f275fd9ccf5f`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:563bc0876ccd147ad5cfaf2b899b28605780a80cc73c915fd3d55e00a66260bd
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9e404d202f23d57f6234cc352889fbffee7830a324e1402e5f6ae367edf3bd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:06:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:06:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:06:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:06:14 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:06:15 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:06:16 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:06:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:06:18 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcb2c23e5e9db8f7b9beb8a3a6d4f82f58387b7d4dc869a802edf038a66629`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbb2554c7906b1e27d32ad65d65f9252ac4b94479dcdb3415be7ca1ec06e73a`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f310717ded66af693c9ef03e4f0f848c2bbb60d4816cd1b658502dc03b951b72`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3926f29d025a56d7ff3a3b4b21bb42c87b7fe1cbcd9603fe7579f275fd9ccf5f`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-dind`

```console
$ docker pull docker@sha256:563bc0876ccd147ad5cfaf2b899b28605780a80cc73c915fd3d55e00a66260bd
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9e404d202f23d57f6234cc352889fbffee7830a324e1402e5f6ae367edf3bd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:06:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:06:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:06:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:06:14 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:06:15 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:06:16 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:06:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:06:18 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcb2c23e5e9db8f7b9beb8a3a6d4f82f58387b7d4dc869a802edf038a66629`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbb2554c7906b1e27d32ad65d65f9252ac4b94479dcdb3415be7ca1ec06e73a`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f310717ded66af693c9ef03e4f0f848c2bbb60d4816cd1b658502dc03b951b72`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3926f29d025a56d7ff3a3b4b21bb42c87b7fe1cbcd9603fe7579f275fd9ccf5f`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:563bc0876ccd147ad5cfaf2b899b28605780a80cc73c915fd3d55e00a66260bd
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9e404d202f23d57f6234cc352889fbffee7830a324e1402e5f6ae367edf3bd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:06:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:06:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:06:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:06:14 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:06:15 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:06:16 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:06:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:06:18 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcb2c23e5e9db8f7b9beb8a3a6d4f82f58387b7d4dc869a802edf038a66629`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbb2554c7906b1e27d32ad65d65f9252ac4b94479dcdb3415be7ca1ec06e73a`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f310717ded66af693c9ef03e4f0f848c2bbb60d4816cd1b658502dc03b951b72`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3926f29d025a56d7ff3a3b4b21bb42c87b7fe1cbcd9603fe7579f275fd9ccf5f`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:563bc0876ccd147ad5cfaf2b899b28605780a80cc73c915fd3d55e00a66260bd
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9e404d202f23d57f6234cc352889fbffee7830a324e1402e5f6ae367edf3bd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:06:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:06:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:06:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:06:14 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:06:15 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:06:16 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:06:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:06:18 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcb2c23e5e9db8f7b9beb8a3a6d4f82f58387b7d4dc869a802edf038a66629`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbb2554c7906b1e27d32ad65d65f9252ac4b94479dcdb3415be7ca1ec06e73a`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f310717ded66af693c9ef03e4f0f848c2bbb60d4816cd1b658502dc03b951b72`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3926f29d025a56d7ff3a3b4b21bb42c87b7fe1cbcd9603fe7579f275fd9ccf5f`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:563bc0876ccd147ad5cfaf2b899b28605780a80cc73c915fd3d55e00a66260bd
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9e404d202f23d57f6234cc352889fbffee7830a324e1402e5f6ae367edf3bd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:06:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:06:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:06:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:06:14 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:06:15 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:06:16 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:06:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:06:18 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fcb2c23e5e9db8f7b9beb8a3a6d4f82f58387b7d4dc869a802edf038a66629`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbb2554c7906b1e27d32ad65d65f9252ac4b94479dcdb3415be7ca1ec06e73a`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f310717ded66af693c9ef03e4f0f848c2bbb60d4816cd1b658502dc03b951b72`  
		Last Modified: Fri, 16 Jun 2017 00:21:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3926f29d025a56d7ff3a3b4b21bb42c87b7fe1cbcd9603fe7579f275fd9ccf5f`  
		Last Modified: Fri, 16 Jun 2017 00:21:20 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:6d71ca056f3f921faa9882c40d8c980fda811fa90f920f37285ff1b70413a63f
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6427da6eef5d9273cab59d8a14cfe97bffb4275ce2581279906219cb4a85c071`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee89c04d0cf47cfadfb7e4f62e0c47f4bfce7efd980f39c1f07cba3f7a2976ba`  
		Last Modified: Fri, 16 Jun 2017 00:23:56 GMT  
		Size: 11.0 MB (10990193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:6d71ca056f3f921faa9882c40d8c980fda811fa90f920f37285ff1b70413a63f
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6427da6eef5d9273cab59d8a14cfe97bffb4275ce2581279906219cb4a85c071`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee89c04d0cf47cfadfb7e4f62e0c47f4bfce7efd980f39c1f07cba3f7a2976ba`  
		Last Modified: Fri, 16 Jun 2017 00:23:56 GMT  
		Size: 11.0 MB (10990193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-git`

```console
$ docker pull docker@sha256:6d71ca056f3f921faa9882c40d8c980fda811fa90f920f37285ff1b70413a63f
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6427da6eef5d9273cab59d8a14cfe97bffb4275ce2581279906219cb4a85c071`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee89c04d0cf47cfadfb7e4f62e0c47f4bfce7efd980f39c1f07cba3f7a2976ba`  
		Last Modified: Fri, 16 Jun 2017 00:23:56 GMT  
		Size: 11.0 MB (10990193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:6d71ca056f3f921faa9882c40d8c980fda811fa90f920f37285ff1b70413a63f
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6427da6eef5d9273cab59d8a14cfe97bffb4275ce2581279906219cb4a85c071`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee89c04d0cf47cfadfb7e4f62e0c47f4bfce7efd980f39c1f07cba3f7a2976ba`  
		Last Modified: Fri, 16 Jun 2017 00:23:56 GMT  
		Size: 11.0 MB (10990193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:6d71ca056f3f921faa9882c40d8c980fda811fa90f920f37285ff1b70413a63f
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6427da6eef5d9273cab59d8a14cfe97bffb4275ce2581279906219cb4a85c071`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee89c04d0cf47cfadfb7e4f62e0c47f4bfce7efd980f39c1f07cba3f7a2976ba`  
		Last Modified: Fri, 16 Jun 2017 00:23:56 GMT  
		Size: 11.0 MB (10990193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:6d71ca056f3f921faa9882c40d8c980fda811fa90f920f37285ff1b70413a63f
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6427da6eef5d9273cab59d8a14cfe97bffb4275ce2581279906219cb4a85c071`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 30 May 2017 16:45:20 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Fri, 16 Jun 2017 00:05:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:05:35 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:05:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:05:37 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:06:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdcf94c1dc53caf7875b24a5f436b7eb7673c01262039ed28dd8f44140c98c3`  
		Last Modified: Fri, 16 Jun 2017 00:18:48 GMT  
		Size: 28.8 MB (28753682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b244508e454e1555cd9f038bb983cdd659e1f4cacbf91b9d3580f78ed58eb7af`  
		Last Modified: Fri, 16 Jun 2017 00:18:42 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee89c04d0cf47cfadfb7e4f62e0c47f4bfce7efd980f39c1f07cba3f7a2976ba`  
		Last Modified: Fri, 16 Jun 2017 00:23:56 GMT  
		Size: 11.0 MB (10990193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1`

```console
$ docker pull docker@sha256:ea958241fdf0a14b1f5c09219b479d38fd4de83177f9ea8d8ad4f47e321e7eda
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-rc1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30430350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78adcdbbab3d45f33940b7398c84b8204577bcaf46b0e783a6d7b4f933a78495`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce`

```console
$ docker pull docker@sha256:ea958241fdf0a14b1f5c09219b479d38fd4de83177f9ea8d8ad4f47e321e7eda
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30430350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78adcdbbab3d45f33940b7398c84b8204577bcaf46b0e783a6d7b4f933a78495`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2`

```console
$ docker pull docker@sha256:ea958241fdf0a14b1f5c09219b479d38fd4de83177f9ea8d8ad4f47e321e7eda
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30430350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78adcdbbab3d45f33940b7398c84b8204577bcaf46b0e783a6d7b4f933a78495`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc`

```console
$ docker pull docker@sha256:ea958241fdf0a14b1f5c09219b479d38fd4de83177f9ea8d8ad4f47e321e7eda
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30430350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78adcdbbab3d45f33940b7398c84b8204577bcaf46b0e783a6d7b4f933a78495`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1-dind`

```console
$ docker pull docker@sha256:d48f716671e723ee0e28732e2a114c7fe1ac5dd86c1f1001a6dba7babf0dfcd5
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-rc1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa24bd18cb09be2bc380601e2496601cbf9ba6e71d7641867a223d9911c0dac2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:07:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:07:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:07:51 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:07:55 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:07:56 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:56 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:07:57 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:07:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:59 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dd663d30371c5f70354f8d4b9109694724afe6a98e8fdef5c52fe0d73c90b6`  
		Last Modified: Fri, 16 Jun 2017 00:28:22 GMT  
		Size: 2.2 MB (2165461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9426e77119f8b1fddd26ff3e0e397831735b185a84c205b2143d1986a4415c`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949e644319caa0b4568ba0f875ce0a225d3a5115147ba78aedc240514f34cb02`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1937172303d843d460c3e22a06396df3c679e705b52aa7bb0466b73b3e920ddc`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-dind`

```console
$ docker pull docker@sha256:d48f716671e723ee0e28732e2a114c7fe1ac5dd86c1f1001a6dba7babf0dfcd5
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa24bd18cb09be2bc380601e2496601cbf9ba6e71d7641867a223d9911c0dac2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:07:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:07:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:07:51 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:07:55 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:07:56 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:56 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:07:57 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:07:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:59 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dd663d30371c5f70354f8d4b9109694724afe6a98e8fdef5c52fe0d73c90b6`  
		Last Modified: Fri, 16 Jun 2017 00:28:22 GMT  
		Size: 2.2 MB (2165461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9426e77119f8b1fddd26ff3e0e397831735b185a84c205b2143d1986a4415c`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949e644319caa0b4568ba0f875ce0a225d3a5115147ba78aedc240514f34cb02`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1937172303d843d460c3e22a06396df3c679e705b52aa7bb0466b73b3e920ddc`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-dind`

```console
$ docker pull docker@sha256:d48f716671e723ee0e28732e2a114c7fe1ac5dd86c1f1001a6dba7babf0dfcd5
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa24bd18cb09be2bc380601e2496601cbf9ba6e71d7641867a223d9911c0dac2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:07:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:07:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:07:51 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:07:55 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:07:56 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:56 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:07:57 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:07:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:59 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dd663d30371c5f70354f8d4b9109694724afe6a98e8fdef5c52fe0d73c90b6`  
		Last Modified: Fri, 16 Jun 2017 00:28:22 GMT  
		Size: 2.2 MB (2165461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9426e77119f8b1fddd26ff3e0e397831735b185a84c205b2143d1986a4415c`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949e644319caa0b4568ba0f875ce0a225d3a5115147ba78aedc240514f34cb02`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1937172303d843d460c3e22a06396df3c679e705b52aa7bb0466b73b3e920ddc`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc-dind`

```console
$ docker pull docker@sha256:d48f716671e723ee0e28732e2a114c7fe1ac5dd86c1f1001a6dba7babf0dfcd5
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa24bd18cb09be2bc380601e2496601cbf9ba6e71d7641867a223d9911c0dac2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:07:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:07:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:07:51 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:07:55 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:07:56 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:56 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:07:57 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:07:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:59 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dd663d30371c5f70354f8d4b9109694724afe6a98e8fdef5c52fe0d73c90b6`  
		Last Modified: Fri, 16 Jun 2017 00:28:22 GMT  
		Size: 2.2 MB (2165461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9426e77119f8b1fddd26ff3e0e397831735b185a84c205b2143d1986a4415c`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949e644319caa0b4568ba0f875ce0a225d3a5115147ba78aedc240514f34cb02`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1937172303d843d460c3e22a06396df3c679e705b52aa7bb0466b73b3e920ddc`  
		Last Modified: Fri, 16 Jun 2017 00:28:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1-git`

```console
$ docker pull docker@sha256:b1c0c59d66b1a8ea47be1d16f96a5c8da1f4803467569055aeeb639d201a9a0e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-rc1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41420577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8209109e77b9d88c07371265600c1dbac777f182565f430d0a7f880f710f99eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:08:27 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0da04eb4a5db63c3fa814ef030f80fa3a1781f8d44fc82d8659f48a208012d`  
		Last Modified: Fri, 16 Jun 2017 00:30:08 GMT  
		Size: 11.0 MB (10990227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-git`

```console
$ docker pull docker@sha256:b1c0c59d66b1a8ea47be1d16f96a5c8da1f4803467569055aeeb639d201a9a0e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41420577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8209109e77b9d88c07371265600c1dbac777f182565f430d0a7f880f710f99eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:08:27 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0da04eb4a5db63c3fa814ef030f80fa3a1781f8d44fc82d8659f48a208012d`  
		Last Modified: Fri, 16 Jun 2017 00:30:08 GMT  
		Size: 11.0 MB (10990227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-git`

```console
$ docker pull docker@sha256:b1c0c59d66b1a8ea47be1d16f96a5c8da1f4803467569055aeeb639d201a9a0e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41420577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8209109e77b9d88c07371265600c1dbac777f182565f430d0a7f880f710f99eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:08:27 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0da04eb4a5db63c3fa814ef030f80fa3a1781f8d44fc82d8659f48a208012d`  
		Last Modified: Fri, 16 Jun 2017 00:30:08 GMT  
		Size: 11.0 MB (10990227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc-git`

```console
$ docker pull docker@sha256:b1c0c59d66b1a8ea47be1d16f96a5c8da1f4803467569055aeeb639d201a9a0e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41420577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8209109e77b9d88c07371265600c1dbac777f182565f430d0a7f880f710f99eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 31 May 2017 20:11:21 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Fri, 16 Jun 2017 00:07:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:07:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:07:19 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:08:27 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9050cfd8812919f20e4732b89cbd73647f48f4021d06413d945ab1de2e240`  
		Last Modified: Fri, 16 Jun 2017 00:26:35 GMT  
		Size: 28.1 MB (28111070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cf72183d718925a99f1f87ed40b7e4e7a1621885c1162d09ddca7b49699afc`  
		Last Modified: Fri, 16 Jun 2017 00:26:33 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0da04eb4a5db63c3fa814ef030f80fa3a1781f8d44fc82d8659f48a208012d`  
		Last Modified: Fri, 16 Jun 2017 00:30:08 GMT  
		Size: 11.0 MB (10990227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce`

```console
$ docker pull docker@sha256:91ae3af3f0cf0009511cc94e318567ac4f981d58327693deea9a034e0e34fe4c
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30426177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418d71c549e3cccffa9558f507ef37d1ae10c948e0f791a68755b4d95d069d68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1`

```console
$ docker pull docker@sha256:91ae3af3f0cf0009511cc94e318567ac4f981d58327693deea9a034e0e34fe4c
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30426177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418d71c549e3cccffa9558f507ef37d1ae10c948e0f791a68755b4d95d069d68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:91ae3af3f0cf0009511cc94e318567ac4f981d58327693deea9a034e0e34fe4c
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30426177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418d71c549e3cccffa9558f507ef37d1ae10c948e0f791a68755b4d95d069d68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:91ae3af3f0cf0009511cc94e318567ac4f981d58327693deea9a034e0e34fe4c
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30426177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418d71c549e3cccffa9558f507ef37d1ae10c948e0f791a68755b4d95d069d68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-dind`

```console
$ docker pull docker@sha256:315c75ce5d3d0d7cf1c5c7f7b3999990832af927896cbcd13c33b29858254805
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32769109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01b3f4cf523aada5e20903903ddcd82bc1095dd2c162325ff33fb8143ffd4e2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:09:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:09:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:09:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:09:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:09:45 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:09:46 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:09:47 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:09:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:09:48 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2b7e5972092f108bbbd9540cc1e65ef67430d3329dba2e996b4ce450be8276`  
		Last Modified: Fri, 16 Jun 2017 00:33:45 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9366607950ec6cec8610553916f580cc08f34ff75b9b601d6090311e07dca7db`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b915ec77f6eeba462628c0e31190ecdfb2bbd79bea986977b7bbe8285a91c1f3`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 175.7 KB (175676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e60e33cde26fd070447c8eb146a064df6d9755267ca93d57f9f077bf5e354e5`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-dind`

```console
$ docker pull docker@sha256:315c75ce5d3d0d7cf1c5c7f7b3999990832af927896cbcd13c33b29858254805
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32769109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01b3f4cf523aada5e20903903ddcd82bc1095dd2c162325ff33fb8143ffd4e2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:09:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:09:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:09:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:09:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:09:45 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:09:46 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:09:47 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:09:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:09:48 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2b7e5972092f108bbbd9540cc1e65ef67430d3329dba2e996b4ce450be8276`  
		Last Modified: Fri, 16 Jun 2017 00:33:45 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9366607950ec6cec8610553916f580cc08f34ff75b9b601d6090311e07dca7db`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b915ec77f6eeba462628c0e31190ecdfb2bbd79bea986977b7bbe8285a91c1f3`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 175.7 KB (175676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e60e33cde26fd070447c8eb146a064df6d9755267ca93d57f9f077bf5e354e5`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:315c75ce5d3d0d7cf1c5c7f7b3999990832af927896cbcd13c33b29858254805
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32769109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01b3f4cf523aada5e20903903ddcd82bc1095dd2c162325ff33fb8143ffd4e2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:09:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:09:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:09:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:09:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:09:45 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:09:46 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:09:47 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:09:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:09:48 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2b7e5972092f108bbbd9540cc1e65ef67430d3329dba2e996b4ce450be8276`  
		Last Modified: Fri, 16 Jun 2017 00:33:45 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9366607950ec6cec8610553916f580cc08f34ff75b9b601d6090311e07dca7db`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b915ec77f6eeba462628c0e31190ecdfb2bbd79bea986977b7bbe8285a91c1f3`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 175.7 KB (175676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e60e33cde26fd070447c8eb146a064df6d9755267ca93d57f9f077bf5e354e5`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:315c75ce5d3d0d7cf1c5c7f7b3999990832af927896cbcd13c33b29858254805
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32769109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01b3f4cf523aada5e20903903ddcd82bc1095dd2c162325ff33fb8143ffd4e2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:09:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 16 Jun 2017 00:09:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 16 Jun 2017 00:09:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 16 Jun 2017 00:09:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 16 Jun 2017 00:09:45 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:09:46 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Jun 2017 00:09:47 GMT
EXPOSE 2375/tcp
# Fri, 16 Jun 2017 00:09:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Jun 2017 00:09:48 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2b7e5972092f108bbbd9540cc1e65ef67430d3329dba2e996b4ce450be8276`  
		Last Modified: Fri, 16 Jun 2017 00:33:45 GMT  
		Size: 2.2 MB (2165469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9366607950ec6cec8610553916f580cc08f34ff75b9b601d6090311e07dca7db`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b915ec77f6eeba462628c0e31190ecdfb2bbd79bea986977b7bbe8285a91c1f3`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 175.7 KB (175676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e60e33cde26fd070447c8eb146a064df6d9755267ca93d57f9f077bf5e354e5`  
		Last Modified: Fri, 16 Jun 2017 00:33:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-git`

```console
$ docker pull docker@sha256:f46ccd3de0ec11748a99a5428539fd9938c45158447044a2aff96d124c9f35d7
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b63b148f7b3a78efb0636dc3b22820232f77ab220c9ad79a5aae8c80d49883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:10:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa115c9c7a18ea572834b6abb712af39fc4a5ccacf25e4d07c77c30e1a5fd20`  
		Last Modified: Fri, 16 Jun 2017 00:35:30 GMT  
		Size: 11.0 MB (10990205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-git`

```console
$ docker pull docker@sha256:f46ccd3de0ec11748a99a5428539fd9938c45158447044a2aff96d124c9f35d7
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b63b148f7b3a78efb0636dc3b22820232f77ab220c9ad79a5aae8c80d49883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:10:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa115c9c7a18ea572834b6abb712af39fc4a5ccacf25e4d07c77c30e1a5fd20`  
		Last Modified: Fri, 16 Jun 2017 00:35:30 GMT  
		Size: 11.0 MB (10990205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:f46ccd3de0ec11748a99a5428539fd9938c45158447044a2aff96d124c9f35d7
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b63b148f7b3a78efb0636dc3b22820232f77ab220c9ad79a5aae8c80d49883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:10:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa115c9c7a18ea572834b6abb712af39fc4a5ccacf25e4d07c77c30e1a5fd20`  
		Last Modified: Fri, 16 Jun 2017 00:35:30 GMT  
		Size: 11.0 MB (10990205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:f46ccd3de0ec11748a99a5428539fd9938c45158447044a2aff96d124c9f35d7
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b63b148f7b3a78efb0636dc3b22820232f77ab220c9ad79a5aae8c80d49883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 16 Jun 2017 00:08:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 16 Jun 2017 00:08:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 16 Jun 2017 00:08:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Jun 2017 00:08:59 GMT
CMD ["sh"]
# Fri, 16 Jun 2017 00:10:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf487a652911b47538138aef20796e299baca38b01311e1450156de4e024171`  
		Last Modified: Fri, 16 Jun 2017 00:32:00 GMT  
		Size: 28.1 MB (28106897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75201fceae6ebb2bf14f1b594e28611859832c7145ec462d4aa4fe41fdc2fc62`  
		Last Modified: Fri, 16 Jun 2017 00:31:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa115c9c7a18ea572834b6abb712af39fc4a5ccacf25e4d07c77c30e1a5fd20`  
		Last Modified: Fri, 16 Jun 2017 00:35:30 GMT  
		Size: 11.0 MB (10990205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
