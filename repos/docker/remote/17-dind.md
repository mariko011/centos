## `docker:17-dind`

```console
$ docker pull docker@sha256:f78c730d729e986b1c271dfd69267aea15037ab069d73ff8afe338b768cd41dc
```

-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33418327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7243eea1f98a2f23eba2d3ba84f9cb4db141be6047e03d148d6f9db28b9c5db4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 18:27:27 GMT
RUN apk add --no-cache 		ca-certificates
# Mon, 19 Jun 2017 18:27:27 GMT
ENV DOCKER_CHANNEL=edge
# Mon, 19 Jun 2017 18:27:28 GMT
ENV DOCKER_VERSION=17.05.0-ce
# Mon, 19 Jun 2017 18:27:35 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Mon, 19 Jun 2017 18:27:56 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 18:27:58 GMT
CMD ["sh"]
# Mon, 19 Jun 2017 18:29:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Mon, 19 Jun 2017 18:29:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 19 Jun 2017 18:29:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Mon, 19 Jun 2017 18:29:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Mon, 19 Jun 2017 18:30:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Mon, 19 Jun 2017 18:30:01 GMT
VOLUME [/var/lib/docker]
# Mon, 19 Jun 2017 18:30:02 GMT
EXPOSE 2375/tcp
# Mon, 19 Jun 2017 18:30:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 19 Jun 2017 18:30:04 GMT
CMD []
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ce9161c0e9905cb5fada429be2ea2d3882d148f8e6d7afdb3db50d93a93be2`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 350.6 KB (350623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0564f9a2e6a6de6d0e54621d48c54006c497e5d43de49512578961654adeeb`  
		Last Modified: Thu, 22 Jun 2017 19:24:53 GMT  
		Size: 28.8 MB (28753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58500d591f1570a24362d00588de71867dd0f00af23d5221ec3184e6f79e72ef`  
		Last Modified: Thu, 22 Jun 2017 19:24:46 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135c8cbd5cb106e54e2cc527e917f740962a75303370f34ce9d90bbcb167d40a`  
		Last Modified: Thu, 22 Jun 2017 19:27:31 GMT  
		Size: 2.2 MB (2165526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141f0ff40a8f56d5e934f9f6457ecc5d8df4e17252855a7975ae331532cd1735`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ebdb936efebcbef2806080a8eb1855a1436d5693baca6644c9097654ae809`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 175.7 KB (175680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d293302e700cfae3ff7ba728a01f0eb30590bb98d0de9303c83457c90504f51`  
		Last Modified: Thu, 22 Jun 2017 19:27:30 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
