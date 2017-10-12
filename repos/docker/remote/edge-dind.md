## `docker:edge-dind`

```console
$ docker pull docker@sha256:effc528b6b06b773d3353c3ef2e772d430cbd6a74103a5e2c9f01e2795485ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:b30ea4ccb15e4b36fe9650bf8e5cbdff5d1606bf988d74f81a0f1beaf5339848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3087974c87e56318d6b702e9f1f4f3558198826c0a1f3e2b844432491c1a565`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 12 Oct 2017 21:51:18 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Thu, 12 Oct 2017 21:51:24 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:51:24 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:25 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:51:35 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:51:36 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:51:36 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:51:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:51:40 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:51:40 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:51:40 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:51:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:41 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e92c12f048f826ec9fa089a1b6e8fca3fb2294c60ac833fd5ec1b02ffb45f9`  
		Last Modified: Thu, 12 Oct 2017 21:55:10 GMT  
		Size: 30.7 MB (30689375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244afa053af0e9a49af8ae91a74bb3b26bdf29530f7881e276178e777d4086d`  
		Last Modified: Thu, 12 Oct 2017 21:55:04 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cacbb3f9b037451acea196afb70425848ab181052bca3e8ec914192fce9b057`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 2.2 MB (2209117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c296f2e06975d36045c3ab686e144231a6ed0e0c22cc22cc92ee80ce86d7986b`  
		Last Modified: Thu, 12 Oct 2017 21:56:18 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc672180989a86c6bfa2ca14e102b2557808b0e94ed9f29becbce11ae390299`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574ffc0df03c874469e67f3b22751b1ef02954d39329129fb6eab640e434cd5`  
		Last Modified: Thu, 12 Oct 2017 21:56:19 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
