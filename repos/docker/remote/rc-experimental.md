## `docker:rc-experimental`

```console
$ docker pull docker@sha256:3324a7a0d7469bde0a072905b88f966e7d0a884f3b3a75253620e44ed3ae3f92
```

-	Platforms:
	-	linux; amd64

### `docker:rc-experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69895c8ed63e4db44135e17602f9526b30dce0643d27d0132719d9475a686b1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 10 Oct 2016 23:03:47 GMT
ENV DOCKER_VERSION=1.12.2-rc3
# Mon, 10 Oct 2016 23:03:48 GMT
ENV DOCKER_SHA256=edb12efb2d9cad661461712c79c45f5cdccf42136dc253bd75c70156202fcdc8
# Mon, 10 Oct 2016 23:03:51 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 10 Oct 2016 23:03:51 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 10 Oct 2016 23:03:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:03:52 GMT
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
	-	`sha256:0d362103f2aae1d92c710ad972ba1d5bffd7071dd0f1b3ab30b7912115ef39b2`  
		Last Modified: Mon, 10 Oct 2016 23:06:45 GMT  
		Size: 28.9 MB (28894116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a0f6da995737e4cb130e33eab82b28291cf33a236923f41ebd994fa7caa1e`  
		Last Modified: Mon, 10 Oct 2016 23:06:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
