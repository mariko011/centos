## `docker:test-dind`

```console
$ docker pull docker@sha256:cedb4a9023c15ae9516ea61ea60cda94897ef28cfdcea5afe2985b7aee095787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:ed1e9ceec0600a3a70ff98b539424ec8ae9847f0450cd209e2c1b70e9b867c8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53877427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d2eb7af566df90774bb13dc80fdaf89b6f89b754e340c6de3e568a3272a388`
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
# Tue, 21 Nov 2017 00:50:20 GMT
ENV DOCKER_VERSION=17.11.0-ce-rc4
# Tue, 21 Nov 2017 00:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 21 Nov 2017 00:50:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Tue, 21 Nov 2017 00:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 21 Nov 2017 00:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Nov 2017 00:50:33 GMT
CMD ["sh"]
# Tue, 21 Nov 2017 00:50:51 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 21 Nov 2017 00:50:51 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 21 Nov 2017 00:50:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 21 Nov 2017 00:50:55 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 21 Nov 2017 00:50:55 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Tue, 21 Nov 2017 00:50:56 GMT
VOLUME [/var/lib/docker]
# Tue, 21 Nov 2017 00:50:56 GMT
EXPOSE 2375/tcp
# Tue, 21 Nov 2017 00:50:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 21 Nov 2017 00:50:56 GMT
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
	-	`sha256:794410804a2c3e0a98ab43b6b9e3e176a28f1932876e229bf12ea8a9ba4b7b26`  
		Last Modified: Tue, 21 Nov 2017 00:51:34 GMT  
		Size: 47.5 MB (47467207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bb865548bc80369b0c37fb627735f890138786f56ccef25a637fd0acb982aa`  
		Last Modified: Tue, 21 Nov 2017 00:51:26 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf17f37a20ccbe771a2d5cbd744d76729359c137d637899c44c836dbea4028c`  
		Last Modified: Tue, 21 Nov 2017 00:51:25 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c62a750b200e6c97a0d86423ebf571a10be1b9f01b30b6bf174dce2243d37d8`  
		Last Modified: Tue, 21 Nov 2017 00:52:03 GMT  
		Size: 3.9 MB (3884806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a9410f248c420642f2780dcd177b3d220efb51c0bf8d4c67e14cb8a0ca0421`  
		Last Modified: Tue, 21 Nov 2017 00:52:03 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0765fa31883e4de335928a6587e330bc7918ce4304802d0132dc45e390b918e6`  
		Last Modified: Tue, 21 Nov 2017 00:52:03 GMT  
		Size: 179.8 KB (179752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6374ad93f1ca195f54b9785300410e9abe3ae7681e92151086f9cc34dd7da4`  
		Last Modified: Tue, 21 Nov 2017 00:52:03 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
