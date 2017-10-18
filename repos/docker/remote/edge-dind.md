## `docker:edge-dind`

```console
$ docker pull docker@sha256:9cc2598a015e78571f217a4b74fc1eb10bbda1e0033aefd43e8e7df3a532be9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:8d4d30157fa07c24a67450fe7e48c4a809a82ca83be6ed96a0ba57e3c6940c39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29c6450b2625e752bc284428bf0ccfd5d14be2f952adac2768530c0bb5c2900`
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
# Thu, 12 Oct 2017 21:51:58 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 18 Oct 2017 21:43:08 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 18 Oct 2017 21:43:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 18 Oct 2017 21:43:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 18 Oct 2017 21:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Oct 2017 21:43:17 GMT
CMD ["sh"]
# Wed, 18 Oct 2017 21:43:30 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 18 Oct 2017 21:43:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 18 Oct 2017 21:43:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 18 Oct 2017 21:43:36 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 18 Oct 2017 21:43:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 18 Oct 2017 21:43:39 GMT
VOLUME [/var/lib/docker]
# Wed, 18 Oct 2017 21:43:39 GMT
EXPOSE 2375/tcp
# Wed, 18 Oct 2017 21:43:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 18 Oct 2017 21:43:40 GMT
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
	-	`sha256:99128a53a3c9687693530dacea3488a77763a8dde83501350a80853b922eabc5`  
		Last Modified: Wed, 18 Oct 2017 21:44:22 GMT  
		Size: 30.8 MB (30809023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f227d2fb4a8034ab65266b57144aabeba313fa9580fde7b4066c34fd0a7e9154`  
		Last Modified: Wed, 18 Oct 2017 21:44:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e33bebb62a19063dbf1646fad396628e98058ce5bd0a0028c8a73a6634e0384`  
		Last Modified: Wed, 18 Oct 2017 21:45:27 GMT  
		Size: 2.2 MB (2209137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42259289c8c7e1ccaf2c2c1ff36c20951fc4eed8ebc98aa225019ac584bebf76`  
		Last Modified: Wed, 18 Oct 2017 21:45:24 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65c31cf57416dd7ab804c015c111bf11adae36ad71badffc4b393d3c5a3d866`  
		Last Modified: Wed, 18 Oct 2017 21:45:25 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8628b1d9520b38de2bd6f4e05cab03f6c8cbf1518115f90e9ce431a8a8de6afe`  
		Last Modified: Wed, 18 Oct 2017 21:45:25 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
