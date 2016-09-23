## `docker:experimental-git`

```console
$ docker pull docker@sha256:7f587534e2ffdde8e2e28b4041dd4ca608c6ab60b06e5a1c3cee062079b57270
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41213873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0693835acfe1201c6c32dc7eafdd2e080f8e2f02fc3f29268a4514f8e7be08d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Fri, 23 Sep 2016 16:38:44 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:38:45 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:38:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:38:45 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:40:29 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30628056ced332d91868633b4dd7b1e0d01c272aed22de32e75ab5d14527fa3`  
		Last Modified: Fri, 23 Sep 2016 16:39:07 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd10ee9f467ec4935446ab10e40b5d00c056becac1e3f90a93324cb5a1b6fb`  
		Last Modified: Fri, 23 Sep 2016 16:38:53 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75203a08a44ca7a52f58694f2ddecb42908f77154e604069829a66c55e204c78`  
		Last Modified: Fri, 23 Sep 2016 16:40:39 GMT  
		Size: 9.1 MB (9138564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
