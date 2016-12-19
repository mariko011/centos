## `docker:rc-dind`

```console
$ docker pull docker@sha256:a8b9ade641c6a976f4e1ec19817c92754345037f4fcc05f19dac0653e49c4ee7
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32874727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ed23f5ed2eac532b09d6d4d629d2b27514c079977532157ecbde8c69835271`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:04:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Thu, 17 Nov 2016 21:31:52 GMT
ENV DOCKER_BUCKET=test.docker.com
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Mon, 19 Dec 2016 22:07:50 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Mon, 19 Dec 2016 22:07:54 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Mon, 19 Dec 2016 22:07:54 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Dec 2016 22:07:55 GMT
CMD ["sh"]
# Mon, 19 Dec 2016 22:07:58 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Dec 2016 22:07:59 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Dec 2016 22:08:00 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Dec 2016 22:08:01 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Mon, 19 Dec 2016 22:08:01 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Dec 2016 22:08:02 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Dec 2016 22:08:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Dec 2016 22:08:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Dec 2016 22:08:03 GMT
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
	-	`sha256:45182062d59003fbeab1d881284837bcd892e4ae833528161f5880580236fbff`  
		Last Modified: Mon, 19 Dec 2016 22:09:07 GMT  
		Size: 27.6 MB (27577496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5fcc9b4eef5b5ba9b55d569a50bdc2882964cdac310de97e33bb5e2616c536`  
		Last Modified: Mon, 19 Dec 2016 22:08:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05248e945ea9980cedfd697892aed159e1719869c1cf44b52bdbcabb48fe775`  
		Last Modified: Mon, 19 Dec 2016 22:10:00 GMT  
		Size: 2.1 MB (2065103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c681f471e065764802ac406378aa9b5732558c3dd85ba256fdc168b2b6bb8f`  
		Last Modified: Mon, 19 Dec 2016 22:10:01 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f188d1566cdc9d76f57ae7b483151b0b3380139cc7067487d086d9813bb0576`  
		Last Modified: Mon, 19 Dec 2016 22:09:59 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab9849a30514ce758106492614c0ab0fc6d351ac36778f96e001ae068d95451`  
		Last Modified: Mon, 19 Dec 2016 22:09:59 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
