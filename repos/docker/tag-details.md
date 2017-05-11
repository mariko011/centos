<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

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

## `docker:17.05.0-ce`

```console
$ docker pull docker@sha256:da22b37a64e68f7b2199ba619f61e0b82f95d6fa4ed812b2d6c19e486d933ed0
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32975109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b042df11cab81ad18b1059d9c3b13e6dfe2d65121fac8a22f5a7d95619db277e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0`

```console
$ docker pull docker@sha256:da22b37a64e68f7b2199ba619f61e0b82f95d6fa4ed812b2d6c19e486d933ed0
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32975109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b042df11cab81ad18b1059d9c3b13e6dfe2d65121fac8a22f5a7d95619db277e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05`

```console
$ docker pull docker@sha256:da22b37a64e68f7b2199ba619f61e0b82f95d6fa4ed812b2d6c19e486d933ed0
```

-	Platforms:
	-	linux; amd64

### `docker:17.05` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32975109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b042df11cab81ad18b1059d9c3b13e6dfe2d65121fac8a22f5a7d95619db277e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:da22b37a64e68f7b2199ba619f61e0b82f95d6fa4ed812b2d6c19e486d933ed0
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32975109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b042df11cab81ad18b1059d9c3b13e6dfe2d65121fac8a22f5a7d95619db277e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:da22b37a64e68f7b2199ba619f61e0b82f95d6fa4ed812b2d6c19e486d933ed0
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32975109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b042df11cab81ad18b1059d9c3b13e6dfe2d65121fac8a22f5a7d95619db277e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge`

```console
$ docker pull docker@sha256:da22b37a64e68f7b2199ba619f61e0b82f95d6fa4ed812b2d6c19e486d933ed0
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (32975109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b042df11cab81ad18b1059d9c3b13e6dfe2d65121fac8a22f5a7d95619db277e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-dind`

```console
$ docker pull docker@sha256:a2393c959a0e51c948ed7b4b2ea11ebdd2396e0308729510b9fea9e5c5739b27
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35144738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dbe701a34d68791990284b52ae545c86bc685720321d1901d28e826b906556`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:17:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:17:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:17:16 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:17:17 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:17:18 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:17:19 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:17:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:17:20 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca4ecd852c23b5828218c1112b7ed165c0a9350aa4b52a40e6a4c78a5be219f`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 2.2 MB (2166023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213fa544deeb868475a8187428b0f1906e7794b6195cf32b4ad757787462857e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a2d6387ea8a4b77f6ce450d95519efe06d28f0a84daf9454c221ca8c19390e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fecec2c939ebdeccc6378d0860adba4818f1ad895eef0e1b1bec8913773babb`  
		Last Modified: Thu, 11 May 2017 15:12:27 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-dind`

```console
$ docker pull docker@sha256:a2393c959a0e51c948ed7b4b2ea11ebdd2396e0308729510b9fea9e5c5739b27
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35144738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dbe701a34d68791990284b52ae545c86bc685720321d1901d28e826b906556`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:17:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:17:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:17:16 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:17:17 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:17:18 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:17:19 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:17:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:17:20 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca4ecd852c23b5828218c1112b7ed165c0a9350aa4b52a40e6a4c78a5be219f`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 2.2 MB (2166023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213fa544deeb868475a8187428b0f1906e7794b6195cf32b4ad757787462857e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a2d6387ea8a4b77f6ce450d95519efe06d28f0a84daf9454c221ca8c19390e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fecec2c939ebdeccc6378d0860adba4818f1ad895eef0e1b1bec8913773babb`  
		Last Modified: Thu, 11 May 2017 15:12:27 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-dind`

```console
$ docker pull docker@sha256:a2393c959a0e51c948ed7b4b2ea11ebdd2396e0308729510b9fea9e5c5739b27
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35144738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dbe701a34d68791990284b52ae545c86bc685720321d1901d28e826b906556`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:17:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:17:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:17:16 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:17:17 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:17:18 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:17:19 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:17:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:17:20 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca4ecd852c23b5828218c1112b7ed165c0a9350aa4b52a40e6a4c78a5be219f`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 2.2 MB (2166023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213fa544deeb868475a8187428b0f1906e7794b6195cf32b4ad757787462857e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a2d6387ea8a4b77f6ce450d95519efe06d28f0a84daf9454c221ca8c19390e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fecec2c939ebdeccc6378d0860adba4818f1ad895eef0e1b1bec8913773babb`  
		Last Modified: Thu, 11 May 2017 15:12:27 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:a2393c959a0e51c948ed7b4b2ea11ebdd2396e0308729510b9fea9e5c5739b27
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35144738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dbe701a34d68791990284b52ae545c86bc685720321d1901d28e826b906556`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:17:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:17:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:17:16 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:17:17 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:17:18 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:17:19 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:17:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:17:20 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca4ecd852c23b5828218c1112b7ed165c0a9350aa4b52a40e6a4c78a5be219f`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 2.2 MB (2166023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213fa544deeb868475a8187428b0f1906e7794b6195cf32b4ad757787462857e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a2d6387ea8a4b77f6ce450d95519efe06d28f0a84daf9454c221ca8c19390e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fecec2c939ebdeccc6378d0860adba4818f1ad895eef0e1b1bec8913773babb`  
		Last Modified: Thu, 11 May 2017 15:12:27 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:a2393c959a0e51c948ed7b4b2ea11ebdd2396e0308729510b9fea9e5c5739b27
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35144738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dbe701a34d68791990284b52ae545c86bc685720321d1901d28e826b906556`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:17:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:17:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:17:16 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:17:17 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:17:18 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:17:19 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:17:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:17:20 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca4ecd852c23b5828218c1112b7ed165c0a9350aa4b52a40e6a4c78a5be219f`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 2.2 MB (2166023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213fa544deeb868475a8187428b0f1906e7794b6195cf32b4ad757787462857e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a2d6387ea8a4b77f6ce450d95519efe06d28f0a84daf9454c221ca8c19390e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fecec2c939ebdeccc6378d0860adba4818f1ad895eef0e1b1bec8913773babb`  
		Last Modified: Thu, 11 May 2017 15:12:27 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-dind`

```console
$ docker pull docker@sha256:a2393c959a0e51c948ed7b4b2ea11ebdd2396e0308729510b9fea9e5c5739b27
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35144738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dbe701a34d68791990284b52ae545c86bc685720321d1901d28e826b906556`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:17:14 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:17:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:17:16 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:17:17 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:17:18 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:17:19 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:17:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:17:20 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca4ecd852c23b5828218c1112b7ed165c0a9350aa4b52a40e6a4c78a5be219f`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 2.2 MB (2166023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213fa544deeb868475a8187428b0f1906e7794b6195cf32b4ad757787462857e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a2d6387ea8a4b77f6ce450d95519efe06d28f0a84daf9454c221ca8c19390e`  
		Last Modified: Thu, 11 May 2017 15:12:26 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fecec2c939ebdeccc6378d0860adba4818f1ad895eef0e1b1bec8913773babb`  
		Last Modified: Thu, 11 May 2017 15:12:27 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-ce-git`

```console
$ docker pull docker@sha256:1af012a5b9f3dc3cc450c90a8598b4b5514be3965f4b7c9f61cb505f20a548ba
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-ce-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43697495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdd608bf29b933043d9428a67954d3dc03d007c7633487a44a95bbf94ddc5f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded09a6457c94ed395c6ef65b95e373b78df89042b086ba92015946649cb71a0`  
		Last Modified: Thu, 11 May 2017 15:14:40 GMT  
		Size: 10.7 MB (10722386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05.0-git`

```console
$ docker pull docker@sha256:1af012a5b9f3dc3cc450c90a8598b4b5514be3965f4b7c9f61cb505f20a548ba
```

-	Platforms:
	-	linux; amd64

### `docker:17.05.0-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43697495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdd608bf29b933043d9428a67954d3dc03d007c7633487a44a95bbf94ddc5f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded09a6457c94ed395c6ef65b95e373b78df89042b086ba92015946649cb71a0`  
		Last Modified: Thu, 11 May 2017 15:14:40 GMT  
		Size: 10.7 MB (10722386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.05-git`

```console
$ docker pull docker@sha256:1af012a5b9f3dc3cc450c90a8598b4b5514be3965f4b7c9f61cb505f20a548ba
```

-	Platforms:
	-	linux; amd64

### `docker:17.05-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43697495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdd608bf29b933043d9428a67954d3dc03d007c7633487a44a95bbf94ddc5f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded09a6457c94ed395c6ef65b95e373b78df89042b086ba92015946649cb71a0`  
		Last Modified: Thu, 11 May 2017 15:14:40 GMT  
		Size: 10.7 MB (10722386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:1af012a5b9f3dc3cc450c90a8598b4b5514be3965f4b7c9f61cb505f20a548ba
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43697495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdd608bf29b933043d9428a67954d3dc03d007c7633487a44a95bbf94ddc5f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded09a6457c94ed395c6ef65b95e373b78df89042b086ba92015946649cb71a0`  
		Last Modified: Thu, 11 May 2017 15:14:40 GMT  
		Size: 10.7 MB (10722386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:1af012a5b9f3dc3cc450c90a8598b4b5514be3965f4b7c9f61cb505f20a548ba
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43697495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdd608bf29b933043d9428a67954d3dc03d007c7633487a44a95bbf94ddc5f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded09a6457c94ed395c6ef65b95e373b78df89042b086ba92015946649cb71a0`  
		Last Modified: Thu, 11 May 2017 15:14:40 GMT  
		Size: 10.7 MB (10722386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:edge-git`

```console
$ docker pull docker@sha256:1af012a5b9f3dc3cc450c90a8598b4b5514be3965f4b7c9f61cb505f20a548ba
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43697495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdd608bf29b933043d9428a67954d3dc03d007c7633487a44a95bbf94ddc5f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded09a6457c94ed395c6ef65b95e373b78df89042b086ba92015946649cb71a0`  
		Last Modified: Thu, 11 May 2017 15:14:40 GMT  
		Size: 10.7 MB (10722386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce`

```console
$ docker pull docker@sha256:9ed264496f81fc5f7af0f73a78ea70806a0003ded88d961b0b6edbea2abe8215
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463af34c55be528f17cb0f149580f5dff7f834fcba13c582dbbc24a831e6d092`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1`

```console
$ docker pull docker@sha256:9ed264496f81fc5f7af0f73a78ea70806a0003ded88d961b0b6edbea2abe8215
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463af34c55be528f17cb0f149580f5dff7f834fcba13c582dbbc24a831e6d092`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:9ed264496f81fc5f7af0f73a78ea70806a0003ded88d961b0b6edbea2abe8215
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463af34c55be528f17cb0f149580f5dff7f834fcba13c582dbbc24a831e6d092`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:9ed264496f81fc5f7af0f73a78ea70806a0003ded88d961b0b6edbea2abe8215
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32327334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463af34c55be528f17cb0f149580f5dff7f834fcba13c582dbbc24a831e6d092`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-dind`

```console
$ docker pull docker@sha256:23f42a3d5db9682304f7176cacb2cd64de08f3ade62f73da9a427f63c20a53d9
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34496979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced3847c5d59f041e2945855c4bc55ae659916d35106ea1026b56a6e0e44c865`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:18:31 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:18:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:18:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:18:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:18:36 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:37 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:18:38 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:18:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:18:39 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517ec3b62417dcd2000a35ee8392f4913f0ef7e50c06cb59c06c202362db321d`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 2.2 MB (2166039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2752409ea3f3bcab3f108e793b2f326ca684fc72902e4e92df0b31e8be13f64`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ac27555f02f7a29628023a6ce96b5dc02913d7309616c83dab5bf8f62da519`  
		Last Modified: Thu, 11 May 2017 15:07:02 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b75cec3f09e61b92d1e0fe062621fb0d9178ff8e562cb0e9c05378c346dde7`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-dind`

```console
$ docker pull docker@sha256:23f42a3d5db9682304f7176cacb2cd64de08f3ade62f73da9a427f63c20a53d9
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34496979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced3847c5d59f041e2945855c4bc55ae659916d35106ea1026b56a6e0e44c865`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:18:31 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:18:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:18:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:18:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:18:36 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:37 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:18:38 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:18:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:18:39 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517ec3b62417dcd2000a35ee8392f4913f0ef7e50c06cb59c06c202362db321d`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 2.2 MB (2166039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2752409ea3f3bcab3f108e793b2f326ca684fc72902e4e92df0b31e8be13f64`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ac27555f02f7a29628023a6ce96b5dc02913d7309616c83dab5bf8f62da519`  
		Last Modified: Thu, 11 May 2017 15:07:02 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b75cec3f09e61b92d1e0fe062621fb0d9178ff8e562cb0e9c05378c346dde7`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:23f42a3d5db9682304f7176cacb2cd64de08f3ade62f73da9a427f63c20a53d9
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34496979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced3847c5d59f041e2945855c4bc55ae659916d35106ea1026b56a6e0e44c865`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:18:31 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:18:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:18:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:18:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:18:36 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:37 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:18:38 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:18:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:18:39 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517ec3b62417dcd2000a35ee8392f4913f0ef7e50c06cb59c06c202362db321d`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 2.2 MB (2166039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2752409ea3f3bcab3f108e793b2f326ca684fc72902e4e92df0b31e8be13f64`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ac27555f02f7a29628023a6ce96b5dc02913d7309616c83dab5bf8f62da519`  
		Last Modified: Thu, 11 May 2017 15:07:02 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b75cec3f09e61b92d1e0fe062621fb0d9178ff8e562cb0e9c05378c346dde7`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:23f42a3d5db9682304f7176cacb2cd64de08f3ade62f73da9a427f63c20a53d9
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34496979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced3847c5d59f041e2945855c4bc55ae659916d35106ea1026b56a6e0e44c865`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:18:31 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 10 May 2017 21:18:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 May 2017 21:18:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 May 2017 21:18:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 10 May 2017 21:18:36 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:37 GMT
VOLUME [/var/lib/docker]
# Wed, 10 May 2017 21:18:38 GMT
EXPOSE 2375/tcp
# Wed, 10 May 2017 21:18:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 May 2017 21:18:39 GMT
CMD []
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517ec3b62417dcd2000a35ee8392f4913f0ef7e50c06cb59c06c202362db321d`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 2.2 MB (2166039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2752409ea3f3bcab3f108e793b2f326ca684fc72902e4e92df0b31e8be13f64`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ac27555f02f7a29628023a6ce96b5dc02913d7309616c83dab5bf8f62da519`  
		Last Modified: Thu, 11 May 2017 15:07:02 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b75cec3f09e61b92d1e0fe062621fb0d9178ff8e562cb0e9c05378c346dde7`  
		Last Modified: Thu, 11 May 2017 15:07:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-git`

```console
$ docker pull docker@sha256:c7417e3d62e5cce5e9a597e1acea5376a56fafe58b56dee4b02e797136fa19de
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43049723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54bf3d3700b3b1214b4a4142f81a1e9cc52eccecdab5eb20dd4222af38399592`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:19:01 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be0a8cb5ef2999745b5b6c0063fd02731a6c461dccb8d126294088b84a5008c`  
		Last Modified: Thu, 11 May 2017 15:08:36 GMT  
		Size: 10.7 MB (10722389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-git`

```console
$ docker pull docker@sha256:c7417e3d62e5cce5e9a597e1acea5376a56fafe58b56dee4b02e797136fa19de
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43049723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54bf3d3700b3b1214b4a4142f81a1e9cc52eccecdab5eb20dd4222af38399592`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:19:01 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be0a8cb5ef2999745b5b6c0063fd02731a6c461dccb8d126294088b84a5008c`  
		Last Modified: Thu, 11 May 2017 15:08:36 GMT  
		Size: 10.7 MB (10722389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:c7417e3d62e5cce5e9a597e1acea5376a56fafe58b56dee4b02e797136fa19de
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43049723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54bf3d3700b3b1214b4a4142f81a1e9cc52eccecdab5eb20dd4222af38399592`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:19:01 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be0a8cb5ef2999745b5b6c0063fd02731a6c461dccb8d126294088b84a5008c`  
		Last Modified: Thu, 11 May 2017 15:08:36 GMT  
		Size: 10.7 MB (10722389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:c7417e3d62e5cce5e9a597e1acea5376a56fafe58b56dee4b02e797136fa19de
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43049723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54bf3d3700b3b1214b4a4142f81a1e9cc52eccecdab5eb20dd4222af38399592`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:18:02 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 10 May 2017 21:18:03 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 10 May 2017 21:18:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:18:08 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:18:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:18:10 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:19:01 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424dd02b8bec11047146589aa32a9b200d6779f370e0b2129b2f1f040edf449`  
		Last Modified: Thu, 11 May 2017 15:05:30 GMT  
		Size: 28.1 MB (28136283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b67ced3def5814025445301104af62c1bfed13d276d409794c2b6b20ef778d`  
		Last Modified: Thu, 11 May 2017 15:05:23 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be0a8cb5ef2999745b5b6c0063fd02731a6c461dccb8d126294088b84a5008c`  
		Last Modified: Thu, 11 May 2017 15:08:36 GMT  
		Size: 10.7 MB (10722389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
