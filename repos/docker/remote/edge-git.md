## `docker:edge-git`

```console
$ docker pull docker@sha256:0140747de751c7eb3e10d611c7f75c725943ca9712eee3a6633b8d546d377a10
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbf23232776ff80a3e098c2f54794e0b581e9dccf81a1bbc0349ab5baf0d220`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:53 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69c102de51596874b41f7d168c17a27e36340a4119a37e1a3337dc177556f77`  
		Last Modified: Tue, 29 Aug 2017 23:57:41 GMT  
		Size: 11.8 MB (11769689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
