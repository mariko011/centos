## `docker:rc-dind`

```console
$ docker pull docker@sha256:f28c79d9e0bd4c40e657073e7d69f793e1670ed84799ba55e6b295b84388f13b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:badf687d4238ef4851696a9c06b5e8bc989892a9b111c01c2648fd3712206a19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45689374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eccbfc2b20f6b024dabc8cae3fcad2a145b8bfc9f62488e5e8071ec25697a13f`
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
# Thu, 04 Jan 2018 22:20:00 GMT
ENV DOCKER_CHANNEL=test
# Thu, 04 Jan 2018 22:20:01 GMT
ENV DOCKER_VERSION=18.01.0-ce-rc1
# Thu, 04 Jan 2018 22:20:07 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 04 Jan 2018 22:20:08 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 04 Jan 2018 22:20:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 04 Jan 2018 22:20:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Jan 2018 22:20:09 GMT
CMD ["sh"]
# Thu, 04 Jan 2018 22:20:42 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 04 Jan 2018 22:20:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 04 Jan 2018 22:20:49 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 04 Jan 2018 22:21:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 04 Jan 2018 22:21:08 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Thu, 04 Jan 2018 22:21:08 GMT
VOLUME [/var/lib/docker]
# Thu, 04 Jan 2018 22:21:08 GMT
EXPOSE 2375/tcp
# Thu, 04 Jan 2018 22:21:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 04 Jan 2018 22:21:17 GMT
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
	-	`sha256:b6f5b3e5721740cc141d714d8d67f926ed1e3a8b3e7f83ad1f11af5043844eda`  
		Last Modified: Thu, 04 Jan 2018 22:36:47 GMT  
		Size: 38.8 MB (38774493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a058b055fa821dff78e6ac6572ae946d137e1f096c3357932bce1e3bd93908`  
		Last Modified: Thu, 04 Jan 2018 22:36:37 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a8d741812aba9c628b9e3b60fc48b640a0f4864a419152c9e30a7e72a53cde`  
		Last Modified: Thu, 04 Jan 2018 22:36:36 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbf6fd7cce68cd81da72fb8d0f2b153a65ecf95120b673841134bd4d75b98a6`  
		Last Modified: Thu, 04 Jan 2018 22:43:22 GMT  
		Size: 4.5 MB (4512635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a582b37411123191e0a0eb9d46e68aec9a4bcb8bc611d5397366bc4340357`  
		Last Modified: Thu, 04 Jan 2018 22:43:21 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd402866ab701e0877a763c0d3e1ef2985e01931d36434d480d19afdf75b1abe`  
		Last Modified: Thu, 04 Jan 2018 22:43:21 GMT  
		Size: 26.1 KB (26087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6983e2d8a6f5a64d24f2e16f70de4b528b4eb4594a31afcfa866fd3442680b01`  
		Last Modified: Thu, 04 Jan 2018 22:43:21 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
