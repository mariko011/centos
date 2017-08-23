## `docker:rc-dind`

```console
$ docker pull docker@sha256:b26ab391fbea50a1dff95b1fd5a8d1d2030507c2ca7949a76c38a29f75a7c94e
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5975d73b82b194e38bb09ed29db9f510578e3946d22c9b6ab876ae6772736`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:22:17 GMT
ENV DOCKER_CHANNEL=test
# Wed, 23 Aug 2017 21:32:09 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc4
# Wed, 23 Aug 2017 21:32:15 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 23 Aug 2017 21:32:15 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 23 Aug 2017 21:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Aug 2017 21:32:16 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 21:32:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 23 Aug 2017 21:32:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 23 Aug 2017 21:32:25 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 23 Aug 2017 21:32:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 23 Aug 2017 21:32:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 23 Aug 2017 21:32:29 GMT
VOLUME [/var/lib/docker]
# Wed, 23 Aug 2017 21:32:30 GMT
EXPOSE 2375/tcp
# Wed, 23 Aug 2017 21:32:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 23 Aug 2017 21:32:30 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf6059e353ab57887578aa1be4a24bdd7519f63dde8d79b973d67164f3e349`  
		Last Modified: Thu, 29 Jun 2017 19:32:29 GMT  
		Size: 351.3 KB (351302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044e83297701c0bc501f37de88f319264361cb8515e45c17d8db637709bb0442`  
		Last Modified: Wed, 23 Aug 2017 21:32:57 GMT  
		Size: 30.5 MB (30476339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a82518e11662e3688b1168a17213a3178a1820d07d8c06435631b8a38ff982e`  
		Last Modified: Wed, 23 Aug 2017 21:32:51 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c9f7057f2140f7430b4e9063fda6ac31eb7115685de06d63fe4aea3086b2e8`  
		Last Modified: Wed, 23 Aug 2017 21:33:39 GMT  
		Size: 2.2 MB (2209042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de1ef1208bff18e49dcccaf5f0e9af9f18eb1cd3ba2693d1d8655f56245fbd2`  
		Last Modified: Wed, 23 Aug 2017 21:33:38 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d5167127a64dde6a10368c1703ac0c668f735567117cd70887ea90fb74d84c`  
		Last Modified: Wed, 23 Aug 2017 21:33:38 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205672d1f1b68a5ff7da72d13311099cb09e152d1204b005785239752367ad02`  
		Last Modified: Wed, 23 Aug 2017 21:33:38 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
