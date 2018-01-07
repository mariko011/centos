## `docker:stable-dind`

```console
$ docker pull docker@sha256:547f30fbe9873aac2465617ced7209e8880038f05acb4fb6560cab5bcad12f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:c7aebba95fab3d9fa1cb47846907346898f9d220947048a050379bd81e6af6dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41523939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac9235694b6587aea0b6ed472731b373b6b5d15f6c976e7217f867799cfad50`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 00:52:44 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 00:52:51 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Dec 2017 00:52:51 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Dec 2017 00:52:51 GMT
ENV DOCKER_VERSION=17.12.0-ce
# Thu, 28 Dec 2017 00:53:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 28 Dec 2017 00:53:00 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 28 Dec 2017 00:53:01 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 28 Dec 2017 00:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Dec 2017 00:53:09 GMT
CMD ["sh"]
# Thu, 28 Dec 2017 00:53:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Dec 2017 00:53:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Dec 2017 00:53:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 28 Dec 2017 00:53:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 28 Dec 2017 00:53:56 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 28 Dec 2017 00:53:56 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Dec 2017 00:53:56 GMT
EXPOSE 2375/tcp
# Thu, 28 Dec 2017 00:53:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Dec 2017 00:53:57 GMT
CMD []
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5c13ed5ec7edeacb70aab480d9b1c29729d758a333abb7ed331a3b58e8a5c5`  
		Last Modified: Thu, 28 Dec 2017 00:54:34 GMT  
		Size: 308.0 KB (308018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2078331aa194699c56e73fab217e7d9391a8ae4f7ec6e63980977dffa55d023a`  
		Last Modified: Thu, 28 Dec 2017 00:54:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafcc1eb9f655068f2468affa2889d855703ce5fbbfea842ec429d4e372ce325`  
		Last Modified: Thu, 28 Dec 2017 00:54:41 GMT  
		Size: 34.6 MB (34609071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fde9f0de2ff143ef60d80ad440ed6f58049d1f6159e96ba530f03faf19ffb22`  
		Last Modified: Thu, 28 Dec 2017 00:54:34 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0022e629e594891dd16c0bfe7935f80befee04123f46625a728e44e889922a`  
		Last Modified: Thu, 28 Dec 2017 00:54:34 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6b8788e22ea0bcac53a6259104af8d512efd5e196b18377181b03c4bb72928`  
		Last Modified: Thu, 28 Dec 2017 00:56:18 GMT  
		Size: 4.5 MB (4512628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4915e89cb70f7820b19c0a9b0b986cca7a808398da1d0d12bd1a423b59586613`  
		Last Modified: Thu, 28 Dec 2017 00:56:17 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97a75026cf71e5fc88e10e81706dc10689d66b85a3b10866cc09b0da160481c`  
		Last Modified: Thu, 28 Dec 2017 00:56:17 GMT  
		Size: 26.1 KB (26082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf63cdbdb04fe271bb77d18c87acb871be979038234cd02aa7d312c2744be570`  
		Last Modified: Thu, 28 Dec 2017 00:56:17 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:483ac82efb95bb4284b818074053eeaae39d182aba696b65a5b565d175510436
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (38016317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04aea85c2e3384ac40201364b35795ab82c8e70634d7dfbb145ef8ce596e3fab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Dec 2017 07:00:43 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Dec 2017 07:00:44 GMT
ENV DOCKER_VERSION=17.12.0-ce
# Thu, 28 Dec 2017 07:00:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 28 Dec 2017 07:00:55 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 28 Dec 2017 07:00:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 28 Dec 2017 07:00:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Dec 2017 07:00:57 GMT
CMD ["sh"]
# Thu, 28 Dec 2017 07:01:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Dec 2017 07:01:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Dec 2017 07:01:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 28 Dec 2017 07:01:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 28 Dec 2017 07:01:31 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 28 Dec 2017 07:01:32 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Dec 2017 07:01:33 GMT
EXPOSE 2375/tcp
# Thu, 28 Dec 2017 07:01:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Dec 2017 07:01:34 GMT
CMD []
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c129f9a4ec5b87a3737f1057bdfba72a89baae22dceb90f25b9e5d2e2d1819`  
		Last Modified: Thu, 28 Dec 2017 07:02:30 GMT  
		Size: 31.5 MB (31495536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e483830e0c10d5d8ae405b9e6e9b120d7fa2cbe9c0bab79e3c3516d749a8c187`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee7db52088e1fc354a31a3c163257b6a97318802f1f3c093c32f7bc291b9aef`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45aff41ea1299649cdcd864f6bfcffcae6b08b00998e2468f86f67bb9233c3a3`  
		Last Modified: Thu, 28 Dec 2017 07:03:32 GMT  
		Size: 4.2 MB (4194248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff4a2c4bd80538998f9c748face5b8d3a93aa8f28bd7bb4c3661224601994bb`  
		Last Modified: Thu, 28 Dec 2017 07:03:31 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b107536adaa0f73fd6fc8da677c12adbb2a581fbaef34fccfebc8998dbd16d01`  
		Last Modified: Thu, 28 Dec 2017 07:03:31 GMT  
		Size: 26.1 KB (26064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8edbbc44eb9d26f9472219a4016737586cdc1aab13ac2b24099a49eef4a19d`  
		Last Modified: Thu, 28 Dec 2017 07:03:31 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:00271ec6803cba057ea07515c3a3ba86bb87b68ebad89fb2ec42d07410717ec7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36214325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3db2dc7daa1b2d7eb2945781ef5d4811b4ae50ab1b17559ac11acef16f1f61c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 11:36:30 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 11:36:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Dec 2017 11:36:34 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Dec 2017 11:36:34 GMT
ENV DOCKER_VERSION=17.12.0-ce
# Thu, 28 Dec 2017 11:36:44 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 28 Dec 2017 11:36:45 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 28 Dec 2017 11:36:46 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 28 Dec 2017 11:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Dec 2017 11:36:48 GMT
CMD ["sh"]
# Thu, 28 Dec 2017 11:37:05 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Dec 2017 11:37:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Dec 2017 11:37:09 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 28 Dec 2017 11:37:15 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 28 Dec 2017 11:37:16 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 28 Dec 2017 11:37:17 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Dec 2017 11:37:18 GMT
EXPOSE 2375/tcp
# Thu, 28 Dec 2017 11:37:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Dec 2017 11:37:20 GMT
CMD []
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe230e03b98ad6c09f4e89c524a8f39e17835ba689b3035c55bbbef18956540`  
		Last Modified: Thu, 28 Dec 2017 11:37:58 GMT  
		Size: 310.6 KB (310600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6307b533b9be0ac40a1422292494cdd1f448afb34ba047614c035d8ab361452`  
		Last Modified: Thu, 28 Dec 2017 11:37:58 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23751235bb05ea527eb63c0fa96ddab09ac5d24394ad5e84158fc96b2cc51160`  
		Last Modified: Thu, 28 Dec 2017 11:38:06 GMT  
		Size: 31.2 MB (31179386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b0e420f94dedaf7541c97e78c77d7cca7f789160fd1b47a35fb2a67b5f15c9`  
		Last Modified: Thu, 28 Dec 2017 11:37:57 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21af83eb5abf41b5f24028df94c192b4974f48c531d052139e98a1f6ce1811ea`  
		Last Modified: Thu, 28 Dec 2017 11:37:58 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f830650d070809031ee319138f2a4e6dca3a41085b81cdada16143b03b5e65f6`  
		Last Modified: Thu, 28 Dec 2017 11:38:48 GMT  
		Size: 2.6 MB (2618626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b7deece264b22c6c36c1d5644944b930d0f4fa6f1fe69f76f4480e2b4e09ed`  
		Last Modified: Thu, 28 Dec 2017 11:38:47 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0dfafaaed768674ef039b34dbf9aee178eace4877f84a6a257219737f60c51`  
		Last Modified: Thu, 28 Dec 2017 11:38:47 GMT  
		Size: 20.8 KB (20807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287caa3d9d6263c22b1b12d571fce2e3b58bbee620042c304241dadf40e79be`  
		Last Modified: Thu, 28 Dec 2017 11:38:47 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; s390x

```console
$ docker pull docker@sha256:388b03b4c4552c10f712d3af38108f0d00b5f90c2f3fc361707ba142ea1bfe83
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (40982164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26747775a10caf03c7f17a113c88800cc0deecb5c51595e70d7a4fdc8bb8861`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:17:41 GMT
RUN apk add --no-cache 		ca-certificates
# Sun, 07 Jan 2018 09:17:42 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sun, 07 Jan 2018 09:18:35 GMT
ENV DOCKER_CHANNEL=stable
# Sun, 07 Jan 2018 09:18:35 GMT
ENV DOCKER_VERSION=17.12.0-ce
# Sun, 07 Jan 2018 09:18:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sun, 07 Jan 2018 09:18:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sun, 07 Jan 2018 09:18:40 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sun, 07 Jan 2018 09:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 09:18:40 GMT
CMD ["sh"]
# Sun, 07 Jan 2018 09:18:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sun, 07 Jan 2018 09:18:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sun, 07 Jan 2018 09:18:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sun, 07 Jan 2018 09:18:56 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sun, 07 Jan 2018 09:18:56 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sun, 07 Jan 2018 09:18:56 GMT
VOLUME [/var/lib/docker]
# Sun, 07 Jan 2018 09:18:56 GMT
EXPOSE 2375/tcp
# Sun, 07 Jan 2018 09:18:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sun, 07 Jan 2018 09:18:57 GMT
CMD []
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e086971261bceaf8aea6aa9962223fd5f1c0876f30d440dca2edce64bb2e6ea`  
		Last Modified: Sun, 07 Jan 2018 09:19:36 GMT  
		Size: 309.1 KB (309148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94801dbdd0e977fe92249d99be1d017b2b930177b6d3dd44105722b0233438b`  
		Last Modified: Sun, 07 Jan 2018 09:19:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fa5d1e377edecb2e56961885b95bb8632c61c04a188d35fb98cb02fe436e47`  
		Last Modified: Sun, 07 Jan 2018 09:21:14 GMT  
		Size: 33.7 MB (33724225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736d548d7d4de3945e603cd7f090571549de3c535708c7c783b4bb958cfe2aa4`  
		Last Modified: Sun, 07 Jan 2018 09:21:05 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73976d8395f5ce7b0c02123bfcd573861aa6cfd00631b865035ce2d13415e05f`  
		Last Modified: Sun, 07 Jan 2018 09:21:05 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3d229c5ac6c04e5ed56afc641127b850a9b97fd574255dbe7ff903acf4bb3b`  
		Last Modified: Sun, 07 Jan 2018 09:21:55 GMT  
		Size: 4.7 MB (4734089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fcdfc6d47651b4f948e0487d7e1b563a755d452abd4cbe329f62e3d4483ffe3`  
		Last Modified: Sun, 07 Jan 2018 09:21:54 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93df664359bbb3336fbed39c7b0771da176cddc7a3cbcc718a1ef263449f69ca`  
		Last Modified: Sun, 07 Jan 2018 09:21:54 GMT  
		Size: 26.1 KB (26074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76250da7619c073e6341f2be6ddf1a758a8f66467a3c900597719f965486c92a`  
		Last Modified: Sun, 07 Jan 2018 09:21:54 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
