## `docker:rc-dind`

```console
$ docker pull docker@sha256:48c1d19c9b58136c93d6f9b4c3d3ab9865d1a48dc836027a7c6091586676f2e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:f6881fc3c171314e16b66d9a5a85c537005107df3ea7139b8d90c1177146fedb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26483204bd75cc87308f13b49d2015462ba81105bc50ecbcde3dcc60bcab0cdd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:50:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 12 Oct 2017 21:50:36 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc2
# Thu, 12 Oct 2017 21:50:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 12 Oct 2017 21:50:41 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:50:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 21:50:42 GMT
CMD ["sh"]
# Thu, 12 Oct 2017 21:50:54 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 12 Oct 2017 21:50:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 12 Oct 2017 21:50:55 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 12 Oct 2017 21:50:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 12 Oct 2017 21:50:59 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 12 Oct 2017 21:50:59 GMT
VOLUME [/var/lib/docker]
# Thu, 12 Oct 2017 21:50:59 GMT
EXPOSE 2375/tcp
# Thu, 12 Oct 2017 21:50:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 12 Oct 2017 21:51:00 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b1efef66a774fd5aba00895fa9d2e8645dcb19923ab5e63a38fb7e59791d9a`  
		Last Modified: Thu, 12 Oct 2017 21:53:34 GMT  
		Size: 30.8 MB (30808352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63630b34eee433bbf57e6b682d503c1675c6b0c9749520271e9d68b6573fdc8d`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ef37b7d4f17763e18500c750e5d059f9454532916f162b1569166e09b778e0`  
		Last Modified: Thu, 12 Oct 2017 21:54:10 GMT  
		Size: 2.2 MB (2209118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c5715d683384aa1804e1a5da3e0158047122d0169f6a5b5eee614214402036`  
		Last Modified: Thu, 12 Oct 2017 21:54:09 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c694aa91615b66bf2935bd86404a25489c982b815298c23899f4167a683a09e`  
		Last Modified: Thu, 12 Oct 2017 21:54:09 GMT  
		Size: 176.2 KB (176205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc4f89061a79b60a73ee0f030c029235c444cee5780b86a9068e6feec79a01`  
		Last Modified: Thu, 12 Oct 2017 21:54:09 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
