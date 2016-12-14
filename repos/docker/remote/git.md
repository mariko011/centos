## `docker:git`

```console
$ docker pull docker@sha256:5df9882d4855ba01341160967b2cc549727b0ce16ce928925ddffbfa28a553aa
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41188631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5336253a17a046d33c4de095b346d1166e67be0289bfedf96526ea390fe6574f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_VERSION=1.12.4
# Wed, 14 Dec 2016 02:38:53 GMT
ENV DOCKER_SHA256=f7cb7bb55d6ceba3ba3d24d62027e84799763b4c41b0bda5d8d5b9ba31ed0f2f
# Wed, 14 Dec 2016 02:38:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 14 Dec 2016 02:38:59 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:00 GMT
CMD ["sh"]
# Wed, 14 Dec 2016 02:39:11 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2737f65e91d91e6c90c107089c9913f46c4625ce3c5bf0280b3fea0c7d2adce9`  
		Last Modified: Wed, 14 Dec 2016 02:44:41 GMT  
		Size: 9.1 MB (9138482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
