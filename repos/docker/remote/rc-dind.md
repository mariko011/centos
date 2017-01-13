## `docker:rc-dind`

```console
$ docker pull docker@sha256:23857fa7229fb02a7ee7f8924f56306f35b366cd784f4b9b80bc9cb3c9ddf760
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33871683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5153160ad0fb2b3792edfb9d8502b1be3e2952198f724d1c99b4c43764327936`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 13 Jan 2017 22:17:51 GMT
ENV DOCKER_VERSION=1.13.0-rc6
# Fri, 13 Jan 2017 22:17:51 GMT
ENV DOCKER_SHA256=8a5d299c5df3082d794b9741148a5ab386ffe7a5be6b737e36a2f5c70e005aae
# Fri, 13 Jan 2017 22:17:55 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 13 Jan 2017 22:17:56 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 13 Jan 2017 22:17:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:17:57 GMT
CMD ["sh"]
# Fri, 13 Jan 2017 22:18:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 13 Jan 2017 22:18:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 13 Jan 2017 22:18:02 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 13 Jan 2017 22:18:03 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 13 Jan 2017 22:18:04 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 13 Jan 2017 22:18:05 GMT
VOLUME [/var/lib/docker]
# Fri, 13 Jan 2017 22:18:05 GMT
EXPOSE 2375/tcp
# Fri, 13 Jan 2017 22:18:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 13 Jan 2017 22:18:06 GMT
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
	-	`sha256:0fe73404d85d69f192d9df483939bb647463acca6c73b4568baadd853bb0d74c`  
		Last Modified: Fri, 13 Jan 2017 22:18:38 GMT  
		Size: 27.7 MB (27694803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2e0e60dd75b9e2cf0e5d48812677d72fd1b51ce2ece082650d41b32ceeaf7b`  
		Last Modified: Fri, 13 Jan 2017 22:18:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84079d1282e8114a8a4ce0efa8e1afc0b434af586424503cd3d9803fec6049c2`  
		Last Modified: Fri, 13 Jan 2017 22:19:25 GMT  
		Size: 2.1 MB (2103810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c1adc9a249f19b82f96b621b8a5aee2b62065dfbc74f8b3803dc5cbd476754`  
		Last Modified: Fri, 13 Jan 2017 22:19:24 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9679861e09aa8fb99f7dcd18e5d2cff8230be0364507760e2ed2539f58c7a0`  
		Last Modified: Fri, 13 Jan 2017 22:19:24 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ea1c3c12da387142e5ccec1acd97332e565445957aa622fa70ceccfcf5c7fa`  
		Last Modified: Fri, 13 Jan 2017 22:19:25 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
