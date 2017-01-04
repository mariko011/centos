## `docker:rc-dind`

```console
$ docker pull docker@sha256:8c0045115bd17d3ddb6fb29b2b3f41033f9338ce7ff3fce30082fe85f95ee6ba
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33754326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07853fc00510d59a1382ef622d3bb018bab7254345d51e03c49b0ebdcb0623cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Wed, 04 Jan 2017 21:04:15 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 04 Jan 2017 21:04:16 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:16 GMT
CMD ["sh"]
# Wed, 04 Jan 2017 21:04:20 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 04 Jan 2017 21:04:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Jan 2017 21:04:21 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Jan 2017 21:04:22 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 04 Jan 2017 21:04:22 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:04:23 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Jan 2017 21:04:23 GMT
EXPOSE 2375/tcp
# Wed, 04 Jan 2017 21:04:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Jan 2017 21:04:23 GMT
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
	-	`sha256:24eefdb00f068605607ad68ac53f35ddfb3a226c2444d2067ce4cec47bf9f015`  
		Last Modified: Wed, 04 Jan 2017 23:28:22 GMT  
		Size: 27.6 MB (27577463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a622ca57957543a9ba277334017d6afdb05d31cf684cdff610b7a2bbd7d795c0`  
		Last Modified: Wed, 04 Jan 2017 23:28:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb458b2af3aa098ffb3cd0dc26374fb1f4aa3bcb32049fe0850513cda1b1bb5f`  
		Last Modified: Wed, 04 Jan 2017 23:29:09 GMT  
		Size: 2.1 MB (2103790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29e901c1fec0141069c7de252d6a3290a94328236620532bcd677d5cbcba3c2`  
		Last Modified: Wed, 04 Jan 2017 23:29:10 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abc9b8d1c1936f480ddbb232ae366b5c46b09beebeec331acacec1d4b0105a8`  
		Last Modified: Wed, 04 Jan 2017 23:29:08 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a7b4eff3bf1d334e0cfc499b9116945e7cb24b244fa18188ec4b573d2243ab`  
		Last Modified: Wed, 04 Jan 2017 23:29:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
