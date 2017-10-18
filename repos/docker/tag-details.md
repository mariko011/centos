<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17`](#docker17)
-	[`docker:17.06`](#docker1706)
-	[`docker:17.06.2`](#docker17062)
-	[`docker:17.06.2-ce`](#docker17062-ce)
-	[`docker:17.06.2-ce-dind`](#docker17062-ce-dind)
-	[`docker:17.06.2-ce-git`](#docker17062-ce-git)
-	[`docker:17.06.2-ce-windowsservercore`](#docker17062-ce-windowsservercore)
-	[`docker:17.06.2-dind`](#docker17062-dind)
-	[`docker:17.06.2-git`](#docker17062-git)
-	[`docker:17.06.2-windowsservercore`](#docker17062-windowsservercore)
-	[`docker:17.06-dind`](#docker1706-dind)
-	[`docker:17.06-git`](#docker1706-git)
-	[`docker:17.06-windowsservercore`](#docker1706-windowsservercore)
-	[`docker:17.09`](#docker1709)
-	[`docker:17.09.0`](#docker17090)
-	[`docker:17.09.0-ce`](#docker17090-ce)
-	[`docker:17.09.0-ce-dind`](#docker17090-ce-dind)
-	[`docker:17.09.0-ce-git`](#docker17090-ce-git)
-	[`docker:17.09.0-ce-windowsservercore`](#docker17090-ce-windowsservercore)
-	[`docker:17.09.0-dind`](#docker17090-dind)
-	[`docker:17.09.0-git`](#docker17090-git)
-	[`docker:17.09.0-windowsservercore`](#docker17090-windowsservercore)
-	[`docker:17.09-dind`](#docker1709-dind)
-	[`docker:17.09-git`](#docker1709-git)
-	[`docker:17.09-windowsservercore`](#docker1709-windowsservercore)
-	[`docker:17.10`](#docker1710)
-	[`docker:17.10.0`](#docker17100)
-	[`docker:17.10.0-ce`](#docker17100-ce)
-	[`docker:17.10.0-ce-dind`](#docker17100-ce-dind)
-	[`docker:17.10.0-ce-git`](#docker17100-ce-git)
-	[`docker:17.10.0-ce-windowsservercore`](#docker17100-ce-windowsservercore)
-	[`docker:17.10.0-dind`](#docker17100-dind)
-	[`docker:17.10.0-git`](#docker17100-git)
-	[`docker:17.10.0-windowsservercore`](#docker17100-windowsservercore)
-	[`docker:17.10-dind`](#docker1710-dind)
-	[`docker:17.10-git`](#docker1710-git)
-	[`docker:17.10-windowsservercore`](#docker1710-windowsservercore)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:17-git`](#docker17-git)
-	[`docker:17-windowsservercore`](#docker17-windowsservercore)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge`](#dockeredge)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:edge-windowsservercore`](#dockeredge-windowsservercore)
-	[`docker:git`](#dockergit)
-	[`docker:latest`](#dockerlatest)
-	[`docker:stable`](#dockerstable)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:stable-windowsservercore`](#dockerstable-windowsservercore)
-	[`docker:test`](#dockertest)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:test-git`](#dockertest-git)
-	[`docker:test-windowsservercore`](#dockertest-windowsservercore)
-	[`docker:windowsservercore`](#dockerwindowsservercore)

## `docker:17`

```console
$ docker pull docker@sha256:643e6fa471a6f4f5e5837bbd5e46c5f849f527461fedcd6fb65009e2a9b1fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

```console
$ docker pull docker@sha256:3beb5149c5a29aa9e2e34bbe06eca57a1d4f472a5c1317a3a3c143b6bbf35c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a81dbb88b8d6933bf31d56de831b7ee2afb8eab11bd870411883da13ee127d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06`

```console
$ docker pull docker@sha256:9a3f587d3a9e3c477629720e3a2e6b6419d07ca620ac6173aa336b6413dfbc53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06` - linux; amd64

```console
$ docker pull docker@sha256:3368ac70cd5450771677cdb7ce55e0fc3a521109f02f4f7b19765b36a3ec30bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6540dc2371da88b87ac86b5b6bfbbc2e3368639ed4b4eb8f02e024521f050587`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:52:37 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 21:52:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:52:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:43 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd21791a9b8c2b4df7ddd949fe7514fd9a01a486fa35ec3f3345fea938ec4d`  
		Last Modified: Thu, 12 Oct 2017 22:00:39 GMT  
		Size: 30.0 MB (30018206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ced29ddf447f820af757a70782d3cfbc4b0b2c3e3045733cae35b1d77728f3`  
		Last Modified: Thu, 12 Oct 2017 22:00:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2`

```console
$ docker pull docker@sha256:9a3f587d3a9e3c477629720e3a2e6b6419d07ca620ac6173aa336b6413dfbc53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2` - linux; amd64

```console
$ docker pull docker@sha256:3368ac70cd5450771677cdb7ce55e0fc3a521109f02f4f7b19765b36a3ec30bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6540dc2371da88b87ac86b5b6bfbbc2e3368639ed4b4eb8f02e024521f050587`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:52:37 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 21:52:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:52:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:43 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd21791a9b8c2b4df7ddd949fe7514fd9a01a486fa35ec3f3345fea938ec4d`  
		Last Modified: Thu, 12 Oct 2017 22:00:39 GMT  
		Size: 30.0 MB (30018206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ced29ddf447f820af757a70782d3cfbc4b0b2c3e3045733cae35b1d77728f3`  
		Last Modified: Thu, 12 Oct 2017 22:00:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce`

```console
$ docker pull docker@sha256:9a3f587d3a9e3c477629720e3a2e6b6419d07ca620ac6173aa336b6413dfbc53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce` - linux; amd64

```console
$ docker pull docker@sha256:3368ac70cd5450771677cdb7ce55e0fc3a521109f02f4f7b19765b36a3ec30bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6540dc2371da88b87ac86b5b6bfbbc2e3368639ed4b4eb8f02e024521f050587`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:52:37 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 21:52:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:52:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:43 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd21791a9b8c2b4df7ddd949fe7514fd9a01a486fa35ec3f3345fea938ec4d`  
		Last Modified: Thu, 12 Oct 2017 22:00:39 GMT  
		Size: 30.0 MB (30018206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ced29ddf447f820af757a70782d3cfbc4b0b2c3e3045733cae35b1d77728f3`  
		Last Modified: Thu, 12 Oct 2017 22:00:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-dind`

```console
$ docker pull docker@sha256:b7aec971985d145c9acbfa0f2df4fd030cff81436b3bc55bd1f3e8cfa52b7af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:c7d8134cdf87b0b282468b8d0be101d07cdb22acd1538ec420009a222fbdca03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765c5c8b4c65bf51ed71df847806a214cc62fffd3bdb89e7b7fcf6d33dd5d306`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:52:37 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 21:52:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:52:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:43 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:52:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:52:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:52:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:52:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:52:58 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:58 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:52:58 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:52:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:59 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd21791a9b8c2b4df7ddd949fe7514fd9a01a486fa35ec3f3345fea938ec4d`  
		Last Modified: Thu, 12 Oct 2017 22:00:39 GMT  
		Size: 30.0 MB (30018206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ced29ddf447f820af757a70782d3cfbc4b0b2c3e3045733cae35b1d77728f3`  
		Last Modified: Thu, 12 Oct 2017 22:00:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64c9508cab6e216ba847c8da7c5dbd1ce257b1c0b32cad7dc01d81974a5821d`  
		Last Modified: Thu, 12 Oct 2017 22:01:12 GMT  
		Size: 2.2 MB (2209129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd70692b1266faa8e171f9e4523b54fe76f9736b7be186ac6f09be738b5edb36`  
		Last Modified: Thu, 12 Oct 2017 22:01:12 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c726d8c45c64240f1f146b9e34e1ce4617b29a5129d90e6ca08f1e934566cb13`  
		Last Modified: Thu, 12 Oct 2017 22:01:12 GMT  
		Size: 176.2 KB (176199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259f8c38a0416f43c03b45c0cd8131129be9fe3b01d3f2034cd543ab460bf56f`  
		Last Modified: Thu, 12 Oct 2017 22:01:13 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-git`

```console
$ docker pull docker@sha256:d99e5c1ec280058959f35ac0e550f1ab2d263347350c549c12c619ea0a58ba45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:e388a628856526a6364bc5e780f23f96ab1d0562782d4970fec5e20ed32eaabc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44140990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fd2ae2bf77ffab04b49c47760905d471d6eb835eec0a57247563b0b71c506d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:52:37 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 21:52:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:52:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:43 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:53:08 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd21791a9b8c2b4df7ddd949fe7514fd9a01a486fa35ec3f3345fea938ec4d`  
		Last Modified: Thu, 12 Oct 2017 22:00:39 GMT  
		Size: 30.0 MB (30018206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ced29ddf447f820af757a70782d3cfbc4b0b2c3e3045733cae35b1d77728f3`  
		Last Modified: Thu, 12 Oct 2017 22:00:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b298865213669af8264c4df3403cc9ed05da2aed103a5b87aa263da05737b1bf`  
		Last Modified: Thu, 12 Oct 2017 22:01:47 GMT  
		Size: 11.8 MB (11780130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-windowsservercore`

**does not exist** (yet?)

## `docker:17.06.2-dind`

```console
$ docker pull docker@sha256:b7aec971985d145c9acbfa0f2df4fd030cff81436b3bc55bd1f3e8cfa52b7af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-dind` - linux; amd64

```console
$ docker pull docker@sha256:c7d8134cdf87b0b282468b8d0be101d07cdb22acd1538ec420009a222fbdca03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765c5c8b4c65bf51ed71df847806a214cc62fffd3bdb89e7b7fcf6d33dd5d306`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:52:37 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 21:52:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:52:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:43 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:52:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:52:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:52:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:52:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:52:58 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:58 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:52:58 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:52:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:59 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd21791a9b8c2b4df7ddd949fe7514fd9a01a486fa35ec3f3345fea938ec4d`  
		Last Modified: Thu, 12 Oct 2017 22:00:39 GMT  
		Size: 30.0 MB (30018206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ced29ddf447f820af757a70782d3cfbc4b0b2c3e3045733cae35b1d77728f3`  
		Last Modified: Thu, 12 Oct 2017 22:00:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64c9508cab6e216ba847c8da7c5dbd1ce257b1c0b32cad7dc01d81974a5821d`  
		Last Modified: Thu, 12 Oct 2017 22:01:12 GMT  
		Size: 2.2 MB (2209129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd70692b1266faa8e171f9e4523b54fe76f9736b7be186ac6f09be738b5edb36`  
		Last Modified: Thu, 12 Oct 2017 22:01:12 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c726d8c45c64240f1f146b9e34e1ce4617b29a5129d90e6ca08f1e934566cb13`  
		Last Modified: Thu, 12 Oct 2017 22:01:12 GMT  
		Size: 176.2 KB (176199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259f8c38a0416f43c03b45c0cd8131129be9fe3b01d3f2034cd543ab460bf56f`  
		Last Modified: Thu, 12 Oct 2017 22:01:13 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-git`

```console
$ docker pull docker@sha256:d99e5c1ec280058959f35ac0e550f1ab2d263347350c549c12c619ea0a58ba45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-git` - linux; amd64

```console
$ docker pull docker@sha256:e388a628856526a6364bc5e780f23f96ab1d0562782d4970fec5e20ed32eaabc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44140990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fd2ae2bf77ffab04b49c47760905d471d6eb835eec0a57247563b0b71c506d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:52:37 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 21:52:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:52:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:43 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:53:08 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd21791a9b8c2b4df7ddd949fe7514fd9a01a486fa35ec3f3345fea938ec4d`  
		Last Modified: Thu, 12 Oct 2017 22:00:39 GMT  
		Size: 30.0 MB (30018206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ced29ddf447f820af757a70782d3cfbc4b0b2c3e3045733cae35b1d77728f3`  
		Last Modified: Thu, 12 Oct 2017 22:00:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b298865213669af8264c4df3403cc9ed05da2aed103a5b87aa263da05737b1bf`  
		Last Modified: Thu, 12 Oct 2017 22:01:47 GMT  
		Size: 11.8 MB (11780130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-windowsservercore`

**does not exist** (yet?)

## `docker:17.06-dind`

```console
$ docker pull docker@sha256:b7aec971985d145c9acbfa0f2df4fd030cff81436b3bc55bd1f3e8cfa52b7af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06-dind` - linux; amd64

```console
$ docker pull docker@sha256:c7d8134cdf87b0b282468b8d0be101d07cdb22acd1538ec420009a222fbdca03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765c5c8b4c65bf51ed71df847806a214cc62fffd3bdb89e7b7fcf6d33dd5d306`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:52:37 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 21:52:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:52:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:43 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:52:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:52:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:52:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:52:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:52:58 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:58 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:52:58 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:52:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:59 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd21791a9b8c2b4df7ddd949fe7514fd9a01a486fa35ec3f3345fea938ec4d`  
		Last Modified: Thu, 12 Oct 2017 22:00:39 GMT  
		Size: 30.0 MB (30018206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ced29ddf447f820af757a70782d3cfbc4b0b2c3e3045733cae35b1d77728f3`  
		Last Modified: Thu, 12 Oct 2017 22:00:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64c9508cab6e216ba847c8da7c5dbd1ce257b1c0b32cad7dc01d81974a5821d`  
		Last Modified: Thu, 12 Oct 2017 22:01:12 GMT  
		Size: 2.2 MB (2209129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd70692b1266faa8e171f9e4523b54fe76f9736b7be186ac6f09be738b5edb36`  
		Last Modified: Thu, 12 Oct 2017 22:01:12 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c726d8c45c64240f1f146b9e34e1ce4617b29a5129d90e6ca08f1e934566cb13`  
		Last Modified: Thu, 12 Oct 2017 22:01:12 GMT  
		Size: 176.2 KB (176199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259f8c38a0416f43c03b45c0cd8131129be9fe3b01d3f2034cd543ab460bf56f`  
		Last Modified: Thu, 12 Oct 2017 22:01:13 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-git`

```console
$ docker pull docker@sha256:d99e5c1ec280058959f35ac0e550f1ab2d263347350c549c12c619ea0a58ba45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06-git` - linux; amd64

```console
$ docker pull docker@sha256:e388a628856526a6364bc5e780f23f96ab1d0562782d4970fec5e20ed32eaabc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44140990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fd2ae2bf77ffab04b49c47760905d471d6eb835eec0a57247563b0b71c506d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:52:37 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Thu, 12 Oct 2017 21:52:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:52:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:52:43 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:53:08 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd21791a9b8c2b4df7ddd949fe7514fd9a01a486fa35ec3f3345fea938ec4d`  
		Last Modified: Thu, 12 Oct 2017 22:00:39 GMT  
		Size: 30.0 MB (30018206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ced29ddf447f820af757a70782d3cfbc4b0b2c3e3045733cae35b1d77728f3`  
		Last Modified: Thu, 12 Oct 2017 22:00:32 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b298865213669af8264c4df3403cc9ed05da2aed103a5b87aa263da05737b1bf`  
		Last Modified: Thu, 12 Oct 2017 22:01:47 GMT  
		Size: 11.8 MB (11780130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-windowsservercore`

**does not exist** (yet?)

## `docker:17.09`

```console
$ docker pull docker@sha256:643e6fa471a6f4f5e5837bbd5e46c5f849f527461fedcd6fb65009e2a9b1fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09` - linux; amd64

```console
$ docker pull docker@sha256:3beb5149c5a29aa9e2e34bbe06eca57a1d4f472a5c1317a3a3c143b6bbf35c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a81dbb88b8d6933bf31d56de831b7ee2afb8eab11bd870411883da13ee127d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0`

```console
$ docker pull docker@sha256:643e6fa471a6f4f5e5837bbd5e46c5f849f527461fedcd6fb65009e2a9b1fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0` - linux; amd64

```console
$ docker pull docker@sha256:3beb5149c5a29aa9e2e34bbe06eca57a1d4f472a5c1317a3a3c143b6bbf35c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a81dbb88b8d6933bf31d56de831b7ee2afb8eab11bd870411883da13ee127d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce`

```console
$ docker pull docker@sha256:643e6fa471a6f4f5e5837bbd5e46c5f849f527461fedcd6fb65009e2a9b1fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce` - linux; amd64

```console
$ docker pull docker@sha256:3beb5149c5a29aa9e2e34bbe06eca57a1d4f472a5c1317a3a3c143b6bbf35c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a81dbb88b8d6933bf31d56de831b7ee2afb8eab11bd870411883da13ee127d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-dind`

```console
$ docker pull docker@sha256:effc528b6b06b773d3353c3ef2e772d430cbd6a74103a5e2c9f01e2795485ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:b30ea4ccb15e4b36fe9650bf8e5cbdff5d1606bf988d74f81a0f1beaf5339848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3087974c87e56318d6b702e9f1f4f3558198826c0a1f3e2b844432491c1a565`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:35 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:51:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:51:36 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:51:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:51:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:40 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:51:40 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:51:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:41 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cacbb3f9b037451acea196afb70425848ab181052bca3e8ec914192fce9b057`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 2.2 MB (2209117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296f2e06975d36045c3ab686e144231a6ed0e0c22cc22cc92ee80ce86d7986b`  
		Last Modified: Thu, 12 Oct 2017 21:56:18 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc672180989a86c6bfa2ca14e102b2557808b0e94ed9f29becbce11ae390299`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574ffc0df03c874469e67f3b22751b1ef02954d39329129fb6eab640e434cd5`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-git`

```console
$ docker pull docker@sha256:a17e5b5426aa88ca613f725898e1811ee9fe017a0bee8eda28e4dcdd6eb9d4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:ca612f0f0bea0fe598afd24b03a45414cf2d3c5d022698c863dbdca2d9dc10fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3562a60fd5a0d0c8fc9e603c35853255f5423b17b58cb473b1fa2a5c165f84d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:51 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247385b93acd3b28a12ba1e118dcdb0dece1e9d5b487f70bc0f06baa0dca630a`  
		Last Modified: Thu, 12 Oct 2017 21:57:36 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-windowsservercore`

**does not exist** (yet?)

## `docker:17.09.0-dind`

```console
$ docker pull docker@sha256:effc528b6b06b773d3353c3ef2e772d430cbd6a74103a5e2c9f01e2795485ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-dind` - linux; amd64

```console
$ docker pull docker@sha256:b30ea4ccb15e4b36fe9650bf8e5cbdff5d1606bf988d74f81a0f1beaf5339848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3087974c87e56318d6b702e9f1f4f3558198826c0a1f3e2b844432491c1a565`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:35 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:51:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:51:36 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:51:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:51:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:40 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:51:40 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:51:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:41 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cacbb3f9b037451acea196afb70425848ab181052bca3e8ec914192fce9b057`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 2.2 MB (2209117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296f2e06975d36045c3ab686e144231a6ed0e0c22cc22cc92ee80ce86d7986b`  
		Last Modified: Thu, 12 Oct 2017 21:56:18 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc672180989a86c6bfa2ca14e102b2557808b0e94ed9f29becbce11ae390299`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574ffc0df03c874469e67f3b22751b1ef02954d39329129fb6eab640e434cd5`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-git`

```console
$ docker pull docker@sha256:a17e5b5426aa88ca613f725898e1811ee9fe017a0bee8eda28e4dcdd6eb9d4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-git` - linux; amd64

```console
$ docker pull docker@sha256:ca612f0f0bea0fe598afd24b03a45414cf2d3c5d022698c863dbdca2d9dc10fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3562a60fd5a0d0c8fc9e603c35853255f5423b17b58cb473b1fa2a5c165f84d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:51 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247385b93acd3b28a12ba1e118dcdb0dece1e9d5b487f70bc0f06baa0dca630a`  
		Last Modified: Thu, 12 Oct 2017 21:57:36 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-windowsservercore`

**does not exist** (yet?)

## `docker:17.09-dind`

```console
$ docker pull docker@sha256:effc528b6b06b773d3353c3ef2e772d430cbd6a74103a5e2c9f01e2795485ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:b30ea4ccb15e4b36fe9650bf8e5cbdff5d1606bf988d74f81a0f1beaf5339848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3087974c87e56318d6b702e9f1f4f3558198826c0a1f3e2b844432491c1a565`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:35 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:51:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:51:36 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:51:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:51:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:40 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:51:40 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:51:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:41 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cacbb3f9b037451acea196afb70425848ab181052bca3e8ec914192fce9b057`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 2.2 MB (2209117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296f2e06975d36045c3ab686e144231a6ed0e0c22cc22cc92ee80ce86d7986b`  
		Last Modified: Thu, 12 Oct 2017 21:56:18 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc672180989a86c6bfa2ca14e102b2557808b0e94ed9f29becbce11ae390299`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574ffc0df03c874469e67f3b22751b1ef02954d39329129fb6eab640e434cd5`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-git`

```console
$ docker pull docker@sha256:a17e5b5426aa88ca613f725898e1811ee9fe017a0bee8eda28e4dcdd6eb9d4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09-git` - linux; amd64

```console
$ docker pull docker@sha256:ca612f0f0bea0fe598afd24b03a45414cf2d3c5d022698c863dbdca2d9dc10fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3562a60fd5a0d0c8fc9e603c35853255f5423b17b58cb473b1fa2a5c165f84d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:51 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247385b93acd3b28a12ba1e118dcdb0dece1e9d5b487f70bc0f06baa0dca630a`  
		Last Modified: Thu, 12 Oct 2017 21:57:36 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-windowsservercore`

**does not exist** (yet?)

## `docker:17.10`

**does not exist** (yet?)

## `docker:17.10.0`

**does not exist** (yet?)

## `docker:17.10.0-ce`

**does not exist** (yet?)

## `docker:17.10.0-ce-dind`

**does not exist** (yet?)

## `docker:17.10.0-ce-git`

**does not exist** (yet?)

## `docker:17.10.0-ce-windowsservercore`

**does not exist** (yet?)

## `docker:17.10.0-dind`

**does not exist** (yet?)

## `docker:17.10.0-git`

**does not exist** (yet?)

## `docker:17.10.0-windowsservercore`

**does not exist** (yet?)

## `docker:17.10-dind`

**does not exist** (yet?)

## `docker:17.10-git`

**does not exist** (yet?)

## `docker:17.10-windowsservercore`

**does not exist** (yet?)

## `docker:17-dind`

```console
$ docker pull docker@sha256:effc528b6b06b773d3353c3ef2e772d430cbd6a74103a5e2c9f01e2795485ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

```console
$ docker pull docker@sha256:b30ea4ccb15e4b36fe9650bf8e5cbdff5d1606bf988d74f81a0f1beaf5339848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3087974c87e56318d6b702e9f1f4f3558198826c0a1f3e2b844432491c1a565`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:35 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:51:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:51:36 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:51:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:51:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:40 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:51:40 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:51:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:41 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cacbb3f9b037451acea196afb70425848ab181052bca3e8ec914192fce9b057`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 2.2 MB (2209117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296f2e06975d36045c3ab686e144231a6ed0e0c22cc22cc92ee80ce86d7986b`  
		Last Modified: Thu, 12 Oct 2017 21:56:18 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc672180989a86c6bfa2ca14e102b2557808b0e94ed9f29becbce11ae390299`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574ffc0df03c874469e67f3b22751b1ef02954d39329129fb6eab640e434cd5`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:a17e5b5426aa88ca613f725898e1811ee9fe017a0bee8eda28e4dcdd6eb9d4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

```console
$ docker pull docker@sha256:ca612f0f0bea0fe598afd24b03a45414cf2d3c5d022698c863dbdca2d9dc10fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3562a60fd5a0d0c8fc9e603c35853255f5423b17b58cb473b1fa2a5c165f84d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:51 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247385b93acd3b28a12ba1e118dcdb0dece1e9d5b487f70bc0f06baa0dca630a`  
		Last Modified: Thu, 12 Oct 2017 21:57:36 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-windowsservercore`

**does not exist** (yet?)

## `docker:dind`

```console
$ docker pull docker@sha256:effc528b6b06b773d3353c3ef2e772d430cbd6a74103a5e2c9f01e2795485ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:b30ea4ccb15e4b36fe9650bf8e5cbdff5d1606bf988d74f81a0f1beaf5339848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3087974c87e56318d6b702e9f1f4f3558198826c0a1f3e2b844432491c1a565`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:35 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:51:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:51:36 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:51:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:51:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:40 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:51:40 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:51:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:41 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cacbb3f9b037451acea196afb70425848ab181052bca3e8ec914192fce9b057`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 2.2 MB (2209117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296f2e06975d36045c3ab686e144231a6ed0e0c22cc22cc92ee80ce86d7986b`  
		Last Modified: Thu, 12 Oct 2017 21:56:18 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc672180989a86c6bfa2ca14e102b2557808b0e94ed9f29becbce11ae390299`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574ffc0df03c874469e67f3b22751b1ef02954d39329129fb6eab640e434cd5`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:643e6fa471a6f4f5e5837bbd5e46c5f849f527461fedcd6fb65009e2a9b1fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

```console
$ docker pull docker@sha256:3beb5149c5a29aa9e2e34bbe06eca57a1d4f472a5c1317a3a3c143b6bbf35c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a81dbb88b8d6933bf31d56de831b7ee2afb8eab11bd870411883da13ee127d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:effc528b6b06b773d3353c3ef2e772d430cbd6a74103a5e2c9f01e2795485ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:b30ea4ccb15e4b36fe9650bf8e5cbdff5d1606bf988d74f81a0f1beaf5339848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3087974c87e56318d6b702e9f1f4f3558198826c0a1f3e2b844432491c1a565`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:35 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:51:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:51:36 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:51:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:51:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:40 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:51:40 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:51:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:41 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cacbb3f9b037451acea196afb70425848ab181052bca3e8ec914192fce9b057`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 2.2 MB (2209117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296f2e06975d36045c3ab686e144231a6ed0e0c22cc22cc92ee80ce86d7986b`  
		Last Modified: Thu, 12 Oct 2017 21:56:18 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc672180989a86c6bfa2ca14e102b2557808b0e94ed9f29becbce11ae390299`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574ffc0df03c874469e67f3b22751b1ef02954d39329129fb6eab640e434cd5`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:a17e5b5426aa88ca613f725898e1811ee9fe017a0bee8eda28e4dcdd6eb9d4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

```console
$ docker pull docker@sha256:ca612f0f0bea0fe598afd24b03a45414cf2d3c5d022698c863dbdca2d9dc10fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3562a60fd5a0d0c8fc9e603c35853255f5423b17b58cb473b1fa2a5c165f84d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:51 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247385b93acd3b28a12ba1e118dcdb0dece1e9d5b487f70bc0f06baa0dca630a`  
		Last Modified: Thu, 12 Oct 2017 21:57:36 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-windowsservercore`

**does not exist** (yet?)

## `docker:git`

```console
$ docker pull docker@sha256:a17e5b5426aa88ca613f725898e1811ee9fe017a0bee8eda28e4dcdd6eb9d4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:ca612f0f0bea0fe598afd24b03a45414cf2d3c5d022698c863dbdca2d9dc10fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3562a60fd5a0d0c8fc9e603c35853255f5423b17b58cb473b1fa2a5c165f84d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:51 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247385b93acd3b28a12ba1e118dcdb0dece1e9d5b487f70bc0f06baa0dca630a`  
		Last Modified: Thu, 12 Oct 2017 21:57:36 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:643e6fa471a6f4f5e5837bbd5e46c5f849f527461fedcd6fb65009e2a9b1fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:3beb5149c5a29aa9e2e34bbe06eca57a1d4f472a5c1317a3a3c143b6bbf35c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a81dbb88b8d6933bf31d56de831b7ee2afb8eab11bd870411883da13ee127d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:643e6fa471a6f4f5e5837bbd5e46c5f849f527461fedcd6fb65009e2a9b1fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:3beb5149c5a29aa9e2e34bbe06eca57a1d4f472a5c1317a3a3c143b6bbf35c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a81dbb88b8d6933bf31d56de831b7ee2afb8eab11bd870411883da13ee127d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:effc528b6b06b773d3353c3ef2e772d430cbd6a74103a5e2c9f01e2795485ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:b30ea4ccb15e4b36fe9650bf8e5cbdff5d1606bf988d74f81a0f1beaf5339848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3087974c87e56318d6b702e9f1f4f3558198826c0a1f3e2b844432491c1a565`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:35 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:51:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:51:36 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:51:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:51:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:40 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:51:40 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:51:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:41 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cacbb3f9b037451acea196afb70425848ab181052bca3e8ec914192fce9b057`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 2.2 MB (2209117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296f2e06975d36045c3ab686e144231a6ed0e0c22cc22cc92ee80ce86d7986b`  
		Last Modified: Thu, 12 Oct 2017 21:56:18 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc672180989a86c6bfa2ca14e102b2557808b0e94ed9f29becbce11ae390299`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574ffc0df03c874469e67f3b22751b1ef02954d39329129fb6eab640e434cd5`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:a17e5b5426aa88ca613f725898e1811ee9fe017a0bee8eda28e4dcdd6eb9d4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:ca612f0f0bea0fe598afd24b03a45414cf2d3c5d022698c863dbdca2d9dc10fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3562a60fd5a0d0c8fc9e603c35853255f5423b17b58cb473b1fa2a5c165f84d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:51 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247385b93acd3b28a12ba1e118dcdb0dece1e9d5b487f70bc0f06baa0dca630a`  
		Last Modified: Thu, 12 Oct 2017 21:57:36 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-windowsservercore`

**does not exist** (yet?)

## `docker:test`

```console
$ docker pull docker@sha256:643e6fa471a6f4f5e5837bbd5e46c5f849f527461fedcd6fb65009e2a9b1fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:3beb5149c5a29aa9e2e34bbe06eca57a1d4f472a5c1317a3a3c143b6bbf35c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a81dbb88b8d6933bf31d56de831b7ee2afb8eab11bd870411883da13ee127d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:effc528b6b06b773d3353c3ef2e772d430cbd6a74103a5e2c9f01e2795485ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:b30ea4ccb15e4b36fe9650bf8e5cbdff5d1606bf988d74f81a0f1beaf5339848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3087974c87e56318d6b702e9f1f4f3558198826c0a1f3e2b844432491c1a565`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:35 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:51:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:51:36 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:51:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:51:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:40 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:51:40 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:51:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:41 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cacbb3f9b037451acea196afb70425848ab181052bca3e8ec914192fce9b057`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 2.2 MB (2209117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296f2e06975d36045c3ab686e144231a6ed0e0c22cc22cc92ee80ce86d7986b`  
		Last Modified: Thu, 12 Oct 2017 21:56:18 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc672180989a86c6bfa2ca14e102b2557808b0e94ed9f29becbce11ae390299`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574ffc0df03c874469e67f3b22751b1ef02954d39329129fb6eab640e434cd5`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:a17e5b5426aa88ca613f725898e1811ee9fe017a0bee8eda28e4dcdd6eb9d4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:ca612f0f0bea0fe598afd24b03a45414cf2d3c5d022698c863dbdca2d9dc10fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44812170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3562a60fd5a0d0c8fc9e603c35853255f5423b17b58cb473b1fa2a5c165f84d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:51 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247385b93acd3b28a12ba1e118dcdb0dece1e9d5b487f70bc0f06baa0dca630a`  
		Last Modified: Thu, 12 Oct 2017 21:57:36 GMT  
		Size: 11.8 MB (11780142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-windowsservercore`

**does not exist** (yet?)

## `docker:windowsservercore`

**does not exist** (yet?)
