## `docker:dind`

```console
$ docker pull docker@sha256:90dc3842005c1a08b94fa80123de3d8504f15980232f464b4929aeb1f435860a
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10168f3d1b55e0c894b2626cae8ed752d58b20bc6d5bcf316af7773e772edf84`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 03 Mar 2017 21:48:11 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_VERSION=17.04.0-ce
# Thu, 06 Apr 2017 18:11:17 GMT
ENV DOCKER_SHA256=c52cff62c4368a978b52e3d03819054d87bcd00d15514934ce2e0e09b99dd100
# Thu, 06 Apr 2017 18:11:21 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 06 Apr 2017 18:11:21 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:22 GMT
CMD ["sh"]
# Thu, 06 Apr 2017 18:11:25 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 06 Apr 2017 18:11:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 06 Apr 2017 18:11:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 06 Apr 2017 18:11:28 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 06 Apr 2017 18:11:28 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:11:29 GMT
VOLUME [/var/lib/docker]
# Thu, 06 Apr 2017 18:11:29 GMT
EXPOSE 2375/tcp
# Thu, 06 Apr 2017 18:11:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 06 Apr 2017 18:11:30 GMT
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
	-	`sha256:90ec00e5df6cf47a9f3847375b5eac7f570fdfffa7b7214499ab110327d90d7d`  
		Last Modified: Thu, 06 Apr 2017 18:12:07 GMT  
		Size: 26.4 MB (26387656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abed63dc911f7b91f9eae8ff937eca0f0eb17d4624ab89f08e870cdd8720e60`  
		Last Modified: Thu, 06 Apr 2017 18:11:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de787445e43b7e1eca44ab2456606adab2e15ab8fd4d9d8c89e045357be7571e`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c638029b953b799c5dfaa640b9192e56e025dfe069d4f1f1b4591b26bb551`  
		Last Modified: Thu, 06 Apr 2017 18:14:12 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33412a76240d320ae0ea36eef8cf6ec7f84f1006810811d74f3e29c8b4f1ba3`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459320c40040b465e5e45fb61663e060d521d27a4cc0e8bcc33fa01f43684a60`  
		Last Modified: Thu, 06 Apr 2017 18:14:13 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
