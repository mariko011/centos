## `docker:dind`

```console
$ docker pull docker@sha256:3d8a86ddedcb1f0936967e75682d22296f02586ee31f1a0c78c729cd2c990649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

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
