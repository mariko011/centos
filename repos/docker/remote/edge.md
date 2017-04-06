## `docker:edge`

```console
$ docker pull docker@sha256:ba19fd3d949bba6c94f5768fc0ddfafb4b9a40b3f35bdd3942b0e20f70b17e28
```

-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b4b64ebde60db987be01b9544e2667167850c61ec184e2389201052d14f26b`
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
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
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
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
