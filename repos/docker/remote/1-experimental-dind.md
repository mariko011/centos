## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:7b44652c89d3846cb5754aa962e7469599256c435bba5e7916d206ad1439b2cd
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34191383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae40621873d717cb6efbbd08f8806f1cb8a3130942bba1f984943164de4148f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 18 Oct 2016 23:07:01 GMT
ENV DOCKER_VERSION=1.12.2
# Tue, 18 Oct 2016 23:07:02 GMT
ENV DOCKER_SHA256=a4450d76587d8a9f27cf21d8e373ae5efa75297ab92b81d77e726f88a4b6a534
# Tue, 18 Oct 2016 23:07:05 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 18 Oct 2016 23:07:06 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:07:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:07:12 GMT
CMD ["sh"]
# Tue, 18 Oct 2016 23:08:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 18 Oct 2016 23:08:20 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 18 Oct 2016 23:08:20 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 18 Oct 2016 23:08:21 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 18 Oct 2016 23:08:22 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:08:22 GMT
VOLUME [/var/lib/docker]
# Tue, 18 Oct 2016 23:08:22 GMT
EXPOSE 2375/tcp
# Tue, 18 Oct 2016 23:08:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 18 Oct 2016 23:08:23 GMT
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
	-	`sha256:f182ded799f13e98064b3b94c0e8302ca1836e5ac3664b226465397b2f0d8eab`  
		Last Modified: Tue, 18 Oct 2016 23:07:34 GMT  
		Size: 28.9 MB (28894149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5649d671a6322aa56dc6511601ba287a468f29303f94e12fe515921b5fd938`  
		Last Modified: Tue, 18 Oct 2016 23:07:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585f597085b7e2e5b2cefa645f364e7c71ea69d35877ba0a6b19778ff8f08629`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 2.1 MB (2065088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1a778762ad1bab49e0765aaaf712c4e82198a7cdc8e0aaa7f62985b0efec8`  
		Last Modified: Tue, 18 Oct 2016 23:08:33 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3066564be46ee3fe137e0ed6bec47832abffe021daa49b2c8166935e85491c`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1434f8ec76233b30724513778b8064abb9067b42ce36c3106d4b533a9759dca6`  
		Last Modified: Tue, 18 Oct 2016 23:08:32 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
