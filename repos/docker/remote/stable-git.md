## `docker:stable-git`

```console
$ docker pull docker@sha256:ef7dff1103c7f0aae76e7b8e1f21a4ea8ad1ad0b54c4c38ba8a88c28a966a766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:ba225d908a5f92614e4d0220fa4d37be689628314c1c605e2d491ebbc63fc13d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44130355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6d20ec6419d549d5e26c2df0b2d11c8a76c36f8827e0ebfb6803252fb8bf5b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Wed, 13 Sep 2017 21:40:58 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:58 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:58 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:41:13 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:1b6c2fc1a6d783bd820db608c7c5962e655ecde471516103cd974f31947f0494`  
		Last Modified: Wed, 13 Sep 2017 21:44:30 GMT  
		Size: 30.0 MB (30018198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaec9b229b486d7d433db96cba9f74c4408d91f4e58b64c3a76dd71f3ec748`  
		Last Modified: Wed, 13 Sep 2017 21:44:24 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1bca0629db602c9caa7fb109286dde134e2bd74ad4623ca76d9e5e22f42c9d`  
		Last Modified: Wed, 13 Sep 2017 21:45:14 GMT  
		Size: 11.8 MB (11769658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
