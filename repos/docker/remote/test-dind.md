## `docker:test-dind`

```console
$ docker pull docker@sha256:d8646871720c7b3126ae9fbcfc7a97a853e1d0ff5faa3343c0cfa6bb3c8a4cd8
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54fcf77cf1ce5aa1bedaa653569138520a293da192e3a06282ebd23118442d7a`
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
# Mon, 21 Aug 2017 18:04:51 GMT
ENV DOCKER_VERSION=17.07.0-ce-rc3
# Mon, 21 Aug 2017 18:05:06 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 21 Aug 2017 18:05:08 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:09 GMT
CMD ["sh"]
# Mon, 21 Aug 2017 18:05:17 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 21 Aug 2017 18:05:18 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 21 Aug 2017 18:05:18 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 21 Aug 2017 18:05:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 21 Aug 2017 18:05:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 21 Aug 2017 18:05:23 GMT
VOLUME [/var/lib/docker]
# Mon, 21 Aug 2017 18:05:23 GMT
EXPOSE 2375/tcp
# Mon, 21 Aug 2017 18:05:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 21 Aug 2017 18:05:24 GMT
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
	-	`sha256:397b1b11b49e8995e63ab91a69340a5650d231c89a01ad28ac803086b192970b`  
		Last Modified: Mon, 21 Aug 2017 18:06:33 GMT  
		Size: 30.5 MB (30475658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad09923e8f64e02fd1bf3791c35339c718c78f218b306b0df474080fb9d63935`  
		Last Modified: Mon, 21 Aug 2017 18:06:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c08340f3f4fc02d5944a9d916feada1ee4ae6412f9132fa5460b80f163477e9`  
		Last Modified: Mon, 21 Aug 2017 18:07:36 GMT  
		Size: 2.2 MB (2209047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8657f0a1c06a2ea888e9abf976286c00d59bb6afb8e50c99bab317c954d9dd11`  
		Last Modified: Mon, 21 Aug 2017 18:07:36 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c602070e0e2a14740c9def611877aebd683925adf8a7f6f71cab46a9f69ff24`  
		Last Modified: Mon, 21 Aug 2017 18:07:36 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03aab593ac6f337decb4b97757dc25d65b6104758b293aec8be0d56da871d678`  
		Last Modified: Mon, 21 Aug 2017 18:07:35 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
