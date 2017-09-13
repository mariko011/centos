<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:17`](#docker17)
-	[`docker:17.06`](#docker1706)
-	[`docker:17.06.2`](#docker17062)
-	[`docker:17.06.2-ce`](#docker17062-ce)
-	[`docker:17.06.2-ce-dind`](#docker17062-ce-dind)
-	[`docker:17.06.2-ce-git`](#docker17062-ce-git)
-	[`docker:17.06.2-dind`](#docker17062-dind)
-	[`docker:17.06.2-git`](#docker17062-git)
-	[`docker:17.06-dind`](#docker1706-dind)
-	[`docker:17.06-git`](#docker1706-git)
-	[`docker:17.07`](#docker1707)
-	[`docker:17.07.0`](#docker17070)
-	[`docker:17.07.0-ce`](#docker17070-ce)
-	[`docker:17.07.0-ce-dind`](#docker17070-ce-dind)
-	[`docker:17.07.0-ce-git`](#docker17070-ce-git)
-	[`docker:17.07.0-dind`](#docker17070-dind)
-	[`docker:17.07.0-git`](#docker17070-git)
-	[`docker:17.07-dind`](#docker1707-dind)
-	[`docker:17.07-git`](#docker1707-git)
-	[`docker:17.09.0`](#docker17090)
-	[`docker:17.09.0-ce`](#docker17090-ce)
-	[`docker:17.09.0-ce-dind`](#docker17090-ce-dind)
-	[`docker:17.09.0-ce-git`](#docker17090-ce-git)
-	[`docker:17.09.0-ce-rc1`](#docker17090-ce-rc1)
-	[`docker:17.09.0-ce-rc1-dind`](#docker17090-ce-rc1-dind)
-	[`docker:17.09.0-ce-rc1-git`](#docker17090-ce-rc1-git)
-	[`docker:17.09.0-dind`](#docker17090-dind)
-	[`docker:17.09.0-git`](#docker17090-git)
-	[`docker:17.09-rc`](#docker1709-rc)
-	[`docker:17.09-rc-dind`](#docker1709-rc-dind)
-	[`docker:17.09-rc-git`](#docker1709-rc-git)
-	[`docker:17-dind`](#docker17-dind)
-	[`docker:17-git`](#docker17-git)
-	[`docker:dind`](#dockerdind)
-	[`docker:edge`](#dockeredge)
-	[`docker:edge-dind`](#dockeredge-dind)
-	[`docker:edge-git`](#dockeredge-git)
-	[`docker:git`](#dockergit)
-	[`docker:latest`](#dockerlatest)
-	[`docker:rc`](#dockerrc)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:stable`](#dockerstable)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:test`](#dockertest)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:test-git`](#dockertest-git)

## `docker:17`

```console
$ docker pull docker@sha256:f1f2d7d10dc63bd8845c9980dbda2c53ada66dd095affa5cca09c7ef78eecc7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17` - linux; amd64

```console
$ docker pull docker@sha256:5b35dcf6b7f861bc701a633535fa76ab04bb88af76eda16e4771d9bacd498b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1f36288f279cc3837bf13821423d42a1f2994f42c522309ece1aaca2281ba5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

## `docker:17.06`

```console
$ docker pull docker@sha256:e085940a076c63a600aa57542366d9fbebb7f88e03ee71f4e89ab447e89f7a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06` - linux; amd64

```console
$ docker pull docker@sha256:cdd715e213c2e47797376df1c5b86f0e7172ca7c9fdb581cf06f6da11ced3ecf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c96e9989de5639a32f248a05ef00dcf72b3721b509409badd9b48fa864448d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2`

```console
$ docker pull docker@sha256:e085940a076c63a600aa57542366d9fbebb7f88e03ee71f4e89ab447e89f7a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2` - linux; amd64

```console
$ docker pull docker@sha256:cdd715e213c2e47797376df1c5b86f0e7172ca7c9fdb581cf06f6da11ced3ecf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c96e9989de5639a32f248a05ef00dcf72b3721b509409badd9b48fa864448d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce`

```console
$ docker pull docker@sha256:e085940a076c63a600aa57542366d9fbebb7f88e03ee71f4e89ab447e89f7a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce` - linux; amd64

```console
$ docker pull docker@sha256:cdd715e213c2e47797376df1c5b86f0e7172ca7c9fdb581cf06f6da11ced3ecf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c96e9989de5639a32f248a05ef00dcf72b3721b509409badd9b48fa864448d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-dind`

```console
$ docker pull docker@sha256:7ad1f964b91f4cd8f5500b11539f4207ee7a24b00aa3e02a28aa26be74e2b74d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:b65c2eb7125b709ec60e6b977f841126ab1fe2d555e25cef6b97d1219d787100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6560af07ff7c67afb238102975c2c2f8cb49f1d160b5c20277680cee39b235f2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:51:18 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 12 Sep 2017 23:51:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Sep 2017 23:51:19 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 12 Sep 2017 23:51:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 12 Sep 2017 23:51:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Sep 2017 23:51:23 GMT
EXPOSE 2375/tcp
# Tue, 12 Sep 2017 23:51:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:23 GMT
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177ad0476eccd4d83c6bbac79a0223ae81b3676f8c517b00bf342dbc5b4e6697`  
		Last Modified: Tue, 12 Sep 2017 23:54:12 GMT  
		Size: 2.2 MB (2209114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7fe82cc367aaa1cfdb31de2f77b8f2c454dcd695d0277cf7d1e378a98e7fd`  
		Last Modified: Tue, 12 Sep 2017 23:54:11 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99f1fc020a1fec2cf2861a6042128a326cf789ab2bf4842a4f81f059d5c5f59`  
		Last Modified: Tue, 12 Sep 2017 23:54:12 GMT  
		Size: 176.2 KB (176197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c6f748057a00aee6f4a5a7e434c4363b585146eada0bfffb9cdd9f525cd5b1`  
		Last Modified: Tue, 12 Sep 2017 23:54:11 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-ce-git`

```console
$ docker pull docker@sha256:49bedc0c1745c2c5a42ffc8792423268187932a0433b444922594f2f8d1ac6fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:dd05f5f31b04568d03c7f16f3b5cfbfd554fb526b77fac19bec169ca0d53e606
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44130296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c705bb0af291aff4abc7d9b40fc19841b63f55eccd78e5658e1361eb6eae38a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:51:28 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646a5f2f4f01fd623c0902f891e3a61b396f4a36f2dcdc33d3408636141ae4da`  
		Last Modified: Tue, 12 Sep 2017 23:54:28 GMT  
		Size: 11.8 MB (11769651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-dind`

```console
$ docker pull docker@sha256:7ad1f964b91f4cd8f5500b11539f4207ee7a24b00aa3e02a28aa26be74e2b74d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-dind` - linux; amd64

```console
$ docker pull docker@sha256:b65c2eb7125b709ec60e6b977f841126ab1fe2d555e25cef6b97d1219d787100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6560af07ff7c67afb238102975c2c2f8cb49f1d160b5c20277680cee39b235f2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:51:18 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 12 Sep 2017 23:51:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Sep 2017 23:51:19 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 12 Sep 2017 23:51:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 12 Sep 2017 23:51:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Sep 2017 23:51:23 GMT
EXPOSE 2375/tcp
# Tue, 12 Sep 2017 23:51:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:23 GMT
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177ad0476eccd4d83c6bbac79a0223ae81b3676f8c517b00bf342dbc5b4e6697`  
		Last Modified: Tue, 12 Sep 2017 23:54:12 GMT  
		Size: 2.2 MB (2209114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7fe82cc367aaa1cfdb31de2f77b8f2c454dcd695d0277cf7d1e378a98e7fd`  
		Last Modified: Tue, 12 Sep 2017 23:54:11 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99f1fc020a1fec2cf2861a6042128a326cf789ab2bf4842a4f81f059d5c5f59`  
		Last Modified: Tue, 12 Sep 2017 23:54:12 GMT  
		Size: 176.2 KB (176197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c6f748057a00aee6f4a5a7e434c4363b585146eada0bfffb9cdd9f525cd5b1`  
		Last Modified: Tue, 12 Sep 2017 23:54:11 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06.2-git`

```console
$ docker pull docker@sha256:49bedc0c1745c2c5a42ffc8792423268187932a0433b444922594f2f8d1ac6fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06.2-git` - linux; amd64

```console
$ docker pull docker@sha256:dd05f5f31b04568d03c7f16f3b5cfbfd554fb526b77fac19bec169ca0d53e606
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44130296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c705bb0af291aff4abc7d9b40fc19841b63f55eccd78e5658e1361eb6eae38a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:51:28 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646a5f2f4f01fd623c0902f891e3a61b396f4a36f2dcdc33d3408636141ae4da`  
		Last Modified: Tue, 12 Sep 2017 23:54:28 GMT  
		Size: 11.8 MB (11769651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-dind`

```console
$ docker pull docker@sha256:7ad1f964b91f4cd8f5500b11539f4207ee7a24b00aa3e02a28aa26be74e2b74d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06-dind` - linux; amd64

```console
$ docker pull docker@sha256:b65c2eb7125b709ec60e6b977f841126ab1fe2d555e25cef6b97d1219d787100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6560af07ff7c67afb238102975c2c2f8cb49f1d160b5c20277680cee39b235f2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:51:18 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 12 Sep 2017 23:51:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Sep 2017 23:51:19 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 12 Sep 2017 23:51:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 12 Sep 2017 23:51:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Sep 2017 23:51:23 GMT
EXPOSE 2375/tcp
# Tue, 12 Sep 2017 23:51:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:23 GMT
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177ad0476eccd4d83c6bbac79a0223ae81b3676f8c517b00bf342dbc5b4e6697`  
		Last Modified: Tue, 12 Sep 2017 23:54:12 GMT  
		Size: 2.2 MB (2209114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7fe82cc367aaa1cfdb31de2f77b8f2c454dcd695d0277cf7d1e378a98e7fd`  
		Last Modified: Tue, 12 Sep 2017 23:54:11 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99f1fc020a1fec2cf2861a6042128a326cf789ab2bf4842a4f81f059d5c5f59`  
		Last Modified: Tue, 12 Sep 2017 23:54:12 GMT  
		Size: 176.2 KB (176197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c6f748057a00aee6f4a5a7e434c4363b585146eada0bfffb9cdd9f525cd5b1`  
		Last Modified: Tue, 12 Sep 2017 23:54:11 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.06-git`

```console
$ docker pull docker@sha256:49bedc0c1745c2c5a42ffc8792423268187932a0433b444922594f2f8d1ac6fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.06-git` - linux; amd64

```console
$ docker pull docker@sha256:dd05f5f31b04568d03c7f16f3b5cfbfd554fb526b77fac19bec169ca0d53e606
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44130296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c705bb0af291aff4abc7d9b40fc19841b63f55eccd78e5658e1361eb6eae38a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:51:28 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646a5f2f4f01fd623c0902f891e3a61b396f4a36f2dcdc33d3408636141ae4da`  
		Last Modified: Tue, 12 Sep 2017 23:54:28 GMT  
		Size: 11.8 MB (11769651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07`

```console
$ docker pull docker@sha256:f1f2d7d10dc63bd8845c9980dbda2c53ada66dd095affa5cca09c7ef78eecc7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07` - linux; amd64

```console
$ docker pull docker@sha256:5b35dcf6b7f861bc701a633535fa76ab04bb88af76eda16e4771d9bacd498b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1f36288f279cc3837bf13821423d42a1f2994f42c522309ece1aaca2281ba5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

## `docker:17.07.0`

```console
$ docker pull docker@sha256:f1f2d7d10dc63bd8845c9980dbda2c53ada66dd095affa5cca09c7ef78eecc7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0` - linux; amd64

```console
$ docker pull docker@sha256:5b35dcf6b7f861bc701a633535fa76ab04bb88af76eda16e4771d9bacd498b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1f36288f279cc3837bf13821423d42a1f2994f42c522309ece1aaca2281ba5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

## `docker:17.07.0-ce`

```console
$ docker pull docker@sha256:f1f2d7d10dc63bd8845c9980dbda2c53ada66dd095affa5cca09c7ef78eecc7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce` - linux; amd64

```console
$ docker pull docker@sha256:5b35dcf6b7f861bc701a633535fa76ab04bb88af76eda16e4771d9bacd498b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1f36288f279cc3837bf13821423d42a1f2994f42c522309ece1aaca2281ba5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

## `docker:17.07.0-ce-dind`

```console
$ docker pull docker@sha256:37117ef37ac625aebb7a904d061d83baa546b16e6ddc5b898e2732cc419f5c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-dind` - linux; amd64

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

## `docker:17.07.0-ce-git`

```console
$ docker pull docker@sha256:fcde973dc80e89ae2f5e4d50945ed069c03c7450861ea952d67a8e981feeaa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:2bb29c8ac028f2b0637d10d85b82be72a5e6f9e390dbddfaf931583d2d31e726
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbf78cb1dd8324322d119dcb257e0dbe075328c69e8ce1d87f22f861d6c29fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 12 Sep 2017 23:51:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b6a01c3973b30be55643c9b9ca95bf6e2555cde3632e76efe81299fbea0020cf`  
		Last Modified: Tue, 12 Sep 2017 23:53:33 GMT  
		Size: 11.8 MB (11769644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07.0-dind`

```console
$ docker pull docker@sha256:37117ef37ac625aebb7a904d061d83baa546b16e6ddc5b898e2732cc419f5c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-dind` - linux; amd64

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

## `docker:17.07.0-git`

```console
$ docker pull docker@sha256:fcde973dc80e89ae2f5e4d50945ed069c03c7450861ea952d67a8e981feeaa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07.0-git` - linux; amd64

```console
$ docker pull docker@sha256:2bb29c8ac028f2b0637d10d85b82be72a5e6f9e390dbddfaf931583d2d31e726
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbf78cb1dd8324322d119dcb257e0dbe075328c69e8ce1d87f22f861d6c29fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 12 Sep 2017 23:51:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b6a01c3973b30be55643c9b9ca95bf6e2555cde3632e76efe81299fbea0020cf`  
		Last Modified: Tue, 12 Sep 2017 23:53:33 GMT  
		Size: 11.8 MB (11769644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.07-dind`

```console
$ docker pull docker@sha256:37117ef37ac625aebb7a904d061d83baa546b16e6ddc5b898e2732cc419f5c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07-dind` - linux; amd64

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

## `docker:17.07-git`

```console
$ docker pull docker@sha256:fcde973dc80e89ae2f5e4d50945ed069c03c7450861ea952d67a8e981feeaa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.07-git` - linux; amd64

```console
$ docker pull docker@sha256:2bb29c8ac028f2b0637d10d85b82be72a5e6f9e390dbddfaf931583d2d31e726
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbf78cb1dd8324322d119dcb257e0dbe075328c69e8ce1d87f22f861d6c29fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 12 Sep 2017 23:51:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b6a01c3973b30be55643c9b9ca95bf6e2555cde3632e76efe81299fbea0020cf`  
		Last Modified: Tue, 12 Sep 2017 23:53:33 GMT  
		Size: 11.8 MB (11769644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0`

```console
$ docker pull docker@sha256:ce8f6802101522a31c9575b48ba977074940c629a9ff895ed8a23c955dd9852e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0` - linux; amd64

```console
$ docker pull docker@sha256:c0eae97336681d2c735da2ac0d7afb3f7e68f998727c0fdc8262fbc27ac06331
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33007040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591a1b05f4391df7081511308863a5bb4bb2f0705d57aa61c410b18b547d07a8`
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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce`

```console
$ docker pull docker@sha256:ce8f6802101522a31c9575b48ba977074940c629a9ff895ed8a23c955dd9852e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce` - linux; amd64

```console
$ docker pull docker@sha256:c0eae97336681d2c735da2ac0d7afb3f7e68f998727c0fdc8262fbc27ac06331
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33007040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591a1b05f4391df7081511308863a5bb4bb2f0705d57aa61c410b18b547d07a8`
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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-dind`

```console
$ docker pull docker@sha256:1d4bda3edd165dc3de9339d157e44d93de425c1d8e8d7cc4900a59152a5cc887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-dind` - linux; amd64

```console
$ docker pull docker@sha256:34de0578cf5c503d983229708b228d3d0dbe89f2b212adfee91fa3649bc4dcf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35394140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1fefc97eb7c9ac27bb574b0b8a377118a4fef57ae2d054f761807275ecc57f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:16 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:40:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:40:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:40:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:40:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:21 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:40:21 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:40:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:21 GMT
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d216b58ccf4d25da29e9f8b8b69276c292c6ed83df70e5905cd059a66493c9f`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 2.2 MB (2209099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1389fdc8e83da66999a6083a2c1a60c19c016a547eedcd70936eb3bd14b24e66`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0660e61f48ed3030099849e4090f6696099c36e81ef1e50979b4b25e062484b9`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5925428265ff85280b657e80a5e5b60b0b273d62d0f22836da9c0751df3cfe`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-git`

```console
$ docker pull docker@sha256:ba776713c1c09f21a887edece25df43a8bd9d901ae68f19170a3cbfdab7d71ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-git` - linux; amd64

```console
$ docker pull docker@sha256:df8a1eb4b69bb46e257015cafbb20f3708d691046c1bf4e26de3d7d737384949
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44776720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baab561dcda434b0cd7823bbe3794f7d166dff6e9fc89f59f6d1dc62122476ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_CHANNEL=test
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc1
# Tue, 12 Sep 2017 23:50:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:50:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:50:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:50:28 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:50:44 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:a0fc4f6527d937796b2958c98a63bd7d08d38f3514e43b01b20e00a0db8b7901`  
		Last Modified: Tue, 12 Sep 2017 23:51:49 GMT  
		Size: 30.7 MB (30664566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf6e0a3bb215ddd89244d470c27f6decfdc60b670f8beb4c3427417c76a4c5`  
		Last Modified: Tue, 12 Sep 2017 23:51:42 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c9277c08128d96070307d5905047d939288e066e6c7115b7ff683d7139910`  
		Last Modified: Tue, 12 Sep 2017 23:52:32 GMT  
		Size: 11.8 MB (11769655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-rc1`

```console
$ docker pull docker@sha256:ce8f6802101522a31c9575b48ba977074940c629a9ff895ed8a23c955dd9852e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-rc1` - linux; amd64

```console
$ docker pull docker@sha256:c0eae97336681d2c735da2ac0d7afb3f7e68f998727c0fdc8262fbc27ac06331
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33007040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591a1b05f4391df7081511308863a5bb4bb2f0705d57aa61c410b18b547d07a8`
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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-rc1-dind`

```console
$ docker pull docker@sha256:1d4bda3edd165dc3de9339d157e44d93de425c1d8e8d7cc4900a59152a5cc887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-rc1-dind` - linux; amd64

```console
$ docker pull docker@sha256:34de0578cf5c503d983229708b228d3d0dbe89f2b212adfee91fa3649bc4dcf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35394140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1fefc97eb7c9ac27bb574b0b8a377118a4fef57ae2d054f761807275ecc57f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:16 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:40:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:40:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:40:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:40:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:21 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:40:21 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:40:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:21 GMT
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d216b58ccf4d25da29e9f8b8b69276c292c6ed83df70e5905cd059a66493c9f`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 2.2 MB (2209099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1389fdc8e83da66999a6083a2c1a60c19c016a547eedcd70936eb3bd14b24e66`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0660e61f48ed3030099849e4090f6696099c36e81ef1e50979b4b25e062484b9`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5925428265ff85280b657e80a5e5b60b0b273d62d0f22836da9c0751df3cfe`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-ce-rc1-git`

```console
$ docker pull docker@sha256:ba776713c1c09f21a887edece25df43a8bd9d901ae68f19170a3cbfdab7d71ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-ce-rc1-git` - linux; amd64

```console
$ docker pull docker@sha256:df8a1eb4b69bb46e257015cafbb20f3708d691046c1bf4e26de3d7d737384949
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44776720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baab561dcda434b0cd7823bbe3794f7d166dff6e9fc89f59f6d1dc62122476ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_CHANNEL=test
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc1
# Tue, 12 Sep 2017 23:50:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:50:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:50:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:50:28 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:50:44 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:a0fc4f6527d937796b2958c98a63bd7d08d38f3514e43b01b20e00a0db8b7901`  
		Last Modified: Tue, 12 Sep 2017 23:51:49 GMT  
		Size: 30.7 MB (30664566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf6e0a3bb215ddd89244d470c27f6decfdc60b670f8beb4c3427417c76a4c5`  
		Last Modified: Tue, 12 Sep 2017 23:51:42 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c9277c08128d96070307d5905047d939288e066e6c7115b7ff683d7139910`  
		Last Modified: Tue, 12 Sep 2017 23:52:32 GMT  
		Size: 11.8 MB (11769655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-dind`

```console
$ docker pull docker@sha256:1d4bda3edd165dc3de9339d157e44d93de425c1d8e8d7cc4900a59152a5cc887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-dind` - linux; amd64

```console
$ docker pull docker@sha256:34de0578cf5c503d983229708b228d3d0dbe89f2b212adfee91fa3649bc4dcf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35394140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1fefc97eb7c9ac27bb574b0b8a377118a4fef57ae2d054f761807275ecc57f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:16 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:40:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:40:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:40:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:40:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:21 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:40:21 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:40:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:21 GMT
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d216b58ccf4d25da29e9f8b8b69276c292c6ed83df70e5905cd059a66493c9f`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 2.2 MB (2209099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1389fdc8e83da66999a6083a2c1a60c19c016a547eedcd70936eb3bd14b24e66`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0660e61f48ed3030099849e4090f6696099c36e81ef1e50979b4b25e062484b9`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5925428265ff85280b657e80a5e5b60b0b273d62d0f22836da9c0751df3cfe`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09.0-git`

```console
$ docker pull docker@sha256:ba776713c1c09f21a887edece25df43a8bd9d901ae68f19170a3cbfdab7d71ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09.0-git` - linux; amd64

```console
$ docker pull docker@sha256:df8a1eb4b69bb46e257015cafbb20f3708d691046c1bf4e26de3d7d737384949
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44776720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baab561dcda434b0cd7823bbe3794f7d166dff6e9fc89f59f6d1dc62122476ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_CHANNEL=test
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc1
# Tue, 12 Sep 2017 23:50:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:50:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:50:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:50:28 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:50:44 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:a0fc4f6527d937796b2958c98a63bd7d08d38f3514e43b01b20e00a0db8b7901`  
		Last Modified: Tue, 12 Sep 2017 23:51:49 GMT  
		Size: 30.7 MB (30664566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf6e0a3bb215ddd89244d470c27f6decfdc60b670f8beb4c3427417c76a4c5`  
		Last Modified: Tue, 12 Sep 2017 23:51:42 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c9277c08128d96070307d5905047d939288e066e6c7115b7ff683d7139910`  
		Last Modified: Tue, 12 Sep 2017 23:52:32 GMT  
		Size: 11.8 MB (11769655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-rc`

```console
$ docker pull docker@sha256:ce8f6802101522a31c9575b48ba977074940c629a9ff895ed8a23c955dd9852e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09-rc` - linux; amd64

```console
$ docker pull docker@sha256:c0eae97336681d2c735da2ac0d7afb3f7e68f998727c0fdc8262fbc27ac06331
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33007040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591a1b05f4391df7081511308863a5bb4bb2f0705d57aa61c410b18b547d07a8`
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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-rc-dind`

```console
$ docker pull docker@sha256:1d4bda3edd165dc3de9339d157e44d93de425c1d8e8d7cc4900a59152a5cc887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09-rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:34de0578cf5c503d983229708b228d3d0dbe89f2b212adfee91fa3649bc4dcf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35394140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1fefc97eb7c9ac27bb574b0b8a377118a4fef57ae2d054f761807275ecc57f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:16 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:40:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:40:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:40:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:40:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:21 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:40:21 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:40:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:21 GMT
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d216b58ccf4d25da29e9f8b8b69276c292c6ed83df70e5905cd059a66493c9f`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 2.2 MB (2209099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1389fdc8e83da66999a6083a2c1a60c19c016a547eedcd70936eb3bd14b24e66`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0660e61f48ed3030099849e4090f6696099c36e81ef1e50979b4b25e062484b9`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5925428265ff85280b657e80a5e5b60b0b273d62d0f22836da9c0751df3cfe`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17.09-rc-git`

```console
$ docker pull docker@sha256:ba776713c1c09f21a887edece25df43a8bd9d901ae68f19170a3cbfdab7d71ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17.09-rc-git` - linux; amd64

```console
$ docker pull docker@sha256:df8a1eb4b69bb46e257015cafbb20f3708d691046c1bf4e26de3d7d737384949
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44776720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baab561dcda434b0cd7823bbe3794f7d166dff6e9fc89f59f6d1dc62122476ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_CHANNEL=test
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc1
# Tue, 12 Sep 2017 23:50:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:50:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:50:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:50:28 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:50:44 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:a0fc4f6527d937796b2958c98a63bd7d08d38f3514e43b01b20e00a0db8b7901`  
		Last Modified: Tue, 12 Sep 2017 23:51:49 GMT  
		Size: 30.7 MB (30664566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf6e0a3bb215ddd89244d470c27f6decfdc60b670f8beb4c3427417c76a4c5`  
		Last Modified: Tue, 12 Sep 2017 23:51:42 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c9277c08128d96070307d5905047d939288e066e6c7115b7ff683d7139910`  
		Last Modified: Tue, 12 Sep 2017 23:52:32 GMT  
		Size: 11.8 MB (11769655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:17-dind`

```console
$ docker pull docker@sha256:37117ef37ac625aebb7a904d061d83baa546b16e6ddc5b898e2732cc419f5c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17-dind` - linux; amd64

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

## `docker:17-git`

```console
$ docker pull docker@sha256:fcde973dc80e89ae2f5e4d50945ed069c03c7450861ea952d67a8e981feeaa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:17-git` - linux; amd64

```console
$ docker pull docker@sha256:2bb29c8ac028f2b0637d10d85b82be72a5e6f9e390dbddfaf931583d2d31e726
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbf78cb1dd8324322d119dcb257e0dbe075328c69e8ce1d87f22f861d6c29fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 12 Sep 2017 23:51:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b6a01c3973b30be55643c9b9ca95bf6e2555cde3632e76efe81299fbea0020cf`  
		Last Modified: Tue, 12 Sep 2017 23:53:33 GMT  
		Size: 11.8 MB (11769644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `docker:edge`

```console
$ docker pull docker@sha256:f1f2d7d10dc63bd8845c9980dbda2c53ada66dd095affa5cca09c7ef78eecc7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge` - linux; amd64

```console
$ docker pull docker@sha256:5b35dcf6b7f861bc701a633535fa76ab04bb88af76eda16e4771d9bacd498b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1f36288f279cc3837bf13821423d42a1f2994f42c522309ece1aaca2281ba5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

## `docker:edge-dind`

```console
$ docker pull docker@sha256:37117ef37ac625aebb7a904d061d83baa546b16e6ddc5b898e2732cc419f5c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-dind` - linux; amd64

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

## `docker:edge-git`

```console
$ docker pull docker@sha256:fcde973dc80e89ae2f5e4d50945ed069c03c7450861ea952d67a8e981feeaa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:edge-git` - linux; amd64

```console
$ docker pull docker@sha256:2bb29c8ac028f2b0637d10d85b82be72a5e6f9e390dbddfaf931583d2d31e726
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbf78cb1dd8324322d119dcb257e0dbe075328c69e8ce1d87f22f861d6c29fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 12 Sep 2017 23:51:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b6a01c3973b30be55643c9b9ca95bf6e2555cde3632e76efe81299fbea0020cf`  
		Last Modified: Tue, 12 Sep 2017 23:53:33 GMT  
		Size: 11.8 MB (11769644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:fcde973dc80e89ae2f5e4d50945ed069c03c7450861ea952d67a8e981feeaa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:2bb29c8ac028f2b0637d10d85b82be72a5e6f9e390dbddfaf931583d2d31e726
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44588422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbf78cb1dd8324322d119dcb257e0dbe075328c69e8ce1d87f22f861d6c29fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Tue, 12 Sep 2017 23:51:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:b6a01c3973b30be55643c9b9ca95bf6e2555cde3632e76efe81299fbea0020cf`  
		Last Modified: Tue, 12 Sep 2017 23:53:33 GMT  
		Size: 11.8 MB (11769644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:f1f2d7d10dc63bd8845c9980dbda2c53ada66dd095affa5cca09c7ef78eecc7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:5b35dcf6b7f861bc701a633535fa76ab04bb88af76eda16e4771d9bacd498b52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32818778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1f36288f279cc3837bf13821423d42a1f2994f42c522309ece1aaca2281ba5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

## `docker:rc`

```console
$ docker pull docker@sha256:ce8f6802101522a31c9575b48ba977074940c629a9ff895ed8a23c955dd9852e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:c0eae97336681d2c735da2ac0d7afb3f7e68f998727c0fdc8262fbc27ac06331
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33007040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591a1b05f4391df7081511308863a5bb4bb2f0705d57aa61c410b18b547d07a8`
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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:1d4bda3edd165dc3de9339d157e44d93de425c1d8e8d7cc4900a59152a5cc887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:34de0578cf5c503d983229708b228d3d0dbe89f2b212adfee91fa3649bc4dcf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35394140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1fefc97eb7c9ac27bb574b0b8a377118a4fef57ae2d054f761807275ecc57f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:16 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:40:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:40:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:40:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:40:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:21 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:40:21 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:40:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:21 GMT
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d216b58ccf4d25da29e9f8b8b69276c292c6ed83df70e5905cd059a66493c9f`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 2.2 MB (2209099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1389fdc8e83da66999a6083a2c1a60c19c016a547eedcd70936eb3bd14b24e66`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0660e61f48ed3030099849e4090f6696099c36e81ef1e50979b4b25e062484b9`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5925428265ff85280b657e80a5e5b60b0b273d62d0f22836da9c0751df3cfe`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:ba776713c1c09f21a887edece25df43a8bd9d901ae68f19170a3cbfdab7d71ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:df8a1eb4b69bb46e257015cafbb20f3708d691046c1bf4e26de3d7d737384949
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44776720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baab561dcda434b0cd7823bbe3794f7d166dff6e9fc89f59f6d1dc62122476ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_CHANNEL=test
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc1
# Tue, 12 Sep 2017 23:50:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:50:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:50:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:50:28 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:50:44 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:a0fc4f6527d937796b2958c98a63bd7d08d38f3514e43b01b20e00a0db8b7901`  
		Last Modified: Tue, 12 Sep 2017 23:51:49 GMT  
		Size: 30.7 MB (30664566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf6e0a3bb215ddd89244d470c27f6decfdc60b670f8beb4c3427417c76a4c5`  
		Last Modified: Tue, 12 Sep 2017 23:51:42 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c9277c08128d96070307d5905047d939288e066e6c7115b7ff683d7139910`  
		Last Modified: Tue, 12 Sep 2017 23:52:32 GMT  
		Size: 11.8 MB (11769655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:e085940a076c63a600aa57542366d9fbebb7f88e03ee71f4e89ab447e89f7a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:cdd715e213c2e47797376df1c5b86f0e7172ca7c9fdb581cf06f6da11ced3ecf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 MB (32360645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c96e9989de5639a32f248a05ef00dcf72b3721b509409badd9b48fa864448d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:7ad1f964b91f4cd8f5500b11539f4207ee7a24b00aa3e02a28aa26be74e2b74d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:b65c2eb7125b709ec60e6b977f841126ab1fe2d555e25cef6b97d1219d787100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6560af07ff7c67afb238102975c2c2f8cb49f1d160b5c20277680cee39b235f2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:51:18 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 12 Sep 2017 23:51:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 12 Sep 2017 23:51:19 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 12 Sep 2017 23:51:22 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Tue, 12 Sep 2017 23:51:23 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:23 GMT
VOLUME [/var/lib/docker]
# Tue, 12 Sep 2017 23:51:23 GMT
EXPOSE 2375/tcp
# Tue, 12 Sep 2017 23:51:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:23 GMT
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177ad0476eccd4d83c6bbac79a0223ae81b3676f8c517b00bf342dbc5b4e6697`  
		Last Modified: Tue, 12 Sep 2017 23:54:12 GMT  
		Size: 2.2 MB (2209114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7fe82cc367aaa1cfdb31de2f77b8f2c454dcd695d0277cf7d1e378a98e7fd`  
		Last Modified: Tue, 12 Sep 2017 23:54:11 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99f1fc020a1fec2cf2861a6042128a326cf789ab2bf4842a4f81f059d5c5f59`  
		Last Modified: Tue, 12 Sep 2017 23:54:12 GMT  
		Size: 176.2 KB (176197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c6f748057a00aee6f4a5a7e434c4363b585146eada0bfffb9cdd9f525cd5b1`  
		Last Modified: Tue, 12 Sep 2017 23:54:11 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:49bedc0c1745c2c5a42ffc8792423268187932a0433b444922594f2f8d1ac6fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:dd05f5f31b04568d03c7f16f3b5cfbfd554fb526b77fac19bec169ca0d53e606
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44130296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c705bb0af291aff4abc7d9b40fc19841b63f55eccd78e5658e1361eb6eae38a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:51:07 GMT
ENV DOCKER_CHANNEL=stable
# Tue, 12 Sep 2017 23:51:08 GMT
ENV DOCKER_VERSION=17.06.2-ce
# Tue, 12 Sep 2017 23:51:14 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:51:14 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:51:15 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:51:28 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:4663cd6339ec94bf4541f7ad25fab08f54adb7feb8b961572086e5e494a44ac0`  
		Last Modified: Tue, 12 Sep 2017 23:53:57 GMT  
		Size: 30.0 MB (30018146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c50915a94c371141fe7f2176270e82395b250100a70f3018ef45949ce3edaa`  
		Last Modified: Tue, 12 Sep 2017 23:53:50 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646a5f2f4f01fd623c0902f891e3a61b396f4a36f2dcdc33d3408636141ae4da`  
		Last Modified: Tue, 12 Sep 2017 23:54:28 GMT  
		Size: 11.8 MB (11769651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:ce8f6802101522a31c9575b48ba977074940c629a9ff895ed8a23c955dd9852e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:c0eae97336681d2c735da2ac0d7afb3f7e68f998727c0fdc8262fbc27ac06331
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.0 MB (33007040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591a1b05f4391df7081511308863a5bb4bb2f0705d57aa61c410b18b547d07a8`
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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:1d4bda3edd165dc3de9339d157e44d93de425c1d8e8d7cc4900a59152a5cc887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:34de0578cf5c503d983229708b228d3d0dbe89f2b212adfee91fa3649bc4dcf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35394140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1fefc97eb7c9ac27bb574b0b8a377118a4fef57ae2d054f761807275ecc57f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Wed, 13 Sep 2017 21:40:09 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 13 Sep 2017 21:40:09 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:10 GMT
CMD ["sh"]
# Wed, 13 Sep 2017 21:40:16 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Wed, 13 Sep 2017 21:40:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 13 Sep 2017 21:40:17 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 13 Sep 2017 21:40:20 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 13 Sep 2017 21:40:20 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:40:21 GMT
VOLUME [/var/lib/docker]
# Wed, 13 Sep 2017 21:40:21 GMT
EXPOSE 2375/tcp
# Wed, 13 Sep 2017 21:40:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 13 Sep 2017 21:40:21 GMT
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
	-	`sha256:64f80cbcf6fba7e37472cfb66c94e8e8c68d1e097114163fdf4f3deb0dc869e7`  
		Last Modified: Wed, 13 Sep 2017 21:41:35 GMT  
		Size: 30.7 MB (30664542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e303f325c6ba444b20aa292df16a4e870f563a9a4c591eff230815de47def52`  
		Last Modified: Wed, 13 Sep 2017 21:41:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d216b58ccf4d25da29e9f8b8b69276c292c6ed83df70e5905cd059a66493c9f`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 2.2 MB (2209099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1389fdc8e83da66999a6083a2c1a60c19c016a547eedcd70936eb3bd14b24e66`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0660e61f48ed3030099849e4090f6696099c36e81ef1e50979b4b25e062484b9`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 176.2 KB (176201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5925428265ff85280b657e80a5e5b60b0b273d62d0f22836da9c0751df3cfe`  
		Last Modified: Wed, 13 Sep 2017 21:42:02 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:ba776713c1c09f21a887edece25df43a8bd9d901ae68f19170a3cbfdab7d71ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:df8a1eb4b69bb46e257015cafbb20f3708d691046c1bf4e26de3d7d737384949
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44776720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baab561dcda434b0cd7823bbe3794f7d166dff6e9fc89f59f6d1dc62122476ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:50:20 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_CHANNEL=test
# Tue, 12 Sep 2017 23:50:21 GMT
ENV DOCKER_VERSION=17.09.0-ce-rc1
# Tue, 12 Sep 2017 23:50:27 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Tue, 12 Sep 2017 23:50:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:50:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:50:28 GMT
CMD ["sh"]
# Tue, 12 Sep 2017 23:50:44 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:a0fc4f6527d937796b2958c98a63bd7d08d38f3514e43b01b20e00a0db8b7901`  
		Last Modified: Tue, 12 Sep 2017 23:51:49 GMT  
		Size: 30.7 MB (30664566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf6e0a3bb215ddd89244d470c27f6decfdc60b670f8beb4c3427417c76a4c5`  
		Last Modified: Tue, 12 Sep 2017 23:51:42 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c9277c08128d96070307d5905047d939288e066e6c7115b7ff683d7139910`  
		Last Modified: Tue, 12 Sep 2017 23:52:32 GMT  
		Size: 11.8 MB (11769655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
