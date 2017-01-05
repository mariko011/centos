## `docker:latest`

```console
$ docker pull docker@sha256:287f856d993ada59ce48aee7fadd5e61bb20ccd65ee2ef337e981e0d542d2845
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32881882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d811cc6c20a354ac7aa1fc8b26b1c29f6541c2b9e49cce9c0bdb2e6c79c191e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_VERSION=1.12.5
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Wed, 04 Jan 2017 21:04:31 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:31 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:32 GMT
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
	-	`sha256:542d1f1d844747f643654f92cebeef660f11ecdae1aeef0ca927871dde260971`  
		Last Modified: Wed, 04 Jan 2017 23:30:57 GMT  
		Size: 28.8 MB (28812411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b21abb1959f8051d0960743ab4e42885e27714c0576479f8bf7c74a413913`  
		Last Modified: Wed, 04 Jan 2017 23:30:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
