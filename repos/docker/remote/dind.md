## `docker:dind`

```console
$ docker pull docker@sha256:fe2b9a8aa2f1285a5ca62533e46f061924b4970c6aebfbddc4be38ffe928e9a7
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 MB (34008070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5d765950ff08b7b09f27438e7b2b2346ee0148151b3328a482796a8018a67c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_BUCKET=get.docker.com
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_VERSION=1.12.1
# Fri, 23 Sep 2016 16:36:54 GMT
ENV DOCKER_SHA256=05ceec7fd937e1416e5dce12b0b6e1c655907d349d52574319a1e875077ccb79
# Fri, 23 Sep 2016 16:36:58 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 23 Sep 2016 16:36:58 GMT
COPY file:50006c902e7677711aeffe4ab7b7042d649618b96dec760f322a8566dd83ab25 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:36:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 16:36:59 GMT
CMD ["sh"]
# Fri, 23 Sep 2016 16:37:53 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 23 Sep 2016 16:37:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 23 Sep 2016 16:37:54 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 23 Sep 2016 16:37:55 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 23 Sep 2016 16:37:56 GMT
COPY file:a00ae81495fdf69e63bb25e3b665aa29cb53cfe5788e6134adfc0f35caff6295 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:37:56 GMT
VOLUME [/var/lib/docker]
# Fri, 23 Sep 2016 16:37:57 GMT
EXPOSE 2375/tcp
# Fri, 23 Sep 2016 16:37:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 23 Sep 2016 16:37:57 GMT
CMD []
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6fe447e877c6fb78f7040d59f81a9aaac5be90ed3f7396a6dfd9aaa3467d29`  
		Last Modified: Fri, 23 Sep 2016 16:37:07 GMT  
		Size: 915.0 KB (915035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a02526121eedf62c2f00fcfb8da5b35caf4d8c5efd0d8e16a68efffae31b72`  
		Last Modified: Fri, 23 Sep 2016 16:37:19 GMT  
		Size: 28.7 MB (28710990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6335d8352e2a9c35df0978e5fb5103ea0f52ba02d0e7e95a71414466c058c26`  
		Last Modified: Fri, 23 Sep 2016 16:37:06 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34a03934fad7ca76721bb2d6e6ea5059a4cb65da506f33bdcf82ddb39c6215`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 2.1 MB (2065072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19938c0ba7188e8c1d346a1a0377bc9019fe63bc08897dc847d8d8bb0cefc826`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e925ec838ce865af1e3fcfd4c8c445d9f2713666fd6b620a68ad08eb37e5b6a2`  
		Last Modified: Fri, 23 Sep 2016 16:38:04 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095941f5b412d2a2cf0ebcb330d1fe12c3e00ea8edc8dfdc4d30a586a4d8176c`  
		Last Modified: Fri, 23 Sep 2016 16:38:06 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
