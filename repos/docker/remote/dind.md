## `docker:dind`

```console
$ docker pull docker@sha256:8c01f9e7037c9aef65564b059d03add0b6f286df07c71927bc8980be6cf996a9
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34059900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ddb0269e3eda0b4f295badb4cff040d7adda412d103803b882dff8f552b2a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:04:50 GMT
ENV DOCKER_SHA256=cb30ad9864f37512c50db725c14a22c3f55028949e4f1e4e585a6b3c624c4b0e
# Tue, 18 Oct 2016 23:04:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:04:55 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:05:00 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:06:00 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:06:01 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:06:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:06:02 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:06:03 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:06:08 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:06:09 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:06:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:06:09 GMT
CMD []
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7601c2ad1cd11213e66512af4a8f4372a4870541b8cf79a9a1058742bf65d6e7`  
		Last Modified: Tue, 18 Oct 2016 23:05:10 GMT  
		Size: 915.1 KB (915061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b52411114a0d048dd451d9c8438e5bfb526d0525f1eaf8e1deb3dee0725ba5`  
		Last Modified: Tue, 18 Oct 2016 23:05:20 GMT  
		Size: 28.8 MB (28762679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198506129c4cde35b726f41bee5395c23e91b078cc6ed2e9d8045b5abd12677`  
		Last Modified: Tue, 18 Oct 2016 23:05:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d76cd808bdd24341e1c5af13cd251087456ca7b84f2d5dbb6b87b04a8da79c`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3851cc4604249b873c8972116ffe987f36e979f12dd6e30c126a0204e3592fb`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af74c490b62a121ee8d81a8b5b665af61620e5e56af41142ad65f6c222fdf454`  
		Last Modified: Tue, 18 Oct 2016 23:06:19 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085036866c4584616685e87f0ade9964ff1d9ad6e8c55e8c0538d58aace6b346`  
		Last Modified: Tue, 18 Oct 2016 23:06:18 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
