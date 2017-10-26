## `docker:test-dind`

```console
$ docker pull docker@sha256:107f732b0398a7f8b0878f240780e31fb24769cab86c05b6f118903f37e86fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:95f5632cd80db303bc397b817cf6f57ec75942e5fe8273e5ad2dafbc75df38ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35538840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12c0db765b447f4f912cffc2a372466b4af1c9c9b1c57aea364df5ee61afc0c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Wed, 25 Oct 2017 23:47:58 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 25 Oct 2017 23:48:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 25 Oct 2017 23:48:02 GMT
ENV DOCKER_CHANNEL=edge
# Wed, 25 Oct 2017 23:48:03 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Wed, 25 Oct 2017 23:48:10 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 25 Oct 2017 23:48:10 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:11 GMT
CMD ["sh"]
# Wed, 25 Oct 2017 23:48:28 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 25 Oct 2017 23:48:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 25 Oct 2017 23:48:32 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 25 Oct 2017 23:48:37 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 25 Oct 2017 23:48:39 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 25 Oct 2017 23:48:39 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Oct 2017 23:48:39 GMT
EXPOSE 2375/tcp
# Wed, 25 Oct 2017 23:48:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Oct 2017 23:48:40 GMT
CMD []
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011089ed585a545b59e83fa3471fdeaa2389eb6c294b54dd189aa9546b56c228`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 351.0 KB (350983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c445de978dbe07b8e50753810e22d34197a988d7e5d47965aca38f347ec17b9`  
		Last Modified: Wed, 25 Oct 2017 23:51:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2494b6ed7de3257508fc7c414e8d8e7629b9f82d28b7fc5cea4613b0557cb48e`  
		Last Modified: Wed, 25 Oct 2017 23:51:23 GMT  
		Size: 30.8 MB (30808730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399d4add95ebce02b3360a9e07fe929a836d5d2c563ec01b1107d0e055c8d900`  
		Last Modified: Wed, 25 Oct 2017 23:51:14 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0877ce0ea9ad6577685a7620c33365f3a2e3a06b2b520a842f9558ca8aeca27e`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 2.2 MB (2208870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad92464a80d25bfa37ffb80e82e51559de4d39ba9289d871b172cb4603e603f`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4282f27740ebf060d583d4d2e56f162fb7e30864220aee05ad35ee19aa2ec3d`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 176.1 KB (176132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459b213f9b4e41c3aba99a9f6104a4b25f7660fd48c4db75d61ce8cba9d8982`  
		Last Modified: Wed, 25 Oct 2017 23:52:55 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:fbaf5f6d9dbcd4d7618d81983345efe5b7ed5c8c35ab6b5d20cf11c1628378f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33102439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56add9c7169fef11ddb8776a8b719dfb1ddfc941916a4f752bf63355d12ff68`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 19 Jul 2017 16:32:03 GMT
ADD file:edbf9c53e992e9dfae38536554f7aa99ded883e73513c3e7ddb9e59fa4bedd79 in / 
# Thu, 20 Jul 2017 15:13:09 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:13:10 GMT
CMD ["sh"]
# Thu, 27 Jul 2017 18:04:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 06:00:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 06:04:09 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 06:00:49 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 06:00:59 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 06:01:00 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:01 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 06:01:19 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 06:01:21 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 06:01:22 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 06:01:28 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 06:01:29 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 06:01:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 06:01:30 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 06:01:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 06:01:32 GMT
CMD []
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a435f629156f89100b4013689a5cf8fdcd7e3e52ebd3575bf20db2a72655d0`  
		Last Modified: Thu, 20 Jul 2017 15:13:23 GMT  
		Size: 5.6 KB (5564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f93fa762476286ca54f84f942312ffd7583480cfede4f88ddf7affaf74eed5`  
		Last Modified: Tue, 26 Sep 2017 06:03:23 GMT  
		Size: 351.5 KB (351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cae6026928713eb7dada53e8b6b9738e7a4c873fb619a03ea102ff2faff5fe`  
		Last Modified: Fri, 13 Oct 2017 06:06:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d96ef2b3dbaf008eabed8c6f7a8c135d9c4bf36cf2906a771c954dc1aa8bd`  
		Last Modified: Thu, 19 Oct 2017 06:03:26 GMT  
		Size: 28.6 MB (28582456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f4d738b28e8fc9e61876bd151ee4de340d8b7ed402379d825c4f3362b2537f`  
		Last Modified: Thu, 19 Oct 2017 06:03:15 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e1c9d6c03ded59a831fd98a14a26ffbbc0f6bb22ec487e5d9084fcd4d2e5b3`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 2.1 MB (2069349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016462ececf041f3bb5072ef48f9eaaf84215724eb93ef184e8bc0f557dc3081`  
		Last Modified: Thu, 19 Oct 2017 06:04:55 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356511ee1dd8521ef1d34f06038c71a418118cbef4b1dfc4f728435472603a75`  
		Last Modified: Thu, 19 Oct 2017 06:04:54 GMT  
		Size: 176.1 KB (176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2222fbb7e596099e7dab0a297b694410baf6a497496bdc0a0d6873a1794fd9`  
		Last Modified: Thu, 19 Oct 2017 06:04:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:00572a61474aebc14e683a7fd5d1af20092f5f2c710afedc765c304382d1c8c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33315731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdcf03bf3f757a499516093cde4b0854fa94c62fbeda3d4b4f584edf15cd6f4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 20 Jul 2017 15:12:51 GMT
ADD file:f3b95d244e15cd978f41d7e5a43f56cf6d42ff98df0596d3cd7190f11869913f in / 
# Thu, 20 Jul 2017 15:12:54 GMT
RUN [ ! -e /etc/localtime ] && apk add --no-cache --virtual .tz-utc tzdata && cp -vL /usr/share/zoneinfo/UTC /etc/localtime && apk del .tz-utc
# Thu, 20 Jul 2017 15:12:54 GMT
CMD ["sh"]
# Wed, 23 Aug 2017 03:07:35 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Oct 2017 10:36:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 13 Oct 2017 10:40:01 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 19 Oct 2017 10:36:26 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 19 Oct 2017 10:36:39 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 19 Oct 2017 10:36:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:36:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Oct 2017 10:36:47 GMT
CMD ["sh"]
# Thu, 19 Oct 2017 10:37:07 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 19 Oct 2017 10:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 19 Oct 2017 10:37:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 19 Oct 2017 10:37:25 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 19 Oct 2017 10:37:27 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 19 Oct 2017 10:37:30 GMT
VOLUME [/var/lib/docker]
# Thu, 19 Oct 2017 10:37:32 GMT
EXPOSE 2375/tcp
# Thu, 19 Oct 2017 10:37:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 19 Oct 2017 10:37:38 GMT
CMD []
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f332c99ba2e15b9c8422a60f82415ab796807672570755b180a18a09d60dd`  
		Last Modified: Thu, 20 Jul 2017 15:12:58 GMT  
		Size: 5.6 KB (5599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42af85cfc717d07e841c0fcdf93ff5cfcfbea2256b038ac5796056b3d905d00`  
		Last Modified: Thu, 14 Sep 2017 21:26:11 GMT  
		Size: 354.2 KB (354233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bf60e0ab5a99bd1056e92d666c887864ec239de80a44c68b04dc12f1991f9`  
		Last Modified: Fri, 13 Oct 2017 10:41:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189bf05004167e4cd9f225230606164fe42e42aebc2df0868a606ac48cf7d3`  
		Last Modified: Thu, 19 Oct 2017 10:39:07 GMT  
		Size: 28.5 MB (28452829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe9b23499e2259dc57271967c2def441b3afb87790b46c3c1030e9fdd7f4771`  
		Last Modified: Thu, 19 Oct 2017 10:38:59 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ba8d5426f9b1e87b9cf1da071cd7e65029af3b6d06a06e233e25d282a5366`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 2.3 MB (2315589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df52fc62352fabb855be077de4126a82f27f7858ccb0fbd7bca316d04cc3c74`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680f2251e0509f6d6f8c3e4eb902fa7d0eb406539b2dd44332676a6d69e9d1a7`  
		Last Modified: Thu, 19 Oct 2017 10:39:47 GMT  
		Size: 176.2 KB (176179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847c9d9e07d849ef9b250be11af8887f650fea752a602f9b94eed3c1d7794754`  
		Last Modified: Thu, 19 Oct 2017 10:39:46 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; s390x

```console
$ docker pull docker@sha256:7a4e3ab75d84624bb6a7224cf5c30f78da0818f470f5eb3e4845a321be0a5571
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35143969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3774a44a5c47d7468e7d721b805e3d2739254692476b907b7b737bb21826378`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_CHANNEL=edge
# Thu, 26 Oct 2017 03:01:37 GMT
ENV DOCKER_VERSION=17.10.0-ce
# Thu, 26 Oct 2017 03:01:41 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 26 Oct 2017 03:01:42 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:01:42 GMT
CMD ["sh"]
# Thu, 26 Oct 2017 03:01:56 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Thu, 26 Oct 2017 03:01:57 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 26 Oct 2017 03:01:57 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Thu, 26 Oct 2017 03:02:00 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 26 Oct 2017 03:02:00 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:02:01 GMT
VOLUME [/var/lib/docker]
# Thu, 26 Oct 2017 03:02:01 GMT
EXPOSE 2375/tcp
# Thu, 26 Oct 2017 03:02:01 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 26 Oct 2017 03:02:01 GMT
CMD []
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
	-	`sha256:711eec5d1757d68232064fcc0dbb88742ca0a2b283149860c8cff63806dc20d4`  
		Last Modified: Thu, 26 Oct 2017 03:03:45 GMT  
		Size: 30.2 MB (30200273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5797f30f0434d16326ba468ab1506d112392d184fc87b318048dd0cd2faddf6`  
		Last Modified: Thu, 26 Oct 2017 03:03:38 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d431807efdfc0072396a709563d30a3a90e544908f62dd87eae037b3b171e8`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 2.3 MB (2346717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbee49ab4b290fea3da470f7b9f3189c44aa2ae5276b6a1b260254bc4b9b6e9`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeef88a2435654c8ff836b93ccc3e6cfeeca022744cad203637ae215beaa654f`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 176.1 KB (176133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348a62cebee3849ab608f710fc5409b2d6b2710ff0526a82e73788f65612818a`  
		Last Modified: Thu, 26 Oct 2017 03:04:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
