## `docker:1-git`

```console
$ docker pull docker@sha256:f2c966851de98a8dc3bde99c5772c53dccd848b375fcba63930a5497cb6de13e
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41075374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4503ff708f4947c6d013062987752f103be2aff7d67384f95c38f7c07d2e737e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Mon, 19 Sep 2016 23:48:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Mon, 19 Sep 2016 23:48:30 GMT
ENV DOCKER_BUCKET=get.docker.com
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_VERSION=1.12.1
# Mon, 19 Sep 2016 23:48:31 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Mon, 19 Sep 2016 23:48:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Sep 2016 23:48:36 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Mon, 19 Sep 2016 23:48:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 23:48:36 GMT
CMD ["sh"]
# Mon, 19 Sep 2016 23:50:55 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1b7d4bfe4e9782e02d9870a81f91a195e15eb9bf2b55486799e4b113576b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:45 GMT  
		Size: 914.3 KB (914310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb337ef1291b763a90b83c31a634b09aa6d3b38f416cb17993426bc35bac9d6`  
		Last Modified: Mon, 19 Sep 2016 23:49:01 GMT  
		Size: 28.7 MB (28710989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090ec87ff0433d4e51b8168d2a6034e94a83902abb7c64f5dc232235e0653b1`  
		Last Modified: Mon, 19 Sep 2016 23:48:44 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203abb9aa37f8a08f27f92c180432124cbf2b4e0f8f82ce218fba9cd1161f1b4`  
		Last Modified: Mon, 19 Sep 2016 23:51:07 GMT  
		Size: 9.1 MB (9138557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
