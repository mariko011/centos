<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.06.0-ce-rc2`](#docker17060-ce-rc2)
-	[`docker:17.06.0-ce`](#docker17060-ce)
-	[`docker:17.06.0`](#docker17060)
-	[`docker:17.06-rc`](#docker1706-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:test`](#dockertest)
-	[`docker:17.06.0-ce-rc2-dind`](#docker17060-ce-rc2-dind)
-	[`docker:17.06.0-ce-dind`](#docker17060-ce-dind)
-	[`docker:17.06.0-dind`](#docker17060-dind)
-	[`docker:17.06-rc-dind`](#docker1706-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:17.06.0-ce-rc2-git`](#docker17060-ce-rc2-git)
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

## `docker:17.06.0-ce-rc2`

```console
$ docker pull docker@sha256:cffdb2ccbfa88b64e2a4185ec825491ce66f853db0d82750f9e1b3a5d2b4c025
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32313295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a93030f5116d1dadaec65e32066326170f7a74eb3ce95deb71782cd5df13ae`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce`

```console
$ docker pull docker@sha256:cffdb2ccbfa88b64e2a4185ec825491ce66f853db0d82750f9e1b3a5d2b4c025
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32313295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a93030f5116d1dadaec65e32066326170f7a74eb3ce95deb71782cd5df13ae`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0`

```console
$ docker pull docker@sha256:cffdb2ccbfa88b64e2a4185ec825491ce66f853db0d82750f9e1b3a5d2b4c025
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32313295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a93030f5116d1dadaec65e32066326170f7a74eb3ce95deb71782cd5df13ae`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc`

```console
$ docker pull docker@sha256:cffdb2ccbfa88b64e2a4185ec825491ce66f853db0d82750f9e1b3a5d2b4c025
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32313295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a93030f5116d1dadaec65e32066326170f7a74eb3ce95deb71782cd5df13ae`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:cffdb2ccbfa88b64e2a4185ec825491ce66f853db0d82750f9e1b3a5d2b4c025
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32313295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a93030f5116d1dadaec65e32066326170f7a74eb3ce95deb71782cd5df13ae`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:cffdb2ccbfa88b64e2a4185ec825491ce66f853db0d82750f9e1b3a5d2b4c025
```

-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32313295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a93030f5116d1dadaec65e32066326170f7a74eb3ce95deb71782cd5df13ae`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc2-dind`

```console
$ docker pull docker@sha256:04f94ef19623726688fe636dd012791844b85e45bed6e98a90a8a4f0e72d16e2
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc2-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34700300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a02de618eefa7e1f296fd066d2de416bd51e4dfc5a58163243b7949e17785cb`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:11:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:12:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:12:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:12:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:12:10 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:12:10 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:12:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:12:12 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fae2d0b21751871ff92c5d3d8f15105d86b57d62cecb9d5b0ea64891b93c314`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 2.2 MB (2209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dad2c58afe75ffab7486d2975cb891425459c4474e87d01ec3a52ae49b1b2f0`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d3c9bc0e85c202c6858c4bc482d650b8e550b8a563b97c2e404802898468e1`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 176.1 KB (176137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec8b208026a28caf7913e16b789f51bfc27cfbcf6839a09327ec22742289923`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-dind`

```console
$ docker pull docker@sha256:04f94ef19623726688fe636dd012791844b85e45bed6e98a90a8a4f0e72d16e2
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34700300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a02de618eefa7e1f296fd066d2de416bd51e4dfc5a58163243b7949e17785cb`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:11:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:12:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:12:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:12:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:12:10 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:12:10 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:12:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:12:12 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fae2d0b21751871ff92c5d3d8f15105d86b57d62cecb9d5b0ea64891b93c314`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 2.2 MB (2209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dad2c58afe75ffab7486d2975cb891425459c4474e87d01ec3a52ae49b1b2f0`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d3c9bc0e85c202c6858c4bc482d650b8e550b8a563b97c2e404802898468e1`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 176.1 KB (176137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec8b208026a28caf7913e16b789f51bfc27cfbcf6839a09327ec22742289923`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-dind`

```console
$ docker pull docker@sha256:04f94ef19623726688fe636dd012791844b85e45bed6e98a90a8a4f0e72d16e2
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34700300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a02de618eefa7e1f296fd066d2de416bd51e4dfc5a58163243b7949e17785cb`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:11:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:12:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:12:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:12:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:12:10 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:12:10 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:12:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:12:12 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fae2d0b21751871ff92c5d3d8f15105d86b57d62cecb9d5b0ea64891b93c314`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 2.2 MB (2209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dad2c58afe75ffab7486d2975cb891425459c4474e87d01ec3a52ae49b1b2f0`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d3c9bc0e85c202c6858c4bc482d650b8e550b8a563b97c2e404802898468e1`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 176.1 KB (176137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec8b208026a28caf7913e16b789f51bfc27cfbcf6839a09327ec22742289923`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-dind`

```console
$ docker pull docker@sha256:04f94ef19623726688fe636dd012791844b85e45bed6e98a90a8a4f0e72d16e2
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34700300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a02de618eefa7e1f296fd066d2de416bd51e4dfc5a58163243b7949e17785cb`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:11:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:12:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:12:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:12:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:12:10 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:12:10 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:12:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:12:12 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fae2d0b21751871ff92c5d3d8f15105d86b57d62cecb9d5b0ea64891b93c314`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 2.2 MB (2209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dad2c58afe75ffab7486d2975cb891425459c4474e87d01ec3a52ae49b1b2f0`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d3c9bc0e85c202c6858c4bc482d650b8e550b8a563b97c2e404802898468e1`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 176.1 KB (176137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec8b208026a28caf7913e16b789f51bfc27cfbcf6839a09327ec22742289923`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:04f94ef19623726688fe636dd012791844b85e45bed6e98a90a8a4f0e72d16e2
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34700300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a02de618eefa7e1f296fd066d2de416bd51e4dfc5a58163243b7949e17785cb`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:11:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:12:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:12:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:12:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:12:10 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:12:10 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:12:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:12:12 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fae2d0b21751871ff92c5d3d8f15105d86b57d62cecb9d5b0ea64891b93c314`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 2.2 MB (2209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dad2c58afe75ffab7486d2975cb891425459c4474e87d01ec3a52ae49b1b2f0`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d3c9bc0e85c202c6858c4bc482d650b8e550b8a563b97c2e404802898468e1`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 176.1 KB (176137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec8b208026a28caf7913e16b789f51bfc27cfbcf6839a09327ec22742289923`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:04f94ef19623726688fe636dd012791844b85e45bed6e98a90a8a4f0e72d16e2
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34700300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a02de618eefa7e1f296fd066d2de416bd51e4dfc5a58163243b7949e17785cb`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:11:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:12:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:12:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:12:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:12:10 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:12:10 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:12:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:12:12 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fae2d0b21751871ff92c5d3d8f15105d86b57d62cecb9d5b0ea64891b93c314`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 2.2 MB (2209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dad2c58afe75ffab7486d2975cb891425459c4474e87d01ec3a52ae49b1b2f0`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d3c9bc0e85c202c6858c4bc482d650b8e550b8a563b97c2e404802898468e1`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 176.1 KB (176137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec8b208026a28caf7913e16b789f51bfc27cfbcf6839a09327ec22742289923`  
		Last Modified: Thu, 08 Jun 2017 22:29:08 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-rc2-git`

```console
$ docker pull docker@sha256:7f1e95357e77703c23766a3df78fc14c3ac371a06d7b8420cf21becdf63b0727
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-rc2-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44045969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf0a4d987e04f014d5b97f4342d3128a896a3552e3c9304e28a1de4c218172a`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:13:01 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c928023b6271b3a1f822c6e6815379c733e79145afce7e4950b456e52f83c57`  
		Last Modified: Thu, 08 Jun 2017 22:31:59 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-ce-git`

```console
$ docker pull docker@sha256:7f1e95357e77703c23766a3df78fc14c3ac371a06d7b8420cf21becdf63b0727
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-ce-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44045969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf0a4d987e04f014d5b97f4342d3128a896a3552e3c9304e28a1de4c218172a`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:13:01 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c928023b6271b3a1f822c6e6815379c733e79145afce7e4950b456e52f83c57`  
		Last Modified: Thu, 08 Jun 2017 22:31:59 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.0-git`

```console
$ docker pull docker@sha256:7f1e95357e77703c23766a3df78fc14c3ac371a06d7b8420cf21becdf63b0727
```

-	Platforms:
	-	linux; amd64

### `docker:17.06.0-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44045969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf0a4d987e04f014d5b97f4342d3128a896a3552e3c9304e28a1de4c218172a`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:13:01 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c928023b6271b3a1f822c6e6815379c733e79145afce7e4950b456e52f83c57`  
		Last Modified: Thu, 08 Jun 2017 22:31:59 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-rc-git`

```console
$ docker pull docker@sha256:7f1e95357e77703c23766a3df78fc14c3ac371a06d7b8420cf21becdf63b0727
```

-	Platforms:
	-	linux; amd64

### `docker:17.06-rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44045969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf0a4d987e04f014d5b97f4342d3128a896a3552e3c9304e28a1de4c218172a`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:13:01 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c928023b6271b3a1f822c6e6815379c733e79145afce7e4950b456e52f83c57`  
		Last Modified: Thu, 08 Jun 2017 22:31:59 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:7f1e95357e77703c23766a3df78fc14c3ac371a06d7b8420cf21becdf63b0727
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44045969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf0a4d987e04f014d5b97f4342d3128a896a3552e3c9304e28a1de4c218172a`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:13:01 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c928023b6271b3a1f822c6e6815379c733e79145afce7e4950b456e52f83c57`  
		Last Modified: Thu, 08 Jun 2017 22:31:59 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:7f1e95357e77703c23766a3df78fc14c3ac371a06d7b8420cf21becdf63b0727
```

-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44045969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf0a4d987e04f014d5b97f4342d3128a896a3552e3c9304e28a1de4c218172a`
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
# Thu, 08 Jun 2017 22:10:23 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc2
# Thu, 08 Jun 2017 22:10:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 08 Jun 2017 22:10:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:10:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:10:50 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:13:01 GMT
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
	-	`sha256:89164e5b7580267cf99263ad67599d0cc784a41d70e5b94ddbcc41e2b19dbb83`  
		Last Modified: Thu, 08 Jun 2017 22:26:42 GMT  
		Size: 30.0 MB (29971426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e263ea203bb69fc618545d0cf8c3752d987a049403bc1b31ddc837811502a81`  
		Last Modified: Thu, 08 Jun 2017 22:26:33 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c928023b6271b3a1f822c6e6815379c733e79145afce7e4950b456e52f83c57`  
		Last Modified: Thu, 08 Jun 2017 22:31:59 GMT  
		Size: 11.7 MB (11732674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:b46a30e74dc411e1d77d23e71525dce1e4104ba4fa64b84aab66708e054245a5
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77b805db4d11d823e2be6bd1602627918abc20acc6e57708b20bd0781c51246`
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

## `docker:17.05.0`

```console
$ docker pull docker@sha256:b46a30e74dc411e1d77d23e71525dce1e4104ba4fa64b84aab66708e054245a5
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77b805db4d11d823e2be6bd1602627918abc20acc6e57708b20bd0781c51246`
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

## `docker:17.05`

```console
$ docker pull docker@sha256:b46a30e74dc411e1d77d23e71525dce1e4104ba4fa64b84aab66708e054245a5
```

-	Platforms:
	-	linux; amd64

### `docker:17.05` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77b805db4d11d823e2be6bd1602627918abc20acc6e57708b20bd0781c51246`
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

## `docker:17`

```console
$ docker pull docker@sha256:b46a30e74dc411e1d77d23e71525dce1e4104ba4fa64b84aab66708e054245a5
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77b805db4d11d823e2be6bd1602627918abc20acc6e57708b20bd0781c51246`
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

## `docker:latest`

```console
$ docker pull docker@sha256:b46a30e74dc411e1d77d23e71525dce1e4104ba4fa64b84aab66708e054245a5
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77b805db4d11d823e2be6bd1602627918abc20acc6e57708b20bd0781c51246`
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

## `docker:edge`

```console
$ docker pull docker@sha256:b46a30e74dc411e1d77d23e71525dce1e4104ba4fa64b84aab66708e054245a5
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31072674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77b805db4d11d823e2be6bd1602627918abc20acc6e57708b20bd0781c51246`
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

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:8d9be92c4fb44f0963e7a361ab9d3d7df61965906f2291171b87c856aac76ee8
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547d892dffa2e118eb2dc906dcdb0b30a00273f28f298364b91516c2966c2ee`
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
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:15:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:15:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:15:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:15:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:15:50 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:15:51 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:15:52 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:15:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:15:54 GMT
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
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f55b014b778e086042b1242e86b7c71b07b0d98423f006e4cd78f5bf631cb`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 2.2 MB (2165475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17fcaf6664e8dc002a1e7c33088ec93c658ef2c9eeb7353dd6b26d26903e8e`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f957d2bdf73b0b2f19d20808389f7a3ff6190844c6a8bd79297a59b35330a50`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 175.7 KB (175682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512094e5bcc89fc47d14bac385b67ab49b0b1398abe9a2ee31a5c4955f9762a`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:8d9be92c4fb44f0963e7a361ab9d3d7df61965906f2291171b87c856aac76ee8
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547d892dffa2e118eb2dc906dcdb0b30a00273f28f298364b91516c2966c2ee`
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
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:15:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:15:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:15:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:15:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:15:50 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:15:51 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:15:52 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:15:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:15:54 GMT
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
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f55b014b778e086042b1242e86b7c71b07b0d98423f006e4cd78f5bf631cb`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 2.2 MB (2165475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17fcaf6664e8dc002a1e7c33088ec93c658ef2c9eeb7353dd6b26d26903e8e`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f957d2bdf73b0b2f19d20808389f7a3ff6190844c6a8bd79297a59b35330a50`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 175.7 KB (175682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512094e5bcc89fc47d14bac385b67ab49b0b1398abe9a2ee31a5c4955f9762a`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-dind`

```console
$ docker pull docker@sha256:8d9be92c4fb44f0963e7a361ab9d3d7df61965906f2291171b87c856aac76ee8
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547d892dffa2e118eb2dc906dcdb0b30a00273f28f298364b91516c2966c2ee`
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
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:15:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:15:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:15:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:15:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:15:50 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:15:51 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:15:52 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:15:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:15:54 GMT
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
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f55b014b778e086042b1242e86b7c71b07b0d98423f006e4cd78f5bf631cb`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 2.2 MB (2165475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17fcaf6664e8dc002a1e7c33088ec93c658ef2c9eeb7353dd6b26d26903e8e`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f957d2bdf73b0b2f19d20808389f7a3ff6190844c6a8bd79297a59b35330a50`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 175.7 KB (175682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512094e5bcc89fc47d14bac385b67ab49b0b1398abe9a2ee31a5c4955f9762a`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:8d9be92c4fb44f0963e7a361ab9d3d7df61965906f2291171b87c856aac76ee8
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547d892dffa2e118eb2dc906dcdb0b30a00273f28f298364b91516c2966c2ee`
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
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:15:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:15:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:15:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:15:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:15:50 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:15:51 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:15:52 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:15:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:15:54 GMT
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
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f55b014b778e086042b1242e86b7c71b07b0d98423f006e4cd78f5bf631cb`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 2.2 MB (2165475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17fcaf6664e8dc002a1e7c33088ec93c658ef2c9eeb7353dd6b26d26903e8e`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f957d2bdf73b0b2f19d20808389f7a3ff6190844c6a8bd79297a59b35330a50`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 175.7 KB (175682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512094e5bcc89fc47d14bac385b67ab49b0b1398abe9a2ee31a5c4955f9762a`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:8d9be92c4fb44f0963e7a361ab9d3d7df61965906f2291171b87c856aac76ee8
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547d892dffa2e118eb2dc906dcdb0b30a00273f28f298364b91516c2966c2ee`
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
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:15:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:15:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:15:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:15:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:15:50 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:15:51 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:15:52 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:15:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:15:54 GMT
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
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f55b014b778e086042b1242e86b7c71b07b0d98423f006e4cd78f5bf631cb`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 2.2 MB (2165475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17fcaf6664e8dc002a1e7c33088ec93c658ef2c9eeb7353dd6b26d26903e8e`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f957d2bdf73b0b2f19d20808389f7a3ff6190844c6a8bd79297a59b35330a50`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 175.7 KB (175682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512094e5bcc89fc47d14bac385b67ab49b0b1398abe9a2ee31a5c4955f9762a`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:8d9be92c4fb44f0963e7a361ab9d3d7df61965906f2291171b87c856aac76ee8
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33415623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547d892dffa2e118eb2dc906dcdb0b30a00273f28f298364b91516c2966c2ee`
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
# Thu, 08 Jun 2017 22:14:32 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:14:33 GMT
CMD ["sh"]
# Thu, 08 Jun 2017 22:15:22 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 08 Jun 2017 22:15:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 08 Jun 2017 22:15:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 08 Jun 2017 22:15:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 08 Jun 2017 22:15:50 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 08 Jun 2017 22:15:51 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Jun 2017 22:15:52 GMT
EXPOSE 2375/tcp
# Thu, 08 Jun 2017 22:15:53 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Jun 2017 22:15:54 GMT
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
	-	`sha256:895645433ae13735c1f1e0f7ebd2a317987bd484a92bfe77d1fb1f54f9da2122`  
		Last Modified: Thu, 08 Jun 2017 22:34:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f55b014b778e086042b1242e86b7c71b07b0d98423f006e4cd78f5bf631cb`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 2.2 MB (2165475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17fcaf6664e8dc002a1e7c33088ec93c658ef2c9eeb7353dd6b26d26903e8e`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f957d2bdf73b0b2f19d20808389f7a3ff6190844c6a8bd79297a59b35330a50`  
		Last Modified: Thu, 08 Jun 2017 22:37:19 GMT  
		Size: 175.7 KB (175682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3512094e5bcc89fc47d14bac385b67ab49b0b1398abe9a2ee31a5c4955f9762a`  
		Last Modified: Thu, 08 Jun 2017 22:37:18 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:1f60f849f961673889b695080ba310195ab110565a177697d7eb2f9ceec94d7c
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

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

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:1f60f849f961673889b695080ba310195ab110565a177697d7eb2f9ceec94d7c
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

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
