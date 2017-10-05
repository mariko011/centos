## `docker:rc-dind`

```console
$ docker pull docker@sha256:3aabe488df713ed905fdf0f4ec818a76803dbdfb57d6282820b5e65d49ed7dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:532a65324a9d6134d8137b8392ed538be1bfa18889423a454c617d72e568d472
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35528483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5f0d76229a488b008e1a6653de29e392b1055b1f587b0952f05d75bb38d8fe`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
# Thu, 05 Oct 2017 19:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 05 Oct 2017 19:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 05 Oct 2017 19:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 05 Oct 2017 19:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 05 Oct 2017 19:50:47 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:47 GMT
VOLUME [/var/lib/docker]
# Thu, 05 Oct 2017 19:50:47 GMT
EXPOSE 2375/tcp
# Thu, 05 Oct 2017 19:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:48 GMT
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
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc078b65798f50bd3ab33a11abf5b88222dae9c3eadbb3140194884a484349b`  
		Last Modified: Thu, 05 Oct 2017 19:51:56 GMT  
		Size: 2.2 MB (2209120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1747dbd68ed05cfc1cfeb0f8ab4ccb0cb688454b1949368ec32dab1c3e5faaf`  
		Last Modified: Thu, 05 Oct 2017 19:51:56 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92fc0de65b77765137adfe984b6eaa61b2550bbe5bb2246ede52c40818bbe7d`  
		Last Modified: Thu, 05 Oct 2017 19:51:55 GMT  
		Size: 176.2 KB (176199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e186780a52486cdd6e302ea73a4f37d12d681be6466fc563fdd396cf0ef32d8c`  
		Last Modified: Thu, 05 Oct 2017 19:51:55 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
