## `docker:rc`

```console
$ docker pull docker@sha256:52d492b3029b6ad6de6d6962a1cbae6175f4698c40610196bac83157e1f8931b
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31808269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e117bb1e8f28341c44e51f3f88d7cc21ccfcc8c5458b33d67db5f8edeb5b06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
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
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
