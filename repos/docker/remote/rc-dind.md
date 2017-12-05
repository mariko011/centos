## `docker:rc-dind`

```console
$ docker pull docker@sha256:8188855df16023ff668e64d912325af585b64fdefcaad590beefe50b91996dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:39d6fe5538ec84193622bb2ff3ebe3138747f4eab352077297073545b420d393
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37109696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af58a0fa1d742639778ef5968c3fec3142e038d99572cfa0241201acda614467`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:06:17 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 01 Dec 2017 20:06:21 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 05 Dec 2017 02:50:28 GMT
ENV DOCKER_CHANNEL=test
# Tue, 05 Dec 2017 02:50:29 GMT
ENV DOCKER_VERSION=17.09.1-ce-rc1
# Tue, 05 Dec 2017 02:50:36 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 05 Dec 2017 02:50:36 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 05 Dec 2017 02:50:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 05 Dec 2017 02:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 02:50:37 GMT
CMD ["sh"]
# Tue, 05 Dec 2017 02:50:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 05 Dec 2017 02:50:58 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 05 Dec 2017 02:50:59 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 05 Dec 2017 02:51:02 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 05 Dec 2017 02:51:03 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Tue, 05 Dec 2017 02:51:03 GMT
VOLUME [/var/lib/docker]
# Tue, 05 Dec 2017 02:51:03 GMT
EXPOSE 2375/tcp
# Tue, 05 Dec 2017 02:51:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 05 Dec 2017 02:51:03 GMT
CMD []
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9ac44c1841d6907db77d1476941b90fbf7c3499440bf9068a83a66aecc237f`  
		Last Modified: Fri, 01 Dec 2017 20:09:01 GMT  
		Size: 351.0 KB (351004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a848dcd23bd7ecdadc08642cb18c81b6fd36e0f0b99ee7660d13bf5cf244dfc9`  
		Last Modified: Fri, 01 Dec 2017 20:09:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9aa54e852e205097412bd4b8f74da60285af9d76a7a6351abf0e4bb3a68eb6`  
		Last Modified: Tue, 05 Dec 2017 02:51:50 GMT  
		Size: 30.7 MB (30699408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd20cb484370170e66756778bf5608abd96ee9f5ac1150d69d82a1c8681dcc4`  
		Last Modified: Tue, 05 Dec 2017 02:51:42 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda13deaaa9fdad49f5751db281e4bc6afb560b098f8ac8828231de039497e8`  
		Last Modified: Tue, 05 Dec 2017 02:51:42 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5120baf9acd4e43eca9012bfc3e4269a5d63eb5251ce1e9d673820ecdcec5fcb`  
		Last Modified: Tue, 05 Dec 2017 02:52:24 GMT  
		Size: 3.9 MB (3884807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3f810c5fa23f6a2b2d71790dad5c67f433dcb1e30ba6fe9825f17ecd93fe93`  
		Last Modified: Tue, 05 Dec 2017 02:52:22 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d565e95cd543cb3a7a11466630a63e740e996c49a6b34d7550af71e8a877bf`  
		Last Modified: Tue, 05 Dec 2017 02:52:23 GMT  
		Size: 179.8 KB (179757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47e05fd5d7ea034219da4972492afb428b9d800b978781230330204c010af5d`  
		Last Modified: Tue, 05 Dec 2017 02:52:22 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; s390x

```console
$ docker pull docker@sha256:a4f841762bb0d47318330f40862e68fdf25794bbeb8f016732859746801d45b1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36865259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da80495a3b1ba666590aad380a0959d99b4e14d141ea090f3d363a2e9e9669c`
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
# Sat, 04 Nov 2017 03:01:38 GMT
ENV DOCKER_CHANNEL=test
# Tue, 05 Dec 2017 04:01:38 GMT
ENV DOCKER_VERSION=17.09.1-ce-rc1
# Tue, 05 Dec 2017 04:01:42 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 05 Dec 2017 04:01:43 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 05 Dec 2017 04:01:43 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 05 Dec 2017 04:01:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:01:43 GMT
CMD ["sh"]
# Tue, 05 Dec 2017 04:02:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 05 Dec 2017 04:02:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 05 Dec 2017 04:02:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 05 Dec 2017 04:02:04 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 05 Dec 2017 04:02:04 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Tue, 05 Dec 2017 04:02:05 GMT
VOLUME [/var/lib/docker]
# Tue, 05 Dec 2017 04:02:05 GMT
EXPOSE 2375/tcp
# Tue, 05 Dec 2017 04:02:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 05 Dec 2017 04:02:05 GMT
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
	-	`sha256:c96ff45d38e7128a469044b1a8b0dcb1d2b1b0b22e20081e38f1292f99ca1426`  
		Last Modified: Tue, 05 Dec 2017 04:02:48 GMT  
		Size: 30.1 MB (30119355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331def2711c4985e290608fcc2d40f2b09f6e56cd5baea57872c1ffacdd274f1`  
		Last Modified: Tue, 05 Dec 2017 04:02:41 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef88c6a66cb508bf0e1e3dd22dafe052574242fd39042e0a0d48a3b7d6b6f8c0`  
		Last Modified: Tue, 05 Dec 2017 04:02:41 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4bf2cf7ff2dedf337d0529b3f5bfff57ce7c53be15975755afd590ad1a2bd4`  
		Last Modified: Tue, 05 Dec 2017 04:03:07 GMT  
		Size: 4.1 MB (4144754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17ca0e291df01b4fb404dd78df7e4a88bccac82b93fe4b631c18409de61d68d`  
		Last Modified: Tue, 05 Dec 2017 04:03:05 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294c3d07813dfa82cb7ae9cc9d7b44191b97a4415261ecbf42b628a6050ec663`  
		Last Modified: Tue, 05 Dec 2017 04:03:06 GMT  
		Size: 179.8 KB (179772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e329a8d0dbbffddc49ee55a2c26addaca9bed1686ed501775b6a294a956dcc`  
		Last Modified: Tue, 05 Dec 2017 04:03:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
