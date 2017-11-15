## `docker:test-dind`

```console
$ docker pull docker@sha256:6bac45a51c6457fead17f2e1e55f45aa6b52b5f530ccfc88f2571b996c4b4bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:d5cb436bf6e7591fba424b653902ec12300c87ede04c06d72879f6b5a3921f17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53876807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85784e0b2a5a296f4248f29b09e8aa11b56e73efe9d464b77116f5cdf43fd3a`
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
# Sat, 04 Nov 2017 08:24:45 GMT
ENV DOCKER_CHANNEL=test
# Tue, 14 Nov 2017 17:50:19 GMT
ENV DOCKER_VERSION=17.11.0-ce-rc3
# Tue, 14 Nov 2017 17:50:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 14 Nov 2017 17:50:27 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 14 Nov 2017 17:50:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 14 Nov 2017 17:50:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Nov 2017 17:50:27 GMT
CMD ["sh"]
# Tue, 14 Nov 2017 17:50:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 14 Nov 2017 17:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 14 Nov 2017 17:50:43 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 14 Nov 2017 17:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 14 Nov 2017 17:50:47 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Tue, 14 Nov 2017 17:50:47 GMT
VOLUME [/var/lib/docker]
# Tue, 14 Nov 2017 17:50:47 GMT
EXPOSE 2375/tcp
# Tue, 14 Nov 2017 17:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 14 Nov 2017 17:50:48 GMT
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
	-	`sha256:2a86f382e1e8514eca0ada2a826ac9e109d12a46484286255f693401b3c1f91c`  
		Last Modified: Tue, 14 Nov 2017 17:51:23 GMT  
		Size: 47.5 MB (47466590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4890e4aadce1b237c81b024d61bab65b23aea3304cdbc65c4f14674c6b0e7b8c`  
		Last Modified: Tue, 14 Nov 2017 17:51:14 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f82b3f2916fa3fa2d9d7de31dd610827a80df4e522dbfbba70ab1ec3bf0c8b2`  
		Last Modified: Tue, 14 Nov 2017 17:51:14 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36575f75b728aaf39cf163545e637a867f90f882c6fd23e0caa56660c30ff3d2`  
		Last Modified: Tue, 14 Nov 2017 17:51:53 GMT  
		Size: 3.9 MB (3884806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc77af8a423dad04d8f5700b0e9d56a9114e996cc84bd53c524295731e798ac`  
		Last Modified: Tue, 14 Nov 2017 17:51:52 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6bc059c403b83615468832b0892062b541300fe63add20ead7a4389637c31`  
		Last Modified: Tue, 14 Nov 2017 17:51:52 GMT  
		Size: 179.8 KB (179751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f3702d498f5b6327e1dda214b5d19d1f6c3dc7f8724523f79f829c777b28c8`  
		Last Modified: Tue, 14 Nov 2017 17:51:53 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; s390x

```console
$ docker pull docker@sha256:46a780f2027cc677678563127ffe75aaeedf3799f60e3e253c42aadadcbb30d8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48344764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6118804c6b061dc01f8d8dc7a87db1dec23484e666231e75453226fce0c5f79`
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
# Wed, 15 Nov 2017 04:01:30 GMT
ENV DOCKER_VERSION=17.11.0-ce-rc3
# Wed, 15 Nov 2017 04:01:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 15 Nov 2017 04:01:37 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 15 Nov 2017 04:01:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 15 Nov 2017 04:01:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Nov 2017 04:01:38 GMT
CMD ["sh"]
# Wed, 15 Nov 2017 04:01:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 15 Nov 2017 04:01:53 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 15 Nov 2017 04:01:53 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 15 Nov 2017 04:01:57 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 15 Nov 2017 04:01:57 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 15 Nov 2017 04:01:57 GMT
VOLUME [/var/lib/docker]
# Wed, 15 Nov 2017 04:01:57 GMT
EXPOSE 2375/tcp
# Wed, 15 Nov 2017 04:01:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 15 Nov 2017 04:01:58 GMT
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
	-	`sha256:8178e1ba6b447d2928ad571db950aa74ad3be2cf085b6a417b625d2827da509c`  
		Last Modified: Wed, 15 Nov 2017 04:02:50 GMT  
		Size: 41.6 MB (41598883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443086c07bbaba026d50ff0fa4637e35afc583542232621ad5b515ad458f994c`  
		Last Modified: Wed, 15 Nov 2017 04:02:41 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104db4441528db431f5492840217c5972a907d6bd4a924c6bd9965f763220f0f`  
		Last Modified: Wed, 15 Nov 2017 04:02:42 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d898fee90f1257c1f7630d6aa738726376fe1ed4974993c02bf4c704691602da`  
		Last Modified: Wed, 15 Nov 2017 04:03:13 GMT  
		Size: 4.1 MB (4144733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992fd829d2fbddbdb046ff2ee2fae07d81e1e79bb1822314794617ab081eccad`  
		Last Modified: Wed, 15 Nov 2017 04:03:12 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df69c25dacce4f9e6634391635015b291616cd72d6e6e2884ce8651f88d98da`  
		Last Modified: Wed, 15 Nov 2017 04:03:11 GMT  
		Size: 179.8 KB (179770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc05c6b1fb6621b2b3595af854e48060f3a7a231db3afc3e07d6c7fb6f7971c`  
		Last Modified: Wed, 15 Nov 2017 04:03:12 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
