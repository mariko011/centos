## `docker:rc-dind`

```console
$ docker pull docker@sha256:4e8612f8a75e353350653841d8efd888cd2a7259e5a6d5853ff6a0b8995d09ce
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34717452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34727529bff30dc116aa945c5066bfefe350f8860e5741c811e8c481009ab67a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:23:18 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:23:41 GMT
ENV DOCKER_CHANNEL=test
# Thu, 22 Jun 2017 19:14:44 GMT
ENV DOCKER_VERSION=17.06.0-ce-rc5
# Thu, 22 Jun 2017 19:14:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 22 Jun 2017 19:14:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:14:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 19:14:53 GMT
CMD ["sh"]
# Thu, 22 Jun 2017 19:15:24 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 22 Jun 2017 19:15:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 22 Jun 2017 19:15:26 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 22 Jun 2017 19:15:31 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 22 Jun 2017 19:15:32 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 22 Jun 2017 19:15:33 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Jun 2017 19:15:33 GMT
EXPOSE 2375/tcp
# Thu, 22 Jun 2017 19:15:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Jun 2017 19:15:35 GMT
CMD []
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c6407edf2d25a38317115c16fe4d2dead9819c947ea48e95d86220a139b112`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 351.3 KB (351288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b3c43ab0b5b4418e92143820a8b51a90b76c0b004afb863b68c17651e06609`  
		Last Modified: Thu, 22 Jun 2017 19:16:53 GMT  
		Size: 30.0 MB (29988316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8795acff4838bc4e51bf428c00661e1e860d6bd59415ce443dc07dc84a9315b`  
		Last Modified: Thu, 22 Jun 2017 19:16:47 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f972e6935bb25486aa1c553b3358041e2c27644fe1b17b55cde1a574a859311d`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 2.2 MB (2209038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b13e1b2b9b44e45a825265fff4a54170a903352265c285292ed9b41b3d9743`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48652e73a09591db35315473acf22e1e9b64298e5e718b1588aee7b5bcab35ed`  
		Last Modified: Thu, 22 Jun 2017 19:19:29 GMT  
		Size: 176.1 KB (176127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515db89300b6ef4eaf1a62036cdfbbc7b8cc9147f8814b9f088085994f574f9f`  
		Last Modified: Thu, 22 Jun 2017 19:19:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
