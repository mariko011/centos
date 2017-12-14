## `docker:rc-dind`

```console
$ docker pull docker@sha256:08a7660a707f4225b09d93197b08c2c1efba21426f25ef8377aa2d5b7caffc6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:0b9260c7110ed0a69914d38d86c3cc644f1bfb46d7cbc6979b08de181cf7bb74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41019811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb567c778ebeef3b6e217d701988abc3b100104faeb04a87558d9e3544dd971`
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
# Wed, 13 Dec 2017 22:50:27 GMT
ENV DOCKER_VERSION=17.12.0-ce-rc2
# Wed, 13 Dec 2017 22:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Dec 2017 22:50:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 13 Dec 2017 22:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 22:50:34 GMT
CMD ["sh"]
# Wed, 13 Dec 2017 22:50:50 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 13 Dec 2017 22:50:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Dec 2017 22:50:51 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Dec 2017 22:50:54 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Dec 2017 22:50:55 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:50:55 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Dec 2017 22:50:55 GMT
EXPOSE 2375/tcp
# Wed, 13 Dec 2017 22:50:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Dec 2017 22:50:55 GMT
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
	-	`sha256:0026a5f083b0aee410cc89c71ce4c35d8de909758b31f21ed0f135b39dc52c43`  
		Last Modified: Wed, 13 Dec 2017 22:51:36 GMT  
		Size: 34.6 MB (34609506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557c28b76c7e2c08fe5ab40d48d8c20a59d1df400a0d5eed71efb6be53e8ce78`  
		Last Modified: Wed, 13 Dec 2017 22:51:29 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14e0ac5e7d387bc4947fe3b9b351e428ca36350d9973f6e60754c4afed3b77d`  
		Last Modified: Wed, 13 Dec 2017 22:51:29 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7cba06b2988ab14d0cfb9c786af99f9117667880a95a459b3ee9f27e9381ec`  
		Last Modified: Wed, 13 Dec 2017 22:52:18 GMT  
		Size: 3.9 MB (3884822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c086dfbac024859ba13122047bef31e1a85144d79960e804afd2245c65cd3932`  
		Last Modified: Wed, 13 Dec 2017 22:52:16 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346f0e440efbe8bdc5c1d30074b3b02bf663a70231e318c615409788c4358838`  
		Last Modified: Wed, 13 Dec 2017 22:52:17 GMT  
		Size: 179.8 KB (179756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cc033d80c12be0e16c7051016c5f32658d3cee766200a9b13004de2a01d6ee`  
		Last Modified: Wed, 13 Dec 2017 22:52:16 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
