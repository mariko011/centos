## `docker:stable-dind`

```console
$ docker pull docker@sha256:e55c52dfd23b8edc98c390053c98a685480c1eb14aee0ec32553f49f2b9f155b
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32768888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b44f0025c249ec1c8105b1eecfed328d7be82bd6239d8954fae41943bd44f6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 16:43:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 30 May 2017 16:43:45 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 30 May 2017 16:43:46 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 30 May 2017 16:43:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 	curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz"; 	tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 	apk del .fetch-deps; 	dockerd -v; 	docker -v
# Tue, 30 May 2017 16:43:53 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 30 May 2017 16:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 May 2017 16:43:55 GMT
CMD ["sh"]
# Tue, 30 May 2017 16:44:21 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 30 May 2017 16:44:23 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 30 May 2017 16:44:24 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 30 May 2017 16:44:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 30 May 2017 16:44:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 30 May 2017 16:44:30 GMT
VOLUME [/var/lib/docker]
# Tue, 30 May 2017 16:44:31 GMT
EXPOSE 2375/tcp
# Tue, 30 May 2017 16:44:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 30 May 2017 16:44:32 GMT
CMD []
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccc6b479b7b33e26dc9b2300dab76cdcba7ef770e09d1ea6b97919efa19f01`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bd8e2a66c7f20ad5ace1f4e3b1eb02a7320bf5facb437286011857e6fe6a5c`  
		Last Modified: Tue, 30 May 2017 16:47:10 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e182f1ef5dcfdce0c808eaecd62300d631bf8abf264d7326425f6ec2e4bb5`  
		Last Modified: Tue, 30 May 2017 16:47:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ed1eb864a09a77f8edcacd2d13971dcfeda2fbd126735118025a447d7055d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 2.2 MB (2165474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9075ab3734f6e0fed49d7a36cdd8fab2be6dc892cbbddb30229a1c7fd0a20bd`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b213ebdcaed194c1afe1297e8065b2990c27e7292c9956072eb0406dd9e3966d`  
		Last Modified: Tue, 30 May 2017 16:48:45 GMT  
		Size: 175.7 KB (175693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d211d031e83dc8315ecc8a9d72d170af892a752477dea68b9d864f9af88ee3c`  
		Last Modified: Tue, 30 May 2017 16:48:44 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
