## `docker:latest`

```console
$ docker pull docker@sha256:b2e49628f8acda153b35a2c45cae26e0c8559d91e2e70b02698f3723fe2fb1d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:7f3afe9994511de505adb5cfd52b2ca7cf018ebde2d53cd37f487260a754389e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33152040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9772d69d94502133bf364fc2311ee01ad59b2df2120b002f710238ba78599c10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1944b67e6b85d65940e0ac909d11644b9fb141cee826079c031f3f3c754a0b4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30849798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef8ab3e3af5a807a3d0bd3117d1440238a686358d56e06c9a1c0579efe311a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:15:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 05:15:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 05:15:44 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 05:15:45 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 05:15:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 05:15:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:15:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:16:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae44a9d929a0f7f774a276b1abeda949212ff63805c2d35fd8e1856cb1e47859`  
		Last Modified: Thu, 26 Oct 2017 05:18:54 GMT  
		Size: 351.5 KB (351492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11fa162bc593505d0e792ade6064701834ba4262cf5fda38fdbe83d0ba13951`  
		Last Modified: Thu, 26 Oct 2017 05:18:53 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e33220dd1cd469c39bea613bd53a725994b6ea27a16ac40747d6568b242567`  
		Last Modified: Thu, 26 Oct 2017 05:19:05 GMT  
		Size: 28.6 MB (28582486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c3121eb3968c58c32f230b60995144ed279a247ec39fcfd7644caf0373563b`  
		Last Modified: Thu, 26 Oct 2017 05:18:53 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; ppc64le

```console
$ docker pull docker@sha256:9c21fbd1ac9280879f3d16a620a7e9c1615e4835f997448c46d09039c25927ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30816718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c9167eca5d0df8fa97519ab755e9116d19abbcaf990328cb86dbd3a0bd3b43`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:15:23 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 05:15:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 05:15:32 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 05:15:34 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 05:15:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 05:15:49 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:15:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:15:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786040648c6ce95b57cfce679096fb7515d48596fa35ebd8347645924dc7afcf`  
		Last Modified: Thu, 26 Oct 2017 05:18:55 GMT  
		Size: 354.2 KB (354237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb59a10fa001950eb807c32d69dfdb981e184862354d5a807966f342e49f5405`  
		Last Modified: Thu, 26 Oct 2017 05:18:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573e9377c50fcda60f425646e15118fabc1df887c927153a4b7c7491adc80f9d`  
		Last Modified: Thu, 26 Oct 2017 05:19:02 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b01bb7e7378ba4e925623817aa8917221c0167de27cf7517803b30808169ef`  
		Last Modified: Thu, 26 Oct 2017 05:18:55 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; s390x

```console
$ docker pull docker@sha256:c27c8c94354140206afa33068759c79ca4620777d2b953bd4ee5b9290e51782f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32619317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84bc264c2042c77b6d459dd7719995d1623fc12e4547f54eb8860fe6b6664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
