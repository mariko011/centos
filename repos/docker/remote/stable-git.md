## `docker:stable-git`

```console
$ docker pull docker@sha256:b64242e3ea268f7f9d6f1c28cd494f62bf6ac85b8d7586efad18e81112f62be2
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44128855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff6e95ab6d50a61e2b238ab82d28dfc16138f2050247582952b09a6097571c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 29 Jun 2017 21:34:26 GMT
ENV DOCKER_CHANNEL=stable
# Mon, 21 Aug 2017 18:05:38 GMT
ENV DOCKER_VERSION=17.06.1-ce
# Mon, 21 Aug 2017 18:05:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:44 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:44 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:06:08 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bad573d5ee8d7ee5c2dc0f1fd50c2a3127fda979f6e5efc72ee12cd5f7f2eec`  
		Last Modified: Mon, 21 Aug 2017 18:09:52 GMT  
		Size: 30.0 MB (30016736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f100a7b5444a3a2720e19f05e5f7b3388248d011866c79a5af1a6ef631487c`  
		Last Modified: Mon, 21 Aug 2017 18:09:45 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6895664c8e7e256bd9086ade9e5027c1f6953730486e319b432e629baceec3`  
		Last Modified: Mon, 21 Aug 2017 18:11:45 GMT  
		Size: 11.8 MB (11769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
