## `docker:stable-git`

```console
$ docker pull docker@sha256:c14b136a86c7114d19a0bffd972e2a7f25abe9aa4cdc321962910f1f34f060e2
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41416145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9479742f89fb6fed7c02512db1ca52f8e1c7e4528a59a675732d698dda9261ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Fri, 19 May 2017 19:24:36 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 19 May 2017 19:26:12 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Fri, 19 May 2017 19:26:18 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Fri, 19 May 2017 19:26:19 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 19 May 2017 19:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 19:26:21 GMT
CMD ["sh"]
# Fri, 19 May 2017 19:27:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b405897e6fd8e625849a4b5a7f1ab0577b167f7acc204ac1fa0ba4a3e118133b`  
		Last Modified: Fri, 19 May 2017 19:27:49 GMT  
		Size: 350.6 KB (350634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb1dae357f7f086d8e3f2d8bc1acbbb155a37dfd0622993472a411ce539961`  
		Last Modified: Fri, 19 May 2017 19:35:04 GMT  
		Size: 28.1 MB (28106898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd01eb6c16743bfd87b08c2caa22985b8d80cf06de8514cebd61f5fe7675c1b`  
		Last Modified: Fri, 19 May 2017 19:34:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5e618247cd5df3712acb369aeea54a786ae26d1f83629cf5e140f9e17aee01`  
		Last Modified: Fri, 19 May 2017 19:38:15 GMT  
		Size: 11.0 MB (10990217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
