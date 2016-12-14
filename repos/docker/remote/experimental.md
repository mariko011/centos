## `docker:experimental`

```console
$ docker pull docker@sha256:707050ddfccf6ec4ef7a8217943ae9e8b172e98c0d9d19b7ce0ac35122e7a0ad
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32181542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84891b07a799a4e796ecfc560769092f91c49057b896e4318634031b0b9e2664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:39:12 GMT
ENV DOCKER_SHA256=7e7c54875a8486086c60cd27c66f24d99ff4bb72217a3e144d9dfc0e1f658b7a
# Wed, 14 Dec 2016 02:39:17 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:39:18 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3a6b953d9c1bc65c56f65fb6893be2a160a5ea984ed2edb41580d2864e556d`  
		Last Modified: Wed, 14 Dec 2016 02:46:02 GMT  
		Size: 29.0 MB (28953031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ffe2aed4f80a8b2f21838e1b0efe1b142aff51ea846761fb8bcfbf640676f`  
		Last Modified: Wed, 14 Dec 2016 02:45:50 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
