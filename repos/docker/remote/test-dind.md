## `docker:test-dind`

```console
$ docker pull docker@sha256:6f1413f462cb2fa4e58d30ec7a555abe8fda296674493d03506b3783050c5d15
```

-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34713860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781b9ef8a03bb8c04eb85a11c06f1810763b38eb29197072aca87790bc1ad25d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 20:08:42 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 31 May 2017 20:08:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 13 Jun 2017 21:34:42 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc3
# Tue, 13 Jun 2017 21:34:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}-${dockerArch}.tgz"; then 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 			echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 			exit 1; 		fi; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 13 Jun 2017 21:35:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Jun 2017 21:35:16 GMT
CMD ["sh"]
# Tue, 13 Jun 2017 21:36:23 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 13 Jun 2017 21:37:24 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 13 Jun 2017 21:37:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 13 Jun 2017 21:38:03 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 13 Jun 2017 21:38:05 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 13 Jun 2017 21:38:07 GMT
VOLUME [/var/lib/docker]
# Tue, 13 Jun 2017 21:38:08 GMT
EXPOSE 2375/tcp
# Tue, 13 Jun 2017 21:38:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 13 Jun 2017 21:38:11 GMT
CMD []
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfd12279b0d11f205f37f642e15d7328cc23431b4c09a2672b941d67e40685f`  
		Last Modified: Wed, 31 May 2017 20:20:51 GMT  
		Size: 351.3 KB (351277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6baba87565d2fe3fa0059d454e4afefb3174531c0728184ee5d1d69ac3435fe9`  
		Last Modified: Tue, 13 Jun 2017 22:02:01 GMT  
		Size: 30.0 MB (29984791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07b6661bb7c518b9aaf5997ecc01401959f82c0454465c81c4c056a8d269b6a`  
		Last Modified: Tue, 13 Jun 2017 22:01:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bb166007b21d914053f30a01d79e2c3d38de1546e2f6610d12caa3cea6c000`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 2.2 MB (2209040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3b507615d98208d20b56b7164890014ec20480ea77453855333241520f2351`  
		Last Modified: Tue, 13 Jun 2017 22:06:54 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e477e2a43ec131e507cc36cba202eb09dfe4791dafc43a13ee30bb7ab928cf`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 176.1 KB (176135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31fcbf49eb61e4ecfeb704e8d15124295ea00d0ffee41aee3270cc9c840d693`  
		Last Modified: Tue, 13 Jun 2017 22:06:55 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
