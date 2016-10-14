## `docker:1-git`

```console
$ docker pull docker@sha256:8fa2ea093e3541122cacc90c1c92cdef35cbbba90bf18178e90fbdd29e1206bd
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c920d7a227151dfbe4c357f913501321edd14021d92da1bfc06511ac8f1de2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:13:44 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Fri, 14 Oct 2016 17:13:49 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:13:49 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:13:50 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:13:59 GMT
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
	-	`sha256:41fccea2b4682b52b967a5701f63c5e6e222039870ebe01bc09ebc824cb1a056`  
		Last Modified: Fri, 14 Oct 2016 17:14:40 GMT  
		Size: 28.8 MB (28762665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aedd08becd0dbf4f270732989a63ddbbfad80f36f27fbb6cd0bef1ef9025e5e`  
		Last Modified: Fri, 14 Oct 2016 17:14:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d53c4ffe4ff16f9d44c53c1c1a70d29be1c7ff9ec29ab3a03c27108faeecbe`  
		Last Modified: Fri, 14 Oct 2016 17:16:18 GMT  
		Size: 9.1 MB (9138529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
