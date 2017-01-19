## `docker:dind`

```console
$ docker pull docker@sha256:ac39979800b91a9e61f921b9dcef5839c3165f2dec54f1ed5fe007a501513cd0
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33871355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6978320b242945706167851b69f66c799e248e117c0f7139c757c93de7ce1c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_VERSION=1.13.0
# Wed, 18 Jan 2017 22:47:58 GMT
ENV DOCKER_SHA256=fc194bb95640b1396283e5b23b5ff9d1b69a5e418b5b3d774f303a7642162ad6
# Wed, 18 Jan 2017 22:48:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 18 Jan 2017 22:48:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:04 GMT
CMD ["sh"]
# Wed, 18 Jan 2017 22:48:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 18 Jan 2017 22:48:08 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 18 Jan 2017 22:48:08 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 18 Jan 2017 22:48:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 18 Jan 2017 22:48:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:48:11 GMT
VOLUME [/var/lib/docker]
# Wed, 18 Jan 2017 22:48:11 GMT
EXPOSE 2375/tcp
# Wed, 18 Jan 2017 22:48:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 18 Jan 2017 22:48:11 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad3b7733bb756aaa457c8f743aa0e14a6a03cd7bd0c27efb2e4edcc226142a`  
		Last Modified: Wed, 18 Jan 2017 22:48:42 GMT  
		Size: 27.7 MB (27694510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4183fcffe507113490542a166d7dff392cd4e480975fbcd6faf14e613bf89e10`  
		Last Modified: Wed, 18 Jan 2017 22:48:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0755a92ec82ee3097529300bb4100dd890a2e056195c9491a11c375c741848dd`  
		Last Modified: Wed, 18 Jan 2017 22:49:43 GMT  
		Size: 2.1 MB (2103772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3beb65a76c2e047c9fc68871c097cfc3c705af6bba8c2eaf02b0d8e3657ba30b`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793a601b0ac4a0d1b8576622ec0587c77230588e0ae5bb2b7660db28e29397b4`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf19abedf1ed2cdf346f4ccb3fd4b94a34407df535c78af265e26d758f16d20`  
		Last Modified: Wed, 18 Jan 2017 22:49:41 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
