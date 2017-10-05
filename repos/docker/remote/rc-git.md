## `docker:rc-git`

```console
$ docker pull docker@sha256:4922173e42d267fdbaa2acf440f27c3cd3c20b436ea476552873742d76ad9447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:ad1cf786d5228118f095f6ea12bb2829434b3b5d7d15697e14cd31b6c774d089
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44921519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1948022efe0219d3103c97f7f80065a09e0ddee809c25c855bb1d717634047`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_CHANNEL=test
# Thu, 05 Oct 2017 19:50:27 GMT
ENV DOCKER_VERSION=17.10.0-ce-rc1
# Thu, 05 Oct 2017 19:50:34 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 05 Oct 2017 19:50:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 05 Oct 2017 19:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Oct 2017 19:50:34 GMT
CMD ["sh"]
# Thu, 05 Oct 2017 19:50:56 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:c883288ffb7f790d636a0d59f7c1d864aa4e2616ee1e1005a4ef07359228b727`  
		Last Modified: Thu, 05 Oct 2017 19:51:28 GMT  
		Size: 30.8 MB (30798862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b4a0fecc8553b4c36ac70060295731d45202b5a8b7261f073d2a2c3cfd87ae`  
		Last Modified: Thu, 05 Oct 2017 19:51:21 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f42232a4d9f69e62a2f6f0eb5253cc659956bfd76c5ac0e472a9da0b612ef8`  
		Last Modified: Thu, 05 Oct 2017 19:52:23 GMT  
		Size: 11.8 MB (11780157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
