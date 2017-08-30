## `docker:edge-dind`

```console
$ docker pull docker@sha256:e30313b3ca34033bd6f7c026f9637b985e529f40eab3c9bedea0dddf76f8f7c6
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7731e67e3def0af852ea8ab3788063fc640ce359d399b86fe5a009e6d814f625`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:22:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 29 Aug 2017 23:55:27 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 29 Aug 2017 23:55:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 29 Aug 2017 23:55:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:35 GMT
CMD ["sh"]
# Tue, 29 Aug 2017 23:55:41 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 29 Aug 2017 23:55:42 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 29 Aug 2017 23:55:42 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 29 Aug 2017 23:55:43 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 29 Aug 2017 23:55:44 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 29 Aug 2017 23:55:44 GMT
VOLUME [/var/lib/docker]
# Tue, 29 Aug 2017 23:55:44 GMT
EXPOSE 2375/tcp
# Tue, 29 Aug 2017 23:55:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 29 Aug 2017 23:55:45 GMT
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
	-	`sha256:afdeaa4742e72edecfd89bd907a270439a96846da32f42063222a857306981e2`  
		Last Modified: Tue, 29 Aug 2017 23:56:14 GMT  
		Size: 30.5 MB (30476301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba0ab293f1694112b98c19e1be1be6c865fd1c6a249518313804a61433327ad`  
		Last Modified: Tue, 29 Aug 2017 23:56:06 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8294f3609fbd410a42d7e65b153adf6c7daef972030f4b2762bc44cd1fd3984f`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 2.2 MB (2209046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dd6b15fd03b92b8f11c5f5d0e341adac86d7ced3842d627aa5b8e55f9caff2`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06ac085c20800dc34fe1e8a222af2da8d182238762972da9ee80c9c88becb3`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 176.1 KB (176134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303adae475268eba8beffab71975812a708fc98fed288d3219f0272a5ca20056`  
		Last Modified: Tue, 29 Aug 2017 23:56:56 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
