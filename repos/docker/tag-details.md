<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.12.1`](#docker1121)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.1-dind`](#docker1121-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.1-git`](#docker1121-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.1-experimental`](#docker1121-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1-experimental`](#docker1-experimental)
-	[`docker:experimental`](#dockerexperimental)
-	[`docker:1.12.1-experimental-dind`](#docker1121-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1-experimental-dind`](#docker1-experimental-dind)
-	[`docker:experimental-dind`](#dockerexperimental-dind)
-	[`docker:1.12.1-experimental-git`](#docker1121-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)
-	[`docker:1-experimental-git`](#docker1-experimental-git)
-	[`docker:experimental-git`](#dockerexperimental-git)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.12.1`

```console
$ docker pull docker@sha256:e53a1ec1dbd234bb2ae950c527ab63ce4716fe028ce65e7acce180a453fe614c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31936817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5758cb83d2511ae094b0269af5a4acebe5d5b6e352d29f6e80467dafec3a76c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:e53a1ec1dbd234bb2ae950c527ab63ce4716fe028ce65e7acce180a453fe614c
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31936817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5758cb83d2511ae094b0269af5a4acebe5d5b6e352d29f6e80467dafec3a76c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:e53a1ec1dbd234bb2ae950c527ab63ce4716fe028ce65e7acce180a453fe614c
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31936817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5758cb83d2511ae094b0269af5a4acebe5d5b6e352d29f6e80467dafec3a76c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:e53a1ec1dbd234bb2ae950c527ab63ce4716fe028ce65e7acce180a453fe614c
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31936817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5758cb83d2511ae094b0269af5a4acebe5d5b6e352d29f6e80467dafec3a76c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-dind`

```console
$ docker pull docker@sha256:02b2ec536a7e19e577d7007e4c35ee80801dd566efc2f58663356d0bfba3630d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34005420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c57cf92e840fd8b4c17a50559e9cd775c07c36949cab49b1b351c56bffcd82`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:50:09 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:50:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:50:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:50:11 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:50:11 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:50:11 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:50:11 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:50:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:50:12 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f2633dc37bffcf0733c414544a72c97630d74a4db68f57f0dfc085f5dff64`  
		Last Modified: Mon, 19 Sep 2016 23:50:19 GMT  
		Size: 2.1 MB (2065030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae80043037e3c8a79aebc6ccf7032b5e4d4419cb66157d2db88f945a6258f361`  
		Last Modified: Mon, 19 Sep 2016 23:50:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2fbc197dfddf30b96f457ff36a320d77f8949a02d6f9bae573af1cadf36b52`  
		Last Modified: Mon, 19 Sep 2016 23:50:19 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4963126818cad9ef5f0c359c51501d056fa0d8f4b2ca0890f6ce30104101972`  
		Last Modified: Mon, 19 Sep 2016 23:50:18 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:02b2ec536a7e19e577d7007e4c35ee80801dd566efc2f58663356d0bfba3630d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34005420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c57cf92e840fd8b4c17a50559e9cd775c07c36949cab49b1b351c56bffcd82`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:50:09 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:50:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:50:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:50:11 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:50:11 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:50:11 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:50:11 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:50:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:50:12 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f2633dc37bffcf0733c414544a72c97630d74a4db68f57f0dfc085f5dff64`  
		Last Modified: Mon, 19 Sep 2016 23:50:19 GMT  
		Size: 2.1 MB (2065030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae80043037e3c8a79aebc6ccf7032b5e4d4419cb66157d2db88f945a6258f361`  
		Last Modified: Mon, 19 Sep 2016 23:50:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2fbc197dfddf30b96f457ff36a320d77f8949a02d6f9bae573af1cadf36b52`  
		Last Modified: Mon, 19 Sep 2016 23:50:19 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4963126818cad9ef5f0c359c51501d056fa0d8f4b2ca0890f6ce30104101972`  
		Last Modified: Mon, 19 Sep 2016 23:50:18 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:02b2ec536a7e19e577d7007e4c35ee80801dd566efc2f58663356d0bfba3630d
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34005420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c57cf92e840fd8b4c17a50559e9cd775c07c36949cab49b1b351c56bffcd82`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:50:09 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:50:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:50:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:50:11 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:50:11 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:50:11 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:50:11 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:50:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:50:12 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f2633dc37bffcf0733c414544a72c97630d74a4db68f57f0dfc085f5dff64`  
		Last Modified: Mon, 19 Sep 2016 23:50:19 GMT  
		Size: 2.1 MB (2065030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae80043037e3c8a79aebc6ccf7032b5e4d4419cb66157d2db88f945a6258f361`  
		Last Modified: Mon, 19 Sep 2016 23:50:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2fbc197dfddf30b96f457ff36a320d77f8949a02d6f9bae573af1cadf36b52`  
		Last Modified: Mon, 19 Sep 2016 23:50:19 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4963126818cad9ef5f0c359c51501d056fa0d8f4b2ca0890f6ce30104101972`  
		Last Modified: Mon, 19 Sep 2016 23:50:18 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:02b2ec536a7e19e577d7007e4c35ee80801dd566efc2f58663356d0bfba3630d
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34005420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c57cf92e840fd8b4c17a50559e9cd775c07c36949cab49b1b351c56bffcd82`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:50:09 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:50:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:50:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:50:11 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:50:11 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:50:11 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:50:11 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:50:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:50:12 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f2633dc37bffcf0733c414544a72c97630d74a4db68f57f0dfc085f5dff64`  
		Last Modified: Mon, 19 Sep 2016 23:50:19 GMT  
		Size: 2.1 MB (2065030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae80043037e3c8a79aebc6ccf7032b5e4d4419cb66157d2db88f945a6258f361`  
		Last Modified: Mon, 19 Sep 2016 23:50:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2fbc197dfddf30b96f457ff36a320d77f8949a02d6f9bae573af1cadf36b52`  
		Last Modified: Mon, 19 Sep 2016 23:50:19 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4963126818cad9ef5f0c359c51501d056fa0d8f4b2ca0890f6ce30104101972`  
		Last Modified: Mon, 19 Sep 2016 23:50:18 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-git`

```console
$ docker pull docker@sha256:f2c966851de98a8dc3bde99c5772c53dccd848b375fcba63930a5497cb6de13e
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41075374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4503ff708f4947c6d013062987752f103be2aff7d67384f95c38f7c07d2e737e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:50:55 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203abb9aa37f8a08f27f92c180432124cbf2b4e0f8f82ce218fba9cd1161f1b4`  
		Last Modified: Mon, 19 Sep 2016 23:51:07 GMT  
		Size: 9.1 MB (9138557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:f2c966851de98a8dc3bde99c5772c53dccd848b375fcba63930a5497cb6de13e
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41075374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4503ff708f4947c6d013062987752f103be2aff7d67384f95c38f7c07d2e737e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:50:55 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203abb9aa37f8a08f27f92c180432124cbf2b4e0f8f82ce218fba9cd1161f1b4`  
		Last Modified: Mon, 19 Sep 2016 23:51:07 GMT  
		Size: 9.1 MB (9138557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:f2c966851de98a8dc3bde99c5772c53dccd848b375fcba63930a5497cb6de13e
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41075374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4503ff708f4947c6d013062987752f103be2aff7d67384f95c38f7c07d2e737e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:50:55 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203abb9aa37f8a08f27f92c180432124cbf2b4e0f8f82ce218fba9cd1161f1b4`  
		Last Modified: Mon, 19 Sep 2016 23:51:07 GMT  
		Size: 9.1 MB (9138557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:f2c966851de98a8dc3bde99c5772c53dccd848b375fcba63930a5497cb6de13e
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41075374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4503ff708f4947c6d013062987752f103be2aff7d67384f95c38f7c07d2e737e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:50:55 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203abb9aa37f8a08f27f92c180432124cbf2b4e0f8f82ce218fba9cd1161f1b4`  
		Last Modified: Mon, 19 Sep 2016 23:51:07 GMT  
		Size: 9.1 MB (9138557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-experimental`

```console
$ docker pull docker@sha256:ef4d3bc59fb4d1e3a81256703e48c80ecf3be6b05a8bfb0b604b64b274f34548
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32072705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dd1483737ba52bcee5c2d563630cf10e47e0b4320433b22f690dd17e23293c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:ef4d3bc59fb4d1e3a81256703e48c80ecf3be6b05a8bfb0b604b64b274f34548
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32072705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dd1483737ba52bcee5c2d563630cf10e47e0b4320433b22f690dd17e23293c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:ef4d3bc59fb4d1e3a81256703e48c80ecf3be6b05a8bfb0b604b64b274f34548
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32072705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dd1483737ba52bcee5c2d563630cf10e47e0b4320433b22f690dd17e23293c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:ef4d3bc59fb4d1e3a81256703e48c80ecf3be6b05a8bfb0b604b64b274f34548
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32072705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dd1483737ba52bcee5c2d563630cf10e47e0b4320433b22f690dd17e23293c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-experimental-dind`

```console
$ docker pull docker@sha256:26ffdcc536b70ac786b6c9766580da6f0986e774036c0cc93905335bb00794ba
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34141291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d29f3e6213573adc6d3873df6630c68cde10a859a6f09c48117d06d851e26e2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:52:50 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:52:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:52:51 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:52:52 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:52:53 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:52:53 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:52:53 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:52:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:52:54 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1531dae0ec77e085a287d2c8c9a3664e22e4c65dd7e3e8bad1e45e1cbac5a359`  
		Last Modified: Mon, 19 Sep 2016 23:53:03 GMT  
		Size: 2.1 MB (2065010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b0c427ff88b2e091165ca6031861d0e505eeaf903d0250facbb0d9d0e9a5b3`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f79d27ca9d67a83c28712105565fd0cbffebafb1af6616c0593a8a16dce075c`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56b5cb1f88042fb36d70ff006cb7a9d2c194aaf6eb04064e8f6be9dae36bc87`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:26ffdcc536b70ac786b6c9766580da6f0986e774036c0cc93905335bb00794ba
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34141291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d29f3e6213573adc6d3873df6630c68cde10a859a6f09c48117d06d851e26e2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:52:50 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:52:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:52:51 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:52:52 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:52:53 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:52:53 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:52:53 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:52:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:52:54 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1531dae0ec77e085a287d2c8c9a3664e22e4c65dd7e3e8bad1e45e1cbac5a359`  
		Last Modified: Mon, 19 Sep 2016 23:53:03 GMT  
		Size: 2.1 MB (2065010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b0c427ff88b2e091165ca6031861d0e505eeaf903d0250facbb0d9d0e9a5b3`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f79d27ca9d67a83c28712105565fd0cbffebafb1af6616c0593a8a16dce075c`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56b5cb1f88042fb36d70ff006cb7a9d2c194aaf6eb04064e8f6be9dae36bc87`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:26ffdcc536b70ac786b6c9766580da6f0986e774036c0cc93905335bb00794ba
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34141291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d29f3e6213573adc6d3873df6630c68cde10a859a6f09c48117d06d851e26e2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:52:50 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:52:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:52:51 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:52:52 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:52:53 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:52:53 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:52:53 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:52:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:52:54 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1531dae0ec77e085a287d2c8c9a3664e22e4c65dd7e3e8bad1e45e1cbac5a359`  
		Last Modified: Mon, 19 Sep 2016 23:53:03 GMT  
		Size: 2.1 MB (2065010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b0c427ff88b2e091165ca6031861d0e505eeaf903d0250facbb0d9d0e9a5b3`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f79d27ca9d67a83c28712105565fd0cbffebafb1af6616c0593a8a16dce075c`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56b5cb1f88042fb36d70ff006cb7a9d2c194aaf6eb04064e8f6be9dae36bc87`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:26ffdcc536b70ac786b6c9766580da6f0986e774036c0cc93905335bb00794ba
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34141291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d29f3e6213573adc6d3873df6630c68cde10a859a6f09c48117d06d851e26e2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:52:50 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:52:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:52:51 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:52:52 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:52:53 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:52:53 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:52:53 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:52:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:52:54 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1531dae0ec77e085a287d2c8c9a3664e22e4c65dd7e3e8bad1e45e1cbac5a359`  
		Last Modified: Mon, 19 Sep 2016 23:53:03 GMT  
		Size: 2.1 MB (2065010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b0c427ff88b2e091165ca6031861d0e505eeaf903d0250facbb0d9d0e9a5b3`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f79d27ca9d67a83c28712105565fd0cbffebafb1af6616c0593a8a16dce075c`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56b5cb1f88042fb36d70ff006cb7a9d2c194aaf6eb04064e8f6be9dae36bc87`  
		Last Modified: Mon, 19 Sep 2016 23:53:01 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.1-experimental-git`

```console
$ docker pull docker@sha256:5cf5290269a6571dc6d98f8ea6c1ac61a972da83a15d6bd925f27b3359290653
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.1-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41211203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8773ee253ac5ab6c0c922dc7b6c08bf335c0f874cf06c35daa65463eb17fc669`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:53:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96daf78963bc9d6f97e57399e04755d2d01f120a6ebacdc1f3c3b712e92ee9d3`  
		Last Modified: Mon, 19 Sep 2016 23:53:49 GMT  
		Size: 9.1 MB (9138498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:5cf5290269a6571dc6d98f8ea6c1ac61a972da83a15d6bd925f27b3359290653
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41211203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8773ee253ac5ab6c0c922dc7b6c08bf335c0f874cf06c35daa65463eb17fc669`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:53:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96daf78963bc9d6f97e57399e04755d2d01f120a6ebacdc1f3c3b712e92ee9d3`  
		Last Modified: Mon, 19 Sep 2016 23:53:49 GMT  
		Size: 9.1 MB (9138498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:5cf5290269a6571dc6d98f8ea6c1ac61a972da83a15d6bd925f27b3359290653
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41211203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8773ee253ac5ab6c0c922dc7b6c08bf335c0f874cf06c35daa65463eb17fc669`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:53:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96daf78963bc9d6f97e57399e04755d2d01f120a6ebacdc1f3c3b712e92ee9d3`  
		Last Modified: Mon, 19 Sep 2016 23:53:49 GMT  
		Size: 9.1 MB (9138498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:5cf5290269a6571dc6d98f8ea6c1ac61a972da83a15d6bd925f27b3359290653
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41211203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8773ee253ac5ab6c0c922dc7b6c08bf335c0f874cf06c35daa65463eb17fc669`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:51:41 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:51:42 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Mon, 19 Sep 2016 23:51:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:51:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:51:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:51:47 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:53:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29694a1cc2c0bc22ca2498707a882b6f7baab029c774658da3deeeeaa30f558`  
		Last Modified: Mon, 19 Sep 2016 23:52:11 GMT  
		Size: 28.8 MB (28846877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5cee0f926515b2595ed32d4fd93a29307a4efddb5ac056e13cc180b7ff328`  
		Last Modified: Mon, 19 Sep 2016 23:51:55 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96daf78963bc9d6f97e57399e04755d2d01f120a6ebacdc1f3c3b712e92ee9d3`  
		Last Modified: Mon, 19 Sep 2016 23:53:49 GMT  
		Size: 9.1 MB (9138498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2`

```console
$ docker pull docker@sha256:89ec84e97ef0803e0004ffdc56393801b541d999971bccb755bd610305484d2e
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462916674824de03e30ac2c9759ab5421113edaef85d599727a0a76ebfd3d2f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:54:19 GMT
ENV DOCKER_VERSION=1.11.2
# Mon, 19 Sep 2016 23:54:19 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 19 Sep 2016 23:54:22 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:54:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:54:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:54:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb8e4b216b5508791495911ce4bc8e1c121f3d6d0aceef4bb667d86531cf59b`  
		Last Modified: Mon, 19 Sep 2016 23:54:38 GMT  
		Size: 20.4 MB (20449710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ccc119ac1ce421836f4350841c731822521225d24f3c15aabb0a53e5f8fb4c`  
		Last Modified: Mon, 19 Sep 2016 23:54:30 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:89ec84e97ef0803e0004ffdc56393801b541d999971bccb755bd610305484d2e
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462916674824de03e30ac2c9759ab5421113edaef85d599727a0a76ebfd3d2f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:54:19 GMT
ENV DOCKER_VERSION=1.11.2
# Mon, 19 Sep 2016 23:54:19 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 19 Sep 2016 23:54:22 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:54:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:54:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:54:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb8e4b216b5508791495911ce4bc8e1c121f3d6d0aceef4bb667d86531cf59b`  
		Last Modified: Mon, 19 Sep 2016 23:54:38 GMT  
		Size: 20.4 MB (20449710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ccc119ac1ce421836f4350841c731822521225d24f3c15aabb0a53e5f8fb4c`  
		Last Modified: Mon, 19 Sep 2016 23:54:30 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:aa462616969fdf1291b467cc9016b22fb0de3f2236f15afff137526d847eaf29
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25744147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f76c0d481c00c2358c18c2cb82aab82fffc59d7ce61bd79bc627b93f55d972`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:54:19 GMT
ENV DOCKER_VERSION=1.11.2
# Mon, 19 Sep 2016 23:54:19 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 19 Sep 2016 23:54:22 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:54:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:54:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:54:23 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:54:58 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:55:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:55:00 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:55:01 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:55:02 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:55:02 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:55:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:55:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:55:03 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb8e4b216b5508791495911ce4bc8e1c121f3d6d0aceef4bb667d86531cf59b`  
		Last Modified: Mon, 19 Sep 2016 23:54:38 GMT  
		Size: 20.4 MB (20449710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ccc119ac1ce421836f4350841c731822521225d24f3c15aabb0a53e5f8fb4c`  
		Last Modified: Mon, 19 Sep 2016 23:54:30 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131c63c5d554b480a98cfdde03e3c8a5d05846ea63a04cf5cbd6bcbef0e4d4e4`  
		Last Modified: Mon, 19 Sep 2016 23:55:12 GMT  
		Size: 2.1 MB (2065037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996c89e8e6e108e2d23bf13e7415db5c9ffcae9682711040fb5a89884babb949`  
		Last Modified: Mon, 19 Sep 2016 23:55:11 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba1d4408caaa025299875cd82f60e832172436946dcb40a50d5de2e9489976c`  
		Last Modified: Mon, 19 Sep 2016 23:55:11 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c24f92782accdd4705479ae5b93568fa062abdf67840cc1a5eb9c97fa39f70`  
		Last Modified: Mon, 19 Sep 2016 23:55:13 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:aa462616969fdf1291b467cc9016b22fb0de3f2236f15afff137526d847eaf29
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25744147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f76c0d481c00c2358c18c2cb82aab82fffc59d7ce61bd79bc627b93f55d972`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:54:19 GMT
ENV DOCKER_VERSION=1.11.2
# Mon, 19 Sep 2016 23:54:19 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 19 Sep 2016 23:54:22 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:54:23 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:54:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:54:23 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:54:58 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Sep 2016 23:55:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Sep 2016 23:55:00 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Sep 2016 23:55:01 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Sep 2016 23:55:02 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:55:02 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Sep 2016 23:55:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Sep 2016 23:55:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Sep 2016 23:55:03 GMT
CMD []
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb8e4b216b5508791495911ce4bc8e1c121f3d6d0aceef4bb667d86531cf59b`  
		Last Modified: Mon, 19 Sep 2016 23:54:38 GMT  
		Size: 20.4 MB (20449710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ccc119ac1ce421836f4350841c731822521225d24f3c15aabb0a53e5f8fb4c`  
		Last Modified: Mon, 19 Sep 2016 23:54:30 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131c63c5d554b480a98cfdde03e3c8a5d05846ea63a04cf5cbd6bcbef0e4d4e4`  
		Last Modified: Mon, 19 Sep 2016 23:55:12 GMT  
		Size: 2.1 MB (2065037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996c89e8e6e108e2d23bf13e7415db5c9ffcae9682711040fb5a89884babb949`  
		Last Modified: Mon, 19 Sep 2016 23:55:11 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba1d4408caaa025299875cd82f60e832172436946dcb40a50d5de2e9489976c`  
		Last Modified: Mon, 19 Sep 2016 23:55:11 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c24f92782accdd4705479ae5b93568fa062abdf67840cc1a5eb9c97fa39f70`  
		Last Modified: Mon, 19 Sep 2016 23:55:13 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:a8ae15656c31b99e2d939840c9559d7b083cbd87067ef85a528afe48ee3ab85f
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32812412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54af3f3970122a5e499d3bfb8cd03836df953f0dc90f9b8f445187f82411bc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Mon, 29 Aug 2016 23:49:19 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 29 Aug 2016 23:49:19 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 29 Aug 2016 23:49:44 GMT
ENV DOCKER_VERSION=1.11.2
# Mon, 29 Aug 2016 23:49:44 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 29 Aug 2016 23:49:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 29 Aug 2016 23:49:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 29 Aug 2016 23:49:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Aug 2016 23:49:47 GMT
CMD ["sh"]
# Mon, 29 Aug 2016 23:49:55 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90857572a5c344c610461daa8ba932f5966830749184e752e8ddf1ff5ae25be`  
		Last Modified: Mon, 19 Sep 2016 23:49:41 GMT  
		Size: 913.5 KB (913474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e280eab9da27357f79a8cfec63804cf8e211eb106a9c2bd7a2b8c55000fdfaa`  
		Last Modified: Mon, 19 Sep 2016 23:49:49 GMT  
		Size: 20.4 MB (20449704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4567acf7fa251c19c8d69479bb28b4bb2a13a0485716224d4f263e53e5375f06`  
		Last Modified: Mon, 19 Sep 2016 23:49:40 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e7c5c2afe16672325b48e94c8bb335a16772c4036d13a2dface83b5c9909b`  
		Last Modified: Mon, 19 Sep 2016 23:49:44 GMT  
		Size: 9.1 MB (9138482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:a8ae15656c31b99e2d939840c9559d7b083cbd87067ef85a528afe48ee3ab85f
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32812412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54af3f3970122a5e499d3bfb8cd03836df953f0dc90f9b8f445187f82411bc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Mon, 29 Aug 2016 23:49:19 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 29 Aug 2016 23:49:19 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 29 Aug 2016 23:49:44 GMT
ENV DOCKER_VERSION=1.11.2
# Mon, 29 Aug 2016 23:49:44 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 29 Aug 2016 23:49:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 29 Aug 2016 23:49:47 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 29 Aug 2016 23:49:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Aug 2016 23:49:47 GMT
CMD ["sh"]
# Mon, 29 Aug 2016 23:49:55 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90857572a5c344c610461daa8ba932f5966830749184e752e8ddf1ff5ae25be`  
		Last Modified: Mon, 19 Sep 2016 23:49:41 GMT  
		Size: 913.5 KB (913474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e280eab9da27357f79a8cfec63804cf8e211eb106a9c2bd7a2b8c55000fdfaa`  
		Last Modified: Mon, 19 Sep 2016 23:49:49 GMT  
		Size: 20.4 MB (20449704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4567acf7fa251c19c8d69479bb28b4bb2a13a0485716224d4f263e53e5375f06`  
		Last Modified: Mon, 19 Sep 2016 23:49:40 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00e7c5c2afe16672325b48e94c8bb335a16772c4036d13a2dface83b5c9909b`  
		Last Modified: Mon, 19 Sep 2016 23:49:44 GMT  
		Size: 9.1 MB (9138482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
