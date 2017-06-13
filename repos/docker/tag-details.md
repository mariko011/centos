<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.06.0-ce-rc3`](#docker17060-ce-rc3)
-	[`docker:17.06.0-ce`](#docker17060-ce)
-	[`docker:17.06.0`](#docker17060)
-	[`docker:17.06-rc`](#docker1706-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:test`](#dockertest)
-	[`docker:17.06.0-ce-rc3-dind`](#docker17060-ce-rc3-dind)
-	[`docker:17.06.0-ce-dind`](#docker17060-ce-dind)
-	[`docker:17.06.0-dind`](#docker17060-dind)
-	[`docker:17.06-rc-dind`](#docker1706-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:17.06.0-ce-rc3-git`](#docker17060-ce-rc3-git)
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

## `docker:17.06.0-ce-rc3`

```console
$ docker pull docker@sha256:4943bea6f10beedbaf43d75b6cb34fdb8d4950b550ff443b1bfcf1c5d07e2702
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f3bd6aee7b91913d00db66e9df10936506e650fde42571c4a8977be0c775a2`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce`

```console
$ docker pull docker@sha256:4943bea6f10beedbaf43d75b6cb34fdb8d4950b550ff443b1bfcf1c5d07e2702
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f3bd6aee7b91913d00db66e9df10936506e650fde42571c4a8977be0c775a2`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0`

```console
$ docker pull docker@sha256:4943bea6f10beedbaf43d75b6cb34fdb8d4950b550ff443b1bfcf1c5d07e2702
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f3bd6aee7b91913d00db66e9df10936506e650fde42571c4a8977be0c775a2`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc`

```console
$ docker pull docker@sha256:4943bea6f10beedbaf43d75b6cb34fdb8d4950b550ff443b1bfcf1c5d07e2702
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f3bd6aee7b91913d00db66e9df10936506e650fde42571c4a8977be0c775a2`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:4943bea6f10beedbaf43d75b6cb34fdb8d4950b550ff443b1bfcf1c5d07e2702
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f3bd6aee7b91913d00db66e9df10936506e650fde42571c4a8977be0c775a2`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:4943bea6f10beedbaf43d75b6cb34fdb8d4950b550ff443b1bfcf1c5d07e2702
```

-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32326899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f3bd6aee7b91913d00db66e9df10936506e650fde42571c4a8977be0c775a2`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc3-dind`

```console
$ docker pull docker@sha256:6f1413f462cb2fa4e58d30ec7a555abe8fda296674493d03506b3783050c5d15
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc3-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781b9ef8a03bb8c04eb85a11c06f1810763b38eb29197072aca87790bc1ad25d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:36:23 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:37:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:37:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:38:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:38:05 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:38:07 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:38:08 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:38:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:38:11 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bb166007b21d914053f30a01d79e2c3d38de1546e2f6610d12caa3cea6c000`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 2.2 MB (2209040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b507615d98208d20b56b7164890014ec20480ea77453855333241520f2351`  
		Last Modified: Tue, 13 Jun 2017 22:06:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e477e2a43ec131e507cc36cba202eb09dfe4791dafc43a13ee30bb7ab928cf`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31fcbf49eb61e4ecfeb704e8d15124295ea00d0ffee41aee3270cc9c840d693`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-dind`

```console
$ docker pull docker@sha256:6f1413f462cb2fa4e58d30ec7a555abe8fda296674493d03506b3783050c5d15
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781b9ef8a03bb8c04eb85a11c06f1810763b38eb29197072aca87790bc1ad25d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:36:23 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:37:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:37:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:38:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:38:05 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:38:07 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:38:08 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:38:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:38:11 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bb166007b21d914053f30a01d79e2c3d38de1546e2f6610d12caa3cea6c000`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 2.2 MB (2209040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b507615d98208d20b56b7164890014ec20480ea77453855333241520f2351`  
		Last Modified: Tue, 13 Jun 2017 22:06:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e477e2a43ec131e507cc36cba202eb09dfe4791dafc43a13ee30bb7ab928cf`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31fcbf49eb61e4ecfeb704e8d15124295ea00d0ffee41aee3270cc9c840d693`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-dind`

```console
$ docker pull docker@sha256:6f1413f462cb2fa4e58d30ec7a555abe8fda296674493d03506b3783050c5d15
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781b9ef8a03bb8c04eb85a11c06f1810763b38eb29197072aca87790bc1ad25d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:36:23 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:37:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:37:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:38:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:38:05 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:38:07 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:38:08 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:38:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:38:11 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bb166007b21d914053f30a01d79e2c3d38de1546e2f6610d12caa3cea6c000`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 2.2 MB (2209040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b507615d98208d20b56b7164890014ec20480ea77453855333241520f2351`  
		Last Modified: Tue, 13 Jun 2017 22:06:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e477e2a43ec131e507cc36cba202eb09dfe4791dafc43a13ee30bb7ab928cf`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31fcbf49eb61e4ecfeb704e8d15124295ea00d0ffee41aee3270cc9c840d693`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-dind`

```console
$ docker pull docker@sha256:6f1413f462cb2fa4e58d30ec7a555abe8fda296674493d03506b3783050c5d15
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781b9ef8a03bb8c04eb85a11c06f1810763b38eb29197072aca87790bc1ad25d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:36:23 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:37:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:37:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:38:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:38:05 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:38:07 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:38:08 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:38:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:38:11 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bb166007b21d914053f30a01d79e2c3d38de1546e2f6610d12caa3cea6c000`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 2.2 MB (2209040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b507615d98208d20b56b7164890014ec20480ea77453855333241520f2351`  
		Last Modified: Tue, 13 Jun 2017 22:06:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e477e2a43ec131e507cc36cba202eb09dfe4791dafc43a13ee30bb7ab928cf`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31fcbf49eb61e4ecfeb704e8d15124295ea00d0ffee41aee3270cc9c840d693`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:6f1413f462cb2fa4e58d30ec7a555abe8fda296674493d03506b3783050c5d15
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781b9ef8a03bb8c04eb85a11c06f1810763b38eb29197072aca87790bc1ad25d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:36:23 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:37:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:37:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:38:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:38:05 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:38:07 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:38:08 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:38:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:38:11 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bb166007b21d914053f30a01d79e2c3d38de1546e2f6610d12caa3cea6c000`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 2.2 MB (2209040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b507615d98208d20b56b7164890014ec20480ea77453855333241520f2351`  
		Last Modified: Tue, 13 Jun 2017 22:06:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e477e2a43ec131e507cc36cba202eb09dfe4791dafc43a13ee30bb7ab928cf`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31fcbf49eb61e4ecfeb704e8d15124295ea00d0ffee41aee3270cc9c840d693`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:6f1413f462cb2fa4e58d30ec7a555abe8fda296674493d03506b3783050c5d15
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781b9ef8a03bb8c04eb85a11c06f1810763b38eb29197072aca87790bc1ad25d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:36:23 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:37:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:37:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:38:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:38:05 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:38:07 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:38:08 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:38:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:38:11 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bb166007b21d914053f30a01d79e2c3d38de1546e2f6610d12caa3cea6c000`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 2.2 MB (2209040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b507615d98208d20b56b7164890014ec20480ea77453855333241520f2351`  
		Last Modified: Tue, 13 Jun 2017 22:06:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e477e2a43ec131e507cc36cba202eb09dfe4791dafc43a13ee30bb7ab928cf`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31fcbf49eb61e4ecfeb704e8d15124295ea00d0ffee41aee3270cc9c840d693`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc3-git`

```console
$ docker pull docker@sha256:61240b0abbbccf622ea34d0b348c5e7c09c37002c8d8b8a30a8e416847a8f1ae
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc3-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1a58d15b981dbc09fed64ad4191f7b791a387a22b981d74450a5b5e7e7ab5d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:40:15 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263aedb4c886aebe16cf76bc5a5acb187b11de9772100427d4598e9b921d990d`  
		Last Modified: Tue, 13 Jun 2017 22:12:43 GMT  
		Size: 11.7 MB (11732671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-git`

```console
$ docker pull docker@sha256:61240b0abbbccf622ea34d0b348c5e7c09c37002c8d8b8a30a8e416847a8f1ae
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1a58d15b981dbc09fed64ad4191f7b791a387a22b981d74450a5b5e7e7ab5d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:40:15 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263aedb4c886aebe16cf76bc5a5acb187b11de9772100427d4598e9b921d990d`  
		Last Modified: Tue, 13 Jun 2017 22:12:43 GMT  
		Size: 11.7 MB (11732671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-git`

```console
$ docker pull docker@sha256:61240b0abbbccf622ea34d0b348c5e7c09c37002c8d8b8a30a8e416847a8f1ae
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1a58d15b981dbc09fed64ad4191f7b791a387a22b981d74450a5b5e7e7ab5d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:40:15 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263aedb4c886aebe16cf76bc5a5acb187b11de9772100427d4598e9b921d990d`  
		Last Modified: Tue, 13 Jun 2017 22:12:43 GMT  
		Size: 11.7 MB (11732671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-git`

```console
$ docker pull docker@sha256:61240b0abbbccf622ea34d0b348c5e7c09c37002c8d8b8a30a8e416847a8f1ae
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1a58d15b981dbc09fed64ad4191f7b791a387a22b981d74450a5b5e7e7ab5d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:40:15 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263aedb4c886aebe16cf76bc5a5acb187b11de9772100427d4598e9b921d990d`  
		Last Modified: Tue, 13 Jun 2017 22:12:43 GMT  
		Size: 11.7 MB (11732671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:61240b0abbbccf622ea34d0b348c5e7c09c37002c8d8b8a30a8e416847a8f1ae
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1a58d15b981dbc09fed64ad4191f7b791a387a22b981d74450a5b5e7e7ab5d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:40:15 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263aedb4c886aebe16cf76bc5a5acb187b11de9772100427d4598e9b921d990d`  
		Last Modified: Tue, 13 Jun 2017 22:12:43 GMT  
		Size: 11.7 MB (11732671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:61240b0abbbccf622ea34d0b348c5e7c09c37002c8d8b8a30a8e416847a8f1ae
```

-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44059570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1a58d15b981dbc09fed64ad4191f7b791a387a22b981d74450a5b5e7e7ab5d`
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
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:40:15 GMT
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
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263aedb4c886aebe16cf76bc5a5acb187b11de9772100427d4598e9b921d990d`  
		Last Modified: Tue, 13 Jun 2017 22:12:43 GMT  
		Size: 11.7 MB (11732671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:293bb48209dedf0bb5d2336988934be71e58815ce48e6010f3c36d4eddad36e8
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec4476f212776051f2403834baab0f26d8f8023abc54d8601321a69acdbe65e`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:293bb48209dedf0bb5d2336988934be71e58815ce48e6010f3c36d4eddad36e8
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec4476f212776051f2403834baab0f26d8f8023abc54d8601321a69acdbe65e`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05`

```console
$ docker pull docker@sha256:293bb48209dedf0bb5d2336988934be71e58815ce48e6010f3c36d4eddad36e8
```

-	Platforms:
	-	linux; amd64

### `docker:17.05` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec4476f212776051f2403834baab0f26d8f8023abc54d8601321a69acdbe65e`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:293bb48209dedf0bb5d2336988934be71e58815ce48e6010f3c36d4eddad36e8
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec4476f212776051f2403834baab0f26d8f8023abc54d8601321a69acdbe65e`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:293bb48209dedf0bb5d2336988934be71e58815ce48e6010f3c36d4eddad36e8
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec4476f212776051f2403834baab0f26d8f8023abc54d8601321a69acdbe65e`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:293bb48209dedf0bb5d2336988934be71e58815ce48e6010f3c36d4eddad36e8
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec4476f212776051f2403834baab0f26d8f8023abc54d8601321a69acdbe65e`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:31adaaed07d3c1b7013ac5508c1a61febb99874b59645ce6599b1868c81b9feb
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dbb4df620f5ab57e74332e71203159c8119ce57aec778a3546b6677b85a0a1`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:42:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:43:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:43:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:44:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:44:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:45:00 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:45:01 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:45:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:45:04 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30379722a20667851e2b893c92fce7d133897f1fc36810f2fc8c0806d3623f7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 2.2 MB (2165517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf276d488f00159892ef6a22551b961f698a8b7375eb7f7d791cd623be9924b2`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a48053043a87cd3fd488c5eadd5c9eb8db37239d0c169e6e02627487202029e`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ab386d1dbc7200b6ee287f85f6b3df1b9da3d478b9b44c919c3475a5de46a7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:31adaaed07d3c1b7013ac5508c1a61febb99874b59645ce6599b1868c81b9feb
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dbb4df620f5ab57e74332e71203159c8119ce57aec778a3546b6677b85a0a1`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:42:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:43:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:43:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:44:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:44:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:45:00 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:45:01 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:45:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:45:04 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30379722a20667851e2b893c92fce7d133897f1fc36810f2fc8c0806d3623f7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 2.2 MB (2165517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf276d488f00159892ef6a22551b961f698a8b7375eb7f7d791cd623be9924b2`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a48053043a87cd3fd488c5eadd5c9eb8db37239d0c169e6e02627487202029e`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ab386d1dbc7200b6ee287f85f6b3df1b9da3d478b9b44c919c3475a5de46a7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-dind`

```console
$ docker pull docker@sha256:31adaaed07d3c1b7013ac5508c1a61febb99874b59645ce6599b1868c81b9feb
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dbb4df620f5ab57e74332e71203159c8119ce57aec778a3546b6677b85a0a1`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:42:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:43:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:43:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:44:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:44:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:45:00 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:45:01 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:45:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:45:04 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30379722a20667851e2b893c92fce7d133897f1fc36810f2fc8c0806d3623f7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 2.2 MB (2165517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf276d488f00159892ef6a22551b961f698a8b7375eb7f7d791cd623be9924b2`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a48053043a87cd3fd488c5eadd5c9eb8db37239d0c169e6e02627487202029e`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ab386d1dbc7200b6ee287f85f6b3df1b9da3d478b9b44c919c3475a5de46a7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:31adaaed07d3c1b7013ac5508c1a61febb99874b59645ce6599b1868c81b9feb
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dbb4df620f5ab57e74332e71203159c8119ce57aec778a3546b6677b85a0a1`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:42:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:43:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:43:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:44:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:44:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:45:00 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:45:01 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:45:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:45:04 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30379722a20667851e2b893c92fce7d133897f1fc36810f2fc8c0806d3623f7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 2.2 MB (2165517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf276d488f00159892ef6a22551b961f698a8b7375eb7f7d791cd623be9924b2`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a48053043a87cd3fd488c5eadd5c9eb8db37239d0c169e6e02627487202029e`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ab386d1dbc7200b6ee287f85f6b3df1b9da3d478b9b44c919c3475a5de46a7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:31adaaed07d3c1b7013ac5508c1a61febb99874b59645ce6599b1868c81b9feb
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dbb4df620f5ab57e74332e71203159c8119ce57aec778a3546b6677b85a0a1`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:42:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:43:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:43:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:44:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:44:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:45:00 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:45:01 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:45:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:45:04 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30379722a20667851e2b893c92fce7d133897f1fc36810f2fc8c0806d3623f7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 2.2 MB (2165517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf276d488f00159892ef6a22551b961f698a8b7375eb7f7d791cd623be9924b2`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a48053043a87cd3fd488c5eadd5c9eb8db37239d0c169e6e02627487202029e`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ab386d1dbc7200b6ee287f85f6b3df1b9da3d478b9b44c919c3475a5de46a7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:31adaaed07d3c1b7013ac5508c1a61febb99874b59645ce6599b1868c81b9feb
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76dbb4df620f5ab57e74332e71203159c8119ce57aec778a3546b6677b85a0a1`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:42:49 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:43:50 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:43:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:44:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:44:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:45:00 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:45:01 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:45:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:45:04 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30379722a20667851e2b893c92fce7d133897f1fc36810f2fc8c0806d3623f7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 2.2 MB (2165517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf276d488f00159892ef6a22551b961f698a8b7375eb7f7d791cd623be9924b2`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a48053043a87cd3fd488c5eadd5c9eb8db37239d0c169e6e02627487202029e`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 175.7 KB (175683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ab386d1dbc7200b6ee287f85f6b3df1b9da3d478b9b44c919c3475a5de46a7`  
		Last Modified: Tue, 13 Jun 2017 22:23:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:0895412bbea883af5bfecda50f1de631c3d8363a5b310ca77378c4e232fca4c8
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ae651f2c55c844a39681443a218c05f677f7caee3e7a910a53487edbddb28e8`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:47:05 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37413d292d2d872cfc9a120a0eb83eeef100fe13eade57c5aad8a635c96d9c30`  
		Last Modified: Tue, 13 Jun 2017 22:28:34 GMT  
		Size: 11.0 MB (10990232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:0895412bbea883af5bfecda50f1de631c3d8363a5b310ca77378c4e232fca4c8
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ae651f2c55c844a39681443a218c05f677f7caee3e7a910a53487edbddb28e8`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:41:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:41:52 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:47:05 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37edb701d2ba43888dad544a9ee74bf59e20f92e75cb4dc8f12a92f497e1ca13`  
		Last Modified: Tue, 13 Jun 2017 22:18:24 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37413d292d2d872cfc9a120a0eb83eeef100fe13eade57c5aad8a635c96d9c30`  
		Last Modified: Tue, 13 Jun 2017 22:28:34 GMT  
		Size: 11.0 MB (10990232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-git`

```console
$ docker pull docker@sha256:1f60f849f961673889b695080ba310195ab110565a177697d7eb2f9ceec94d7c
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728466a9b1c14289c147960cd46303f715a23835c38c84e293a8dc124d80bc57`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:16:43 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ef002cc85f80fa2015f205a43bf2b3874d757b6ef735b852a791d3465b64ee`  
		Last Modified: Thu, 08 Jun 2017 22:40:16 GMT  
		Size: 11.0 MB (10990224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:1f60f849f961673889b695080ba310195ab110565a177697d7eb2f9ceec94d7c
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728466a9b1c14289c147960cd46303f715a23835c38c84e293a8dc124d80bc57`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:16:43 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ef002cc85f80fa2015f205a43bf2b3874d757b6ef735b852a791d3465b64ee`  
		Last Modified: Thu, 08 Jun 2017 22:40:16 GMT  
		Size: 11.0 MB (10990224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:1f60f849f961673889b695080ba310195ab110565a177697d7eb2f9ceec94d7c
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728466a9b1c14289c147960cd46303f715a23835c38c84e293a8dc124d80bc57`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:16:43 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ef002cc85f80fa2015f205a43bf2b3874d757b6ef735b852a791d3465b64ee`  
		Last Modified: Thu, 08 Jun 2017 22:40:16 GMT  
		Size: 11.0 MB (10990224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:1f60f849f961673889b695080ba310195ab110565a177697d7eb2f9ceec94d7c
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728466a9b1c14289c147960cd46303f715a23835c38c84e293a8dc124d80bc57`
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
# Thu, 08 Jun 2017 22:14:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:16:43 GMT
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
	-	`sha256:d20b3555d4c5f9bc2ff2a21d7ea8ac2b2b8dcbcf6c12691a7069d320fc2fa762`  
		Last Modified: Thu, 08 Jun 2017 22:34:40 GMT  
		Size: 28.8 MB (28753633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ef002cc85f80fa2015f205a43bf2b3874d757b6ef735b852a791d3465b64ee`  
		Last Modified: Thu, 08 Jun 2017 22:40:16 GMT  
		Size: 11.0 MB (10990224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1`

```console
$ docker pull docker@sha256:1dc18350036fefa74170933782d42e21301dc87966b622bad689ec2534040cce
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-rc1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30430117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dfb362a91e672645e1da1de3541fbffbca05c2e83662530523fd832d3ad635`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce`

```console
$ docker pull docker@sha256:1dc18350036fefa74170933782d42e21301dc87966b622bad689ec2534040cce
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30430117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dfb362a91e672645e1da1de3541fbffbca05c2e83662530523fd832d3ad635`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2`

```console
$ docker pull docker@sha256:1dc18350036fefa74170933782d42e21301dc87966b622bad689ec2534040cce
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30430117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dfb362a91e672645e1da1de3541fbffbca05c2e83662530523fd832d3ad635`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc`

```console
$ docker pull docker@sha256:1dc18350036fefa74170933782d42e21301dc87966b622bad689ec2534040cce
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30430117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dfb362a91e672645e1da1de3541fbffbca05c2e83662530523fd832d3ad635`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1-dind`

```console
$ docker pull docker@sha256:b736b3ab82f2c64a411abac8f2f5527ab31cf6a48e74190665720eb9720d6aeb
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-rc1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab43943b73fee00a5bc76c43a28eac4b583319c3a8b13a198aae941c24cdf595`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:19:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:19:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:19:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:19:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:19:49 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:19:50 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:19:51 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:20:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:20:14 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dae21a2a95fbe8276fa4519b5fe195a3c928979b3fcc63140d70e1393943866`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 2.2 MB (2165463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b460b2897db6f45de9b556ad7503fd977fd65e1c2495a560a3decbb9def684`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d63c51977c26b8c9038b9a7f753f9c40a34c98863cf26c8ee92d64a7f044da1`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d11853838d04ff8e4db33d99429b0b1ae70465cfa81724c8a48f8b66b9b986`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-dind`

```console
$ docker pull docker@sha256:b736b3ab82f2c64a411abac8f2f5527ab31cf6a48e74190665720eb9720d6aeb
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab43943b73fee00a5bc76c43a28eac4b583319c3a8b13a198aae941c24cdf595`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:19:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:19:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:19:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:19:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:19:49 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:19:50 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:19:51 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:20:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:20:14 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dae21a2a95fbe8276fa4519b5fe195a3c928979b3fcc63140d70e1393943866`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 2.2 MB (2165463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b460b2897db6f45de9b556ad7503fd977fd65e1c2495a560a3decbb9def684`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d63c51977c26b8c9038b9a7f753f9c40a34c98863cf26c8ee92d64a7f044da1`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d11853838d04ff8e4db33d99429b0b1ae70465cfa81724c8a48f8b66b9b986`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-dind`

```console
$ docker pull docker@sha256:b736b3ab82f2c64a411abac8f2f5527ab31cf6a48e74190665720eb9720d6aeb
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab43943b73fee00a5bc76c43a28eac4b583319c3a8b13a198aae941c24cdf595`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:19:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:19:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:19:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:19:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:19:49 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:19:50 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:19:51 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:20:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:20:14 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dae21a2a95fbe8276fa4519b5fe195a3c928979b3fcc63140d70e1393943866`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 2.2 MB (2165463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b460b2897db6f45de9b556ad7503fd977fd65e1c2495a560a3decbb9def684`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d63c51977c26b8c9038b9a7f753f9c40a34c98863cf26c8ee92d64a7f044da1`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d11853838d04ff8e4db33d99429b0b1ae70465cfa81724c8a48f8b66b9b986`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc-dind`

```console
$ docker pull docker@sha256:b736b3ab82f2c64a411abac8f2f5527ab31cf6a48e74190665720eb9720d6aeb
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab43943b73fee00a5bc76c43a28eac4b583319c3a8b13a198aae941c24cdf595`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:19:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:19:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:19:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:19:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:19:49 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:19:50 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:19:51 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:20:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:20:14 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dae21a2a95fbe8276fa4519b5fe195a3c928979b3fcc63140d70e1393943866`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 2.2 MB (2165463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b460b2897db6f45de9b556ad7503fd977fd65e1c2495a560a3decbb9def684`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d63c51977c26b8c9038b9a7f753f9c40a34c98863cf26c8ee92d64a7f044da1`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 175.7 KB (175675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d11853838d04ff8e4db33d99429b0b1ae70465cfa81724c8a48f8b66b9b986`  
		Last Modified: Thu, 08 Jun 2017 22:46:20 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1-git`

```console
$ docker pull docker@sha256:a4d4765ccb2565dd4b6debf397b9edd13e6ede5f8b7dba6dff2f056e4a356e4e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-rc1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41420374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b135364b064c120afd1b4f454e35b9e3d40ac615659e55960983e78842629553`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:21:04 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b8151f2b45260b5dc2c335a2eed982c79d0aa7dde603aa2bedc00242d130f1`  
		Last Modified: Thu, 08 Jun 2017 22:50:49 GMT  
		Size: 11.0 MB (10990257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-git`

```console
$ docker pull docker@sha256:a4d4765ccb2565dd4b6debf397b9edd13e6ede5f8b7dba6dff2f056e4a356e4e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41420374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b135364b064c120afd1b4f454e35b9e3d40ac615659e55960983e78842629553`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:21:04 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b8151f2b45260b5dc2c335a2eed982c79d0aa7dde603aa2bedc00242d130f1`  
		Last Modified: Thu, 08 Jun 2017 22:50:49 GMT  
		Size: 11.0 MB (10990257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-git`

```console
$ docker pull docker@sha256:a4d4765ccb2565dd4b6debf397b9edd13e6ede5f8b7dba6dff2f056e4a356e4e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41420374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b135364b064c120afd1b4f454e35b9e3d40ac615659e55960983e78842629553`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:21:04 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b8151f2b45260b5dc2c335a2eed982c79d0aa7dde603aa2bedc00242d130f1`  
		Last Modified: Thu, 08 Jun 2017 22:50:49 GMT  
		Size: 11.0 MB (10990257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc-git`

```console
$ docker pull docker@sha256:a4d4765ccb2565dd4b6debf397b9edd13e6ede5f8b7dba6dff2f056e4a356e4e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41420374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b135364b064c120afd1b4f454e35b9e3d40ac615659e55960983e78842629553`
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
# Thu, 08 Jun 2017 22:17:53 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:18:13 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:18:15 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:21:04 GMT
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
	-	`sha256:b240699265000c9501d328e2bc5a83d56c8c860a1f506915a2ba6144457e1563`  
		Last Modified: Thu, 08 Jun 2017 22:43:43 GMT  
		Size: 28.1 MB (28111077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db835f7a52b7a1a4e67f4bc16f09e19ae4836bd9cb09d9631e08fa9791f933b`  
		Last Modified: Thu, 08 Jun 2017 22:43:34 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b8151f2b45260b5dc2c335a2eed982c79d0aa7dde603aa2bedc00242d130f1`  
		Last Modified: Thu, 08 Jun 2017 22:50:49 GMT  
		Size: 11.0 MB (10990257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce`

```console
$ docker pull docker@sha256:b0220e89fed9ed875909e6df1198b2885ddaa06d0bb6d850f5b41b30eddc2b31
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb813f4989f5afe16650ddae8cebc14502fa19b618bb4789de6b1d4171af2009`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1`

```console
$ docker pull docker@sha256:b0220e89fed9ed875909e6df1198b2885ddaa06d0bb6d850f5b41b30eddc2b31
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb813f4989f5afe16650ddae8cebc14502fa19b618bb4789de6b1d4171af2009`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:b0220e89fed9ed875909e6df1198b2885ddaa06d0bb6d850f5b41b30eddc2b31
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb813f4989f5afe16650ddae8cebc14502fa19b618bb4789de6b1d4171af2009`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:b0220e89fed9ed875909e6df1198b2885ddaa06d0bb6d850f5b41b30eddc2b31
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30425944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb813f4989f5afe16650ddae8cebc14502fa19b618bb4789de6b1d4171af2009`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-dind`

```console
$ docker pull docker@sha256:d00102f084a87fc3cdab9917cb55f3668c102b329e831214b9ceac071a98d10b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc7961fa53586daff1fb45fc6d763d45556fccffa9977ab4d84473b3e2e167b`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:23:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:23:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:23:45 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:24:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:24:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:24:33 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:24:33 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:24:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:24:35 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d9e66d63dab2ba2c8686b5c9029dfa8d58a63d92713955002402639c6eef3`  
		Last Modified: Thu, 08 Jun 2017 22:59:45 GMT  
		Size: 2.2 MB (2165495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ece32a818cd5cddc964ae37157640ae528a4b7fbc92dd7fb5a9fe5615746a7`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1836c3569f2795825c6efd369537d4fe928aa75e021bd3b65089a414d9dbf`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 175.7 KB (175676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d18ae8d7c1da14e4e801ab64d7fbea26c079916dcea8ca8bc3ac8d4621a392`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-dind`

```console
$ docker pull docker@sha256:d00102f084a87fc3cdab9917cb55f3668c102b329e831214b9ceac071a98d10b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc7961fa53586daff1fb45fc6d763d45556fccffa9977ab4d84473b3e2e167b`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:23:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:23:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:23:45 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:24:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:24:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:24:33 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:24:33 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:24:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:24:35 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d9e66d63dab2ba2c8686b5c9029dfa8d58a63d92713955002402639c6eef3`  
		Last Modified: Thu, 08 Jun 2017 22:59:45 GMT  
		Size: 2.2 MB (2165495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ece32a818cd5cddc964ae37157640ae528a4b7fbc92dd7fb5a9fe5615746a7`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1836c3569f2795825c6efd369537d4fe928aa75e021bd3b65089a414d9dbf`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 175.7 KB (175676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d18ae8d7c1da14e4e801ab64d7fbea26c079916dcea8ca8bc3ac8d4621a392`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:d00102f084a87fc3cdab9917cb55f3668c102b329e831214b9ceac071a98d10b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc7961fa53586daff1fb45fc6d763d45556fccffa9977ab4d84473b3e2e167b`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:23:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:23:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:23:45 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:24:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:24:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:24:33 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:24:33 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:24:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:24:35 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d9e66d63dab2ba2c8686b5c9029dfa8d58a63d92713955002402639c6eef3`  
		Last Modified: Thu, 08 Jun 2017 22:59:45 GMT  
		Size: 2.2 MB (2165495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ece32a818cd5cddc964ae37157640ae528a4b7fbc92dd7fb5a9fe5615746a7`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1836c3569f2795825c6efd369537d4fe928aa75e021bd3b65089a414d9dbf`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 175.7 KB (175676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d18ae8d7c1da14e4e801ab64d7fbea26c079916dcea8ca8bc3ac8d4621a392`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:d00102f084a87fc3cdab9917cb55f3668c102b329e831214b9ceac071a98d10b
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc7961fa53586daff1fb45fc6d763d45556fccffa9977ab4d84473b3e2e167b`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:23:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:23:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:23:45 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:24:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:24:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:24:33 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:24:33 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:24:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:24:35 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d9e66d63dab2ba2c8686b5c9029dfa8d58a63d92713955002402639c6eef3`  
		Last Modified: Thu, 08 Jun 2017 22:59:45 GMT  
		Size: 2.2 MB (2165495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ece32a818cd5cddc964ae37157640ae528a4b7fbc92dd7fb5a9fe5615746a7`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1836c3569f2795825c6efd369537d4fe928aa75e021bd3b65089a414d9dbf`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 175.7 KB (175676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d18ae8d7c1da14e4e801ab64d7fbea26c079916dcea8ca8bc3ac8d4621a392`  
		Last Modified: Thu, 08 Jun 2017 22:59:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-git`

```console
$ docker pull docker@sha256:a6d05f9abc8afc5ef14957492953a9d41d6503218ad5e7541cbbc6167ac5287b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e98607be47503deae025b72fe0eba3cdce75609665f5dbfe233f4cfcd5da057`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:25:23 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3e608695c5d63efefbbc0ceacb072dd1b85b12291af47784c078e61c1a097f`  
		Last Modified: Thu, 08 Jun 2017 23:01:49 GMT  
		Size: 11.0 MB (10990226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-git`

```console
$ docker pull docker@sha256:a6d05f9abc8afc5ef14957492953a9d41d6503218ad5e7541cbbc6167ac5287b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e98607be47503deae025b72fe0eba3cdce75609665f5dbfe233f4cfcd5da057`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:25:23 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3e608695c5d63efefbbc0ceacb072dd1b85b12291af47784c078e61c1a097f`  
		Last Modified: Thu, 08 Jun 2017 23:01:49 GMT  
		Size: 11.0 MB (10990226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:a6d05f9abc8afc5ef14957492953a9d41d6503218ad5e7541cbbc6167ac5287b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e98607be47503deae025b72fe0eba3cdce75609665f5dbfe233f4cfcd5da057`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:25:23 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3e608695c5d63efefbbc0ceacb072dd1b85b12291af47784c078e61c1a097f`  
		Last Modified: Thu, 08 Jun 2017 23:01:49 GMT  
		Size: 11.0 MB (10990226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:a6d05f9abc8afc5ef14957492953a9d41d6503218ad5e7541cbbc6167ac5287b
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e98607be47503deae025b72fe0eba3cdce75609665f5dbfe233f4cfcd5da057`
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
# Thu, 08 Jun 2017 22:22:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:22:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:22:34 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:25:23 GMT
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
	-	`sha256:8150902cd2c192e84904d55e2b0db7d30d8035340775803de2d188a13962db3d`  
		Last Modified: Thu, 08 Jun 2017 22:53:10 GMT  
		Size: 28.1 MB (28106902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ef496e1ab27e5c1271b8805be6c07ad4aedcbab8f4f70a45b35348532433db`  
		Last Modified: Thu, 08 Jun 2017 22:53:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3e608695c5d63efefbbc0ceacb072dd1b85b12291af47784c078e61c1a097f`  
		Last Modified: Thu, 08 Jun 2017 23:01:49 GMT  
		Size: 11.0 MB (10990226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
