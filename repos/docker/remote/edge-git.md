## `docker:edge-git`

```console
$ docker pull docker@sha256:5e74b427a55b7e257c7f9ebba1f7765fe13ea4535debec33a9ea08a69296b2bd
```

-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42065652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be05d92ad57e639a101ee651a626a5d8e9084093df2646a5bc7de1b74b8fff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:10:08 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 27 Jun 2017 20:10:09 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 27 Jun 2017 20:10:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:10:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:10:38 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:14:11 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43208f2470b65c026864a1c56ba036f108fdafd39bed260219a2f1499b837469`  
		Last Modified: Thu, 29 Jun 2017 19:23:35 GMT  
		Size: 28.8 MB (28753637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d21c6620031b042f894308db6d47a60e7692a3d01500a7edfb7de6b93bc5e`  
		Last Modified: Thu, 29 Jun 2017 19:23:27 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374a9fe43e5c23da1d913d110ab6b210626902ec6d3a676b38db64106fa47896`  
		Last Modified: Thu, 29 Jun 2017 19:29:14 GMT  
		Size: 11.0 MB (10990391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
