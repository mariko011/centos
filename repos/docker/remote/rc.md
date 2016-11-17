## `docker:rc`

```console
$ docker pull docker@sha256:d2ae339abc7984978c916a0b40d843392f4afa87f5efe94e3a047eeddd36978b
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30720921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653a1f6726f929fcf43bff378950ff1cc67a8b80ca56998d188a79898106342d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_VERSION=1.13.0-rc1
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_SHA256=74747168d0ced5b59dc0483ce79e673c1244754600c902024792a5b67d9f15db
# Thu, 17 Nov 2016 21:31:57 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 17 Nov 2016 21:31:57 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Thu, 17 Nov 2016 21:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Nov 2016 21:31:58 GMT
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
	-	`sha256:56d24633bc9c4e1b08154541d9bfc26ac3ee1215043dcb4a51b4afa6b3ccebda`  
		Last Modified: Thu, 17 Nov 2016 21:32:40 GMT  
		Size: 27.5 MB (27492413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf65ab1ecacf85fcc4383555c57dc91251bb094a035e124c801560d65a14dc5`  
		Last Modified: Thu, 17 Nov 2016 21:32:29 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
