## `docker:rc-git`

```console
$ docker pull docker@sha256:d7ff1a693fde32be4e4f0e3254d20ad36c8ada2cf11029f4608ec0a9f2fb5c96
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44533710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:555ca96a5931eea5737720936f78c6c6a851252d4d72043dec2ef69d240daefd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 26 Jul 2017 20:17:14 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc1
# Wed, 26 Jul 2017 20:17:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 26 Jul 2017 20:17:21 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 26 Jul 2017 20:17:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 20:17:22 GMT
CMD ["sh"]
# Wed, 26 Jul 2017 20:17:46 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e788b059f434e7e1726201d28ba1f877ae7fea947aa40a573159b83cbc60a61`  
		Last Modified: Wed, 26 Jul 2017 20:18:09 GMT  
		Size: 30.5 MB (30458605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3f243d4531355cd1de9111ad77d2c068e319ad1fec6491b436064777358904`  
		Last Modified: Wed, 26 Jul 2017 20:18:00 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b605bf2374640b3d5f48d1092d30138c41bf40a39ed0b150f83101170eb8527`  
		Last Modified: Wed, 26 Jul 2017 20:19:46 GMT  
		Size: 11.7 MB (11732673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
