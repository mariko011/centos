<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17.04.0-ce-rc2`](#docker17040-ce-rc2)
-	[`docker:17.04.0-ce`](#docker17040-ce)
-	[`docker:17.04.0`](#docker17040)
-	[`docker:17.04-rc`](#docker1704-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:17.04.0-ce-rc2-dind`](#docker17040-ce-rc2-dind)
-	[`docker:17.04.0-ce-dind`](#docker17040-ce-dind)
-	[`docker:17.04.0-dind`](#docker17040-dind)
-	[`docker:17.04-rc-dind`](#docker1704-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:17.04.0-ce-rc2-git`](#docker17040-ce-rc2-git)
-	[`docker:17.04.0-ce-git`](#docker17040-ce-git)
-	[`docker:17.04.0-git`](#docker17040-git)
-	[`docker:17.04-rc-git`](#docker1704-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:17.03.1-ce`](#docker17031-ce)
-	[`docker:17.03.1`](#docker17031)
-	[`docker:17.03`](#docker1703)
-	[`docker:17`](#docker17)
-	[`docker:latest`](#dockerlatest)
-	[`docker:stable`](#dockerstable)
-	[`docker:17.03.1-ce-dind`](#docker17031-ce-dind)
-	[`docker:17.03.1-dind`](#docker17031-dind)
-	[`docker:17.03-dind`](#docker1703-dind)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:17.03.1-ce-git`](#docker17031-ce-git)
-	[`docker:17.03.1-git`](#docker17031-git)
-	[`docker:17.03-git`](#docker1703-git)
-	[`docker:17-git`](#docker17-git)
-	[`docker:git`](#dockergit)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:1.13.1`](#docker1131)
-	[`docker:1.13`](#docker113)
-	[`docker:1.13.1-dind`](#docker1131-dind)
-	[`docker:1.13-dind`](#docker113-dind)
-	[`docker:1.13.1-git`](#docker1131-git)
-	[`docker:1.13-git`](#docker113-git)

## `docker:17.04.0-ce-rc2`

```console
$ docker pull docker@sha256:4045e56cdb85af000367f88a3d898714748ec4542d71652dd78d4ac6fd2613b3
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce-rc2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbfa6d83ba7b4327a0e3aa38a8dac740d8adfa6d8212fb1c281b859ae0c3548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce`

```console
$ docker pull docker@sha256:4045e56cdb85af000367f88a3d898714748ec4542d71652dd78d4ac6fd2613b3
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbfa6d83ba7b4327a0e3aa38a8dac740d8adfa6d8212fb1c281b859ae0c3548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0`

```console
$ docker pull docker@sha256:4045e56cdb85af000367f88a3d898714748ec4542d71652dd78d4ac6fd2613b3
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbfa6d83ba7b4327a0e3aa38a8dac740d8adfa6d8212fb1c281b859ae0c3548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04-rc`

```console
$ docker pull docker@sha256:4045e56cdb85af000367f88a3d898714748ec4542d71652dd78d4ac6fd2613b3
```

-	Platforms:
	-	linux; amd64

### `docker:17.04-rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbfa6d83ba7b4327a0e3aa38a8dac740d8adfa6d8212fb1c281b859ae0c3548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:4045e56cdb85af000367f88a3d898714748ec4542d71652dd78d4ac6fd2613b3
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbfa6d83ba7b4327a0e3aa38a8dac740d8adfa6d8212fb1c281b859ae0c3548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-rc2-dind`

```console
$ docker pull docker@sha256:33e765635e18de03a73f518e17580a4c4282f4422c7c28445b719dfa45820839
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce-rc2-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3e99fd924889d9d987c314afd70a2b4869deb57a6ad5bb0cfe6d6be9861642`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 31 Mar 2017 21:13:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 31 Mar 2017 21:13:06 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 31 Mar 2017 21:13:08 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 31 Mar 2017 21:13:08 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:09 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Mar 2017 21:13:09 GMT
EXPOSE 2375/tcp
# Fri, 31 Mar 2017 21:13:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:10 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f31e1828445a3df744f42b44e399be0fe1fac751a3b7e88ede0664e84aab245`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 2.1 MB (2103771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c141225ed86fc7738cca751cb0936ac4470de9beb3b9405822fbe32af5d8700`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94981c6d36d1941c539ff6d00eb1940cc74f7ba1a133859087f4d4d9bbc64f0`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a232c4eda8295658c99fd75b1f8bfd29d01516dd0b34f9575c77dbb18513af`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-dind`

```console
$ docker pull docker@sha256:33e765635e18de03a73f518e17580a4c4282f4422c7c28445b719dfa45820839
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3e99fd924889d9d987c314afd70a2b4869deb57a6ad5bb0cfe6d6be9861642`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 31 Mar 2017 21:13:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 31 Mar 2017 21:13:06 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 31 Mar 2017 21:13:08 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 31 Mar 2017 21:13:08 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:09 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Mar 2017 21:13:09 GMT
EXPOSE 2375/tcp
# Fri, 31 Mar 2017 21:13:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:10 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f31e1828445a3df744f42b44e399be0fe1fac751a3b7e88ede0664e84aab245`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 2.1 MB (2103771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c141225ed86fc7738cca751cb0936ac4470de9beb3b9405822fbe32af5d8700`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94981c6d36d1941c539ff6d00eb1940cc74f7ba1a133859087f4d4d9bbc64f0`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a232c4eda8295658c99fd75b1f8bfd29d01516dd0b34f9575c77dbb18513af`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-dind`

```console
$ docker pull docker@sha256:33e765635e18de03a73f518e17580a4c4282f4422c7c28445b719dfa45820839
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3e99fd924889d9d987c314afd70a2b4869deb57a6ad5bb0cfe6d6be9861642`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 31 Mar 2017 21:13:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 31 Mar 2017 21:13:06 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 31 Mar 2017 21:13:08 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 31 Mar 2017 21:13:08 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:09 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Mar 2017 21:13:09 GMT
EXPOSE 2375/tcp
# Fri, 31 Mar 2017 21:13:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:10 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f31e1828445a3df744f42b44e399be0fe1fac751a3b7e88ede0664e84aab245`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 2.1 MB (2103771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c141225ed86fc7738cca751cb0936ac4470de9beb3b9405822fbe32af5d8700`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94981c6d36d1941c539ff6d00eb1940cc74f7ba1a133859087f4d4d9bbc64f0`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a232c4eda8295658c99fd75b1f8bfd29d01516dd0b34f9575c77dbb18513af`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04-rc-dind`

```console
$ docker pull docker@sha256:33e765635e18de03a73f518e17580a4c4282f4422c7c28445b719dfa45820839
```

-	Platforms:
	-	linux; amd64

### `docker:17.04-rc-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3e99fd924889d9d987c314afd70a2b4869deb57a6ad5bb0cfe6d6be9861642`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 31 Mar 2017 21:13:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 31 Mar 2017 21:13:06 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 31 Mar 2017 21:13:08 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 31 Mar 2017 21:13:08 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:09 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Mar 2017 21:13:09 GMT
EXPOSE 2375/tcp
# Fri, 31 Mar 2017 21:13:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:10 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f31e1828445a3df744f42b44e399be0fe1fac751a3b7e88ede0664e84aab245`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 2.1 MB (2103771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c141225ed86fc7738cca751cb0936ac4470de9beb3b9405822fbe32af5d8700`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94981c6d36d1941c539ff6d00eb1940cc74f7ba1a133859087f4d4d9bbc64f0`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a232c4eda8295658c99fd75b1f8bfd29d01516dd0b34f9575c77dbb18513af`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:33e765635e18de03a73f518e17580a4c4282f4422c7c28445b719dfa45820839
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3e99fd924889d9d987c314afd70a2b4869deb57a6ad5bb0cfe6d6be9861642`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:05 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 31 Mar 2017 21:13:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 31 Mar 2017 21:13:06 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 31 Mar 2017 21:13:08 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 31 Mar 2017 21:13:08 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:09 GMT
VOLUME [/var/lib/docker]
# Fri, 31 Mar 2017 21:13:09 GMT
EXPOSE 2375/tcp
# Fri, 31 Mar 2017 21:13:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:10 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f31e1828445a3df744f42b44e399be0fe1fac751a3b7e88ede0664e84aab245`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 2.1 MB (2103771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c141225ed86fc7738cca751cb0936ac4470de9beb3b9405822fbe32af5d8700`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94981c6d36d1941c539ff6d00eb1940cc74f7ba1a133859087f4d4d9bbc64f0`  
		Last Modified: Fri, 31 Mar 2017 21:15:28 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a232c4eda8295658c99fd75b1f8bfd29d01516dd0b34f9575c77dbb18513af`  
		Last Modified: Fri, 31 Mar 2017 21:15:29 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-rc2-git`

```console
$ docker pull docker@sha256:6aa52da0d1afa86cb43a2f81da3988bacee9cf109ad115cd1716dff91c670973
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce-rc2-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7c860df81fa02321d9a08f5aa696ee593cbab40652b0991de3fa53db642cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111618a0388023ca5c1c213d635305f8cd83c4b7fa2b2949d042e4f4eff417c1`  
		Last Modified: Fri, 31 Mar 2017 21:17:13 GMT  
		Size: 10.4 MB (10372519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-ce-git`

```console
$ docker pull docker@sha256:6aa52da0d1afa86cb43a2f81da3988bacee9cf109ad115cd1716dff91c670973
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-ce-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7c860df81fa02321d9a08f5aa696ee593cbab40652b0991de3fa53db642cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111618a0388023ca5c1c213d635305f8cd83c4b7fa2b2949d042e4f4eff417c1`  
		Last Modified: Fri, 31 Mar 2017 21:17:13 GMT  
		Size: 10.4 MB (10372519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04.0-git`

```console
$ docker pull docker@sha256:6aa52da0d1afa86cb43a2f81da3988bacee9cf109ad115cd1716dff91c670973
```

-	Platforms:
	-	linux; amd64

### `docker:17.04.0-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7c860df81fa02321d9a08f5aa696ee593cbab40652b0991de3fa53db642cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111618a0388023ca5c1c213d635305f8cd83c4b7fa2b2949d042e4f4eff417c1`  
		Last Modified: Fri, 31 Mar 2017 21:17:13 GMT  
		Size: 10.4 MB (10372519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.04-rc-git`

```console
$ docker pull docker@sha256:6aa52da0d1afa86cb43a2f81da3988bacee9cf109ad115cd1716dff91c670973
```

-	Platforms:
	-	linux; amd64

### `docker:17.04-rc-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7c860df81fa02321d9a08f5aa696ee593cbab40652b0991de3fa53db642cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111618a0388023ca5c1c213d635305f8cd83c4b7fa2b2949d042e4f4eff417c1`  
		Last Modified: Fri, 31 Mar 2017 21:17:13 GMT  
		Size: 10.4 MB (10372519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:6aa52da0d1afa86cb43a2f81da3988bacee9cf109ad115cd1716dff91c670973
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7c860df81fa02321d9a08f5aa696ee593cbab40652b0991de3fa53db642cb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 31 Mar 2017 21:12:56 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc2
# Fri, 31 Mar 2017 21:12:57 GMT
ENV DOCKER_SHA256=64653090833c16e47426ada7dd85bec91d78e65beacd558e3b75ba4950e7be79
# Fri, 31 Mar 2017 21:13:01 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 31 Mar 2017 21:13:01 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 31 Mar 2017 21:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Mar 2017 21:13:02 GMT
CMD ["sh"]
# Fri, 31 Mar 2017 21:13:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad8bd22b403f07fd6c0a686fea238f8f30f2d00c181cfcfdd5c2abde18ccb56`  
		Last Modified: Fri, 31 Mar 2017 21:13:47 GMT  
		Size: 26.4 MB (26387736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1816674dd61a51489661a81d53eefaf92ddd99c9570a9e6edd9bc6387101df3`  
		Last Modified: Fri, 31 Mar 2017 21:13:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111618a0388023ca5c1c213d635305f8cd83c4b7fa2b2949d042e4f4eff417c1`  
		Last Modified: Fri, 31 Mar 2017 21:17:13 GMT  
		Size: 10.4 MB (10372519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:17.03` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:ae2445d228b79d2cdb420a07874e69be69319ba3f9c00b022d6a36e59f5a14c4
```

-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31815814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d953a76892ac0c90e9d075f0434e4031c9abde979051cb5247462a673148add7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:3b29d240c7bdb2967b5c4fb304d6849e5cd888821ef229a36b1f9c96648fb014
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33923207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ee9831c01300cdd5a9ddca7c2ecc7fe68699189ec527beb827587aeae5db6c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 30 Mar 2017 21:14:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 Mar 2017 21:14:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 30 Mar 2017 21:14:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 30 Mar 2017 21:14:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/var/lib/docker]
# Thu, 30 Mar 2017 21:14:25 GMT
EXPOSE 2375/tcp
# Thu, 30 Mar 2017 21:14:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:26 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d1ee13afdfdad7ee597347b27ae21112aa96d936f26d0951a17415b4c54dac`  
		Last Modified: Thu, 30 Mar 2017 21:23:17 GMT  
		Size: 2.1 MB (2103793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8fac4b914c3679eec5425ab8d34d6ac388a9543243ef7b9a285ac9f683b74f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25860337c30dc5bc25a1db9b4213891e3519bee62ce9b047470e2a075bf7398f`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2864a3f5d437f1f4e59d1a792a9d60de652a393b0ce04c103325a91f0484ee`  
		Last Modified: Thu, 30 Mar 2017 21:23:15 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-ce-git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-ce-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03.1-git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03.1-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.03-git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:17.03-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:0bf85ff24e546cdd532b73f7f818d734cb000dbd048883db9477286f4f551ee6
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42188343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00e04ea2d6e7e76df76b83adb44ca6974960b0026096deaab4ead8c79be7e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_SHA256=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Thu, 30 Mar 2017 21:13:43 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 30 Mar 2017 21:13:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 30 Mar 2017 21:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 21:14:00 GMT
CMD ["sh"]
# Thu, 30 Mar 2017 21:14:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300833aad80597066e9279e265c856484bbaeedffe75fc64829014785d27908a`  
		Last Modified: Thu, 30 Mar 2017 21:21:15 GMT  
		Size: 27.7 MB (27742342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335af79f7977f9e6202b0a9e18ad0e807b186744d414c9197b836ca8290b8488`  
		Last Modified: Thu, 30 Mar 2017 21:21:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d0d1043837b6c170c685257fabfda306c08828b06bac1a9cfd50f98f4a616`  
		Last Modified: Thu, 30 Mar 2017 21:25:20 GMT  
		Size: 10.4 MB (10372529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.1`

```console
$ docker pull docker@sha256:03ebd4ec45fb424085628ca9070307a3649e93559f685ecb98c3906c11eba211
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31804542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec0bbbc650d5a7614227c80231b99ea90bce075f327fcbf1fd40e33aef15421`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13`

```console
$ docker pull docker@sha256:03ebd4ec45fb424085628ca9070307a3649e93559f685ecb98c3906c11eba211
```

-	Platforms:
	-	linux; amd64

### `docker:1.13` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31804542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec0bbbc650d5a7614227c80231b99ea90bce075f327fcbf1fd40e33aef15421`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.1-dind`

```console
$ docker pull docker@sha256:490c1dec6a22cfccb159095c492fcf5869fe6135bc9e2f939570fced440cfb2a
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.1-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33911936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0534a070b830fbbcd8e870b53e4e7de0aa3ae4b7627ae1913604a9881a1f5fcc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:18 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 03 Mar 2017 21:48:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Mar 2017 21:48:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Mar 2017 21:48:21 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 03 Mar 2017 21:48:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:21 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Mar 2017 21:48:22 GMT
EXPOSE 2375/tcp
# Fri, 03 Mar 2017 21:48:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:22 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38f8a2f1e01f4a50f4f3d0cc50a4f420ab0e6fd607ece616ab2c60e871487c`  
		Last Modified: Sat, 04 Mar 2017 04:39:59 GMT  
		Size: 2.1 MB (2103789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c34a10913cf6c52c4119d20eae9aaf8f25ed2dd84bf4042937604dd7977ca1`  
		Last Modified: Sat, 04 Mar 2017 04:39:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f6b205352ef977c6a24ae89465cf496aae0821ff1fdd8f428b0cbde8952462`  
		Last Modified: Sat, 04 Mar 2017 04:39:58 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95889d64154ff379f058cd62b692cef451745fc7f6f84d60bfb42a73b90a787d`  
		Last Modified: Sat, 04 Mar 2017 04:39:59 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-dind`

```console
$ docker pull docker@sha256:490c1dec6a22cfccb159095c492fcf5869fe6135bc9e2f939570fced440cfb2a
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33911936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0534a070b830fbbcd8e870b53e4e7de0aa3ae4b7627ae1913604a9881a1f5fcc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:18 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 03 Mar 2017 21:48:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Mar 2017 21:48:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Mar 2017 21:48:21 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 03 Mar 2017 21:48:21 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:21 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Mar 2017 21:48:22 GMT
EXPOSE 2375/tcp
# Fri, 03 Mar 2017 21:48:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:22 GMT
CMD []
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38f8a2f1e01f4a50f4f3d0cc50a4f420ab0e6fd607ece616ab2c60e871487c`  
		Last Modified: Sat, 04 Mar 2017 04:39:59 GMT  
		Size: 2.1 MB (2103789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c34a10913cf6c52c4119d20eae9aaf8f25ed2dd84bf4042937604dd7977ca1`  
		Last Modified: Sat, 04 Mar 2017 04:39:58 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f6b205352ef977c6a24ae89465cf496aae0821ff1fdd8f428b0cbde8952462`  
		Last Modified: Sat, 04 Mar 2017 04:39:58 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95889d64154ff379f058cd62b692cef451745fc7f6f84d60bfb42a73b90a787d`  
		Last Modified: Sat, 04 Mar 2017 04:39:59 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.1-git`

```console
$ docker pull docker@sha256:10c6902b94a4b1e817086a83270d51cb6cc83cf8567979ac8da2cf66a94564ca
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.1-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42177059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2d8c6c6918fe1c2cd0a46b5dc816b750b54b1f9d2a3549c353ec5f78bb9f53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:24 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fabc8e1aadf35feab85756e81f7247274421529c584500393986f8bc3f882e`  
		Last Modified: Sat, 04 Mar 2017 04:40:42 GMT  
		Size: 10.4 MB (10372517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-git`

```console
$ docker pull docker@sha256:10c6902b94a4b1e817086a83270d51cb6cc83cf8567979ac8da2cf66a94564ca
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42177059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2d8c6c6918fe1c2cd0a46b5dc816b750b54b1f9d2a3549c353ec5f78bb9f53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_VERSION=1.13.1
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Fri, 03 Mar 2017 21:48:14 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:15 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:16 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:24 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8168b7823bfe4ef71ddbca851131126c87a9b8eb4814f5cbadbbdce6253c1e42`  
		Last Modified: Sat, 04 Mar 2017 04:39:16 GMT  
		Size: 27.7 MB (27731072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c96a51d997f9c3c2d312c9abea52a9c45ade07d8c19ecef0b7608d65e5bbea6`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fabc8e1aadf35feab85756e81f7247274421529c584500393986f8bc3f882e`  
		Last Modified: Sat, 04 Mar 2017 04:40:42 GMT  
		Size: 10.4 MB (10372517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
