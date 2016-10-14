## `docker:experimental-git`

```console
$ docker pull docker@sha256:bf28f7c92ba535045c63766268e2dccdc0a46d00b3b29203e057143ca03a835e
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41261099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d63d19d0bff131987800f9c65209958af550a9aa22a51ae544d60dd4857771`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:16 GMT
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
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eff1bc07931eee5f711cda45c7f71f252bd2e7f64a51d18a59000e8bc74c7a`  
		Last Modified: Fri, 14 Oct 2016 17:18:52 GMT  
		Size: 9.1 MB (9138523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
