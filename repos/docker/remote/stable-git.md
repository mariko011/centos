## `docker:stable-git`

```console
$ docker pull docker@sha256:b5ff49006c6d5f6a4962953c6cafe3949c43f342c1eea84c12b76a9f5f4a1777
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44063361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13455d9a5a879f7bfe41124a4c5eec4fdbef760d02e5600ba3f736a5c24e499d`
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
# Thu, 29 Jun 2017 21:34:27 GMT
ENV DOCKER_VERSION=17.06.0-ce
# Thu, 29 Jun 2017 21:34:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 29 Jun 2017 21:35:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 29 Jun 2017 21:35:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:35:02 GMT
CMD ["sh"]
# Thu, 29 Jun 2017 21:38:43 GMT
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
	-	`sha256:0b539e28e9a6ad4eb629fd962b2062a936764a9bb846b365121b0cb85b215303`  
		Last Modified: Thu, 29 Jun 2017 21:58:22 GMT  
		Size: 30.0 MB (29988247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3af5fe81b021bffdce92f60944a4c14b9308e897482e317b422f6efc8f391d`  
		Last Modified: Thu, 29 Jun 2017 21:58:13 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec33fee374b5eaa2c128a4ebec674fad8ef1036d765fa8da9c7a638b2027ce71`  
		Last Modified: Thu, 29 Jun 2017 22:08:12 GMT  
		Size: 11.7 MB (11732680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
