<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17`](#docker17)
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
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:17-git`](#docker17-git)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge`](#dockeredge)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:git`](#dockergit)
-	[`docker:latest`](#dockerlatest)
-	[`docker:stable`](#dockerstable)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:test`](#dockertest)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:test-git`](#dockertest-git)

## `docker:17`

```console
$ docker pull docker@sha256:eec6f066ac035f38f547aef454ce05e6cfc21a993df729605ba8dc3bec037b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

```console
$ docker pull docker@sha256:a04ea4440448f69db7f02f291c8791e27414e778fb4924cbdfbe5f488815efab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4b2e961ca3e7a2adde96f76b8b144b06118c8c25002341142a13788476b11`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
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
$ docker pull docker@sha256:eec6f066ac035f38f547aef454ce05e6cfc21a993df729605ba8dc3bec037b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09` - linux; amd64

```console
$ docker pull docker@sha256:a04ea4440448f69db7f02f291c8791e27414e778fb4924cbdfbe5f488815efab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4b2e961ca3e7a2adde96f76b8b144b06118c8c25002341142a13788476b11`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0`

```console
$ docker pull docker@sha256:eec6f066ac035f38f547aef454ce05e6cfc21a993df729605ba8dc3bec037b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0` - linux; amd64

```console
$ docker pull docker@sha256:a04ea4440448f69db7f02f291c8791e27414e778fb4924cbdfbe5f488815efab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4b2e961ca3e7a2adde96f76b8b144b06118c8c25002341142a13788476b11`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce`

```console
$ docker pull docker@sha256:eec6f066ac035f38f547aef454ce05e6cfc21a993df729605ba8dc3bec037b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce` - linux; amd64

```console
$ docker pull docker@sha256:a04ea4440448f69db7f02f291c8791e27414e778fb4924cbdfbe5f488815efab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4b2e961ca3e7a2adde96f76b8b144b06118c8c25002341142a13788476b11`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-dind`

```console
$ docker pull docker@sha256:07d195443cb811e6bb08c2993dd37a837b4170d2a7a8b49af1d5136c7dc0175e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:ccd8f9bb9da05f875314b422e680721173d5a260d8cc914dbcb5d258ef2259ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74456ae4ddda71c3746dfcd9515d62c74b88181533d68deca876d60ea562c58`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 26 Sep 2017 00:54:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 26 Sep 2017 00:54:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 26 Sep 2017 00:54:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 26 Sep 2017 00:54:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:40 GMT
VOLUME [/var/lib/docker]
# Tue, 26 Sep 2017 00:54:40 GMT
EXPOSE 2375/tcp
# Tue, 26 Sep 2017 00:54:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:40 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8197088d486d85c21aed1aa04c000ade413c7e3d36d7971cce7737ae43eaa91`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 2.2 MB (2209155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5046c9b212f6a5de3583d5575fb7e3dab5b6acc1beaa2a21df17efbe42fff67`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ba6b4713100f3b72aa03377c4ac4329c174d892e6670036c563595094964b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c3cb7aeba9a6f1341183f83514959ae39e71b0cd220d98731d3d65decfe1b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-git`

```console
$ docker pull docker@sha256:0b284bf94b4e127b00a4686a1918c9c3c08bc588f8f80b720a38bdb93d41f9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:f7ce983d966f15876e16fb27931366e3c7e1fbad9fd2436d7eb4d4c637a0a259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44801819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d539e019d925c47fe9f0fd300a0189e92cdcdf89ba25c0859e26537a5b40a4`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:51 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4fe3a2d00ee026a25f62ae7bde938e9e2edb0964ebbe2144cf1b2495829ad`  
		Last Modified: Tue, 26 Sep 2017 00:56:47 GMT  
		Size: 11.8 MB (11769677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-dind`

```console
$ docker pull docker@sha256:07d195443cb811e6bb08c2993dd37a837b4170d2a7a8b49af1d5136c7dc0175e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-dind` - linux; amd64

```console
$ docker pull docker@sha256:ccd8f9bb9da05f875314b422e680721173d5a260d8cc914dbcb5d258ef2259ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74456ae4ddda71c3746dfcd9515d62c74b88181533d68deca876d60ea562c58`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 26 Sep 2017 00:54:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 26 Sep 2017 00:54:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 26 Sep 2017 00:54:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 26 Sep 2017 00:54:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:40 GMT
VOLUME [/var/lib/docker]
# Tue, 26 Sep 2017 00:54:40 GMT
EXPOSE 2375/tcp
# Tue, 26 Sep 2017 00:54:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:40 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8197088d486d85c21aed1aa04c000ade413c7e3d36d7971cce7737ae43eaa91`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 2.2 MB (2209155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5046c9b212f6a5de3583d5575fb7e3dab5b6acc1beaa2a21df17efbe42fff67`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ba6b4713100f3b72aa03377c4ac4329c174d892e6670036c563595094964b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c3cb7aeba9a6f1341183f83514959ae39e71b0cd220d98731d3d65decfe1b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-git`

```console
$ docker pull docker@sha256:0b284bf94b4e127b00a4686a1918c9c3c08bc588f8f80b720a38bdb93d41f9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-git` - linux; amd64

```console
$ docker pull docker@sha256:f7ce983d966f15876e16fb27931366e3c7e1fbad9fd2436d7eb4d4c637a0a259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44801819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d539e019d925c47fe9f0fd300a0189e92cdcdf89ba25c0859e26537a5b40a4`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:51 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4fe3a2d00ee026a25f62ae7bde938e9e2edb0964ebbe2144cf1b2495829ad`  
		Last Modified: Tue, 26 Sep 2017 00:56:47 GMT  
		Size: 11.8 MB (11769677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-dind`

```console
$ docker pull docker@sha256:07d195443cb811e6bb08c2993dd37a837b4170d2a7a8b49af1d5136c7dc0175e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:ccd8f9bb9da05f875314b422e680721173d5a260d8cc914dbcb5d258ef2259ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74456ae4ddda71c3746dfcd9515d62c74b88181533d68deca876d60ea562c58`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 26 Sep 2017 00:54:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 26 Sep 2017 00:54:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 26 Sep 2017 00:54:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 26 Sep 2017 00:54:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:40 GMT
VOLUME [/var/lib/docker]
# Tue, 26 Sep 2017 00:54:40 GMT
EXPOSE 2375/tcp
# Tue, 26 Sep 2017 00:54:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:40 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8197088d486d85c21aed1aa04c000ade413c7e3d36d7971cce7737ae43eaa91`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 2.2 MB (2209155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5046c9b212f6a5de3583d5575fb7e3dab5b6acc1beaa2a21df17efbe42fff67`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ba6b4713100f3b72aa03377c4ac4329c174d892e6670036c563595094964b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c3cb7aeba9a6f1341183f83514959ae39e71b0cd220d98731d3d65decfe1b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-git`

```console
$ docker pull docker@sha256:0b284bf94b4e127b00a4686a1918c9c3c08bc588f8f80b720a38bdb93d41f9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09-git` - linux; amd64

```console
$ docker pull docker@sha256:f7ce983d966f15876e16fb27931366e3c7e1fbad9fd2436d7eb4d4c637a0a259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44801819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d539e019d925c47fe9f0fd300a0189e92cdcdf89ba25c0859e26537a5b40a4`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:51 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4fe3a2d00ee026a25f62ae7bde938e9e2edb0964ebbe2144cf1b2495829ad`  
		Last Modified: Tue, 26 Sep 2017 00:56:47 GMT  
		Size: 11.8 MB (11769677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:07d195443cb811e6bb08c2993dd37a837b4170d2a7a8b49af1d5136c7dc0175e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

```console
$ docker pull docker@sha256:ccd8f9bb9da05f875314b422e680721173d5a260d8cc914dbcb5d258ef2259ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74456ae4ddda71c3746dfcd9515d62c74b88181533d68deca876d60ea562c58`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 26 Sep 2017 00:54:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 26 Sep 2017 00:54:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 26 Sep 2017 00:54:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 26 Sep 2017 00:54:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:40 GMT
VOLUME [/var/lib/docker]
# Tue, 26 Sep 2017 00:54:40 GMT
EXPOSE 2375/tcp
# Tue, 26 Sep 2017 00:54:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:40 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8197088d486d85c21aed1aa04c000ade413c7e3d36d7971cce7737ae43eaa91`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 2.2 MB (2209155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5046c9b212f6a5de3583d5575fb7e3dab5b6acc1beaa2a21df17efbe42fff67`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ba6b4713100f3b72aa03377c4ac4329c174d892e6670036c563595094964b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c3cb7aeba9a6f1341183f83514959ae39e71b0cd220d98731d3d65decfe1b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:0b284bf94b4e127b00a4686a1918c9c3c08bc588f8f80b720a38bdb93d41f9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

```console
$ docker pull docker@sha256:f7ce983d966f15876e16fb27931366e3c7e1fbad9fd2436d7eb4d4c637a0a259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44801819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d539e019d925c47fe9f0fd300a0189e92cdcdf89ba25c0859e26537a5b40a4`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:51 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4fe3a2d00ee026a25f62ae7bde938e9e2edb0964ebbe2144cf1b2495829ad`  
		Last Modified: Tue, 26 Sep 2017 00:56:47 GMT  
		Size: 11.8 MB (11769677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:07d195443cb811e6bb08c2993dd37a837b4170d2a7a8b49af1d5136c7dc0175e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:ccd8f9bb9da05f875314b422e680721173d5a260d8cc914dbcb5d258ef2259ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74456ae4ddda71c3746dfcd9515d62c74b88181533d68deca876d60ea562c58`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 26 Sep 2017 00:54:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 26 Sep 2017 00:54:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 26 Sep 2017 00:54:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 26 Sep 2017 00:54:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:40 GMT
VOLUME [/var/lib/docker]
# Tue, 26 Sep 2017 00:54:40 GMT
EXPOSE 2375/tcp
# Tue, 26 Sep 2017 00:54:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:40 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8197088d486d85c21aed1aa04c000ade413c7e3d36d7971cce7737ae43eaa91`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 2.2 MB (2209155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5046c9b212f6a5de3583d5575fb7e3dab5b6acc1beaa2a21df17efbe42fff67`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ba6b4713100f3b72aa03377c4ac4329c174d892e6670036c563595094964b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c3cb7aeba9a6f1341183f83514959ae39e71b0cd220d98731d3d65decfe1b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:eec6f066ac035f38f547aef454ce05e6cfc21a993df729605ba8dc3bec037b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

```console
$ docker pull docker@sha256:a04ea4440448f69db7f02f291c8791e27414e778fb4924cbdfbe5f488815efab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4b2e961ca3e7a2adde96f76b8b144b06118c8c25002341142a13788476b11`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:07d195443cb811e6bb08c2993dd37a837b4170d2a7a8b49af1d5136c7dc0175e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:ccd8f9bb9da05f875314b422e680721173d5a260d8cc914dbcb5d258ef2259ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74456ae4ddda71c3746dfcd9515d62c74b88181533d68deca876d60ea562c58`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 26 Sep 2017 00:54:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 26 Sep 2017 00:54:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 26 Sep 2017 00:54:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 26 Sep 2017 00:54:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:40 GMT
VOLUME [/var/lib/docker]
# Tue, 26 Sep 2017 00:54:40 GMT
EXPOSE 2375/tcp
# Tue, 26 Sep 2017 00:54:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:40 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8197088d486d85c21aed1aa04c000ade413c7e3d36d7971cce7737ae43eaa91`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 2.2 MB (2209155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5046c9b212f6a5de3583d5575fb7e3dab5b6acc1beaa2a21df17efbe42fff67`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ba6b4713100f3b72aa03377c4ac4329c174d892e6670036c563595094964b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c3cb7aeba9a6f1341183f83514959ae39e71b0cd220d98731d3d65decfe1b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:0b284bf94b4e127b00a4686a1918c9c3c08bc588f8f80b720a38bdb93d41f9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

```console
$ docker pull docker@sha256:f7ce983d966f15876e16fb27931366e3c7e1fbad9fd2436d7eb4d4c637a0a259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44801819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d539e019d925c47fe9f0fd300a0189e92cdcdf89ba25c0859e26537a5b40a4`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:51 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4fe3a2d00ee026a25f62ae7bde938e9e2edb0964ebbe2144cf1b2495829ad`  
		Last Modified: Tue, 26 Sep 2017 00:56:47 GMT  
		Size: 11.8 MB (11769677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:0b284bf94b4e127b00a4686a1918c9c3c08bc588f8f80b720a38bdb93d41f9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:f7ce983d966f15876e16fb27931366e3c7e1fbad9fd2436d7eb4d4c637a0a259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44801819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d539e019d925c47fe9f0fd300a0189e92cdcdf89ba25c0859e26537a5b40a4`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:51 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4fe3a2d00ee026a25f62ae7bde938e9e2edb0964ebbe2144cf1b2495829ad`  
		Last Modified: Tue, 26 Sep 2017 00:56:47 GMT  
		Size: 11.8 MB (11769677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:eec6f066ac035f38f547aef454ce05e6cfc21a993df729605ba8dc3bec037b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:a04ea4440448f69db7f02f291c8791e27414e778fb4924cbdfbe5f488815efab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4b2e961ca3e7a2adde96f76b8b144b06118c8c25002341142a13788476b11`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:eec6f066ac035f38f547aef454ce05e6cfc21a993df729605ba8dc3bec037b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:a04ea4440448f69db7f02f291c8791e27414e778fb4924cbdfbe5f488815efab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4b2e961ca3e7a2adde96f76b8b144b06118c8c25002341142a13788476b11`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:07d195443cb811e6bb08c2993dd37a837b4170d2a7a8b49af1d5136c7dc0175e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:ccd8f9bb9da05f875314b422e680721173d5a260d8cc914dbcb5d258ef2259ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74456ae4ddda71c3746dfcd9515d62c74b88181533d68deca876d60ea562c58`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 26 Sep 2017 00:54:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 26 Sep 2017 00:54:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 26 Sep 2017 00:54:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 26 Sep 2017 00:54:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:40 GMT
VOLUME [/var/lib/docker]
# Tue, 26 Sep 2017 00:54:40 GMT
EXPOSE 2375/tcp
# Tue, 26 Sep 2017 00:54:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:40 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8197088d486d85c21aed1aa04c000ade413c7e3d36d7971cce7737ae43eaa91`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 2.2 MB (2209155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5046c9b212f6a5de3583d5575fb7e3dab5b6acc1beaa2a21df17efbe42fff67`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ba6b4713100f3b72aa03377c4ac4329c174d892e6670036c563595094964b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c3cb7aeba9a6f1341183f83514959ae39e71b0cd220d98731d3d65decfe1b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:0b284bf94b4e127b00a4686a1918c9c3c08bc588f8f80b720a38bdb93d41f9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:f7ce983d966f15876e16fb27931366e3c7e1fbad9fd2436d7eb4d4c637a0a259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44801819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d539e019d925c47fe9f0fd300a0189e92cdcdf89ba25c0859e26537a5b40a4`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:51 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4fe3a2d00ee026a25f62ae7bde938e9e2edb0964ebbe2144cf1b2495829ad`  
		Last Modified: Tue, 26 Sep 2017 00:56:47 GMT  
		Size: 11.8 MB (11769677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:eec6f066ac035f38f547aef454ce05e6cfc21a993df729605ba8dc3bec037b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:a04ea4440448f69db7f02f291c8791e27414e778fb4924cbdfbe5f488815efab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33032142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4b2e961ca3e7a2adde96f76b8b144b06118c8c25002341142a13788476b11`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:07d195443cb811e6bb08c2993dd37a837b4170d2a7a8b49af1d5136c7dc0175e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:ccd8f9bb9da05f875314b422e680721173d5a260d8cc914dbcb5d258ef2259ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74456ae4ddda71c3746dfcd9515d62c74b88181533d68deca876d60ea562c58`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 26 Sep 2017 00:54:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 26 Sep 2017 00:54:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 26 Sep 2017 00:54:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 26 Sep 2017 00:54:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:40 GMT
VOLUME [/var/lib/docker]
# Tue, 26 Sep 2017 00:54:40 GMT
EXPOSE 2375/tcp
# Tue, 26 Sep 2017 00:54:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:40 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8197088d486d85c21aed1aa04c000ade413c7e3d36d7971cce7737ae43eaa91`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 2.2 MB (2209155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5046c9b212f6a5de3583d5575fb7e3dab5b6acc1beaa2a21df17efbe42fff67`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ba6b4713100f3b72aa03377c4ac4329c174d892e6670036c563595094964b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01c3cb7aeba9a6f1341183f83514959ae39e71b0cd220d98731d3d65decfe1b`  
		Last Modified: Tue, 26 Sep 2017 00:55:54 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:0b284bf94b4e127b00a4686a1918c9c3c08bc588f8f80b720a38bdb93d41f9cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:f7ce983d966f15876e16fb27931366e3c7e1fbad9fd2436d7eb4d4c637a0a259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44801819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d539e019d925c47fe9f0fd300a0189e92cdcdf89ba25c0859e26537a5b40a4`
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
# Thu, 21 Sep 2017 22:06:23 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc3
# Tue, 26 Sep 2017 00:54:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 26 Sep 2017 00:54:25 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:54:25 GMT
CMD ["sh"]
# Tue, 26 Sep 2017 00:54:51 GMT
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
	-	`sha256:ec2787d4cc9c570908aee52df1985077a3d0e1814bd88f50a89d5b6f261aeb2f`  
		Last Modified: Tue, 26 Sep 2017 00:55:16 GMT  
		Size: 30.7 MB (30689645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63e21e51e5b7fa6302ea6e685b85d88ff554aa779491446679724a7143ceeb6`  
		Last Modified: Tue, 26 Sep 2017 00:55:09 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b4fe3a2d00ee026a25f62ae7bde938e9e2edb0964ebbe2144cf1b2495829ad`  
		Last Modified: Tue, 26 Sep 2017 00:56:47 GMT  
		Size: 11.8 MB (11769677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
