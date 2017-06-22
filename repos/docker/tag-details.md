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

```console
$ docker pull docker@sha256:1aa119675d50fe8ec030c5e010974f069a8665076c1c8e14d52148295aa94134
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9424b16289fde0f8a3b7b39abae86c76b907a7e53a27d9330aba49653decad9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce`

```console
$ docker pull docker@sha256:1aa119675d50fe8ec030c5e010974f069a8665076c1c8e14d52148295aa94134
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9424b16289fde0f8a3b7b39abae86c76b907a7e53a27d9330aba49653decad9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0`

```console
$ docker pull docker@sha256:1aa119675d50fe8ec030c5e010974f069a8665076c1c8e14d52148295aa94134
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9424b16289fde0f8a3b7b39abae86c76b907a7e53a27d9330aba49653decad9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc`

```console
$ docker pull docker@sha256:1aa119675d50fe8ec030c5e010974f069a8665076c1c8e14d52148295aa94134
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9424b16289fde0f8a3b7b39abae86c76b907a7e53a27d9330aba49653decad9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:1aa119675d50fe8ec030c5e010974f069a8665076c1c8e14d52148295aa94134
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9424b16289fde0f8a3b7b39abae86c76b907a7e53a27d9330aba49653decad9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:1aa119675d50fe8ec030c5e010974f069a8665076c1c8e14d52148295aa94134
```

-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32330497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9424b16289fde0f8a3b7b39abae86c76b907a7e53a27d9330aba49653decad9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc5-dind`

```console
$ docker pull docker@sha256:4e8612f8a75e353350653841d8efd888cd2a7259e5a6d5853ff6a0b8995d09ce
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc5-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34727529bff30dc116aa945c5066bfefe350f8860e5741c811e8c481009ab67a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:15:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 22 Jun 2017 19:15:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Jun 2017 19:15:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Jun 2017 19:15:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 22 Jun 2017 19:15:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:15:33 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Jun 2017 19:15:33 GMT
EXPOSE 2375/tcp
# Thu, 22 Jun 2017 19:15:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Jun 2017 19:15:35 GMT
CMD []
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f972e6935bb25486aa1c553b3358041e2c27644fe1b17b55cde1a574a859311d`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 2.2 MB (2209038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b13e1b2b9b44e45a825265fff4a54170a903352265c285292ed9b41b3d9743`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48652e73a09591db35315473acf22e1e9b64298e5e718b1588aee7b5bcab35ed`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515db89300b6ef4eaf1a62036cdfbbc7b8cc9147f8814b9f088085994f574f9f`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-dind`

```console
$ docker pull docker@sha256:4e8612f8a75e353350653841d8efd888cd2a7259e5a6d5853ff6a0b8995d09ce
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34727529bff30dc116aa945c5066bfefe350f8860e5741c811e8c481009ab67a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:15:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 22 Jun 2017 19:15:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Jun 2017 19:15:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Jun 2017 19:15:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 22 Jun 2017 19:15:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:15:33 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Jun 2017 19:15:33 GMT
EXPOSE 2375/tcp
# Thu, 22 Jun 2017 19:15:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Jun 2017 19:15:35 GMT
CMD []
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f972e6935bb25486aa1c553b3358041e2c27644fe1b17b55cde1a574a859311d`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 2.2 MB (2209038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b13e1b2b9b44e45a825265fff4a54170a903352265c285292ed9b41b3d9743`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48652e73a09591db35315473acf22e1e9b64298e5e718b1588aee7b5bcab35ed`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515db89300b6ef4eaf1a62036cdfbbc7b8cc9147f8814b9f088085994f574f9f`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-dind`

```console
$ docker pull docker@sha256:4e8612f8a75e353350653841d8efd888cd2a7259e5a6d5853ff6a0b8995d09ce
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34727529bff30dc116aa945c5066bfefe350f8860e5741c811e8c481009ab67a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:15:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 22 Jun 2017 19:15:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Jun 2017 19:15:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Jun 2017 19:15:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 22 Jun 2017 19:15:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:15:33 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Jun 2017 19:15:33 GMT
EXPOSE 2375/tcp
# Thu, 22 Jun 2017 19:15:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Jun 2017 19:15:35 GMT
CMD []
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f972e6935bb25486aa1c553b3358041e2c27644fe1b17b55cde1a574a859311d`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 2.2 MB (2209038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b13e1b2b9b44e45a825265fff4a54170a903352265c285292ed9b41b3d9743`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48652e73a09591db35315473acf22e1e9b64298e5e718b1588aee7b5bcab35ed`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515db89300b6ef4eaf1a62036cdfbbc7b8cc9147f8814b9f088085994f574f9f`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-dind`

```console
$ docker pull docker@sha256:4e8612f8a75e353350653841d8efd888cd2a7259e5a6d5853ff6a0b8995d09ce
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34727529bff30dc116aa945c5066bfefe350f8860e5741c811e8c481009ab67a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:15:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 22 Jun 2017 19:15:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Jun 2017 19:15:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Jun 2017 19:15:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 22 Jun 2017 19:15:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:15:33 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Jun 2017 19:15:33 GMT
EXPOSE 2375/tcp
# Thu, 22 Jun 2017 19:15:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Jun 2017 19:15:35 GMT
CMD []
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f972e6935bb25486aa1c553b3358041e2c27644fe1b17b55cde1a574a859311d`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 2.2 MB (2209038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b13e1b2b9b44e45a825265fff4a54170a903352265c285292ed9b41b3d9743`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48652e73a09591db35315473acf22e1e9b64298e5e718b1588aee7b5bcab35ed`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515db89300b6ef4eaf1a62036cdfbbc7b8cc9147f8814b9f088085994f574f9f`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:4e8612f8a75e353350653841d8efd888cd2a7259e5a6d5853ff6a0b8995d09ce
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34727529bff30dc116aa945c5066bfefe350f8860e5741c811e8c481009ab67a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:15:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 22 Jun 2017 19:15:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Jun 2017 19:15:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Jun 2017 19:15:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 22 Jun 2017 19:15:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:15:33 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Jun 2017 19:15:33 GMT
EXPOSE 2375/tcp
# Thu, 22 Jun 2017 19:15:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Jun 2017 19:15:35 GMT
CMD []
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f972e6935bb25486aa1c553b3358041e2c27644fe1b17b55cde1a574a859311d`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 2.2 MB (2209038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b13e1b2b9b44e45a825265fff4a54170a903352265c285292ed9b41b3d9743`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48652e73a09591db35315473acf22e1e9b64298e5e718b1588aee7b5bcab35ed`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515db89300b6ef4eaf1a62036cdfbbc7b8cc9147f8814b9f088085994f574f9f`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:4e8612f8a75e353350653841d8efd888cd2a7259e5a6d5853ff6a0b8995d09ce
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34727529bff30dc116aa945c5066bfefe350f8860e5741c811e8c481009ab67a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:15:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 22 Jun 2017 19:15:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Jun 2017 19:15:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Jun 2017 19:15:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 22 Jun 2017 19:15:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:15:33 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Jun 2017 19:15:33 GMT
EXPOSE 2375/tcp
# Thu, 22 Jun 2017 19:15:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Jun 2017 19:15:35 GMT
CMD []
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f972e6935bb25486aa1c553b3358041e2c27644fe1b17b55cde1a574a859311d`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 2.2 MB (2209038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b13e1b2b9b44e45a825265fff4a54170a903352265c285292ed9b41b3d9743`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48652e73a09591db35315473acf22e1e9b64298e5e718b1588aee7b5bcab35ed`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515db89300b6ef4eaf1a62036cdfbbc7b8cc9147f8814b9f088085994f574f9f`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc5-git`

```console
$ docker pull docker@sha256:928a84709597496e836ae99eab70e8d606dfe6e06c2ddd7b04b430ae7c5191d4
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc5-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ea3fcae4526a0f4f3d81a865422afbb98a289a160d09314eded37b14ae934a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:16:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c34c898ad9f0590e9a3a3cc074b6ef8fb5140924ee821d03565dedd884415b9`  
		Last Modified: Thu, 22 Jun 2017 19:22:09 GMT  
		Size: 11.7 MB (11732705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-git`

```console
$ docker pull docker@sha256:928a84709597496e836ae99eab70e8d606dfe6e06c2ddd7b04b430ae7c5191d4
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ea3fcae4526a0f4f3d81a865422afbb98a289a160d09314eded37b14ae934a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:16:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c34c898ad9f0590e9a3a3cc074b6ef8fb5140924ee821d03565dedd884415b9`  
		Last Modified: Thu, 22 Jun 2017 19:22:09 GMT  
		Size: 11.7 MB (11732705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-git`

```console
$ docker pull docker@sha256:928a84709597496e836ae99eab70e8d606dfe6e06c2ddd7b04b430ae7c5191d4
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ea3fcae4526a0f4f3d81a865422afbb98a289a160d09314eded37b14ae934a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:16:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c34c898ad9f0590e9a3a3cc074b6ef8fb5140924ee821d03565dedd884415b9`  
		Last Modified: Thu, 22 Jun 2017 19:22:09 GMT  
		Size: 11.7 MB (11732705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-git`

```console
$ docker pull docker@sha256:928a84709597496e836ae99eab70e8d606dfe6e06c2ddd7b04b430ae7c5191d4
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ea3fcae4526a0f4f3d81a865422afbb98a289a160d09314eded37b14ae934a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:16:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c34c898ad9f0590e9a3a3cc074b6ef8fb5140924ee821d03565dedd884415b9`  
		Last Modified: Thu, 22 Jun 2017 19:22:09 GMT  
		Size: 11.7 MB (11732705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:928a84709597496e836ae99eab70e8d606dfe6e06c2ddd7b04b430ae7c5191d4
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ea3fcae4526a0f4f3d81a865422afbb98a289a160d09314eded37b14ae934a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:16:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c34c898ad9f0590e9a3a3cc074b6ef8fb5140924ee821d03565dedd884415b9`  
		Last Modified: Thu, 22 Jun 2017 19:22:09 GMT  
		Size: 11.7 MB (11732705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:928a84709597496e836ae99eab70e8d606dfe6e06c2ddd7b04b430ae7c5191d4
```

-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ea3fcae4526a0f4f3d81a865422afbb98a289a160d09314eded37b14ae934a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:16:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c34c898ad9f0590e9a3a3cc074b6ef8fb5140924ee821d03565dedd884415b9`  
		Last Modified: Thu, 22 Jun 2017 19:22:09 GMT  
		Size: 11.7 MB (11732705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:ea7979ae68d9098f68d0b2a58abe5a709601c777767d2bf4d20e3e1ffbad2a55
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31075331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8e0f96efdf58dd134734702244bba2632e88207e3d2b6eacc5fb9f59b0b41c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:ea7979ae68d9098f68d0b2a58abe5a709601c777767d2bf4d20e3e1ffbad2a55
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31075331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8e0f96efdf58dd134734702244bba2632e88207e3d2b6eacc5fb9f59b0b41c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05`

```console
$ docker pull docker@sha256:ea7979ae68d9098f68d0b2a58abe5a709601c777767d2bf4d20e3e1ffbad2a55
```

-	Platforms:
	-	linux; amd64

### `docker:17.05` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31075331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8e0f96efdf58dd134734702244bba2632e88207e3d2b6eacc5fb9f59b0b41c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:ea7979ae68d9098f68d0b2a58abe5a709601c777767d2bf4d20e3e1ffbad2a55
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31075331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8e0f96efdf58dd134734702244bba2632e88207e3d2b6eacc5fb9f59b0b41c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:ea7979ae68d9098f68d0b2a58abe5a709601c777767d2bf4d20e3e1ffbad2a55
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31075331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8e0f96efdf58dd134734702244bba2632e88207e3d2b6eacc5fb9f59b0b41c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:ea7979ae68d9098f68d0b2a58abe5a709601c777767d2bf4d20e3e1ffbad2a55
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31075331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8e0f96efdf58dd134734702244bba2632e88207e3d2b6eacc5fb9f59b0b41c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:f78c730d729e986b1c271dfd69267aea15037ab069d73ff8afe338b768cd41dc
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243eea1f98a2f23eba2d3ba84f9cb4db141be6047e03d148d6f9db28b9c5db4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:29:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:29:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:29:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:29:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:30:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:30:01 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:30:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:30:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:30:04 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135c8cbd5cb106e54e2cc527e917f740962a75303370f34ce9d90bbcb167d40a`  
		Last Modified: Thu, 22 Jun 2017 19:27:31 GMT  
		Size: 2.2 MB (2165526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141f0ff40a8f56d5e934f9f6457ecc5d8df4e17252855a7975ae331532cd1735`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ebdb936efebcbef2806080a8eb1855a1436d5693baca6644c9097654ae809`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d293302e700cfae3ff7ba728a01f0eb30590bb98d0de9303c83457c90504f51`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:f78c730d729e986b1c271dfd69267aea15037ab069d73ff8afe338b768cd41dc
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243eea1f98a2f23eba2d3ba84f9cb4db141be6047e03d148d6f9db28b9c5db4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:29:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:29:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:29:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:29:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:30:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:30:01 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:30:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:30:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:30:04 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135c8cbd5cb106e54e2cc527e917f740962a75303370f34ce9d90bbcb167d40a`  
		Last Modified: Thu, 22 Jun 2017 19:27:31 GMT  
		Size: 2.2 MB (2165526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141f0ff40a8f56d5e934f9f6457ecc5d8df4e17252855a7975ae331532cd1735`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ebdb936efebcbef2806080a8eb1855a1436d5693baca6644c9097654ae809`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d293302e700cfae3ff7ba728a01f0eb30590bb98d0de9303c83457c90504f51`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-dind`

```console
$ docker pull docker@sha256:f78c730d729e986b1c271dfd69267aea15037ab069d73ff8afe338b768cd41dc
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243eea1f98a2f23eba2d3ba84f9cb4db141be6047e03d148d6f9db28b9c5db4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:29:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:29:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:29:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:29:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:30:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:30:01 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:30:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:30:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:30:04 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135c8cbd5cb106e54e2cc527e917f740962a75303370f34ce9d90bbcb167d40a`  
		Last Modified: Thu, 22 Jun 2017 19:27:31 GMT  
		Size: 2.2 MB (2165526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141f0ff40a8f56d5e934f9f6457ecc5d8df4e17252855a7975ae331532cd1735`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ebdb936efebcbef2806080a8eb1855a1436d5693baca6644c9097654ae809`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d293302e700cfae3ff7ba728a01f0eb30590bb98d0de9303c83457c90504f51`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:f78c730d729e986b1c271dfd69267aea15037ab069d73ff8afe338b768cd41dc
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243eea1f98a2f23eba2d3ba84f9cb4db141be6047e03d148d6f9db28b9c5db4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:29:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:29:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:29:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:29:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:30:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:30:01 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:30:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:30:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:30:04 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135c8cbd5cb106e54e2cc527e917f740962a75303370f34ce9d90bbcb167d40a`  
		Last Modified: Thu, 22 Jun 2017 19:27:31 GMT  
		Size: 2.2 MB (2165526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141f0ff40a8f56d5e934f9f6457ecc5d8df4e17252855a7975ae331532cd1735`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ebdb936efebcbef2806080a8eb1855a1436d5693baca6644c9097654ae809`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d293302e700cfae3ff7ba728a01f0eb30590bb98d0de9303c83457c90504f51`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:f78c730d729e986b1c271dfd69267aea15037ab069d73ff8afe338b768cd41dc
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243eea1f98a2f23eba2d3ba84f9cb4db141be6047e03d148d6f9db28b9c5db4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:29:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:29:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:29:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:29:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:30:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:30:01 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:30:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:30:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:30:04 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135c8cbd5cb106e54e2cc527e917f740962a75303370f34ce9d90bbcb167d40a`  
		Last Modified: Thu, 22 Jun 2017 19:27:31 GMT  
		Size: 2.2 MB (2165526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141f0ff40a8f56d5e934f9f6457ecc5d8df4e17252855a7975ae331532cd1735`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ebdb936efebcbef2806080a8eb1855a1436d5693baca6644c9097654ae809`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d293302e700cfae3ff7ba728a01f0eb30590bb98d0de9303c83457c90504f51`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:f78c730d729e986b1c271dfd69267aea15037ab069d73ff8afe338b768cd41dc
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243eea1f98a2f23eba2d3ba84f9cb4db141be6047e03d148d6f9db28b9c5db4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:29:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:29:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:29:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:29:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:30:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:30:01 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:30:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:30:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:30:04 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135c8cbd5cb106e54e2cc527e917f740962a75303370f34ce9d90bbcb167d40a`  
		Last Modified: Thu, 22 Jun 2017 19:27:31 GMT  
		Size: 2.2 MB (2165526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141f0ff40a8f56d5e934f9f6457ecc5d8df4e17252855a7975ae331532cd1735`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ebdb936efebcbef2806080a8eb1855a1436d5693baca6644c9097654ae809`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d293302e700cfae3ff7ba728a01f0eb30590bb98d0de9303c83457c90504f51`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:56e5db466769cf499e354add647f81d02a4d1d98ee2511a6876e094b26e12d6a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346982cc8555943ddee3102c50b5913fff4bbdff9ed44ea7a7b66daca9af10aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:30:54 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9890943f85135ef7ec3949695e5069c385fc81c1477e1ab4105d670ec09fd2d3`  
		Last Modified: Thu, 22 Jun 2017 19:30:12 GMT  
		Size: 11.0 MB (10990212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:56e5db466769cf499e354add647f81d02a4d1d98ee2511a6876e094b26e12d6a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346982cc8555943ddee3102c50b5913fff4bbdff9ed44ea7a7b66daca9af10aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:30:54 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9890943f85135ef7ec3949695e5069c385fc81c1477e1ab4105d670ec09fd2d3`  
		Last Modified: Thu, 22 Jun 2017 19:30:12 GMT  
		Size: 11.0 MB (10990212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-git`

```console
$ docker pull docker@sha256:56e5db466769cf499e354add647f81d02a4d1d98ee2511a6876e094b26e12d6a
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346982cc8555943ddee3102c50b5913fff4bbdff9ed44ea7a7b66daca9af10aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:30:54 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9890943f85135ef7ec3949695e5069c385fc81c1477e1ab4105d670ec09fd2d3`  
		Last Modified: Thu, 22 Jun 2017 19:30:12 GMT  
		Size: 11.0 MB (10990212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:56e5db466769cf499e354add647f81d02a4d1d98ee2511a6876e094b26e12d6a
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346982cc8555943ddee3102c50b5913fff4bbdff9ed44ea7a7b66daca9af10aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:30:54 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9890943f85135ef7ec3949695e5069c385fc81c1477e1ab4105d670ec09fd2d3`  
		Last Modified: Thu, 22 Jun 2017 19:30:12 GMT  
		Size: 11.0 MB (10990212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:56e5db466769cf499e354add647f81d02a4d1d98ee2511a6876e094b26e12d6a
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346982cc8555943ddee3102c50b5913fff4bbdff9ed44ea7a7b66daca9af10aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:30:54 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9890943f85135ef7ec3949695e5069c385fc81c1477e1ab4105d670ec09fd2d3`  
		Last Modified: Thu, 22 Jun 2017 19:30:12 GMT  
		Size: 11.0 MB (10990212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:56e5db466769cf499e354add647f81d02a4d1d98ee2511a6876e094b26e12d6a
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346982cc8555943ddee3102c50b5913fff4bbdff9ed44ea7a7b66daca9af10aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:30:54 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9890943f85135ef7ec3949695e5069c385fc81c1477e1ab4105d670ec09fd2d3`  
		Last Modified: Thu, 22 Jun 2017 19:30:12 GMT  
		Size: 11.0 MB (10990212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1`

```console
$ docker pull docker@sha256:3cf62d7f75af970bb5e5d5b3262200937b02d36a334ee6debc3064d74f2e0c7b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-rc1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c7689b27a6c80942994df99773eceb51b354b04866ecfe190911581df68dc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce`

```console
$ docker pull docker@sha256:3cf62d7f75af970bb5e5d5b3262200937b02d36a334ee6debc3064d74f2e0c7b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c7689b27a6c80942994df99773eceb51b354b04866ecfe190911581df68dc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2`

```console
$ docker pull docker@sha256:3cf62d7f75af970bb5e5d5b3262200937b02d36a334ee6debc3064d74f2e0c7b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c7689b27a6c80942994df99773eceb51b354b04866ecfe190911581df68dc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc`

```console
$ docker pull docker@sha256:3cf62d7f75af970bb5e5d5b3262200937b02d36a334ee6debc3064d74f2e0c7b
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30432748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c7689b27a6c80942994df99773eceb51b354b04866ecfe190911581df68dc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1-dind`

```console
$ docker pull docker@sha256:dca2afff53844304ed277570c1de9345de5bf1debc9a6cbd2cf30ee17a52050e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-rc1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ec928ad8f947fec3a71313315e31f518b805c8387d9b010777c10ddded9190`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:33:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:33:05 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:33:06 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:33:11 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:33:33 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:33:34 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:33:36 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:33:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:33:37 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8bff819be8da7f08b0be8328fcaa48e0abec441c3c1683761de440c8e7c9d5`  
		Last Modified: Thu, 22 Jun 2017 19:34:44 GMT  
		Size: 2.2 MB (2165467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cd2af29671584efbd80788c9c46e11208f6ae2e402e7a6d1dd0bc7494f9fc0`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16632414ba35020fc22d06e70ff6f58a35a3f3d627646413ea7751d1671af6ef`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3cb613839102e26d6868cfe4e95ce2fd41260121a334e0ebd7db54f5f1ce89`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-dind`

```console
$ docker pull docker@sha256:dca2afff53844304ed277570c1de9345de5bf1debc9a6cbd2cf30ee17a52050e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ec928ad8f947fec3a71313315e31f518b805c8387d9b010777c10ddded9190`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:33:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:33:05 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:33:06 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:33:11 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:33:33 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:33:34 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:33:36 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:33:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:33:37 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8bff819be8da7f08b0be8328fcaa48e0abec441c3c1683761de440c8e7c9d5`  
		Last Modified: Thu, 22 Jun 2017 19:34:44 GMT  
		Size: 2.2 MB (2165467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cd2af29671584efbd80788c9c46e11208f6ae2e402e7a6d1dd0bc7494f9fc0`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16632414ba35020fc22d06e70ff6f58a35a3f3d627646413ea7751d1671af6ef`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3cb613839102e26d6868cfe4e95ce2fd41260121a334e0ebd7db54f5f1ce89`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-dind`

```console
$ docker pull docker@sha256:dca2afff53844304ed277570c1de9345de5bf1debc9a6cbd2cf30ee17a52050e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ec928ad8f947fec3a71313315e31f518b805c8387d9b010777c10ddded9190`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:33:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:33:05 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:33:06 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:33:11 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:33:33 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:33:34 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:33:36 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:33:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:33:37 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8bff819be8da7f08b0be8328fcaa48e0abec441c3c1683761de440c8e7c9d5`  
		Last Modified: Thu, 22 Jun 2017 19:34:44 GMT  
		Size: 2.2 MB (2165467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cd2af29671584efbd80788c9c46e11208f6ae2e402e7a6d1dd0bc7494f9fc0`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16632414ba35020fc22d06e70ff6f58a35a3f3d627646413ea7751d1671af6ef`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3cb613839102e26d6868cfe4e95ce2fd41260121a334e0ebd7db54f5f1ce89`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc-dind`

```console
$ docker pull docker@sha256:dca2afff53844304ed277570c1de9345de5bf1debc9a6cbd2cf30ee17a52050e
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32775685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ec928ad8f947fec3a71313315e31f518b805c8387d9b010777c10ddded9190`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:33:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:33:05 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:33:06 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:33:11 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:33:33 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:33:34 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:33:36 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:33:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:33:37 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8bff819be8da7f08b0be8328fcaa48e0abec441c3c1683761de440c8e7c9d5`  
		Last Modified: Thu, 22 Jun 2017 19:34:44 GMT  
		Size: 2.2 MB (2165467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cd2af29671584efbd80788c9c46e11208f6ae2e402e7a6d1dd0bc7494f9fc0`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16632414ba35020fc22d06e70ff6f58a35a3f3d627646413ea7751d1671af6ef`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3cb613839102e26d6868cfe4e95ce2fd41260121a334e0ebd7db54f5f1ce89`  
		Last Modified: Thu, 22 Jun 2017 19:34:43 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-rc1-git`

```console
$ docker pull docker@sha256:5254dd40ce2968b5982ed8f966d1e57cc98c5a85b3c8b92cc629d7f27cbff4d9
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-rc1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57ac63c1ac974f3f29eda7475f21ebfe078ca1d98dcc20368cfc636afb83e17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:34:08 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c033ecd3c4e02716f7e1391a1bfc8a24facb3f42874cebb5ffe9104c5bf500f`  
		Last Modified: Thu, 22 Jun 2017 19:36:34 GMT  
		Size: 11.0 MB (10990281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-ce-git`

```console
$ docker pull docker@sha256:5254dd40ce2968b5982ed8f966d1e57cc98c5a85b3c8b92cc629d7f27cbff4d9
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57ac63c1ac974f3f29eda7475f21ebfe078ca1d98dcc20368cfc636afb83e17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:34:08 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c033ecd3c4e02716f7e1391a1bfc8a24facb3f42874cebb5ffe9104c5bf500f`  
		Last Modified: Thu, 22 Jun 2017 19:36:34 GMT  
		Size: 11.0 MB (10990281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.2-git`

```console
$ docker pull docker@sha256:5254dd40ce2968b5982ed8f966d1e57cc98c5a85b3c8b92cc629d7f27cbff4d9
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.2-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57ac63c1ac974f3f29eda7475f21ebfe078ca1d98dcc20368cfc636afb83e17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:34:08 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c033ecd3c4e02716f7e1391a1bfc8a24facb3f42874cebb5ffe9104c5bf500f`  
		Last Modified: Thu, 22 Jun 2017 19:36:34 GMT  
		Size: 11.0 MB (10990281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-rc-git`

```console
$ docker pull docker@sha256:5254dd40ce2968b5982ed8f966d1e57cc98c5a85b3c8b92cc629d7f27cbff4d9
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57ac63c1ac974f3f29eda7475f21ebfe078ca1d98dcc20368cfc636afb83e17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:32:03 GMT
ENV DOCKER_CHANNEL=test
# Mon, 19 Jun 2017 18:32:04 GMT
ENV DOCKER_VERSION=17.03.2-ce-rc1
# Mon, 19 Jun 2017 18:32:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:32:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:32:33 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:34:08 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f4f2413d9846d100b6ed3905afa2a7c1a517d1b8c98439309adbdbc9db64e`  
		Last Modified: Thu, 22 Jun 2017 19:32:56 GMT  
		Size: 28.1 MB (28111085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d24c6f4c17565179c8d40476974a4b29ce38b50479d96fc5ff8ba8d5fcb2b`  
		Last Modified: Thu, 22 Jun 2017 19:32:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c033ecd3c4e02716f7e1391a1bfc8a24facb3f42874cebb5ffe9104c5bf500f`  
		Last Modified: Thu, 22 Jun 2017 19:36:34 GMT  
		Size: 11.0 MB (10990281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce`

```console
$ docker pull docker@sha256:30f82239bf974048a884c50211524da30e6920db308acb16c2d3bc552229aebe
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58af6b14a9cf1aa5256c38de55510cdf46837ebb1daf3406c119afb6382ad215`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1`

```console
$ docker pull docker@sha256:30f82239bf974048a884c50211524da30e6920db308acb16c2d3bc552229aebe
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58af6b14a9cf1aa5256c38de55510cdf46837ebb1daf3406c119afb6382ad215`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:30f82239bf974048a884c50211524da30e6920db308acb16c2d3bc552229aebe
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58af6b14a9cf1aa5256c38de55510cdf46837ebb1daf3406c119afb6382ad215`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:30f82239bf974048a884c50211524da30e6920db308acb16c2d3bc552229aebe
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58af6b14a9cf1aa5256c38de55510cdf46837ebb1daf3406c119afb6382ad215`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-dind`

```console
$ docker pull docker@sha256:e0d035f1b073761dac7c350c0db6d86fe94c8e78ddf56633af7eab942d1ce024
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32771463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf7e61a4cc7603891ecac195d746e0802055c0a9841c5c379fa48172e443de6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:35:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:35:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:35:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:35:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:36:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:36:08 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:36:10 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:36:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:36:11 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c47fe3089b65dc7924f724977e45a5c92411d82a21be3c449bf4f670987826`  
		Last Modified: Thu, 22 Jun 2017 19:40:14 GMT  
		Size: 2.2 MB (2165471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c877445d8d36609b30bccabfbd0c8e3648a4daf2468f8b1b85963a045bcace03`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17e9a7ee20ddb279986b27723586d17d4add4fb980cb92857f5d79a59096f59`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 175.7 KB (175674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a10ee874d894d6f016870c310ac44e0eca5a27357f77114e56bf71ba1ef90b`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-dind`

```console
$ docker pull docker@sha256:e0d035f1b073761dac7c350c0db6d86fe94c8e78ddf56633af7eab942d1ce024
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32771463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf7e61a4cc7603891ecac195d746e0802055c0a9841c5c379fa48172e443de6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:35:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:35:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:35:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:35:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:36:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:36:08 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:36:10 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:36:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:36:11 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c47fe3089b65dc7924f724977e45a5c92411d82a21be3c449bf4f670987826`  
		Last Modified: Thu, 22 Jun 2017 19:40:14 GMT  
		Size: 2.2 MB (2165471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c877445d8d36609b30bccabfbd0c8e3648a4daf2468f8b1b85963a045bcace03`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17e9a7ee20ddb279986b27723586d17d4add4fb980cb92857f5d79a59096f59`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 175.7 KB (175674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a10ee874d894d6f016870c310ac44e0eca5a27357f77114e56bf71ba1ef90b`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:e0d035f1b073761dac7c350c0db6d86fe94c8e78ddf56633af7eab942d1ce024
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32771463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf7e61a4cc7603891ecac195d746e0802055c0a9841c5c379fa48172e443de6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:35:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:35:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:35:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:35:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:36:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:36:08 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:36:10 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:36:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:36:11 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c47fe3089b65dc7924f724977e45a5c92411d82a21be3c449bf4f670987826`  
		Last Modified: Thu, 22 Jun 2017 19:40:14 GMT  
		Size: 2.2 MB (2165471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c877445d8d36609b30bccabfbd0c8e3648a4daf2468f8b1b85963a045bcace03`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17e9a7ee20ddb279986b27723586d17d4add4fb980cb92857f5d79a59096f59`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 175.7 KB (175674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a10ee874d894d6f016870c310ac44e0eca5a27357f77114e56bf71ba1ef90b`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:e0d035f1b073761dac7c350c0db6d86fe94c8e78ddf56633af7eab942d1ce024
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32771463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf7e61a4cc7603891ecac195d746e0802055c0a9841c5c379fa48172e443de6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:35:38 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:35:39 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:35:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:35:45 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:36:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:36:08 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:36:10 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:36:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:36:11 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c47fe3089b65dc7924f724977e45a5c92411d82a21be3c449bf4f670987826`  
		Last Modified: Thu, 22 Jun 2017 19:40:14 GMT  
		Size: 2.2 MB (2165471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c877445d8d36609b30bccabfbd0c8e3648a4daf2468f8b1b85963a045bcace03`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17e9a7ee20ddb279986b27723586d17d4add4fb980cb92857f5d79a59096f59`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 175.7 KB (175674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a10ee874d894d6f016870c310ac44e0eca5a27357f77114e56bf71ba1ef90b`  
		Last Modified: Thu, 22 Jun 2017 19:40:13 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-git`

```console
$ docker pull docker@sha256:ea893a9c084ccff9f09d2b89305ab00ebc29fc2ebe7c0a184f860a16849ace81
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41418727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41a2249857c0886689f804b670e0c2dac00380d8b277cb000392f633e667c90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:36:45 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1049a3fd6a3850c58a9f5da9a9626f5e1a4ddcef8be69e371f220b0086ce23ba`  
		Last Modified: Thu, 22 Jun 2017 19:42:05 GMT  
		Size: 11.0 MB (10990198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-git`

```console
$ docker pull docker@sha256:ea893a9c084ccff9f09d2b89305ab00ebc29fc2ebe7c0a184f860a16849ace81
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41418727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41a2249857c0886689f804b670e0c2dac00380d8b277cb000392f633e667c90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:36:45 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1049a3fd6a3850c58a9f5da9a9626f5e1a4ddcef8be69e371f220b0086ce23ba`  
		Last Modified: Thu, 22 Jun 2017 19:42:05 GMT  
		Size: 11.0 MB (10990198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:ea893a9c084ccff9f09d2b89305ab00ebc29fc2ebe7c0a184f860a16849ace81
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41418727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41a2249857c0886689f804b670e0c2dac00380d8b277cb000392f633e667c90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:36:45 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1049a3fd6a3850c58a9f5da9a9626f5e1a4ddcef8be69e371f220b0086ce23ba`  
		Last Modified: Thu, 22 Jun 2017 19:42:05 GMT  
		Size: 11.0 MB (10990198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:ea893a9c084ccff9f09d2b89305ab00ebc29fc2ebe7c0a184f860a16849ace81
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41418727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41a2249857c0886689f804b670e0c2dac00380d8b277cb000392f633e667c90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:34:56 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 19 Jun 2017 18:34:58 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Mon, 19 Jun 2017 18:35:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:35:06 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:35:08 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:36:45 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb3b5097ffe33aa849eaa53de34ad699fd33dcba4bcb872e80c7df4afc97f53`  
		Last Modified: Thu, 22 Jun 2017 19:38:26 GMT  
		Size: 28.1 MB (28106864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cb916625ed62160cce53248e47bd342706b3f9463cb9c677870fec21c548dc`  
		Last Modified: Thu, 22 Jun 2017 19:38:19 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1049a3fd6a3850c58a9f5da9a9626f5e1a4ddcef8be69e371f220b0086ce23ba`  
		Last Modified: Thu, 22 Jun 2017 19:42:05 GMT  
		Size: 11.0 MB (10990198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
