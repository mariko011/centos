## `docker:stable-dind`

```console
$ docker pull docker@sha256:eb059d73e04614a59c91343a0a655be1136ee15ca23bf85cda7edee29af1703a
```

-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32771492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6597d68d18cdb39d7aa3f57992e662069aae5e186d2da8e346c7cb48b16d997a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 20:09:43 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 27 Jun 2017 20:15:25 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 27 Jun 2017 20:15:26 GMT
ENV DOCKER_VERSION=17.03.1-ce
# Tue, 27 Jun 2017 20:15:32 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 27 Jun 2017 20:15:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:15:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 20:15:35 GMT
CMD ["sh"]
# Tue, 27 Jun 2017 20:16:08 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Jun 2017 20:16:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Jun 2017 20:16:11 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Jun 2017 20:16:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 27 Jun 2017 20:16:19 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Jun 2017 20:16:20 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Jun 2017 20:16:21 GMT
EXPOSE 2375/tcp
# Tue, 27 Jun 2017 20:16:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Jun 2017 20:16:23 GMT
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
	-	`sha256:d66d70f7471fa8935c3cde468eda9c67147020a6c624a6722fd291cdc1721109`  
		Last Modified: Thu, 29 Jun 2017 19:09:06 GMT  
		Size: 28.1 MB (28106896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c550533f0932e78512ac64b5101bfa1be4ca878163ad3dafca8cbdf007c60314`  
		Last Modified: Thu, 29 Jun 2017 19:08:48 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6b087b83b2f2ea2f3ecd62f08c8eb3ed327ecda0013417bedec4b82d525a2b`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 2.2 MB (2165509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a197414df81dd26f8ba287c167e1755467281e218cfada68cf423c78cf0ec5`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40b27ae1434f0b46855741f9e2b8b3eb5e82ff81d1c0a3f449a7f4f2322f8ae`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 175.7 KB (175673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32609b3e959e216d9819e4b6b90f8c0b89cf046df37f98549e40dc5e714ea6e`  
		Last Modified: Thu, 29 Jun 2017 19:12:10 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
