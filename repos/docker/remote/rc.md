## `docker:rc`

```console
$ docker pull docker@sha256:b46708c03db70f658bdbc2c8503a9af0cae96f3d964fdda8b8dff59208e984e3
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (31991015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3985a7231884513198ed09ec6fdbff0db4096053fcb093e3b8b1cfabb0a5d614`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 28 Sep 2016 20:49:07 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:35 GMT
ENV DOCKER_SHA256=1f7db2be507038daccf960ae72712b89dfaf1cbbbc65788458893f7d2e677422
# Mon, 10 Oct 2016 23:03:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:39 GMT
CMD ["sh"]
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
	-	`sha256:4ab1f6fab441575261f84fba5c2a354db787b4f436eb01960bc276e8d50dfef5`  
		Last Modified: Mon, 10 Oct 2016 23:04:45 GMT  
		Size: 28.8 MB (28762559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab4e88b55ead11dc47d3e9017005979d13f108cd18c4c06410e3919bbddc4b`  
		Last Modified: Mon, 10 Oct 2016 23:04:34 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
