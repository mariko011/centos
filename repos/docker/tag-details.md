<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `docker`

-	[`docker:1.12.0`](#docker1120)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.0-dind`](#docker1120-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.0-git`](#docker1120-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.12.0`

```console
$ docker pull docker@sha256:d0fa0c7c748cbb5083b2898ad6034f2e0c88ce9feab39fe29478d27ba9b5c662
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31918265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5bd16611299ac65efbc1b332394b8431a017da632ed9023ea83b9b9ce8871c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B

## `docker:1.12`

```console
$ docker pull docker@sha256:d0fa0c7c748cbb5083b2898ad6034f2e0c88ce9feab39fe29478d27ba9b5c662
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31918265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5bd16611299ac65efbc1b332394b8431a017da632ed9023ea83b9b9ce8871c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B

## `docker:1`

```console
$ docker pull docker@sha256:d0fa0c7c748cbb5083b2898ad6034f2e0c88ce9feab39fe29478d27ba9b5c662
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31918265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5bd16611299ac65efbc1b332394b8431a017da632ed9023ea83b9b9ce8871c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B

## `docker:latest`

```console
$ docker pull docker@sha256:d0fa0c7c748cbb5083b2898ad6034f2e0c88ce9feab39fe29478d27ba9b5c662
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31918265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5bd16611299ac65efbc1b332394b8431a017da632ed9023ea83b9b9ce8871c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B

## `docker:1.12.0-dind`

```console
$ docker pull docker@sha256:918ea417154b7ab8686edf3b331a3af42243e04ab56911c13601e6ffcede63c0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.0-dind` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (33986860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea6c1615b9908b9b1db9247fd0de0790729b53498f73d3104a4c59e4c799a66`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 08 Aug 2016 19:17:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 08 Aug 2016 19:17:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 08 Aug 2016 19:17:29 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 08 Aug 2016 19:17:31 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:31 GMT
VOLUME [/var/lib/docker]
# Mon, 08 Aug 2016 19:17:32 GMT
EXPOSE 2375/tcp
# Mon, 08 Aug 2016 19:17:33 GMT
ENTRYPOINT &{["dockerd-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:34 GMT
CMD []
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B
	-	`sha256:1ae4ac7eb5bf8c2c9293eed71244a78202f415a320f75ac117a5b2d5c5689956`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 2.1 MB (2065020 bytes)
	-	`sha256:2603b6bbc1a6dbc7b15102cc5938bac7371bb8d9bc2885b29cfeb6c8b657d9b4`  
		Last Modified: Mon, 08 Aug 2016 19:19:10 GMT  
		Size: 1.3 KB (1320 bytes)
	-	`sha256:c48b3cdc4151d718b1bf5d944fd9c99e6da2b92a6160af0f304c58bdbd6ed71e`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 1.8 KB (1818 bytes)
	-	`sha256:448e824bbaf9fd15df4ccd5f069835d3c708d79bf251a78114d180cd295664e6`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 437.0 B

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:918ea417154b7ab8686edf3b331a3af42243e04ab56911c13601e6ffcede63c0
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (33986860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea6c1615b9908b9b1db9247fd0de0790729b53498f73d3104a4c59e4c799a66`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 08 Aug 2016 19:17:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 08 Aug 2016 19:17:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 08 Aug 2016 19:17:29 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 08 Aug 2016 19:17:31 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:31 GMT
VOLUME [/var/lib/docker]
# Mon, 08 Aug 2016 19:17:32 GMT
EXPOSE 2375/tcp
# Mon, 08 Aug 2016 19:17:33 GMT
ENTRYPOINT &{["dockerd-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:34 GMT
CMD []
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B
	-	`sha256:1ae4ac7eb5bf8c2c9293eed71244a78202f415a320f75ac117a5b2d5c5689956`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 2.1 MB (2065020 bytes)
	-	`sha256:2603b6bbc1a6dbc7b15102cc5938bac7371bb8d9bc2885b29cfeb6c8b657d9b4`  
		Last Modified: Mon, 08 Aug 2016 19:19:10 GMT  
		Size: 1.3 KB (1320 bytes)
	-	`sha256:c48b3cdc4151d718b1bf5d944fd9c99e6da2b92a6160af0f304c58bdbd6ed71e`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 1.8 KB (1818 bytes)
	-	`sha256:448e824bbaf9fd15df4ccd5f069835d3c708d79bf251a78114d180cd295664e6`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 437.0 B

## `docker:1-dind`

```console
$ docker pull docker@sha256:918ea417154b7ab8686edf3b331a3af42243e04ab56911c13601e6ffcede63c0
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (33986860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea6c1615b9908b9b1db9247fd0de0790729b53498f73d3104a4c59e4c799a66`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 08 Aug 2016 19:17:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 08 Aug 2016 19:17:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 08 Aug 2016 19:17:29 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 08 Aug 2016 19:17:31 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:31 GMT
VOLUME [/var/lib/docker]
# Mon, 08 Aug 2016 19:17:32 GMT
EXPOSE 2375/tcp
# Mon, 08 Aug 2016 19:17:33 GMT
ENTRYPOINT &{["dockerd-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:34 GMT
CMD []
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B
	-	`sha256:1ae4ac7eb5bf8c2c9293eed71244a78202f415a320f75ac117a5b2d5c5689956`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 2.1 MB (2065020 bytes)
	-	`sha256:2603b6bbc1a6dbc7b15102cc5938bac7371bb8d9bc2885b29cfeb6c8b657d9b4`  
		Last Modified: Mon, 08 Aug 2016 19:19:10 GMT  
		Size: 1.3 KB (1320 bytes)
	-	`sha256:c48b3cdc4151d718b1bf5d944fd9c99e6da2b92a6160af0f304c58bdbd6ed71e`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 1.8 KB (1818 bytes)
	-	`sha256:448e824bbaf9fd15df4ccd5f069835d3c708d79bf251a78114d180cd295664e6`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 437.0 B

## `docker:dind`

```console
$ docker pull docker@sha256:918ea417154b7ab8686edf3b331a3af42243e04ab56911c13601e6ffcede63c0
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (33986860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea6c1615b9908b9b1db9247fd0de0790729b53498f73d3104a4c59e4c799a66`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 08 Aug 2016 19:17:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 08 Aug 2016 19:17:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 08 Aug 2016 19:17:29 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 08 Aug 2016 19:17:31 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:31 GMT
VOLUME [/var/lib/docker]
# Mon, 08 Aug 2016 19:17:32 GMT
EXPOSE 2375/tcp
# Mon, 08 Aug 2016 19:17:33 GMT
ENTRYPOINT &{["dockerd-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:34 GMT
CMD []
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B
	-	`sha256:1ae4ac7eb5bf8c2c9293eed71244a78202f415a320f75ac117a5b2d5c5689956`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 2.1 MB (2065020 bytes)
	-	`sha256:2603b6bbc1a6dbc7b15102cc5938bac7371bb8d9bc2885b29cfeb6c8b657d9b4`  
		Last Modified: Mon, 08 Aug 2016 19:19:10 GMT  
		Size: 1.3 KB (1320 bytes)
	-	`sha256:c48b3cdc4151d718b1bf5d944fd9c99e6da2b92a6160af0f304c58bdbd6ed71e`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 1.8 KB (1818 bytes)
	-	`sha256:448e824bbaf9fd15df4ccd5f069835d3c708d79bf251a78114d180cd295664e6`  
		Last Modified: Mon, 08 Aug 2016 19:19:11 GMT  
		Size: 437.0 B

## `docker:1.12.0-git`

```console
$ docker pull docker@sha256:b59cc0fd23ce27883d3408fb8fcb214ed9d2d4eea27a676280de88a87adbb994
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.0-git` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41056712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d1739b455336527f1820952a848ae74075b946fefb938b42b0d7db92b1b171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B
	-	`sha256:19a6148373fcb4936108c5f005054a76df9de6514f187f9afc6c1ee15cbfc268`  
		Last Modified: Mon, 08 Aug 2016 19:20:01 GMT  
		Size: 9.1 MB (9138447 bytes)

## `docker:1.12-git`

```console
$ docker pull docker@sha256:b59cc0fd23ce27883d3408fb8fcb214ed9d2d4eea27a676280de88a87adbb994
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41056712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d1739b455336527f1820952a848ae74075b946fefb938b42b0d7db92b1b171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B
	-	`sha256:19a6148373fcb4936108c5f005054a76df9de6514f187f9afc6c1ee15cbfc268`  
		Last Modified: Mon, 08 Aug 2016 19:20:01 GMT  
		Size: 9.1 MB (9138447 bytes)

## `docker:1-git`

```console
$ docker pull docker@sha256:b59cc0fd23ce27883d3408fb8fcb214ed9d2d4eea27a676280de88a87adbb994
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41056712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d1739b455336527f1820952a848ae74075b946fefb938b42b0d7db92b1b171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B
	-	`sha256:19a6148373fcb4936108c5f005054a76df9de6514f187f9afc6c1ee15cbfc268`  
		Last Modified: Mon, 08 Aug 2016 19:20:01 GMT  
		Size: 9.1 MB (9138447 bytes)

## `docker:git`

```console
$ docker pull docker@sha256:b59cc0fd23ce27883d3408fb8fcb214ed9d2d4eea27a676280de88a87adbb994
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41056712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d1739b455336527f1820952a848ae74075b946fefb938b42b0d7db92b1b171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_VERSION=1.12.0
# Mon, 01 Aug 2016 23:15:01 GMT
ENV DOCKER_SHA256=3dd07f65ea4a7b4c8829f311ab0213bca9ac551b5b24706f3e79a97e22097f8b
# Mon, 08 Aug 2016 19:17:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:18 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:19 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:39 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:9918c7bbd2bf91b8af00870b407d1cc1142737da8d9be2671258d70f65fe1b21`  
		Last Modified: Mon, 08 Aug 2016 19:18:25 GMT  
		Size: 28.7 MB (28694508 bytes)
	-	`sha256:25b748c031f39963b5aef339262064a8b509a785cac4ea2af1870ac651790acb`  
		Last Modified: Mon, 08 Aug 2016 19:18:14 GMT  
		Size: 463.0 B
	-	`sha256:19a6148373fcb4936108c5f005054a76df9de6514f187f9afc6c1ee15cbfc268`  
		Last Modified: Mon, 08 Aug 2016 19:20:01 GMT  
		Size: 9.1 MB (9138447 bytes)

## `docker:1.11.2`

```console
$ docker pull docker@sha256:641cc8099293fa85e94e8dbe5aa67c8d6da3c2d9ea53550a1ddda74874c4e802
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23673464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0acebc829b1ae1c26d780140ef8ff6b7284070d1a11df869a1cadeeb61f201`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_VERSION=1.11.2
# Thu, 23 Jun 2016 20:18:27 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 08 Aug 2016 19:17:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:44 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:45 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:46 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:a2e2c7c833a0a942f10429f798635a7a2f52456276ce0f876fb6bcbbd6f881d9`  
		Last Modified: Mon, 08 Aug 2016 19:20:53 GMT  
		Size: 20.4 MB (20449704 bytes)
	-	`sha256:62fa1d70dc3ab50916176256a8c0abe080390232080e113777482c7216a79349`  
		Last Modified: Mon, 08 Aug 2016 19:20:46 GMT  
		Size: 466.0 B

## `docker:1.11`

```console
$ docker pull docker@sha256:641cc8099293fa85e94e8dbe5aa67c8d6da3c2d9ea53550a1ddda74874c4e802
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23673464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0acebc829b1ae1c26d780140ef8ff6b7284070d1a11df869a1cadeeb61f201`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_VERSION=1.11.2
# Thu, 23 Jun 2016 20:18:27 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 08 Aug 2016 19:17:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:44 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:45 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:46 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:a2e2c7c833a0a942f10429f798635a7a2f52456276ce0f876fb6bcbbd6f881d9`  
		Last Modified: Mon, 08 Aug 2016 19:20:53 GMT  
		Size: 20.4 MB (20449704 bytes)
	-	`sha256:62fa1d70dc3ab50916176256a8c0abe080390232080e113777482c7216a79349`  
		Last Modified: Mon, 08 Aug 2016 19:20:46 GMT  
		Size: 466.0 B

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:8db90f47b76b8f1a46398c6fd006a56341c021a003eeeef721d42e98189a75e1
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25742064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508a20ec7ac7bfa789805eed4d5ea4a656f341b1155d97c1c5db9f7a8e73f91a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_VERSION=1.11.2
# Thu, 23 Jun 2016 20:18:27 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 08 Aug 2016 19:17:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:44 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:45 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:46 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:50 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 08 Aug 2016 19:17:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 08 Aug 2016 19:17:53 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 08 Aug 2016 19:17:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 08 Aug 2016 19:17:56 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:57 GMT
VOLUME [/var/lib/docker]
# Mon, 08 Aug 2016 19:17:57 GMT
EXPOSE 2375/tcp
# Mon, 08 Aug 2016 19:17:58 GMT
ENTRYPOINT &{["dockerd-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:59 GMT
CMD []
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:a2e2c7c833a0a942f10429f798635a7a2f52456276ce0f876fb6bcbbd6f881d9`  
		Last Modified: Mon, 08 Aug 2016 19:20:53 GMT  
		Size: 20.4 MB (20449704 bytes)
	-	`sha256:62fa1d70dc3ab50916176256a8c0abe080390232080e113777482c7216a79349`  
		Last Modified: Mon, 08 Aug 2016 19:20:46 GMT  
		Size: 466.0 B
	-	`sha256:d19daa13a7841999d3974caef768435bb0a91dc4f7e0864e8766669c9041d7b7`  
		Last Modified: Mon, 08 Aug 2016 19:21:20 GMT  
		Size: 2.1 MB (2065021 bytes)
	-	`sha256:3d382020e98b4ffd8f41815b72f19e2af3b82cf5a574a5f5a49b78a2f6a6091d`  
		Last Modified: Mon, 08 Aug 2016 19:21:20 GMT  
		Size: 1.3 KB (1321 bytes)
	-	`sha256:c3553b323430256f9d012aec8b3ddeca24a1b2c7a9b610c68ca7ab5e49ad2bab`  
		Last Modified: Mon, 08 Aug 2016 19:21:18 GMT  
		Size: 1.8 KB (1821 bytes)
	-	`sha256:dfae7a612708c31638aa3839fbeab381739a95f7f90525f1b1b6ec8ee2976d25`  
		Last Modified: Mon, 08 Aug 2016 19:21:18 GMT  
		Size: 437.0 B

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:8db90f47b76b8f1a46398c6fd006a56341c021a003eeeef721d42e98189a75e1
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25742064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508a20ec7ac7bfa789805eed4d5ea4a656f341b1155d97c1c5db9f7a8e73f91a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_VERSION=1.11.2
# Thu, 23 Jun 2016 20:18:27 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 08 Aug 2016 19:17:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:44 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:45 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:46 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:17:50 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 08 Aug 2016 19:17:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 08 Aug 2016 19:17:53 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 08 Aug 2016 19:17:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 08 Aug 2016 19:17:56 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:57 GMT
VOLUME [/var/lib/docker]
# Mon, 08 Aug 2016 19:17:57 GMT
EXPOSE 2375/tcp
# Mon, 08 Aug 2016 19:17:58 GMT
ENTRYPOINT &{["dockerd-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:59 GMT
CMD []
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:a2e2c7c833a0a942f10429f798635a7a2f52456276ce0f876fb6bcbbd6f881d9`  
		Last Modified: Mon, 08 Aug 2016 19:20:53 GMT  
		Size: 20.4 MB (20449704 bytes)
	-	`sha256:62fa1d70dc3ab50916176256a8c0abe080390232080e113777482c7216a79349`  
		Last Modified: Mon, 08 Aug 2016 19:20:46 GMT  
		Size: 466.0 B
	-	`sha256:d19daa13a7841999d3974caef768435bb0a91dc4f7e0864e8766669c9041d7b7`  
		Last Modified: Mon, 08 Aug 2016 19:21:20 GMT  
		Size: 2.1 MB (2065021 bytes)
	-	`sha256:3d382020e98b4ffd8f41815b72f19e2af3b82cf5a574a5f5a49b78a2f6a6091d`  
		Last Modified: Mon, 08 Aug 2016 19:21:20 GMT  
		Size: 1.3 KB (1321 bytes)
	-	`sha256:c3553b323430256f9d012aec8b3ddeca24a1b2c7a9b610c68ca7ab5e49ad2bab`  
		Last Modified: Mon, 08 Aug 2016 19:21:18 GMT  
		Size: 1.8 KB (1821 bytes)
	-	`sha256:dfae7a612708c31638aa3839fbeab381739a95f7f90525f1b1b6ec8ee2976d25`  
		Last Modified: Mon, 08 Aug 2016 19:21:18 GMT  
		Size: 437.0 B

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:c92aa7614668f5d1bb2c6cdcd6b3d2d1138f31e40fbe4fcaaf70d47e01228fa3
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32811906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3979037e15b55a822ba354c43334e0917f57612125cba76a81529ad5b19c8c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_VERSION=1.11.2
# Thu, 23 Jun 2016 20:18:27 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 08 Aug 2016 19:17:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:44 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:45 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:46 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:18:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:a2e2c7c833a0a942f10429f798635a7a2f52456276ce0f876fb6bcbbd6f881d9`  
		Last Modified: Mon, 08 Aug 2016 19:20:53 GMT  
		Size: 20.4 MB (20449704 bytes)
	-	`sha256:62fa1d70dc3ab50916176256a8c0abe080390232080e113777482c7216a79349`  
		Last Modified: Mon, 08 Aug 2016 19:20:46 GMT  
		Size: 466.0 B
	-	`sha256:c86cd4f9194d00b1f352ad666e15b70dfb1c256848d369296646945a7033d5f1`  
		Last Modified: Mon, 08 Aug 2016 19:21:50 GMT  
		Size: 9.1 MB (9138442 bytes)

## `docker:1.11-git`

```console
$ docker pull docker@sha256:c92aa7614668f5d1bb2c6cdcd6b3d2d1138f31e40fbe4fcaaf70d47e01228fa3
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32811906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3979037e15b55a822ba354c43334e0917f57612125cba76a81529ad5b19c8c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 23 Jun 2016 20:18:26 GMT
ENV DOCKER_VERSION=1.11.2
# Thu, 23 Jun 2016 20:18:27 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Mon, 08 Aug 2016 19:17:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 08 Aug 2016 19:17:44 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Mon, 08 Aug 2016 19:17:45 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 19:17:46 GMT
CMD ["sh"]
# Mon, 08 Aug 2016 19:18:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)
	-	`sha256:a2e2c7c833a0a942f10429f798635a7a2f52456276ce0f876fb6bcbbd6f881d9`  
		Last Modified: Mon, 08 Aug 2016 19:20:53 GMT  
		Size: 20.4 MB (20449704 bytes)
	-	`sha256:62fa1d70dc3ab50916176256a8c0abe080390232080e113777482c7216a79349`  
		Last Modified: Mon, 08 Aug 2016 19:20:46 GMT  
		Size: 466.0 B
	-	`sha256:c86cd4f9194d00b1f352ad666e15b70dfb1c256848d369296646945a7033d5f1`  
		Last Modified: Mon, 08 Aug 2016 19:21:50 GMT  
		Size: 9.1 MB (9138442 bytes)
