## `docker:edge-dind`

```console
$ docker pull docker@sha256:5a6f66c29f5bf8f6211d7965750d52748f927ff90d519fcbe7e8e34d5d8f5a3d
```

-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b0daf021803454169fca62f03ee99744ddf1fd14db23f760b0b86856ae04de`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:10:08 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 27 Jun 2017 20:10:09 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Tue, 27 Jun 2017 20:10:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:10:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:10:38 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:11:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:12:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:12:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:12:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:12:49 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:12:50 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:12:50 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:12:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:12:52 GMT
CMD []
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9253de26747cb9ad807096c7779b82609261ad1c5cbee1e502a86c9b0af4da`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 350.6 KB (350624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43208f2470b65c026864a1c56ba036f108fdafd39bed260219a2f1499b837469`  
		Last Modified: Thu, 29 Jun 2017 19:23:35 GMT  
		Size: 28.8 MB (28753637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d21c6620031b042f894308db6d47a60e7692a3d01500a7edfb7de6b93bc5e`  
		Last Modified: Thu, 29 Jun 2017 19:23:27 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b424c2063478e22280c96be1a5fba1a84a9a3ce18482d206c1dba03ddb14f89c`  
		Last Modified: Thu, 29 Jun 2017 19:26:24 GMT  
		Size: 2.2 MB (2165478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3993be2281a65719f2586082c1d94852009ffa6166bace496794a2cf018a51`  
		Last Modified: Thu, 29 Jun 2017 19:26:23 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704b937b7ad51e103c270d82cb49e4226cd1988eb6e17c022b752bf646b0a802`  
		Last Modified: Thu, 29 Jun 2017 19:26:24 GMT  
		Size: 175.7 KB (175673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc02341a24559ba0aba2f5c3778da84354d5b5cdfa74e3540dc372faf2c2c555`  
		Last Modified: Thu, 29 Jun 2017 19:26:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
