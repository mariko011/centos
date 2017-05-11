## `docker:git`

```console
$ docker pull docker@sha256:1af012a5b9f3dc3cc450c90a8598b4b5514be3965f4b7c9f61cb505f20a548ba
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43697495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdd608bf29b933043d9428a67954d3dc03d007c7633487a44a95bbf94ddc5f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:16:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 10 May 2017 21:16:42 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 10 May 2017 21:16:43 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Wed, 10 May 2017 21:16:44 GMT
ENV DOCKER_SHA256_x86_64=340e0b5a009ba70e1b644136b94d13824db0aeb52e09071410f35a95d94316d9
# Wed, 10 May 2017 21:16:45 GMT
ENV DOCKER_SHA256_armel=59bf474090b4b095d19e70bb76305ebfbdb0f18f33aed2fccd16003e500ed1b7
# Wed, 10 May 2017 21:16:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 10 May 2017 21:16:49 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 10 May 2017 21:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 21:16:51 GMT
CMD ["sh"]
# Wed, 10 May 2017 21:17:42 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d7b2e827ca13199c8bf58ac6545e6ff2d398e630c4735b331aa146a4d55cfb`  
		Last Modified: Thu, 11 May 2017 15:05:26 GMT  
		Size: 2.2 MB (2222656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b6478a62282f84ffe3553125cd51a1a63ed82fde8c18972e59c62135e79b6`  
		Last Modified: Thu, 11 May 2017 15:10:12 GMT  
		Size: 28.8 MB (28784055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04c57814bdc2548ebbc3ffe569b7e401d1013ebaef1a760fb758f7312584612`  
		Last Modified: Thu, 11 May 2017 15:10:05 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded09a6457c94ed395c6ef65b95e373b78df89042b086ba92015946649cb71a0`  
		Last Modified: Thu, 11 May 2017 15:14:40 GMT  
		Size: 10.7 MB (10722386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
