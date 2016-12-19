## `docker:1-dind`

```console
$ docker pull docker@sha256:6438ab2564667f31a3bcd6bea78aa4e792985ebb8eefc5dc7e2e2207e2ce4ac7
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34109616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d858ce3dbd2cbf8389673d3c8c8c98ae6bdcd9c38f1ba2827694a8860aed9c8a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Dec 2016 22:08:06 GMT
ENV DOCKER_VERSION=1.12.5
# Mon, 19 Dec 2016 22:08:07 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Mon, 19 Dec 2016 22:08:10 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:08:11 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:12 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:08:15 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:08:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:17 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:18 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:19 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:19 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:20 GMT
CMD []
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
	-	`sha256:8d4778c8461ca643650d385992936097520ca83f0c34899cb445c2e0be8433a9`  
		Last Modified: Mon, 19 Dec 2016 22:12:17 GMT  
		Size: 28.8 MB (28812410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a623eac2dfbff369b20e7b044b473cf5a7c317bd2beea582cc7611ffa4f24a8`  
		Last Modified: Mon, 19 Dec 2016 22:12:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86e8c174f9c59b23db6232da29b60334da7eb6074eec1c84c715ddfaf86cc9b`  
		Last Modified: Mon, 19 Dec 2016 22:13:26 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98af5756be02f9fd8fffd016f1b361445becb25b91ead35abcafc0998a63193`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34950cefe44743d67471449d9bd69d17c6b407ceecf21875874822e57c41c13`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ad47c33653a6f4795a3ef67478bf49fedf85ab5e93bf505953bdef6faabbb3`  
		Last Modified: Mon, 19 Dec 2016 22:13:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
