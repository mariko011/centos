## `docker:stable-git`

```console
$ docker pull docker@sha256:c9a8a9795e21a379731fdbd8979e09952c47f74467db85fef4eeed5b6915b611
```

-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42932113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c43c60997f8816ed4f34922de1972c31ecec33543b777e37e6b51b0e657578`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 30 Mar 2017 21:13:39 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Wed, 26 Apr 2017 19:34:46 GMT
ENV DOCKER_SHA256_x86_64=820d13b5699b5df63f7032c8517a5f118a44e2be548dd03271a86656a544af55
# Wed, 26 Apr 2017 19:34:47 GMT
ENV DOCKER_SHA256_armel=f05c733c22915b0c26d8b0390b26a026b33aaf7593d15475a6f86e1bbe1ddbe2
# Wed, 26 Apr 2017 19:34:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Wed, 26 Apr 2017 19:34:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 26 Apr 2017 19:34:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 19:34:54 GMT
CMD ["sh"]
# Wed, 26 Apr 2017 19:35:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed492db3a66ce1d7073597aa9d3c6715468e3804abe6d8a0ba6790f61c3fe65`  
		Last Modified: Sat, 04 Mar 2017 04:39:06 GMT  
		Size: 2.2 MB (2167713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dd265956cf80955031aaaa42dc482d13efe34ed4940e8e36cee90b00810912`  
		Last Modified: Wed, 26 Apr 2017 19:49:10 GMT  
		Size: 28.1 MB (28136282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef34c0a32faf81289165e54368dcd5e4d5cda8c575bc0c59d8cdf0e5097869d`  
		Last Modified: Wed, 26 Apr 2017 19:49:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7176ece1ab1489d316693d14b48ce3e4e088c773d455527243e494d54b40a0f4`  
		Last Modified: Wed, 26 Apr 2017 19:52:17 GMT  
		Size: 10.7 MB (10722360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
