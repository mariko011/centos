## `docker:test-git`

```console
$ docker pull docker@sha256:d3d3ac100fca0f877d07c35ebb043d6703ad23ccc0c181d955a9338d21c701e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:23fd9258838eff62f00a1711b404f7ad84a486e2b1eaac2613a9eb509f71e919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44931806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c179a7e189b1354fa3dea2fb6ec291fddad805c096ab1512e36a00abfbf67323`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 21:40:03 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 12 Oct 2017 21:50:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 12 Oct 2017 21:51:58 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 18 Oct 2017 21:43:08 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 18 Oct 2017 21:43:16 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 18 Oct 2017 21:43:17 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 18 Oct 2017 21:43:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Oct 2017 21:43:17 GMT
CMD ["sh"]
# Wed, 18 Oct 2017 21:43:55 GMT
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
	-	`sha256:9032f08e624b906a287c8541c709a9a772bea0844d0b5f469b654b98fb4d9031`  
		Last Modified: Thu, 12 Oct 2017 21:53:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99128a53a3c9687693530dacea3488a77763a8dde83501350a80853b922eabc5`  
		Last Modified: Wed, 18 Oct 2017 21:44:22 GMT  
		Size: 30.8 MB (30809023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f227d2fb4a8034ab65266b57144aabeba313fa9580fde7b4066c34fd0a7e9154`  
		Last Modified: Wed, 18 Oct 2017 21:44:16 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8763c2ead8b74d6e0880dde510919cce9e3956496852830c99a168b42a33a63d`  
		Last Modified: Wed, 18 Oct 2017 21:46:41 GMT  
		Size: 11.8 MB (11780132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
