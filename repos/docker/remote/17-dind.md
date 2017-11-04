## `docker:17-dind`

```console
$ docker pull docker@sha256:da1684b48cabc88c627efde1e6aa23163222ed60b42b12b9c9d50414d7ac2b7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:17-dind` - linux; amd64

```console
$ docker pull docker@sha256:2aa519e3225dc33125c0b1583d71a72c7ec36cfedad394627c29f86990799073
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37218444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4998cc824d9ac8e4be3bb89afa004c87911e796cde15f0676d437fcb8a8dd06b`
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
# Sat, 04 Nov 2017 08:25:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 04 Nov 2017 08:25:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 08:25:27 GMT
CMD ["sh"]
# Sat, 04 Nov 2017 08:25:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 04 Nov 2017 08:25:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 04 Nov 2017 08:25:38 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 04 Nov 2017 08:25:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 04 Nov 2017 08:25:42 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 04 Nov 2017 08:25:42 GMT
VOLUME [/var/lib/docker]
# Sat, 04 Nov 2017 08:25:42 GMT
EXPOSE 2375/tcp
# Sat, 04 Nov 2017 08:25:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 04 Nov 2017 08:25:42 GMT
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
	-	`sha256:8e544ef06bcbc1da2eddbcf0812726c74a4701fbb7c01101f8605a85d66ea0da`  
		Last Modified: Sat, 04 Nov 2017 08:28:14 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d03ce507c2ae790d1b8cc2e460b1f491f35038eedafc9de40018a95767a675`  
		Last Modified: Sat, 04 Nov 2017 08:28:43 GMT  
		Size: 3.9 MB (3884803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f21899b99884bb41a76306a7ae31e46be5c0b1a106c94e93d916259d205e7d`  
		Last Modified: Sat, 04 Nov 2017 08:28:41 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf54cc278c0f83e5abdaf798b9723bb07abade36a573b8da755b3ca2023e520b`  
		Last Modified: Sat, 04 Nov 2017 08:28:42 GMT  
		Size: 179.7 KB (179749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9ddd00f4c71c9f03c442f739ede754767e1248ca73317c9e7d1b04fe7a610e`  
		Last Modified: Sat, 04 Nov 2017 08:28:41 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d149ccadf74c48dbd41219d8f989bb6d85af8c89d5e77e5d5edcbc0c31218dd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34656025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7147a3f2e1bf7ab026c34772d667d62be464715177ca38bb41119976bc53b7c4`
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
# Thu, 26 Oct 2017 05:15:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:15:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:16:00 GMT
CMD ["sh"]
# Sat, 04 Nov 2017 06:02:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 04 Nov 2017 06:03:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 04 Nov 2017 06:03:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Sat, 04 Nov 2017 06:03:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Sat, 04 Nov 2017 06:03:06 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Sat, 04 Nov 2017 06:03:06 GMT
VOLUME [/var/lib/docker]
# Sat, 04 Nov 2017 06:03:07 GMT
EXPOSE 2375/tcp
# Sat, 04 Nov 2017 06:03:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 04 Nov 2017 06:03:08 GMT
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
	-	`sha256:d6c3121eb3968c58c32f230b60995144ed279a247ec39fcfd7644caf0373563b`  
		Last Modified: Thu, 26 Oct 2017 05:18:53 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fc5b55d55441b6ee18b2c8d05b1cdc11550d7b6311c6b4a1749405bed996b0`  
		Last Modified: Sat, 04 Nov 2017 06:10:02 GMT  
		Size: 3.6 MB (3624683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3ebe18fda4f4b96f3791c94149a075b6bec776289eddb4539bc57b509816f`  
		Last Modified: Sat, 04 Nov 2017 06:10:01 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411e9d7f7524017df043c4857d4d32b8bac9ffe0616320077326907f890ffcd3`  
		Last Modified: Sat, 04 Nov 2017 06:10:01 GMT  
		Size: 179.8 KB (179755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fc0f247bbc3eca4e4880b26a27bc377596931ceca94620a349f7a444b7bdc8`  
		Last Modified: Sat, 04 Nov 2017 06:10:01 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:17-dind` - linux; ppc64le

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

### `docker:17-dind` - linux; s390x

```console
$ docker pull docker@sha256:bfe511284921bad9d961a73dbc0f8a5b8e8ec0a347a565903129c77dff3fd19d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36945609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17bcd0133c2bfaf30efac3e0f1906360b91fc4e25be1de4601813baba6c9b61`
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
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Fri, 03 Nov 2017 03:01:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 03 Nov 2017 03:01:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 03 Nov 2017 03:01:43 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 03 Nov 2017 03:01:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 03 Nov 2017 03:01:46 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Fri, 03 Nov 2017 03:01:46 GMT
VOLUME [/var/lib/docker]
# Fri, 03 Nov 2017 03:01:47 GMT
EXPOSE 2375/tcp
# Fri, 03 Nov 2017 03:01:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 03 Nov 2017 03:01:47 GMT
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
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10106d79465751b9df2b17ed664e8a49242a5f9a254456ec1f2967813c631d95`  
		Last Modified: Fri, 03 Nov 2017 03:03:09 GMT  
		Size: 4.1 MB (4144737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726d6f9e9a843c835fb38fc5b314d3a6e9eefa7410f305023946018dbf4d103b`  
		Last Modified: Fri, 03 Nov 2017 03:03:07 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf0ad237169b8eb017fe0ab1ffb8faa294bf2c522fcdf17386e8faf69e25502`  
		Last Modified: Fri, 03 Nov 2017 03:03:08 GMT  
		Size: 179.8 KB (179770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69d5ffa2588ed5861f66ccd5958f0415d838b5612d5aa2f1634f138848673ff`  
		Last Modified: Fri, 03 Nov 2017 03:03:07 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
