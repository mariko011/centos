## `docker:experimental-dind`

```console
$ docker pull docker@sha256:ef18681fb3d5c7381bfb6f0419c2082a221e5e3fe0cca06792677989633a659d
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c5277f4b4d3a03af1e59419ef9222319c50bcb8f32edf4c313f143782a7113`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:36:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Fri, 23 Sep 2016 16:38:38 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_VERSION=1.12.2
# Fri, 14 Oct 2016 17:14:00 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Fri, 14 Oct 2016 17:14:04 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 14 Oct 2016 17:14:05 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:05 GMT
CMD ["sh"]
# Fri, 14 Oct 2016 17:14:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 14 Oct 2016 17:14:09 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 14 Oct 2016 17:14:10 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 14 Oct 2016 17:14:10 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 14 Oct 2016 17:14:11 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Fri, 14 Oct 2016 17:14:13 GMT
VOLUME [/var/lib/docker]
# Fri, 14 Oct 2016 17:14:13 GMT
EXPOSE 2375/tcp
# Fri, 14 Oct 2016 17:14:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 14 Oct 2016 17:14:14 GMT
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
	-	`sha256:8e86c4987fa50cb5efd4d26b8daca86063169a3b0e06ec6c2f7d7b7af3ea981d`  
		Last Modified: Fri, 14 Oct 2016 17:17:16 GMT  
		Size: 28.9 MB (28894123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54056ff953a39b42c397e7ebfbb4c2bd3ec03ab81970dbd30128ac1a3293f9db`  
		Last Modified: Fri, 14 Oct 2016 17:17:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadde580b272ee80d7a80e4c81a7caec68b2c704b81e3aec40cecae715b895a`  
		Last Modified: Fri, 14 Oct 2016 17:18:04 GMT  
		Size: 2.1 MB (2065076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77744d9eb3e76a745489c5413bfd960ef8de4f25dcad947fe887f3af20668511`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf6689f7368cdaf7502913d40b3251e0cea74fab2123525722304054d9103af`  
		Last Modified: Fri, 14 Oct 2016 17:18:00 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f6b1d614e57e99203bcdc5449edda0cdcb7664e0d43a0c3189c184af45f3b4`  
		Last Modified: Fri, 14 Oct 2016 17:18:01 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
