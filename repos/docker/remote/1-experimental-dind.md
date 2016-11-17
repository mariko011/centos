## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:065da72c5c81e1057e8ebe04180ca8befdf9d529a6ec6e6c20dc682db359a2aa
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98cca1531137e21cc935c80eff11791fd202cc0ef9557e071aee5bc583c41a6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_VERSION=1.12.3
# Mon, 31 Oct 2016 21:46:32 GMT
ENV DOCKER_SHA256=388eb16601302cf6c7f3a9c38b24ef43745eb9295f9721d6a49783ede5e9fbe5
# Mon, 31 Oct 2016 21:46:39 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 31 Oct 2016 21:46:39 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Mon, 31 Oct 2016 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Oct 2016 21:46:40 GMT
CMD ["sh"]
# Mon, 31 Oct 2016 21:46:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 31 Oct 2016 21:46:44 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 31 Oct 2016 21:46:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 31 Oct 2016 21:46:45 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Thu, 17 Nov 2016 21:32:13 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 17 Nov 2016 21:32:14 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Nov 2016 21:32:14 GMT
EXPOSE 2375/tcp
# Thu, 17 Nov 2016 21:32:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Nov 2016 21:32:15 GMT
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
	-	`sha256:d2f78fe524eb2f4b8804fbcab971441e518c7c71aa2d55e38fe8c0b47188c9a9`  
		Last Modified: Mon, 31 Oct 2016 21:50:03 GMT  
		Size: 28.9 MB (28894182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c69ff0389deda6694f6627d09741041722c4b1725015bc8cf28e909d8fcea2`  
		Last Modified: Mon, 31 Oct 2016 21:49:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9db3d6ad7723e409766a6628028e533d5fb4e36cf185aace68478e165a5f0a`  
		Last Modified: Mon, 31 Oct 2016 21:50:57 GMT  
		Size: 2.1 MB (2065079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2388734983701c6e47d1dc11dc891c692a2a04cdb8b8b056a776bad6211d62e6`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed94c8ab5c26ac6c680f5c4f020f20a2b230a3a7ab6882db618920779ba277`  
		Last Modified: Mon, 31 Oct 2016 21:50:56 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6538700891d82ffb19ac5e4bdf701dd2a8ad0be47e6a303f128a0c7fd1c6b4`  
		Last Modified: Thu, 17 Nov 2016 21:38:49 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
