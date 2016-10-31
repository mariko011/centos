## `docker:experimental`

```console
$ docker pull docker@sha256:540cfed024a02f250993a9b071336a602d40a4cd3db7f5e55aeefd2f12913a27
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32122691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01d1c9ad52e4d4a96f42e0e04f0a46a922499b9c618c710fd98f646ae24b075`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
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
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
