## `docker:dind`

```console
$ docker pull docker@sha256:37117ef37ac625aebb7a904d061d83baa546b16e6ddc5b898e2732cc419f5c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:a51bc74a51621cd2ecdbd2cb3fe52eaf958d42b3e7643bf5398d4ec4ad0e248c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35205932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6285775d3b246e2748eba39a0382677d4888848e5f627289f5e495fe98af99f8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:50:45 GMT
ENV DOCKER_CHANNEL=edge
# Tue, 12 Sep 2017 23:50:45 GMT
ENV DOCKER_VERSION=17.07.0-ce
# Tue, 12 Sep 2017 23:50:52 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:50:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:50:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:50:53 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:50:57 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 12 Sep 2017 23:50:58 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Sep 2017 23:50:58 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 12 Sep 2017 23:51:01 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 12 Sep 2017 23:51:01 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:02 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Sep 2017 23:51:02 GMT
EXPOSE 2375/tcp
# Tue, 12 Sep 2017 23:51:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:02 GMT
CMD []
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792cbf00d01a5eddf64c53899de2610fa40977a5932c68deaaa8a40d2766c92c`  
		Last Modified: Tue, 12 Sep 2017 23:51:41 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8774556163ae65b4718256b1e7f3af0c101edf70e19d846eaab93b95d93c64`  
		Last Modified: Tue, 12 Sep 2017 23:52:55 GMT  
		Size: 30.5 MB (30476280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7451b0643b76ec7c25d221c1c364d2965dda081b2650c91753c2cbf1c87b2904`  
		Last Modified: Tue, 12 Sep 2017 23:52:48 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd41827cd0a5c486ef408d62545eba724a7951fa1817d73f391d1c38371639e`  
		Last Modified: Tue, 12 Sep 2017 23:53:13 GMT  
		Size: 2.2 MB (2209158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a91007f0b580e28bcd176a0c53c3b7ed5199d523a5458a18c86a254bc9d77aa`  
		Last Modified: Tue, 12 Sep 2017 23:53:12 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2a0b860eb1435b2823d5a1b9f1dc5934290b718d7ec17d17484d408ba8e6e6`  
		Last Modified: Tue, 12 Sep 2017 23:53:13 GMT  
		Size: 176.2 KB (176196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea4702cab562897608cff02fbaf7066bf9967cca1d9ac3236e249360a4ad504`  
		Last Modified: Tue, 12 Sep 2017 23:53:12 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
