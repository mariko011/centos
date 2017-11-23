## `docker:dind`

```console
$ docker pull docker@sha256:33e4c2a5278628a6d518dd57a53d609b49ebdb15c83d346c228081c91ee6936e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:4ae74ee4c521c868c7652be1deb9f42219c3ee2251847f8fe43e19b084b38f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53878213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5312e84355e6e50dd36c61663df237e8f0431f5af003710a7b3d10cd73b6bc`
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
# Thu, 23 Nov 2017 00:50:22 GMT
ENV DOCKER_VERSION=17.11.0-ce
# Thu, 23 Nov 2017 00:50:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Nov 2017 00:50:30 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Nov 2017 00:50:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Nov 2017 00:50:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Nov 2017 00:50:30 GMT
CMD ["sh"]
# Thu, 23 Nov 2017 00:50:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Nov 2017 00:50:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Nov 2017 00:50:46 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 23 Nov 2017 00:50:49 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Nov 2017 00:50:50 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 23 Nov 2017 00:50:50 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Nov 2017 00:50:50 GMT
EXPOSE 2375/tcp
# Thu, 23 Nov 2017 00:50:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Nov 2017 00:50:50 GMT
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
	-	`sha256:78d5155173915fb1cbe807a3e9e177c1e7aa14ab2a3b9d5a9949b75cca33cba0`  
		Last Modified: Thu, 23 Nov 2017 00:51:26 GMT  
		Size: 47.5 MB (47467999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cd84bc9a3fd65674d2b0eacd47e74e678b993ec83f21e804e69a4d8585ee5d`  
		Last Modified: Thu, 23 Nov 2017 00:51:17 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2968827d5fdfab3cdbb3c6e7ccd41f262756f79a5ebbd76f205e0d9401e338`  
		Last Modified: Thu, 23 Nov 2017 00:51:17 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b98083ea14ae904eeddcfc30b79570e8ad89d00daa7d414f3c0fdb318de84c`  
		Last Modified: Thu, 23 Nov 2017 00:52:13 GMT  
		Size: 3.9 MB (3884795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54090a2336e8244fca34f480af57bd69ba74536ef32cf14dccd68e92b417059`  
		Last Modified: Thu, 23 Nov 2017 00:52:13 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d5f9c18718b333f2a8ed61286d8303dee0c95617e15f73c8d909951d84a70b`  
		Last Modified: Thu, 23 Nov 2017 00:52:12 GMT  
		Size: 179.8 KB (179754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01579b34ded024b3fcdd71c13a98822e98ec941e24839ae01f69e8b6eb3a43b4`  
		Last Modified: Thu, 23 Nov 2017 00:52:12 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
