## `docker:latest`

```console
$ docker pull docker@sha256:d22f19807acf09f2c9e6ee0452aecd34f6ec8081b0d4a8b86d51131b231883a4
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30842976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774c3d99c5d5742167cf72c03cb933643b6f27803e50d185c6ff6abb94036a4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Wed, 26 Apr 2017 19:33:14 GMT
ENV DOCKER_SHA256_x86_64=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Wed, 26 Apr 2017 19:33:15 GMT
ENV DOCKER_SHA256_armel=9b7df7dc02f620748657d3f599a9701c35f7b0b3d0acbc7fd324126ba5f6c4e9
# Wed, 26 Apr 2017 19:33:19 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:33:20 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:33:21 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd930174e3cac4f258d72dad96b9dcf31634e16722082968659a89ff679bf65c`  
		Last Modified: Wed, 26 Apr 2017 19:42:11 GMT  
		Size: 26.8 MB (26769504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b655df83ee711a0a8f8dc131795180e1a295441874c28f4c3cb779b06f3145`  
		Last Modified: Wed, 26 Apr 2017 19:42:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
