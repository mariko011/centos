## `docker:dind`

```console
$ docker pull docker@sha256:66bd210088b54623f014eb0607d1f4b6f0e632a14006455318a6fe28e3195be8
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34118829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bac32ef4b32100e962a25584262f10f8017b07976c9b680c85139ea1fe7fbbf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Wed, 14 Dec 2016 02:39:03 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 14 Dec 2016 02:39:04 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 14 Dec 2016 02:39:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 14 Dec 2016 02:39:06 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 14 Dec 2016 02:39:07 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:39:07 GMT
VOLUME [/var/lib/docker]
# Wed, 14 Dec 2016 02:39:07 GMT
EXPOSE 2375/tcp
# Wed, 14 Dec 2016 02:39:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 14 Dec 2016 02:39:08 GMT
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
	-	`sha256:961365003a73a40c71f3810df29b09b3e6a3dc10022541a1dfc29a755d161ca5`  
		Last Modified: Wed, 14 Dec 2016 02:42:19 GMT  
		Size: 28.8 MB (28821642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e6e99af4b2c137055ab4f3f5510d14098d1a24ac19dc49cc6740d403d22896`  
		Last Modified: Wed, 14 Dec 2016 02:42:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b91ae8d690a70a5b366877e493ae6f4043efdc077ed1954c8fd657898b491e`  
		Last Modified: Wed, 14 Dec 2016 02:43:30 GMT  
		Size: 2.1 MB (2065064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063e3e0666cce9fb284569c07d6d155a5da9a33afcce888074f8da1273bee424`  
		Last Modified: Wed, 14 Dec 2016 02:43:28 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e9841ad5f149dbb0a992ceebb8f5214b01897116b25f6aa99167fa6bb26c1`  
		Last Modified: Wed, 14 Dec 2016 02:43:29 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968eed9412516f1380fa2ee4d1e024e8c140fd20ba820f85d44506c8bbdef150`  
		Last Modified: Wed, 14 Dec 2016 02:43:28 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
