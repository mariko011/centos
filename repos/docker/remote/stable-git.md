## `docker:stable-git`

```console
$ docker pull docker@sha256:5bf0aec9a92bfcee6dc7df6670c8c5fac157713f56eb0f8693b62151e0945c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:2649aa9a07b8b5b719cceacc3926fc35a71d2d41a72e7555581d9d9fca900306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45425221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1870cb2c0d2a5717dc9ed97230825998d34cce7142bfa09c4921478381dcff47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 00:52:44 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 00:52:51 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Dec 2017 00:52:51 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Dec 2017 00:52:51 GMT
ENV DOCKER_VERSION=17.12.0-ce
# Thu, 28 Dec 2017 00:53:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 28 Dec 2017 00:53:00 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 28 Dec 2017 00:53:01 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 28 Dec 2017 00:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Dec 2017 00:53:09 GMT
CMD ["sh"]
# Thu, 28 Dec 2017 00:54:13 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5c13ed5ec7edeacb70aab480d9b1c29729d758a333abb7ed331a3b58e8a5c5`  
		Last Modified: Thu, 28 Dec 2017 00:54:34 GMT  
		Size: 308.0 KB (308018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2078331aa194699c56e73fab217e7d9391a8ae4f7ec6e63980977dffa55d023a`  
		Last Modified: Thu, 28 Dec 2017 00:54:34 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafcc1eb9f655068f2468affa2889d855703ce5fbbfea842ec429d4e372ce325`  
		Last Modified: Thu, 28 Dec 2017 00:54:41 GMT  
		Size: 34.6 MB (34609071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fde9f0de2ff143ef60d80ad440ed6f58049d1f6159e96ba530f03faf19ffb22`  
		Last Modified: Thu, 28 Dec 2017 00:54:34 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0022e629e594891dd16c0bfe7935f80befee04123f46625a728e44e889922a`  
		Last Modified: Thu, 28 Dec 2017 00:54:34 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d270e978c97cde785e0476ffce438f0341c912197e41862ea632ca35e0eb6a8b`  
		Last Modified: Thu, 28 Dec 2017 01:02:25 GMT  
		Size: 8.4 MB (8441777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
