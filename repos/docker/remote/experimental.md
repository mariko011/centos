## `docker:experimental`

```console
$ docker pull docker@sha256:6da0870d45103776789fdc2da3fa89619b0ed896fcc2ed9a683af92a74623168
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33013984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52a00970ec5938c1bcc517013b3fff120a600c3e40a9773fd20f67a43b05eb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:42 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:43 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Wed, 04 Jan 2017 21:04:47 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:47 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:48 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ac395f258be59c1cb6e5ca55fc1aacc3e9e93f6788230431fae250ff5d1b2d`  
		Last Modified: Wed, 04 Jan 2017 23:34:11 GMT  
		Size: 28.9 MB (28944510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f934bc25dc08a28baa2900524d709c62c2b8729d68ae93a03485ed1a8fcbbed2`  
		Last Modified: Wed, 04 Jan 2017 23:34:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
