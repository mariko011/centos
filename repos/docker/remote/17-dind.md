## `docker:17-dind`

```console
$ docker pull docker@sha256:ab8aecfabdfc67b4e49f2f9b02c9c68e722fb6a86d9d7fb06bb5ab4b163d5566
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33918027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d054ff5213dd0e240292443581b59680e5e6483a7ad29cadd849dd2bccde348`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_VERSION=17.03.0-ce
# Thu, 02 Mar 2017 21:11:58 GMT
ENV DOCKER_SHA256=4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e
# Thu, 02 Mar 2017 21:12:02 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 02 Mar 2017 21:12:03 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:03 GMT
CMD ["sh"]
# Thu, 02 Mar 2017 21:12:06 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 02 Mar 2017 21:12:07 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 02 Mar 2017 21:12:07 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 02 Mar 2017 21:12:09 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 02 Mar 2017 21:12:09 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 02 Mar 2017 21:12:09 GMT
VOLUME [/var/lib/docker]
# Thu, 02 Mar 2017 21:12:10 GMT
EXPOSE 2375/tcp
# Thu, 02 Mar 2017 21:12:10 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 02 Mar 2017 21:12:10 GMT
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
	-	`sha256:76fefdb18caef981775d691cdecd22b7881b3237ff343443855c644147c03437`  
		Last Modified: Thu, 02 Mar 2017 21:12:44 GMT  
		Size: 27.7 MB (27741172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65064c0d74585ca85e37978e7d7761b96452d219f77209ea5a21071a1b6931e`  
		Last Modified: Thu, 02 Mar 2017 21:12:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a17fc53d4b9d1540011448c164681892a0cd535bc27b652db4da834bcdf3920`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 2.1 MB (2103785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b359d52284119e4533cd2f1d7937a75eae18b9b38a030aedc449a1780c53a`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13493db93bfa64331d67c3cafa1787cc6bb0473d6ad6c1b7467040458cccf6ae`  
		Last Modified: Thu, 02 Mar 2017 21:14:14 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b4f7dd3568e7ffd70ce5f54f89f0ce865dc6902c05f6db258a4600ed336818`  
		Last Modified: Thu, 02 Mar 2017 21:14:15 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
