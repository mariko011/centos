## `registry:latest`

```console
$ docker pull registry@sha256:1152291c7f93a4ea2ddc95e46d142c31e743b6dd70e194af9e6ebe530f782c17
```

-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9654292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9bd19d022f6613fa0e3d73b2fe2b2cffe19ed629a426db9a652b597fccf07d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Wed, 19 Oct 2016 00:10:43 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 19 Oct 2016 00:10:44 GMT
COPY file:3f73dd916d906a0dbe8d59e55d9580ef2356202ca3d6d91750db6435f50b5e7b in /bin/registry 
# Wed, 19 Oct 2016 00:10:45 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 19 Oct 2016 00:10:45 GMT
VOLUME [/var/lib/registry]
# Wed, 19 Oct 2016 00:10:46 GMT
EXPOSE 5000/tcp
# Wed, 19 Oct 2016 00:10:46 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 19 Oct 2016 00:10:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Oct 2016 00:10:47 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930045f1e8fb5a4fdac55bf104155928abeb7ccf536bd1b33cbb5abbfbde664a`  
		Last Modified: Wed, 19 Oct 2016 00:10:56 GMT  
		Size: 615.2 KB (615236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feeaa90cbdbc5cb3a073b0feee4d9f7a9b5d5ecff5f5a5adef216b865099b54d`  
		Last Modified: Wed, 19 Oct 2016 00:10:59 GMT  
		Size: 6.7 MB (6725514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f85310d3508d3f3873d9d70156f5f35b02fbf613245fb4334070439ef0ebce`  
		Last Modified: Wed, 19 Oct 2016 00:10:56 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6082c23985817facb49b12a162005509fbebe8087cc1fdd9eebe9da3b35c5c3`  
		Last Modified: Wed, 19 Oct 2016 00:10:56 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
