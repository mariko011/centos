## `docker:test-git`

```console
$ docker pull docker@sha256:965e5340b13212573722baf3bfece2e6c46f71884bf1cc019bea2a5ba7ef871c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:ff793d2e4bd60058ccad466b8240b92bf7cfb8e36e2f276aa8656c93417bfae5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48623490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d694e108dcef6af589bd9a0b97e5ce87a6b9709215ece2f1d2c6ab29efde2ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:06:17 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 01 Dec 2017 20:06:21 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 05 Dec 2017 02:50:28 GMT
ENV DOCKER_CHANNEL=test
# Sat, 09 Dec 2017 01:53:10 GMT
ENV DOCKER_VERSION=17.12.0-ce-rc1
# Sat, 09 Dec 2017 01:53:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 09 Dec 2017 01:53:19 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 09 Dec 2017 01:53:19 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 09 Dec 2017 01:53:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 01:53:20 GMT
CMD ["sh"]
# Sat, 09 Dec 2017 01:54:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9ac44c1841d6907db77d1476941b90fbf7c3499440bf9068a83a66aecc237f`  
		Last Modified: Fri, 01 Dec 2017 20:09:01 GMT  
		Size: 351.0 KB (351004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a848dcd23bd7ecdadc08642cb18c81b6fd36e0f0b99ee7660d13bf5cf244dfc9`  
		Last Modified: Fri, 01 Dec 2017 20:09:02 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b7f3ed5789a436f3098ff1fb5bbf53a08c44d0bccadeffcb55dab4beeff1f`  
		Last Modified: Sat, 09 Dec 2017 01:55:24 GMT  
		Size: 34.5 MB (34496818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ac936154cad4e1b0d88a8abb2911208227986b6a2f665d7d202844797e3c80`  
		Last Modified: Sat, 09 Dec 2017 01:55:18 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e0debaa826f7f54dd3aaac817a3a228b9b91e35101a718c445f2ad9bb5c9eb`  
		Last Modified: Sat, 09 Dec 2017 01:55:17 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe74c5a8ea88a64eae6c383b5aa642547c358d912df1b2679d66f3d74476b0a`  
		Last Modified: Sat, 09 Dec 2017 01:56:43 GMT  
		Size: 11.8 MB (11782730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; s390x

```console
$ docker pull docker@sha256:ebbfec235857eaf6dc0ec4d665be66102b410dc3fc851390b70d6cd56e7bba55
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47839410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218a600c65f537c35f22bb4fade209fdea9f5ea84602ba25029b86cf2c6df4bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:01:36 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 03:01:36 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 04 Nov 2017 03:01:38 GMT
ENV DOCKER_CHANNEL=test
# Sat, 09 Dec 2017 04:01:32 GMT
ENV DOCKER_VERSION=17.12.0-ce-rc1
# Sat, 09 Dec 2017 04:01:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Sat, 09 Dec 2017 04:01:38 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 09 Dec 2017 04:01:38 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 09 Dec 2017 04:01:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Dec 2017 04:01:39 GMT
CMD ["sh"]
# Sat, 09 Dec 2017 04:02:16 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c591e288aeff92334ad8b71d06647f63984dee862dde01321a4087557e0691fe`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 352.5 KB (352514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c7a9baee1e600d6ffd18316c88768a16246fbd81d84f2f217736b364c53bf0`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c824749e6116b2f6bf1162a3956628051af3901a3c94b1d2441f4e4dbac4fc95`  
		Last Modified: Sat, 09 Dec 2017 04:03:37 GMT  
		Size: 33.6 MB (33632431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283823d0d3bdd8257da1afcb6867db510428a6aa7925fb8c7bd04aa216e4243f`  
		Last Modified: Sat, 09 Dec 2017 04:03:29 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ce1254c229f281e471e03d1f3b0f598a31a317637f54353b8a0ae1cd6dd5d2`  
		Last Modified: Sat, 09 Dec 2017 04:03:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2a6b30bb288a487acb23fa5f239cdbe2237cd49218075fc3ca3846f1eb7a61`  
		Last Modified: Sat, 09 Dec 2017 04:04:33 GMT  
		Size: 11.8 MB (11787384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
