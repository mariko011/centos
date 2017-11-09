## `docker:dind`

```console
$ docker pull docker@sha256:f8eb77869da29c1c7047c46c36c97c374e35d463d1041ae9f3454f53322060fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:37fb2843d6f27c36055a6f48293ff5b601fd312c73436c912eef27d09180448c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37219011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9769e0f3f9cbaf77ba3e96a5cd404038ad98d24eef5b480082e7e03bcdb5cc3b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 08:24:44 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 04 Nov 2017 08:24:44 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 04 Nov 2017 08:25:20 GMT
ENV DOCKER_CHANNEL=edge
# Sat, 04 Nov 2017 08:25:21 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Sat, 04 Nov 2017 08:25:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 08 Nov 2017 04:50:22 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 08 Nov 2017 04:50:23 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 08 Nov 2017 04:50:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 04:50:23 GMT
CMD ["sh"]
# Wed, 08 Nov 2017 04:50:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 08 Nov 2017 04:50:40 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 08 Nov 2017 04:50:40 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 08 Nov 2017 04:50:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 08 Nov 2017 04:50:44 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 08 Nov 2017 04:50:44 GMT
VOLUME [/var/lib/docker]
# Wed, 08 Nov 2017 04:50:44 GMT
EXPOSE 2375/tcp
# Wed, 08 Nov 2017 04:50:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 08 Nov 2017 04:50:44 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776090ac3d78f3d8c01e4847085cd7ce1ccd93ffc5dccca40e3bd72e59620c79`  
		Last Modified: Sat, 04 Nov 2017 08:27:08 GMT  
		Size: 351.0 KB (350996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0413fc9bc7476d36558854ef8abfec17b223d72ab453ac315e64ffd49a80fe`  
		Last Modified: Sat, 04 Nov 2017 08:27:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4487ab7b462042d061994551f0eece8b68c02b2ce894db6d9d95a4506e75a70c`  
		Last Modified: Sat, 04 Nov 2017 08:28:20 GMT  
		Size: 30.8 MB (30808782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5de18ac727d9ae7eb419b7895427e04a2a5d5a94dd794236af4f78bd4c24ba`  
		Last Modified: Wed, 08 Nov 2017 04:52:20 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82d7a8add1850fef3561acb71545c0bdd1ea29171b04f2255c3c712e6c632c0`  
		Last Modified: Wed, 08 Nov 2017 04:52:20 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c1dc8ac0531d0802bcbd88cb392131e80e7f4d3fec12925573e7b905bb22be`  
		Last Modified: Wed, 08 Nov 2017 04:52:57 GMT  
		Size: 3.9 MB (3884819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764d7acc0aa30435fc58fe0a89433309cac5265e6f06e54eb4bc4e431073784a`  
		Last Modified: Wed, 08 Nov 2017 04:52:55 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78d5d35f7b0571e3de98b2517b6d1916cc3e1358e04aa8670eca1ee365939ad`  
		Last Modified: Wed, 08 Nov 2017 04:52:56 GMT  
		Size: 179.7 KB (179747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7093a4ddc1c205b600af3e99c37f266eab4ca17a4141e1aef35888ca651226`  
		Last Modified: Wed, 08 Nov 2017 04:52:55 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b50e1113c722d9a2446acbf8d692e80c16e32a689dc7d67bf3041e875c629dea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34656588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cb1605ff866fcc57c843eb1b046d85adc30765f68a0614e2dd9b4b2288258b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Wed, 08 Nov 2017 07:00:58 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 08 Nov 2017 07:00:59 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 08 Nov 2017 07:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 07:01:00 GMT
CMD ["sh"]
# Wed, 08 Nov 2017 07:01:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 08 Nov 2017 07:01:33 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 08 Nov 2017 07:01:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 08 Nov 2017 07:01:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 08 Nov 2017 07:01:39 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 08 Nov 2017 07:01:39 GMT
VOLUME [/var/lib/docker]
# Wed, 08 Nov 2017 07:01:40 GMT
EXPOSE 2375/tcp
# Wed, 08 Nov 2017 07:01:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 08 Nov 2017 07:01:41 GMT
CMD []
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
	-	`sha256:8cf63c688ee8024c6eb6964958f7e1dff046b35d24d820e3476431214452dc10`  
		Last Modified: Wed, 08 Nov 2017 07:03:49 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858be01c2341d19ab70e43c04c54bed6893653df64a84d0ddb576098c0cabf2b`  
		Last Modified: Wed, 08 Nov 2017 07:03:49 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4502a141789d130e45327a318b977403bb8245c07ab6ebac7c7bae7e5dead0`  
		Last Modified: Wed, 08 Nov 2017 07:05:26 GMT  
		Size: 3.6 MB (3624688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398ef07e1695cc767b2ffe2fd25ba86585e024fd1b36b051b1b6c123d2c5bc94`  
		Last Modified: Wed, 08 Nov 2017 07:05:25 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a969e338b3f40cdba994eb565006d22dcd339fe8369483e409548e0137ebe903`  
		Last Modified: Wed, 08 Nov 2017 07:05:26 GMT  
		Size: 179.8 KB (179759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efff92be5f652158cc5ee06fb5642487ae0b05e2d6798f1f42eac335c8024ea7`  
		Last Modified: Wed, 08 Nov 2017 07:05:24 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; ppc64le

```console
$ docker pull docker@sha256:2066d7002917b432b8b7e05bf37b0cd9f7c68b540c9ebbe9b0c394f352fef32b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33310333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afec895f22a3d8a889d72588e580b53ffd6e911b9155823b0586d9fa1cbf15dc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 02 Nov 2017 22:43:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 02 Nov 2017 22:43:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 02 Nov 2017 22:43:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 02 Nov 2017 22:43:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 02 Nov 2017 22:43:47 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 02 Nov 2017 22:43:51 GMT
VOLUME [/var/lib/docker]
# Thu, 02 Nov 2017 22:43:54 GMT
EXPOSE 2375/tcp
# Thu, 02 Nov 2017 22:43:58 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 02 Nov 2017 22:44:02 GMT
CMD []
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
	-	`sha256:7dc87ea8ea95da61ab97ac30125eab84b9879132d902ede1aa816c43a8a6fceb`  
		Last Modified: Thu, 02 Nov 2017 22:45:19 GMT  
		Size: 2.3 MB (2315625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af8eaf28e85051b32c3117580c0ceeecf468ba777fbf592b8824229499ce4fc`  
		Last Modified: Thu, 02 Nov 2017 22:45:19 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72cf28199f7e7e9fad16dcf6ac7b258ff4481a0c954cfcad5f743901a31a729`  
		Last Modified: Thu, 02 Nov 2017 22:45:19 GMT  
		Size: 176.2 KB (176177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cd0ef1a7e8d70d2ae21d99008b7f28566975713a662cf5e25e91edd2bac43e`  
		Last Modified: Thu, 02 Nov 2017 22:45:19 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; s390x

```console
$ docker pull docker@sha256:18f23678d83fefa01d13e38989a5c76c70aa8f2955debe3273f0347ad4c8f7b5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36946188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afe7715f69d4211481a85571c403e67f53699267038d1d2b1798f1ccced595c4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 09 Nov 2017 04:01:42 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 09 Nov 2017 04:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 09 Nov 2017 04:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 04:01:42 GMT
CMD ["sh"]
# Thu, 09 Nov 2017 04:02:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 09 Nov 2017 04:02:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 09 Nov 2017 04:02:03 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 09 Nov 2017 04:02:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 09 Nov 2017 04:02:11 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 09 Nov 2017 04:02:11 GMT
VOLUME [/var/lib/docker]
# Thu, 09 Nov 2017 04:02:11 GMT
EXPOSE 2375/tcp
# Thu, 09 Nov 2017 04:02:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 09 Nov 2017 04:02:12 GMT
CMD []
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
	-	`sha256:4a00518dd15a44cc98de0931abe68b8a27c0dee0493f7a909ca0a141d5ca7f6f`  
		Last Modified: Thu, 09 Nov 2017 04:04:02 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290db90a0f547fd37cf289163c53b43615e249a1fdb8f20ac1e0b967c319a01`  
		Last Modified: Thu, 09 Nov 2017 04:04:01 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c455d501c0e0fd96a867a9883eb11e94edbb4c131e8a70099962927116bd60`  
		Last Modified: Thu, 09 Nov 2017 04:04:32 GMT  
		Size: 4.1 MB (4144756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cc198d6fe9aa32db67dc72830eb6d6d3b31e69fe356a0fd4ebb00d7e974075`  
		Last Modified: Thu, 09 Nov 2017 04:04:33 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2677b5eaad5d1e4e52b4c7d9301e263f10eda4909fee6f5cb33a8337bcb59`  
		Last Modified: Thu, 09 Nov 2017 04:04:31 GMT  
		Size: 179.8 KB (179774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28e44822d7db426e0056a9e869ad127aaffdfdb84ae0265db4e4497bcd4fc79`  
		Last Modified: Thu, 09 Nov 2017 04:04:31 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
