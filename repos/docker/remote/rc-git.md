## `docker:rc-git`

```console
$ docker pull docker@sha256:928a84709597496e836ae99eab70e8d606dfe6e06c2ddd7b04b430ae7c5191d4
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ea3fcae4526a0f4f3d81a865422afbb98a289a160d09314eded37b14ae934a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:16:04 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c34c898ad9f0590e9a3a3cc074b6ef8fb5140924ee821d03565dedd884415b9`  
		Last Modified: Thu, 22 Jun 2017 19:22:09 GMT  
		Size: 11.7 MB (11732705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
