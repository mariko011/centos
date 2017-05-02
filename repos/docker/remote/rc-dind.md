## `docker:rc-dind`

```console
$ docker pull docker@sha256:966a9cb46b2648c71263a631d2717ff83acf7a293641b033ed18ddc6bfbad3ad
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35027852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ed3b7744341b35ce13b6456024adf53e6b4e3f9faf1ac31545b79b57c26427`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 01 May 2017 17:56:57 GMT
ENV DOCKER_VERSION=17.05.0-ce-rc2
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_x86_64=fc2521a30797212410f46faece24204b9528990dac823c145b530c05acd50e9d
# Mon, 01 May 2017 17:56:58 GMT
ENV DOCKER_SHA256_armel=c4427822445e5f8c970ded1c106780a32641a7344c92a8dc57a9be4e0ea9cba0
# Mon, 01 May 2017 17:57:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch=x86_64 ;; 		armhf) dockerArch=armel ;; 		*) echo >&2 "error: unknown Docker static binary arch $apkArch"; exit 1 ;; 	esac; 	curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/${dockerArch}/docker-${DOCKER_VERSION}.tgz" -o docker.tgz; 	sha256="DOCKER_SHA256_${dockerArch}"; sha256="$(eval "echo \$${sha256}")"; 	echo "${sha256} *docker.tgz" | sha256sum -c -; 	tar -xzvf docker.tgz; 	mv docker/* /usr/local/bin/; 	rmdir docker; 	rm docker.tgz; 	docker -v
# Mon, 01 May 2017 17:57:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 17:57:04 GMT
CMD ["sh"]
# Mon, 01 May 2017 17:57:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 01 May 2017 17:57:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 01 May 2017 17:57:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 01 May 2017 17:57:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 01 May 2017 17:57:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 01 May 2017 17:57:30 GMT
VOLUME [/var/lib/docker]
# Mon, 01 May 2017 17:57:30 GMT
EXPOSE 2375/tcp
# Mon, 01 May 2017 17:57:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 01 May 2017 17:57:32 GMT
CMD []
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
	-	`sha256:a14aeeb194eef384c4fb0730e6e25080a88956a0056da3fdae337acc9e2105d0`  
		Last Modified: Mon, 01 May 2017 17:58:23 GMT  
		Size: 28.8 MB (28784736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fdf74f7db0f537d81a3722da6d71bfb62bdfb239e7cefd45252a613845ed47`  
		Last Modified: Mon, 01 May 2017 17:58:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adac02f77d649022b439f50929be44cda354b029757977e55f394f867123354`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 2.2 MB (2166042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548e27bbf75280e9d66c1b5d4e959132b65d462928dc2c9fc411abc86f1492aa`  
		Last Modified: Mon, 01 May 2017 18:00:06 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71724cb4ddaf0cffb13c394df901adabdd70e23c8bab99e7a6ce4841774a9ce4`  
		Last Modified: Mon, 01 May 2017 18:00:05 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36e2a65749805944765ba70baab19b37eeca54007a4b464e7a5b327bc7d64f8`  
		Last Modified: Mon, 01 May 2017 18:00:11 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
