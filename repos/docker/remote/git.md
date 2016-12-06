## `docker:git`

```console
$ docker pull docker@sha256:663db2933f444b0c161b833bc1e9245d80a96bee5ace0e140048c17808c98ef0
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41129870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451eda98442419207512a4d9fd716a434a737c14bb721176ed0762368d5d55d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 31 Oct 2016 21:46:15 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:16 GMT
ENV DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f
# Mon, 31 Oct 2016 21:46:19 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 06 Dec 2016 20:32:45 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 06 Dec 2016 20:32:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Dec 2016 20:32:46 GMT
CMD ["sh"]
# Tue, 06 Dec 2016 20:32:57 GMT
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
	-	`sha256:a2fa41e1947e55748e6bb64fdc8decb92de95bf1f7f69c9da3ed022983953a9f`  
		Last Modified: Mon, 31 Oct 2016 21:47:12 GMT  
		Size: 28.8 MB (28762821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51d562d7245d6ce3d28e58f6a98817c140b349b2d29980930533dabf9a2461e`  
		Last Modified: Tue, 06 Dec 2016 20:36:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c656e94a01de2e4d99af9fbefa2321527de97bd226c0ed6e494d5846feac52`  
		Last Modified: Tue, 06 Dec 2016 20:38:12 GMT  
		Size: 9.1 MB (9138546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
