## `docker:test-dind`

```console
$ docker pull docker@sha256:0f25c7c1d2085ced33e1ae55e028a4b505f6fe3381507a9f860fa2063a737a26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:22c324cefa6ee9be6fe01941a23d212205a526e6ce8653e9d1c137d0f1cf78d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45689970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395f97a58f60d9c8509c6f903b42b431926f0a656ed687421c1d4f26cfa3e577`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Jan 2018 00:46:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 10 Jan 2018 00:46:21 GMT
ENV DOCKER_VERSION=18.01.0-ce-rc1
# Wed, 10 Jan 2018 00:46:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 10 Jan 2018 00:46:30 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 10 Jan 2018 00:46:31 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 10 Jan 2018 00:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Jan 2018 00:46:32 GMT
CMD ["sh"]
# Wed, 10 Jan 2018 00:56:54 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 10 Jan 2018 00:56:55 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 10 Jan 2018 00:56:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 10 Jan 2018 00:56:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 10 Jan 2018 00:56:59 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 10 Jan 2018 00:56:59 GMT
VOLUME [/var/lib/docker]
# Wed, 10 Jan 2018 01:02:27 GMT
EXPOSE 2375/tcp
# Wed, 10 Jan 2018 01:02:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 10 Jan 2018 01:02:27 GMT
CMD []
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc8f04b9dae8b31b70b41c88f44a7141bd3ae973a601a33fb15d7f8706c1dc8`  
		Last Modified: Wed, 10 Jan 2018 01:16:20 GMT  
		Size: 38.8 MB (38774497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ae02c1117ad6f10ed7960e6d95604a30a2144eeb81c8f7e0ae09d1ba8d240e`  
		Last Modified: Wed, 10 Jan 2018 01:16:10 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233086f54b5ff27542f032baba3a85487b1ba358558b96ab6fef48ce21f438d2`  
		Last Modified: Wed, 10 Jan 2018 01:16:10 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d8280be61f43c3577cc93fa4839ae120818330267b8cca4f88659211a2f28e`  
		Last Modified: Wed, 10 Jan 2018 01:17:31 GMT  
		Size: 4.5 MB (4512616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb528ee4eefe113862e4d980eb529885a68301125abc678ca9b57ccb8a454b9`  
		Last Modified: Wed, 10 Jan 2018 01:17:30 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfc78ba3aa540f591bb40ceed72554ac5e1a8e2cc4203741b204041a4f2ef6c`  
		Last Modified: Wed, 10 Jan 2018 01:17:30 GMT  
		Size: 26.1 KB (26081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfed1d348f135c93d21760debafe3ba0dc124744f082e14bb144b6a0ab69dd8d`  
		Last Modified: Wed, 10 Jan 2018 01:17:29 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:429f1e16db6aea2020e035753b2f643a3805eaec4feabebc91d2ca956de21e16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41763689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb8858ce20c4136a00df28553fb084d927bc952f0920699e9c4d536d229acc1`
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
# Fri, 05 Jan 2018 07:00:40 GMT
ENV DOCKER_CHANNEL=test
# Fri, 05 Jan 2018 07:00:40 GMT
ENV DOCKER_VERSION=18.01.0-ce-rc1
# Fri, 05 Jan 2018 07:00:55 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 05 Jan 2018 07:00:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Jan 2018 07:00:57 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Jan 2018 07:00:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Jan 2018 07:00:58 GMT
CMD ["sh"]
# Fri, 05 Jan 2018 07:01:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Jan 2018 07:01:28 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Jan 2018 07:01:29 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 05 Jan 2018 07:01:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 05 Jan 2018 07:01:34 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 05 Jan 2018 07:01:35 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Jan 2018 07:01:36 GMT
EXPOSE 2375/tcp
# Fri, 05 Jan 2018 07:01:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Jan 2018 07:01:37 GMT
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
	-	`sha256:b861b75f409f59a8153d6c784c8d682a8535de2b3d1b75aad3d519a6f70c6bac`  
		Last Modified: Fri, 05 Jan 2018 07:02:48 GMT  
		Size: 35.2 MB (35242885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f13ca350edc08a88490f595bcdabdc39d9cd8c0a46bae3b0cf424e0e8dabd6`  
		Last Modified: Fri, 05 Jan 2018 07:02:34 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3980532ff95b17b520ba7924f6712c75ec93bea1ed6fe1a42808bd7114a214`  
		Last Modified: Fri, 05 Jan 2018 07:02:36 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9fc77c2147c5bd9be5cac96276ef838f8d94781a6a46b00c85dc348386a5fe`  
		Last Modified: Fri, 05 Jan 2018 07:03:27 GMT  
		Size: 4.2 MB (4194253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1228bfe8424622e12f3a88c552a08ecde641694ed6aac8f1c0d15647a8ace178`  
		Last Modified: Fri, 05 Jan 2018 07:03:25 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118d0ec4980ff6408421120010882aec8ad8f042c17af0112f6aa1bf30ecc465`  
		Last Modified: Fri, 05 Jan 2018 07:03:25 GMT  
		Size: 26.1 KB (26065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5254c15124a7d71d8dc3c75a223e4c326f365ea71ef60e44f56fc679004b78e`  
		Last Modified: Fri, 05 Jan 2018 07:03:25 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:dca221a67cd64117d91da21753f5a4b7b425fe74a54e60d84f26517298d78780
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39850673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d994dc5ee48a735dde7ee60c5a673e3b20d7ad819315651e4eec0963255fae`
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
# Fri, 05 Jan 2018 11:36:26 GMT
ENV DOCKER_CHANNEL=test
# Fri, 05 Jan 2018 11:36:26 GMT
ENV DOCKER_VERSION=18.01.0-ce-rc1
# Fri, 05 Jan 2018 11:36:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 05 Jan 2018 11:36:39 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 05 Jan 2018 11:36:40 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 05 Jan 2018 11:36:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Jan 2018 11:36:42 GMT
CMD ["sh"]
# Fri, 05 Jan 2018 11:37:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 05 Jan 2018 11:37:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 05 Jan 2018 11:37:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 05 Jan 2018 11:37:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 05 Jan 2018 11:37:14 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 05 Jan 2018 11:37:15 GMT
VOLUME [/var/lib/docker]
# Fri, 05 Jan 2018 11:37:16 GMT
EXPOSE 2375/tcp
# Fri, 05 Jan 2018 11:37:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 05 Jan 2018 11:37:19 GMT
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
	-	`sha256:85a838fc8dd9f74c43905dd118467ecfc8fca79d8f149fd9703ff369b03333e3`  
		Last Modified: Fri, 05 Jan 2018 11:38:17 GMT  
		Size: 34.8 MB (34815714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a19e3e397ccc994cbdd06975b4b69b6fe830496c58ad26ecd024609a58a2ff`  
		Last Modified: Fri, 05 Jan 2018 11:38:07 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf92f088d95daf81d8307f6887631b69e5a24ea4fbfe6a955377b08e80454958`  
		Last Modified: Fri, 05 Jan 2018 11:38:10 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee25545efc94fe2e0342a0418697bffde3930700948706fb97083e4ad22b95cd`  
		Last Modified: Fri, 05 Jan 2018 11:38:46 GMT  
		Size: 2.6 MB (2618648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faaf50543c3b296f2e2196f23dc228b8e781d0d14ad934f7252c87c19158433`  
		Last Modified: Fri, 05 Jan 2018 11:38:47 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2e35bc1f909ee427c22659c27cf52fb55f4be7dd99adebc18d2a047adf70eb`  
		Last Modified: Fri, 05 Jan 2018 11:38:45 GMT  
		Size: 20.8 KB (20809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea050bad0f5450bdad1c69c6fe83e360e42ade73248a2ac307d2bac627a3822a`  
		Last Modified: Fri, 05 Jan 2018 11:38:47 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; s390x

```console
$ docker pull docker@sha256:c666d1e14ffb84f31ae8122370552e80aad9c2b76ce2b89f7d978108672066db
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (45033014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a02a86d1efb1fd7042632551ed338afc44cc5f0daa7b60511a6c1130b45db55`
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
# Sun, 07 Jan 2018 09:17:42 GMT
ENV DOCKER_CHANNEL=test
# Sun, 07 Jan 2018 09:17:42 GMT
ENV DOCKER_VERSION=18.01.0-ce-rc1
# Sun, 07 Jan 2018 09:17:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sun, 07 Jan 2018 09:17:47 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sun, 07 Jan 2018 09:17:47 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sun, 07 Jan 2018 09:17:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 07 Jan 2018 09:17:47 GMT
CMD ["sh"]
# Sun, 07 Jan 2018 09:18:05 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sun, 07 Jan 2018 09:18:05 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sun, 07 Jan 2018 09:18:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sun, 07 Jan 2018 09:18:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sun, 07 Jan 2018 09:18:12 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sun, 07 Jan 2018 09:18:12 GMT
VOLUME [/var/lib/docker]
# Sun, 07 Jan 2018 09:18:12 GMT
EXPOSE 2375/tcp
# Sun, 07 Jan 2018 09:18:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sun, 07 Jan 2018 09:18:12 GMT
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
	-	`sha256:3aa529e2bf991abe687e36367c3bfa6fe632efbb50bf5847d1c2f15e7cd0323a`  
		Last Modified: Sun, 07 Jan 2018 09:19:46 GMT  
		Size: 37.8 MB (37775081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5654b9738fe27e66957741e651c3470a7ae77a580fa31018f3d70176f910d9c4`  
		Last Modified: Sun, 07 Jan 2018 09:19:36 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0cb276001c327fb5b8238d99efa56624825aa5d6be8422e7c5fb057fc9930c`  
		Last Modified: Sun, 07 Jan 2018 09:19:36 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a7357003d5e39bf9951439535c5182f8caf2b5a5f860b2fef8bb714f7e0f2`  
		Last Modified: Sun, 07 Jan 2018 09:20:12 GMT  
		Size: 4.7 MB (4734082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee317029d60566e6d249c7ca405822ea5178779dfee19f38e856513fc9c4a11`  
		Last Modified: Sun, 07 Jan 2018 09:20:10 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8669651088ba82d394848f667534bc6c8e9943274f0fc571c719ee0675fdfd25`  
		Last Modified: Sun, 07 Jan 2018 09:20:10 GMT  
		Size: 26.1 KB (26070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647d0ebb37ade1ab46f1d8cd88d5b742177beb1f04fb18fb9109c0de1b158399`  
		Last Modified: Sun, 07 Jan 2018 09:20:10 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
