## `docker:rc-dind`

```console
$ docker pull docker@sha256:8385ff6c127210b8d1a8dfe32928d6fd44e100c947d5750d7006f85b446627b8
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32568317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f2cc0deb5ea165103c638b1f71a0cf877253402af9487e63a5898aacbdd452`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 21:48:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_BUCKET=test.docker.com
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_VERSION=17.04.0-ce-rc1
# Wed, 22 Mar 2017 23:46:00 GMT
ENV DOCKER_SHA256=1290c7f1168070306ff4854dd7c317ab91bcf73ad4a8a3fb64ba267888849040
# Wed, 22 Mar 2017 23:46:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Wed, 22 Mar 2017 23:46:05 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Wed, 22 Mar 2017 23:46:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 23:46:05 GMT
CMD ["sh"]
# Wed, 22 Mar 2017 23:46:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 22 Mar 2017 23:46:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 22 Mar 2017 23:46:09 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 22 Mar 2017 23:46:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Wed, 22 Mar 2017 23:46:10 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 22 Mar 2017 23:46:11 GMT
VOLUME [/var/lib/docker]
# Wed, 22 Mar 2017 23:46:11 GMT
EXPOSE 2375/tcp
# Wed, 22 Mar 2017 23:46:11 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 22 Mar 2017 23:46:11 GMT
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
	-	`sha256:eeb3e6b913a821be4ebd039a7ed084e8eaed4c74ae1baffb5626e733bf95a24f`  
		Last Modified: Wed, 22 Mar 2017 23:46:49 GMT  
		Size: 26.4 MB (26387479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52df04f10e153296bb25fc92be27fd89cf2a52fbc4f782b2e60942ca118657f6`  
		Last Modified: Wed, 22 Mar 2017 23:46:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62dbb44b6cd7d7d8a7f622fb32e3c0d4619677f21ba85da79836758016fe4d4`  
		Last Modified: Wed, 22 Mar 2017 23:48:29 GMT  
		Size: 2.1 MB (2103765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ccee3dc3bc5fd0767f539dd33b393e4cdf6bbfaba09dbed360544267537fa1`  
		Last Modified: Wed, 22 Mar 2017 23:48:29 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47248622e1a49d3f8147f33abcef3003b5b4787bf88eeecc1474796c53d217b0`  
		Last Modified: Wed, 22 Mar 2017 23:48:29 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e303f955279d58cabbeda389dab5ad852594839d09270eab324e24de7473fb`  
		Last Modified: Wed, 22 Mar 2017 23:48:29 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
