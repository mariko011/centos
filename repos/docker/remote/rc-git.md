## `docker:rc-git`

```console
$ docker pull docker@sha256:4093baff1b532dcc6ff226ff11d90100d0c29631da0a8b6f6eff001cf23bcaea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:cbc15b7a43bd2daba89886e4e997d506d4ff75342a168bc44131d8d1f63fc53d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44776668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1c7498a98c78efa100d755c7aeb9bf65643e7f62bd400956ff97579102f454`
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
# Wed, 13 Sep 2017 21:40:03 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc1
# Thu, 14 Sep 2017 00:35:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 14 Sep 2017 00:35:23 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 14 Sep 2017 00:35:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 00:35:23 GMT
CMD ["sh"]
# Thu, 14 Sep 2017 00:35:40 GMT
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
	-	`sha256:9348e77771365db8612c31a8572abbdc2e6484e19c530622c36499bcbbb311fb`  
		Last Modified: Thu, 14 Sep 2017 00:36:01 GMT  
		Size: 30.7 MB (30664521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4298301b0379200378484882e3b934b1e7946faefc19f2de8a4038ef7d1a16`  
		Last Modified: Thu, 14 Sep 2017 00:35:55 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39090f72a325c1935d0e2cb289db54c6573359038669f49f948b3d96576a54de`  
		Last Modified: Thu, 14 Sep 2017 00:36:56 GMT  
		Size: 11.8 MB (11769649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
