## `docker:1-experimental`

```console
$ docker pull docker@sha256:86754f196196ee182f910e3baaaec753220b8d17f40d57e61bedfeee5449d073
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32070638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea72590be69e2416f23d5dfafe546d0be8e1ff229a3867608812ca3e6d30e67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 24 Aug 2016 17:03:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Wed, 24 Aug 2016 17:03:02 GMT
ENV DOCKER_VERSION=1.12.1
# Wed, 24 Aug 2016 17:03:03 GMT
ENV DOCKER_SHA256=f92fe0630dd1f20d9678cd7e4043018566e3737001f53171274a4a6ed6baaa08
# Wed, 24 Aug 2016 17:03:08 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 24 Aug 2016 17:03:10 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/
# Wed, 24 Aug 2016 17:03:11 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Wed, 24 Aug 2016 17:03:12 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2842bdfdf9757b6fb042a914386833eb89594a0f6643fc8a7ca8e925dd58c`  
		Last Modified: Thu, 23 Jun 2016 20:17:29 GMT  
		Size: 913.0 KB (913008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85390d54884a32f429770f7268f31d99514674032b0940fc5dfdba92e5e661e`  
		Last Modified: Wed, 24 Aug 2016 17:05:46 GMT  
		Size: 28.8 MB (28846879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f91c3758487f2f08fe84cae7eb3535d93bdbae8df491f5d42f4b547b635377`  
		Last Modified: Wed, 24 Aug 2016 17:05:35 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
