## `docker:rc-dind`

```console
$ docker pull docker@sha256:a500a6076863c56a0f4f1f6e7e4f64ad6a613409cb877f4c155a0ae3c43d0203
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33915648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6963b4e56d00860fa25accfe7116e02dd140f2b4c9948e1f0b8801ce622d9636`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Thu, 23 Feb 2017 19:22:30 GMT
ENV DOCKER_VERSION=17.03.0-ce-rc1
# Thu, 23 Feb 2017 19:22:31 GMT
ENV DOCKER_SHA256=4ba6482ff22ddfcf31019c831c8363f309c2c3cf8046d54b53a07e10edf19e47
# Thu, 23 Feb 2017 19:22:35 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 23 Feb 2017 19:22:36 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:37 GMT
CMD ["sh"]
# Thu, 23 Feb 2017 19:22:40 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 23 Feb 2017 19:22:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Feb 2017 19:22:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 23 Feb 2017 19:22:43 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 23 Feb 2017 19:22:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 23 Feb 2017 19:22:44 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Feb 2017 19:22:45 GMT
EXPOSE 2375/tcp
# Thu, 23 Feb 2017 19:22:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Feb 2017 19:22:46 GMT
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
	-	`sha256:3f2cf4c893cd1f6f5c7504a4ef893fdbef93baed8038d349cb08a041e8f8794e`  
		Last Modified: Thu, 23 Feb 2017 19:23:20 GMT  
		Size: 27.7 MB (27738797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffedf93e2a841bf8af1eae2027fa659a1dd4564e092d05bda1f8eead2a11fea`  
		Last Modified: Thu, 23 Feb 2017 19:23:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0920f0ec5088315ab411ef27f25d1d0ea6cc0801f41855311b8e328150763c`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 2.1 MB (2103778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8085d877cb46b4d46735eaa061253ae5984a9c576406ccdd9a97180b91ffd9ea`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476755cd35e135fcd5bb926d98a2922ebd4b7ee5465a45f00ec90df4219ac6b`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0139e2f89d07983de0666f309fa4bd4451d88773cf5c97c79ae63f0a8814b1`  
		Last Modified: Thu, 23 Feb 2017 19:24:16 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
