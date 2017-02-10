## `docker:1-dind`

```console
$ docker pull docker@sha256:6040b7eecd8db30d6130b6d76abd35054d3eae3cbffaa7bfffee912a5de1fe20
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33907932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6c61fc2dce798a274a50137b2966177b41827659f593d47363917d68f6a537`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:27 GMT
ENV DOCKER_BUCKET=get.docker.com
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_VERSION=1.13.1
# Thu, 09 Feb 2017 23:44:32 GMT
ENV DOCKER_SHA256=97892375e756fd29a304bd8cd9ffb256c2e7c8fd759e12a55a6336e15100ad75
# Thu, 09 Feb 2017 23:44:38 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Thu, 09 Feb 2017 23:44:38 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:39 GMT
CMD ["sh"]
# Thu, 09 Feb 2017 23:44:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 09 Feb 2017 23:44:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 09 Feb 2017 23:44:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 09 Feb 2017 23:44:46 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 09 Feb 2017 23:44:46 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 09 Feb 2017 23:44:47 GMT
VOLUME [/var/lib/docker]
# Thu, 09 Feb 2017 23:44:47 GMT
EXPOSE 2375/tcp
# Thu, 09 Feb 2017 23:44:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 09 Feb 2017 23:44:48 GMT
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
	-	`sha256:9e5b4bc00ad7eb4efa31cc3518c28d294154919fdfdd1e6d0fedce17627645d4`  
		Last Modified: Fri, 10 Feb 2017 00:04:57 GMT  
		Size: 27.7 MB (27731083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5ca00fa8dc5245c0dd8456947756714642344c02b07e0d5fbffa70dcfbdae`  
		Last Modified: Fri, 10 Feb 2017 00:04:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5a5b2f7bb7dd8f6d2e5d49b4426cd873a03113a61872d63f2753e858fb578`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 2.1 MB (2103783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db34f5c37f963c3f77e220e1c562703316465301c0720a511db881104b8ef2cc`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb11e3cf9c6de89b13f90a67bb40b2a95c894a84508ed2b9a90bc5a1a0e6c8a1`  
		Last Modified: Fri, 10 Feb 2017 00:06:11 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9379c25626665f91b2160ff57735dfd88781288683d3f89bc1b125b040145f68`  
		Last Modified: Fri, 10 Feb 2017 00:06:12 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
