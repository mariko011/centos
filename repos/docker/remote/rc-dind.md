## `docker:rc-dind`

```console
$ docker pull docker@sha256:a1ee9d55eb3dee3beb92650c22027e6fa990cbbd9741e3c82c63b0ac7b742c6e
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32875434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18294fbb7221fe1f1899d84219559e0c7c4f0dae3ebd88816b1b471a071e671d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:37:23 GMT
ENV DOCKER_BUCKET=test.docker.com
# Tue, 27 Dec 2016 18:37:23 GMT
ENV DOCKER_VERSION=1.13.0-rc4
# Tue, 27 Dec 2016 18:37:24 GMT
ENV DOCKER_SHA256=bb16d6cd2645fbca7b5bec3794e9ab563b5878ddc13dee430c8a91dde7c4ef86
# Tue, 27 Dec 2016 18:37:28 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:28 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:29 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:33 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:37:34 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:37:34 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:37:35 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:37:36 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:36 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:37:37 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:37:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:37 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c8fa7215109ac020b5452b6756d98238af2ad472c22261c784fbba954179a1`  
		Last Modified: Tue, 27 Dec 2016 18:49:10 GMT  
		Size: 27.6 MB (27577482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76689156e594cfb787ae6a5b5280c7a64275c712219867aab24a9f84191d5fbb`  
		Last Modified: Tue, 27 Dec 2016 18:48:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb44ffe4190c025b66242770b03ad044cc74bde8141a2359c834c7c76515db10`  
		Last Modified: Tue, 27 Dec 2016 18:50:19 GMT  
		Size: 2.1 MB (2065080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5460773475e7e3e9a3ef18da2fd07b4a6e272700f305abe9b2b68c31e6f8214f`  
		Last Modified: Tue, 27 Dec 2016 18:50:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09be0c823995f776892544dcf0a726f89287b3f2dcb8098045edd7d03bedc273`  
		Last Modified: Tue, 27 Dec 2016 18:50:18 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f528a541de593d928039d20cdae679bae06e1ed29be80a1113781ec05dc60aa`  
		Last Modified: Tue, 27 Dec 2016 18:50:18 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
