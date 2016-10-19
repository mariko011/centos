## `docker:git`

```console
$ docker pull docker@sha256:222d2e4a194151d062327cc3b1edaa1f3b3d4182ffdcadb66bc6735404cdf231
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adc546fa267fa84484124d620927e20aebcd5519816fa951974c7e889dead1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:10:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3abcff0c5227878926f6c3a970c1ff3f80706611dd2ea75bf250de7bfcfd5a`  
		Last Modified: Tue, 18 Oct 2016 23:10:19 GMT  
		Size: 9.1 MB (9138526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
