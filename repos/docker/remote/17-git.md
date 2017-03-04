## `docker:17-git`

```console
$ docker pull docker@sha256:2cede9f44cc028dba58ede9d1df5b38aec50cf853ae7e1fe8e1eeebec0bc8eb5
```

-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42187202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162d19edb69ea63596bb67cdfb550b6fef71233b5a97c3c55d23c54a560267c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Fri, 03 Mar 2017 21:48:25 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Fri, 03 Mar 2017 21:48:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 03 Mar 2017 21:48:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 03 Mar 2017 21:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 21:48:29 GMT
CMD ["sh"]
# Fri, 03 Mar 2017 21:48:38 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:d33053c322cec639cb40b2ea2d4b13f43b6e1cb8b86830defe7ec2243cda78f6`  
		Last Modified: Sat, 04 Mar 2017 04:41:32 GMT  
		Size: 27.7 MB (27741186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c8fa6a6a9b98695439a446f85bb94be5d261a01bc33a629dbe3b965126cf4`  
		Last Modified: Sat, 04 Mar 2017 04:41:21 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab5511b1a5d784b955dd6069801caeda837da2cb8e61e11108caf8490a13dfd`  
		Last Modified: Sat, 04 Mar 2017 04:44:42 GMT  
		Size: 10.4 MB (10372547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
