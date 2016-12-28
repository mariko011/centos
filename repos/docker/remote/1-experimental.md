## `docker:1-experimental`

```console
$ docker pull docker@sha256:435f20cf5f21e387771c7805f486d5dd685c0d261c59f554553435c82fbd1405
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32173756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8afa090bc30a5d219aa42608ca186e27e4fe810086b849e72ddb040362e7883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
