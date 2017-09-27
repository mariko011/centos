## `docker:stable-dind`

```console
$ docker pull docker@sha256:5506acd92efcf375363cdeeceedc85d16337442c76143797541bfc3d228e466b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:b41fadffcecfe92a27f2281bbf1bb8bb51e4b6a2ba7d83c9c2c9cd82e474dbc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35419083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9145b364a203c0afc538ca615b3470e41729edfb7338017f5d4eeb5b13b2d90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:52 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 27 Sep 2017 20:50:26 GMT
ENV DOCKER_VERSION=17.09.0-ce
# Wed, 27 Sep 2017 20:50:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 27 Sep 2017 20:50:33 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:33 GMT
CMD ["sh"]
# Wed, 27 Sep 2017 20:50:43 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 27 Sep 2017 20:50:43 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 27 Sep 2017 20:50:44 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 27 Sep 2017 20:50:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 27 Sep 2017 20:50:48 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 27 Sep 2017 20:50:48 GMT
VOLUME [/var/lib/docker]
# Wed, 27 Sep 2017 20:50:48 GMT
EXPOSE 2375/tcp
# Wed, 27 Sep 2017 20:50:48 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 27 Sep 2017 20:50:48 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401a59c6e8718eb4eb9b2bf735786e3eccdaa23b1f8996630c3a6f9ccd66c45`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 351.4 KB (351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f605b94abcd18f769e360d2d22a423419d7ac0c9197b0fcc4aab97a122f4e2b9`  
		Last Modified: Wed, 27 Sep 2017 20:51:17 GMT  
		Size: 30.7 MB (30689410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa28679c90206ed1bdf046216ba0819836eb0f205349e4521284690c8a14e5e`  
		Last Modified: Wed, 27 Sep 2017 20:51:11 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75929dd0d7d129b25672d717fad42b62205e655941e4313018c1b967bd5a55c8`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 2.2 MB (2209173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cc445fece8b3bf3df92a8e9bda246bc4975514e32030aa2ec9c04faf4d183e`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e02310062c89da967c63fbeceddb04ba696f3f51a15a2b38b37bda9adbc279`  
		Last Modified: Wed, 27 Sep 2017 20:52:05 GMT  
		Size: 176.2 KB (176202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbd6f1217de19a56250ddac88b508caf5fa320f58bf859d9f04162b43cd402`  
		Last Modified: Wed, 27 Sep 2017 20:52:04 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
