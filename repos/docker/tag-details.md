<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:1.13.0-rc5`](#docker1130-rc5)
-	[`docker:1.13-rc`](#docker113-rc)
-	[`docker:rc`](#dockerrc)
-	[`docker:1.13.0-rc5-dind`](#docker1130-rc5-dind)
-	[`docker:1.13-rc-dind`](#docker113-rc-dind)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:1.13.0-rc5-git`](#docker1130-rc5-git)
-	[`docker:1.13-rc-git`](#docker113-rc-git)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:1.12.5`](#docker1125)
-	[`docker:1.12`](#docker112)
-	[`docker:1`](#docker1)
-	[`docker:latest`](#dockerlatest)
-	[`docker:1.12.5-dind`](#docker1125-dind)
-	[`docker:1.12-dind`](#docker112-dind)
-	[`docker:1-dind`](#docker1-dind)
-	[`docker:dind`](#dockerdind)
-	[`docker:1.12.5-git`](#docker1125-git)
-	[`docker:1.12-git`](#docker112-git)
-	[`docker:1-git`](#docker1-git)
-	[`docker:git`](#dockergit)
-	[`docker:1.12.5-experimental`](#docker1125-experimental)
-	[`docker:1.12-experimental`](#docker112-experimental)
-	[`docker:1-experimental`](#docker1-experimental)
-	[`docker:experimental`](#dockerexperimental)
-	[`docker:1.12.5-experimental-dind`](#docker1125-experimental-dind)
-	[`docker:1.12-experimental-dind`](#docker112-experimental-dind)
-	[`docker:1-experimental-dind`](#docker1-experimental-dind)
-	[`docker:experimental-dind`](#dockerexperimental-dind)
-	[`docker:1.12.5-experimental-git`](#docker1125-experimental-git)
-	[`docker:1.12-experimental-git`](#docker112-experimental-git)
-	[`docker:1-experimental-git`](#docker1-experimental-git)
-	[`docker:experimental-git`](#dockerexperimental-git)
-	[`docker:1.11.2`](#docker1112)
-	[`docker:1.11`](#docker111)
-	[`docker:1.11.2-dind`](#docker1112-dind)
-	[`docker:1.11-dind`](#docker111-dind)
-	[`docker:1.11.2-git`](#docker1112-git)
-	[`docker:1.11-git`](#docker111-git)

## `docker:1.13.0-rc5`

```console
$ docker pull docker@sha256:cb4b3f0916d119290e6d940aba6020800d75c4547e949a0eabb82661ae18a27b
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31762710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049309fd20e66b18e0803c4f7cb8019252fa840038324a9da781c1b2f6926d5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 06 Jan 2017 23:22:54 GMT
ENV DOCKER_VERSION=1.13.0-rc5
# Fri, 06 Jan 2017 23:22:55 GMT
ENV DOCKER_SHA256=9e16978a8bc18106abc8108c028f4831639f6d7dccf427fadbed6e0e9aeb0479
# Fri, 06 Jan 2017 23:22:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 06 Jan 2017 23:23:00 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b60a8ddd4a90a9ca8655cb17b3fb0b1ab9de973bef4f34e501684b69124cd8`  
		Last Modified: Fri, 06 Jan 2017 23:23:41 GMT  
		Size: 27.7 MB (27693235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ade931615643eb22a9078001f73e404846b4c5ae84fddbf4ff010519c82c9`  
		Last Modified: Fri, 06 Jan 2017 23:23:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc`

```console
$ docker pull docker@sha256:cb4b3f0916d119290e6d940aba6020800d75c4547e949a0eabb82661ae18a27b
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31762710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049309fd20e66b18e0803c4f7cb8019252fa840038324a9da781c1b2f6926d5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 06 Jan 2017 23:22:54 GMT
ENV DOCKER_VERSION=1.13.0-rc5
# Fri, 06 Jan 2017 23:22:55 GMT
ENV DOCKER_SHA256=9e16978a8bc18106abc8108c028f4831639f6d7dccf427fadbed6e0e9aeb0479
# Fri, 06 Jan 2017 23:22:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 06 Jan 2017 23:23:00 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b60a8ddd4a90a9ca8655cb17b3fb0b1ab9de973bef4f34e501684b69124cd8`  
		Last Modified: Fri, 06 Jan 2017 23:23:41 GMT  
		Size: 27.7 MB (27693235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ade931615643eb22a9078001f73e404846b4c5ae84fddbf4ff010519c82c9`  
		Last Modified: Fri, 06 Jan 2017 23:23:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:cb4b3f0916d119290e6d940aba6020800d75c4547e949a0eabb82661ae18a27b
```

-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31762710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049309fd20e66b18e0803c4f7cb8019252fa840038324a9da781c1b2f6926d5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 06 Jan 2017 23:22:54 GMT
ENV DOCKER_VERSION=1.13.0-rc5
# Fri, 06 Jan 2017 23:22:55 GMT
ENV DOCKER_SHA256=9e16978a8bc18106abc8108c028f4831639f6d7dccf427fadbed6e0e9aeb0479
# Fri, 06 Jan 2017 23:22:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 06 Jan 2017 23:23:00 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:01 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b60a8ddd4a90a9ca8655cb17b3fb0b1ab9de973bef4f34e501684b69124cd8`  
		Last Modified: Fri, 06 Jan 2017 23:23:41 GMT  
		Size: 27.7 MB (27693235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ade931615643eb22a9078001f73e404846b4c5ae84fddbf4ff010519c82c9`  
		Last Modified: Fri, 06 Jan 2017 23:23:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc5-dind`

```console
$ docker pull docker@sha256:3cc6553b7f80f76b7baabfefe26a7da47372f53c72634f20edca54d10cb3e780
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc5-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33870092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63605d8f6e4e691ed21499050b5fc25be9bf5a30cbc5ce86276ec46edb2cbee5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 06 Jan 2017 23:22:54 GMT
ENV DOCKER_VERSION=1.13.0-rc5
# Fri, 06 Jan 2017 23:22:55 GMT
ENV DOCKER_SHA256=9e16978a8bc18106abc8108c028f4831639f6d7dccf427fadbed6e0e9aeb0479
# Fri, 06 Jan 2017 23:22:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 06 Jan 2017 23:23:00 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:01 GMT
CMD ["sh"]
# Fri, 06 Jan 2017 23:23:04 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 06 Jan 2017 23:23:05 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 06 Jan 2017 23:23:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 06 Jan 2017 23:23:07 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 06 Jan 2017 23:23:08 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:08 GMT
VOLUME [/var/lib/docker]
# Fri, 06 Jan 2017 23:23:08 GMT
EXPOSE 2375/tcp
# Fri, 06 Jan 2017 23:23:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:09 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b60a8ddd4a90a9ca8655cb17b3fb0b1ab9de973bef4f34e501684b69124cd8`  
		Last Modified: Fri, 06 Jan 2017 23:23:41 GMT  
		Size: 27.7 MB (27693235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ade931615643eb22a9078001f73e404846b4c5ae84fddbf4ff010519c82c9`  
		Last Modified: Fri, 06 Jan 2017 23:23:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d1a4d5b3e3accd117cd78fb5fdf37dbc9d3f7495c49a35b0da4c2365e20d58`  
		Last Modified: Fri, 06 Jan 2017 23:24:27 GMT  
		Size: 2.1 MB (2103782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10863f140867645f15d7ff7fe765fd47e66dd22bad9967ff8e8638dc6ab8a212`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc11f59a509f92ac089bde6e66bafffa1df10943e1145a535323420e29080e3`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05cbad4991715522af9566194560841207d1772e3e4ef5f4e49fb48d108c5c5`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-dind`

```console
$ docker pull docker@sha256:3cc6553b7f80f76b7baabfefe26a7da47372f53c72634f20edca54d10cb3e780
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33870092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63605d8f6e4e691ed21499050b5fc25be9bf5a30cbc5ce86276ec46edb2cbee5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 06 Jan 2017 23:22:54 GMT
ENV DOCKER_VERSION=1.13.0-rc5
# Fri, 06 Jan 2017 23:22:55 GMT
ENV DOCKER_SHA256=9e16978a8bc18106abc8108c028f4831639f6d7dccf427fadbed6e0e9aeb0479
# Fri, 06 Jan 2017 23:22:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 06 Jan 2017 23:23:00 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:01 GMT
CMD ["sh"]
# Fri, 06 Jan 2017 23:23:04 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 06 Jan 2017 23:23:05 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 06 Jan 2017 23:23:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 06 Jan 2017 23:23:07 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 06 Jan 2017 23:23:08 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:08 GMT
VOLUME [/var/lib/docker]
# Fri, 06 Jan 2017 23:23:08 GMT
EXPOSE 2375/tcp
# Fri, 06 Jan 2017 23:23:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:09 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b60a8ddd4a90a9ca8655cb17b3fb0b1ab9de973bef4f34e501684b69124cd8`  
		Last Modified: Fri, 06 Jan 2017 23:23:41 GMT  
		Size: 27.7 MB (27693235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ade931615643eb22a9078001f73e404846b4c5ae84fddbf4ff010519c82c9`  
		Last Modified: Fri, 06 Jan 2017 23:23:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d1a4d5b3e3accd117cd78fb5fdf37dbc9d3f7495c49a35b0da4c2365e20d58`  
		Last Modified: Fri, 06 Jan 2017 23:24:27 GMT  
		Size: 2.1 MB (2103782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10863f140867645f15d7ff7fe765fd47e66dd22bad9967ff8e8638dc6ab8a212`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc11f59a509f92ac089bde6e66bafffa1df10943e1145a535323420e29080e3`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05cbad4991715522af9566194560841207d1772e3e4ef5f4e49fb48d108c5c5`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:3cc6553b7f80f76b7baabfefe26a7da47372f53c72634f20edca54d10cb3e780
```

-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33870092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63605d8f6e4e691ed21499050b5fc25be9bf5a30cbc5ce86276ec46edb2cbee5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 06 Jan 2017 23:22:54 GMT
ENV DOCKER_VERSION=1.13.0-rc5
# Fri, 06 Jan 2017 23:22:55 GMT
ENV DOCKER_SHA256=9e16978a8bc18106abc8108c028f4831639f6d7dccf427fadbed6e0e9aeb0479
# Fri, 06 Jan 2017 23:22:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 06 Jan 2017 23:23:00 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:01 GMT
CMD ["sh"]
# Fri, 06 Jan 2017 23:23:04 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Fri, 06 Jan 2017 23:23:05 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 06 Jan 2017 23:23:05 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Fri, 06 Jan 2017 23:23:07 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Fri, 06 Jan 2017 23:23:08 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:08 GMT
VOLUME [/var/lib/docker]
# Fri, 06 Jan 2017 23:23:08 GMT
EXPOSE 2375/tcp
# Fri, 06 Jan 2017 23:23:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:09 GMT
CMD []
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b60a8ddd4a90a9ca8655cb17b3fb0b1ab9de973bef4f34e501684b69124cd8`  
		Last Modified: Fri, 06 Jan 2017 23:23:41 GMT  
		Size: 27.7 MB (27693235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ade931615643eb22a9078001f73e404846b4c5ae84fddbf4ff010519c82c9`  
		Last Modified: Fri, 06 Jan 2017 23:23:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d1a4d5b3e3accd117cd78fb5fdf37dbc9d3f7495c49a35b0da4c2365e20d58`  
		Last Modified: Fri, 06 Jan 2017 23:24:27 GMT  
		Size: 2.1 MB (2103782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10863f140867645f15d7ff7fe765fd47e66dd22bad9967ff8e8638dc6ab8a212`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc11f59a509f92ac089bde6e66bafffa1df10943e1145a535323420e29080e3`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05cbad4991715522af9566194560841207d1772e3e4ef5f4e49fb48d108c5c5`  
		Last Modified: Fri, 06 Jan 2017 23:24:26 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13.0-rc5-git`

```console
$ docker pull docker@sha256:d0e36571811c1b537d3a39a9d12f5cdffb80404bb1560d559ea1086aa023ba78
```

-	Platforms:
	-	linux; amd64

### `docker:1.13.0-rc5-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42108844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1dd3f6be2aa345bd7bb9c70f89e41ebaf12935a0032932cbc5bf99d8bace1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 06 Jan 2017 23:22:54 GMT
ENV DOCKER_VERSION=1.13.0-rc5
# Fri, 06 Jan 2017 23:22:55 GMT
ENV DOCKER_SHA256=9e16978a8bc18106abc8108c028f4831639f6d7dccf427fadbed6e0e9aeb0479
# Fri, 06 Jan 2017 23:22:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 06 Jan 2017 23:23:00 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:01 GMT
CMD ["sh"]
# Fri, 06 Jan 2017 23:23:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b60a8ddd4a90a9ca8655cb17b3fb0b1ab9de973bef4f34e501684b69124cd8`  
		Last Modified: Fri, 06 Jan 2017 23:23:41 GMT  
		Size: 27.7 MB (27693235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ade931615643eb22a9078001f73e404846b4c5ae84fddbf4ff010519c82c9`  
		Last Modified: Fri, 06 Jan 2017 23:23:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87684f6cb8a50fcb0fdf8c01e0798fa2c49bc07a3e45e94d3f34d97d05a457cf`  
		Last Modified: Fri, 06 Jan 2017 23:25:15 GMT  
		Size: 10.3 MB (10346134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.13-rc-git`

```console
$ docker pull docker@sha256:d0e36571811c1b537d3a39a9d12f5cdffb80404bb1560d559ea1086aa023ba78
```

-	Platforms:
	-	linux; amd64

### `docker:1.13-rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42108844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1dd3f6be2aa345bd7bb9c70f89e41ebaf12935a0032932cbc5bf99d8bace1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 06 Jan 2017 23:22:54 GMT
ENV DOCKER_VERSION=1.13.0-rc5
# Fri, 06 Jan 2017 23:22:55 GMT
ENV DOCKER_SHA256=9e16978a8bc18106abc8108c028f4831639f6d7dccf427fadbed6e0e9aeb0479
# Fri, 06 Jan 2017 23:22:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 06 Jan 2017 23:23:00 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:01 GMT
CMD ["sh"]
# Fri, 06 Jan 2017 23:23:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b60a8ddd4a90a9ca8655cb17b3fb0b1ab9de973bef4f34e501684b69124cd8`  
		Last Modified: Fri, 06 Jan 2017 23:23:41 GMT  
		Size: 27.7 MB (27693235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ade931615643eb22a9078001f73e404846b4c5ae84fddbf4ff010519c82c9`  
		Last Modified: Fri, 06 Jan 2017 23:23:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87684f6cb8a50fcb0fdf8c01e0798fa2c49bc07a3e45e94d3f34d97d05a457cf`  
		Last Modified: Fri, 06 Jan 2017 23:25:15 GMT  
		Size: 10.3 MB (10346134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:d0e36571811c1b537d3a39a9d12f5cdffb80404bb1560d559ea1086aa023ba78
```

-	Platforms:
	-	linux; amd64

### `docker:rc-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42108844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1dd3f6be2aa345bd7bb9c70f89e41ebaf12935a0032932cbc5bf99d8bace1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:04:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Wed, 04 Jan 2017 21:04:11 GMT
ENV DOCKER_BUCKET=test.docker.com
# Fri, 06 Jan 2017 23:22:54 GMT
ENV DOCKER_VERSION=1.13.0-rc5
# Fri, 06 Jan 2017 23:22:55 GMT
ENV DOCKER_SHA256=9e16978a8bc18106abc8108c028f4831639f6d7dccf427fadbed6e0e9aeb0479
# Fri, 06 Jan 2017 23:22:59 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Fri, 06 Jan 2017 23:23:00 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:23:01 GMT
CMD ["sh"]
# Fri, 06 Jan 2017 23:23:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af50e60f15f49e6f8bd6fd84a5388b6de295a9e87ba9bc86878d04b5037d9b7`  
		Last Modified: Wed, 04 Jan 2017 23:28:13 GMT  
		Size: 2.2 MB (2166920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b60a8ddd4a90a9ca8655cb17b3fb0b1ab9de973bef4f34e501684b69124cd8`  
		Last Modified: Fri, 06 Jan 2017 23:23:41 GMT  
		Size: 27.7 MB (27693235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ade931615643eb22a9078001f73e404846b4c5ae84fddbf4ff010519c82c9`  
		Last Modified: Fri, 06 Jan 2017 23:23:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87684f6cb8a50fcb0fdf8c01e0798fa2c49bc07a3e45e94d3f34d97d05a457cf`  
		Last Modified: Fri, 06 Jan 2017 23:25:15 GMT  
		Size: 10.3 MB (10346134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5`

```console
$ docker pull docker@sha256:ebfecb343f40419b767ea1a0b6485afb188c9f9468ba0dfee5517205bbb3867d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32041654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46247b5c4a9094216d2507259fa88dad53550ee09d841fd4084cc364c0d2a859`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12`

```console
$ docker pull docker@sha256:ebfecb343f40419b767ea1a0b6485afb188c9f9468ba0dfee5517205bbb3867d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32041654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46247b5c4a9094216d2507259fa88dad53550ee09d841fd4084cc364c0d2a859`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1`

```console
$ docker pull docker@sha256:ebfecb343f40419b767ea1a0b6485afb188c9f9468ba0dfee5517205bbb3867d
```

-	Platforms:
	-	linux; amd64

### `docker:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32041654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46247b5c4a9094216d2507259fa88dad53550ee09d841fd4084cc364c0d2a859`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:ebfecb343f40419b767ea1a0b6485afb188c9f9468ba0dfee5517205bbb3867d
```

-	Platforms:
	-	linux; amd64

### `docker:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32041654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46247b5c4a9094216d2507259fa88dad53550ee09d841fd4084cc364c0d2a859`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-dind`

```console
$ docker pull docker@sha256:fe43734f88024f73883cba2ec626f91b4f5696b641a9cbcd3b323b2b1d023c7a
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34110356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6065728c9a5bd6f898d1663ff4cc7cc99482958969baeade2928e41c44e474`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:51 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:36:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:36:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:36:54 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:55 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:36:55 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:36:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:56 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ab816e8b4369e7edaf09e094d4e7f81b6376da8ef727f5f80f8b89df23b883`  
		Last Modified: Tue, 27 Dec 2016 18:41:40 GMT  
		Size: 2.1 MB (2065081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3a43e7d5c3c813758f10d7096c4b46999e0ec4a73ff8fcf97987f1e8588a45`  
		Last Modified: Tue, 27 Dec 2016 18:41:38 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6eb21895b96cac1986c8cf30ab2fd7f2fba3ea3e27e3b101d417020d03d844`  
		Last Modified: Tue, 27 Dec 2016 18:41:39 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56683cab2052fff2967e80215507d42e502834fdc9261fb8a3a2ed566576a66e`  
		Last Modified: Tue, 27 Dec 2016 18:41:38 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-dind`

```console
$ docker pull docker@sha256:fe43734f88024f73883cba2ec626f91b4f5696b641a9cbcd3b323b2b1d023c7a
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34110356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6065728c9a5bd6f898d1663ff4cc7cc99482958969baeade2928e41c44e474`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:51 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:36:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:36:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:36:54 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:55 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:36:55 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:36:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:56 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ab816e8b4369e7edaf09e094d4e7f81b6376da8ef727f5f80f8b89df23b883`  
		Last Modified: Tue, 27 Dec 2016 18:41:40 GMT  
		Size: 2.1 MB (2065081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3a43e7d5c3c813758f10d7096c4b46999e0ec4a73ff8fcf97987f1e8588a45`  
		Last Modified: Tue, 27 Dec 2016 18:41:38 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6eb21895b96cac1986c8cf30ab2fd7f2fba3ea3e27e3b101d417020d03d844`  
		Last Modified: Tue, 27 Dec 2016 18:41:39 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56683cab2052fff2967e80215507d42e502834fdc9261fb8a3a2ed566576a66e`  
		Last Modified: Tue, 27 Dec 2016 18:41:38 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-dind`

```console
$ docker pull docker@sha256:fe43734f88024f73883cba2ec626f91b4f5696b641a9cbcd3b323b2b1d023c7a
```

-	Platforms:
	-	linux; amd64

### `docker:1-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34110356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6065728c9a5bd6f898d1663ff4cc7cc99482958969baeade2928e41c44e474`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:51 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:36:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:36:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:36:54 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:55 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:36:55 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:36:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:56 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ab816e8b4369e7edaf09e094d4e7f81b6376da8ef727f5f80f8b89df23b883`  
		Last Modified: Tue, 27 Dec 2016 18:41:40 GMT  
		Size: 2.1 MB (2065081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3a43e7d5c3c813758f10d7096c4b46999e0ec4a73ff8fcf97987f1e8588a45`  
		Last Modified: Tue, 27 Dec 2016 18:41:38 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6eb21895b96cac1986c8cf30ab2fd7f2fba3ea3e27e3b101d417020d03d844`  
		Last Modified: Tue, 27 Dec 2016 18:41:39 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56683cab2052fff2967e80215507d42e502834fdc9261fb8a3a2ed566576a66e`  
		Last Modified: Tue, 27 Dec 2016 18:41:38 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:fe43734f88024f73883cba2ec626f91b4f5696b641a9cbcd3b323b2b1d023c7a
```

-	Platforms:
	-	linux; amd64

### `docker:dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34110356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6065728c9a5bd6f898d1663ff4cc7cc99482958969baeade2928e41c44e474`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:51 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:36:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:36:52 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:36:54 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:36:54 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:55 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:36:55 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:36:55 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:56 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ab816e8b4369e7edaf09e094d4e7f81b6376da8ef727f5f80f8b89df23b883`  
		Last Modified: Tue, 27 Dec 2016 18:41:40 GMT  
		Size: 2.1 MB (2065081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3a43e7d5c3c813758f10d7096c4b46999e0ec4a73ff8fcf97987f1e8588a45`  
		Last Modified: Tue, 27 Dec 2016 18:41:38 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6eb21895b96cac1986c8cf30ab2fd7f2fba3ea3e27e3b101d417020d03d844`  
		Last Modified: Tue, 27 Dec 2016 18:41:39 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56683cab2052fff2967e80215507d42e502834fdc9261fb8a3a2ed566576a66e`  
		Last Modified: Tue, 27 Dec 2016 18:41:38 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-git`

```console
$ docker pull docker@sha256:ac6d5bff391b65914b2f548ec7d5764286fef8c7dd45bf7f2a7647882fcb9e69
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41180186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583c89dcc1d143c476357598db0eb27b43d2d6cbbf83ecb62e68215af7152a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad207655830343ad9a2dbcec7f97d6a2de235ba12865b5e2787d636da57d4f91`  
		Last Modified: Tue, 27 Dec 2016 18:47:35 GMT  
		Size: 9.1 MB (9138532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-git`

```console
$ docker pull docker@sha256:ac6d5bff391b65914b2f548ec7d5764286fef8c7dd45bf7f2a7647882fcb9e69
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41180186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583c89dcc1d143c476357598db0eb27b43d2d6cbbf83ecb62e68215af7152a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad207655830343ad9a2dbcec7f97d6a2de235ba12865b5e2787d636da57d4f91`  
		Last Modified: Tue, 27 Dec 2016 18:47:35 GMT  
		Size: 9.1 MB (9138532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-git`

```console
$ docker pull docker@sha256:ac6d5bff391b65914b2f548ec7d5764286fef8c7dd45bf7f2a7647882fcb9e69
```

-	Platforms:
	-	linux; amd64

### `docker:1-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41180186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583c89dcc1d143c476357598db0eb27b43d2d6cbbf83ecb62e68215af7152a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad207655830343ad9a2dbcec7f97d6a2de235ba12865b5e2787d636da57d4f91`  
		Last Modified: Tue, 27 Dec 2016 18:47:35 GMT  
		Size: 9.1 MB (9138532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:ac6d5bff391b65914b2f548ec7d5764286fef8c7dd45bf7f2a7647882fcb9e69
```

-	Platforms:
	-	linux; amd64

### `docker:git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41180186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583c89dcc1d143c476357598db0eb27b43d2d6cbbf83ecb62e68215af7152a25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:42 GMT
ENV DOCKER_SHA256=0058867ac46a1eba283e2441b1bb5455df846144f9d9ba079e97655399d4a2c6
# Tue, 27 Dec 2016 18:36:46 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:46 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:47 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:22 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3468a9f9aa7e839044d1345a24232dcc3f08633afbab3c84e1f906853514611f`  
		Last Modified: Tue, 27 Dec 2016 18:40:10 GMT  
		Size: 28.8 MB (28812404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7081386c9cd6ce2dd3804501b015dbd78335bf9ddbb3058eaf86fb0d87411a9`  
		Last Modified: Tue, 27 Dec 2016 18:39:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad207655830343ad9a2dbcec7f97d6a2de235ba12865b5e2787d636da57d4f91`  
		Last Modified: Tue, 27 Dec 2016 18:47:35 GMT  
		Size: 9.1 MB (9138532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental`

```console
$ docker pull docker@sha256:435f20cf5f21e387771c7805f486d5dd685c0d261c59f554553435c82fbd1405
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32173756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8afa090bc30a5d219aa42608ca186e27e4fe810086b849e72ddb040362e7883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental`

```console
$ docker pull docker@sha256:435f20cf5f21e387771c7805f486d5dd685c0d261c59f554553435c82fbd1405
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32173756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8afa090bc30a5d219aa42608ca186e27e4fe810086b849e72ddb040362e7883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental`

```console
$ docker pull docker@sha256:435f20cf5f21e387771c7805f486d5dd685c0d261c59f554553435c82fbd1405
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32173756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8afa090bc30a5d219aa42608ca186e27e4fe810086b849e72ddb040362e7883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental`

```console
$ docker pull docker@sha256:435f20cf5f21e387771c7805f486d5dd685c0d261c59f554553435c82fbd1405
```

-	Platforms:
	-	linux; amd64

### `docker:experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32173756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8afa090bc30a5d219aa42608ca186e27e4fe810086b849e72ddb040362e7883`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental-dind`

```console
$ docker pull docker@sha256:9244d0366cfc107305c3ba4eb5eb068e63a06d70aa227a7c36db8e1fccd8a16f
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34242459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedfd187798508c2a05551598ee4ea016dcd7519f717e8181c421f4aa5010585`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:37:14 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:37:15 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:37:15 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:16 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:37:16 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:37:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:17 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8c9c4fbd26f69ede9e3d5bafbfea760d5dfddba0ac6c5594e9543956627af5`  
		Last Modified: Tue, 27 Dec 2016 18:44:47 GMT  
		Size: 2.1 MB (2065080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b7b5a3415dfdebcf582a7c43becd900490f17e4a484aca9680812fcd149cfc`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad9e19a3b61417a61c09d7af6d02984f5b8e657ca847a1f9b6e47ba9909893e`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3c8e14a6696b4c7336cc4d791d813a024bbc0fd401506c6a310830efda0d9`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-dind`

```console
$ docker pull docker@sha256:9244d0366cfc107305c3ba4eb5eb068e63a06d70aa227a7c36db8e1fccd8a16f
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34242459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedfd187798508c2a05551598ee4ea016dcd7519f717e8181c421f4aa5010585`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:37:14 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:37:15 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:37:15 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:16 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:37:16 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:37:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:17 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8c9c4fbd26f69ede9e3d5bafbfea760d5dfddba0ac6c5594e9543956627af5`  
		Last Modified: Tue, 27 Dec 2016 18:44:47 GMT  
		Size: 2.1 MB (2065080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b7b5a3415dfdebcf582a7c43becd900490f17e4a484aca9680812fcd149cfc`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad9e19a3b61417a61c09d7af6d02984f5b8e657ca847a1f9b6e47ba9909893e`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3c8e14a6696b4c7336cc4d791d813a024bbc0fd401506c6a310830efda0d9`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-dind`

```console
$ docker pull docker@sha256:9244d0366cfc107305c3ba4eb5eb068e63a06d70aa227a7c36db8e1fccd8a16f
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34242459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedfd187798508c2a05551598ee4ea016dcd7519f717e8181c421f4aa5010585`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:37:14 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:37:15 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:37:15 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:16 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:37:16 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:37:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:17 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8c9c4fbd26f69ede9e3d5bafbfea760d5dfddba0ac6c5594e9543956627af5`  
		Last Modified: Tue, 27 Dec 2016 18:44:47 GMT  
		Size: 2.1 MB (2065080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b7b5a3415dfdebcf582a7c43becd900490f17e4a484aca9680812fcd149cfc`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad9e19a3b61417a61c09d7af6d02984f5b8e657ca847a1f9b6e47ba9909893e`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3c8e14a6696b4c7336cc4d791d813a024bbc0fd401506c6a310830efda0d9`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-dind`

```console
$ docker pull docker@sha256:9244d0366cfc107305c3ba4eb5eb068e63a06d70aa227a7c36db8e1fccd8a16f
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 MB (34242459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedfd187798508c2a05551598ee4ea016dcd7519f717e8181c421f4aa5010585`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:12 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:37:13 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:37:14 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:37:15 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:37:15 GMT
COPY file:7070e4b35c137a8ec5904300d19b8f7ee74aa76659517767c617249cece98a4a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:16 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:37:16 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:37:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:17 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8c9c4fbd26f69ede9e3d5bafbfea760d5dfddba0ac6c5594e9543956627af5`  
		Last Modified: Tue, 27 Dec 2016 18:44:47 GMT  
		Size: 2.1 MB (2065080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b7b5a3415dfdebcf582a7c43becd900490f17e4a484aca9680812fcd149cfc`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad9e19a3b61417a61c09d7af6d02984f5b8e657ca847a1f9b6e47ba9909893e`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b3c8e14a6696b4c7336cc4d791d813a024bbc0fd401506c6a310830efda0d9`  
		Last Modified: Tue, 27 Dec 2016 18:44:46 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12.5-experimental-git`

```console
$ docker pull docker@sha256:fc56b158a4c3d793a8d156162cdb8aed534a2f5953cd2580bab09e34db652c3d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12.5-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41312260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b10e1583a7484d75ec2dd6f3510356245bcc34e77cd98a09740122a8e6729c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:20 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4943375d4a1ae6903cf4903ecdc0b2f09126a37143686b06cc3335eab91d308c`  
		Last Modified: Tue, 27 Dec 2016 18:46:16 GMT  
		Size: 9.1 MB (9138504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.12-experimental-git`

```console
$ docker pull docker@sha256:fc56b158a4c3d793a8d156162cdb8aed534a2f5953cd2580bab09e34db652c3d
```

-	Platforms:
	-	linux; amd64

### `docker:1.12-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41312260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b10e1583a7484d75ec2dd6f3510356245bcc34e77cd98a09740122a8e6729c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:20 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4943375d4a1ae6903cf4903ecdc0b2f09126a37143686b06cc3335eab91d308c`  
		Last Modified: Tue, 27 Dec 2016 18:46:16 GMT  
		Size: 9.1 MB (9138504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1-experimental-git`

```console
$ docker pull docker@sha256:fc56b158a4c3d793a8d156162cdb8aed534a2f5953cd2580bab09e34db652c3d
```

-	Platforms:
	-	linux; amd64

### `docker:1-experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41312260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b10e1583a7484d75ec2dd6f3510356245bcc34e77cd98a09740122a8e6729c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:20 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4943375d4a1ae6903cf4903ecdc0b2f09126a37143686b06cc3335eab91d308c`  
		Last Modified: Tue, 27 Dec 2016 18:46:16 GMT  
		Size: 9.1 MB (9138504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:experimental-git`

```console
$ docker pull docker@sha256:fc56b158a4c3d793a8d156162cdb8aed534a2f5953cd2580bab09e34db652c3d
```

-	Platforms:
	-	linux; amd64

### `docker:experimental-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41312260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b10e1583a7484d75ec2dd6f3510356245bcc34e77cd98a09740122a8e6729c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_BUCKET=experimental.docker.com
# Tue, 27 Dec 2016 18:36:57 GMT
ENV DOCKER_VERSION=1.12.5
# Tue, 27 Dec 2016 18:36:58 GMT
ENV DOCKER_SHA256=98b1faed9b3ac2741688f26bfc7128e4484b4cc70b70c6ec2ff0ff3deec1faf1
# Tue, 27 Dec 2016 18:37:07 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:37:08 GMT
COPY file:399605dc1850a60a586b5494ab538bad495fd6f94eabca0c5f8a26468ce6030f in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:37:09 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:37:20 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb705c16677138700a57afa1acbcdc67ed375f8075b4235544725577bfbad4`  
		Last Modified: Tue, 27 Dec 2016 18:43:17 GMT  
		Size: 28.9 MB (28944503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc64c1cd1c579bb1bd9036bf3bac2a0e107af589906becbba706808a7ae3987`  
		Last Modified: Tue, 27 Dec 2016 18:43:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4943375d4a1ae6903cf4903ecdc0b2f09126a37143686b06cc3335eab91d308c`  
		Last Modified: Tue, 27 Dec 2016 18:46:16 GMT  
		Size: 9.1 MB (9138504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2`

```console
$ docker pull docker@sha256:07b15519113cc4ceec0dc9b2b12753f555095f80d19ad1898c5362f589fb7dac
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759b83b2afbbda3a88bf27a8e2d573bcce4477e62b69ca6f8ea544ba4f3d6070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11`

```console
$ docker pull docker@sha256:07b15519113cc4ceec0dc9b2b12753f555095f80d19ad1898c5362f589fb7dac
```

-	Platforms:
	-	linux; amd64

### `docker:1.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759b83b2afbbda3a88bf27a8e2d573bcce4477e62b69ca6f8ea544ba4f3d6070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-dind`

```console
$ docker pull docker@sha256:58e1b5ca2dcae383ac27ab60785ac320395fd7e96d866ad73047443d09e402d1
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25747666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caca9f6f5649beb60b74d79bf145fe73c0fdaeb71eae414ac9edb18b75e66222`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:36:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:36:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:36:36 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:36:37 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:37 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:36:38 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:36:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:39 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af551d82ba6fe116d0de37975c168ed3902e34fc9c05ba2de8e2b359e5b635cf`  
		Last Modified: Tue, 27 Dec 2016 18:38:40 GMT  
		Size: 2.1 MB (2065067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae7dd49e110648b80fc44c693c97fe45a97b5d23183b7866079d5fdf7ef77ba`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a628b9f0fb80cb0ec7191ad1b158d70396544f2011a41537d1808894492496`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fdcbf2640cd602233a1042197faae85b8ecb514d4817f24612402fea8f9bdd`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-dind`

```console
$ docker pull docker@sha256:58e1b5ca2dcae383ac27ab60785ac320395fd7e96d866ad73047443d09e402d1
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-dind` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25747666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caca9f6f5649beb60b74d79bf145fe73c0fdaeb71eae414ac9edb18b75e66222`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:34 GMT
RUN apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz
# Tue, 27 Dec 2016 18:36:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 27 Dec 2016 18:36:35 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Tue, 27 Dec 2016 18:36:36 GMT
RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind 	&& chmod +x /usr/local/bin/dind
# Tue, 27 Dec 2016 18:36:37 GMT
COPY file:0e53f84aca37cd3eaaea6a6908834cca20af731890838b17e6b13fc6f34c20b3 in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:37 GMT
VOLUME [/var/lib/docker]
# Tue, 27 Dec 2016 18:36:38 GMT
EXPOSE 2375/tcp
# Tue, 27 Dec 2016 18:36:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:39 GMT
CMD []
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af551d82ba6fe116d0de37975c168ed3902e34fc9c05ba2de8e2b359e5b635cf`  
		Last Modified: Tue, 27 Dec 2016 18:38:40 GMT  
		Size: 2.1 MB (2065067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae7dd49e110648b80fc44c693c97fe45a97b5d23183b7866079d5fdf7ef77ba`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a628b9f0fb80cb0ec7191ad1b158d70396544f2011a41537d1808894492496`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fdcbf2640cd602233a1042197faae85b8ecb514d4817f24612402fea8f9bdd`  
		Last Modified: Tue, 27 Dec 2016 18:38:37 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11.2-git`

```console
$ docker pull docker@sha256:1cffa8a2110f1048a45da85defb786325030f79da154884afc0740e9452d65ed
```

-	Platforms:
	-	linux; amd64

### `docker:1.11.2-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32817416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c0d9ecc37ab2e511ae6613d2af22c725f99a782a6495709dfca4ad57b90399`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:41 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54bf1b0bed7b02701800901bb07ba0f3f63e23d48a3ac6ef378d5e9b794d250`  
		Last Modified: Tue, 27 Dec 2016 18:39:18 GMT  
		Size: 9.1 MB (9138453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:1.11-git`

```console
$ docker pull docker@sha256:1cffa8a2110f1048a45da85defb786325030f79da154884afc0740e9452d65ed
```

-	Platforms:
	-	linux; amd64

### `docker:1.11-git` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32817416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c0d9ecc37ab2e511ae6613d2af22c725f99a782a6495709dfca4ad57b90399`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:36:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl
# Tue, 27 Dec 2016 18:36:24 GMT
ENV DOCKER_BUCKET=get.docker.com
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_VERSION=1.11.2
# Tue, 27 Dec 2016 18:36:25 GMT
ENV DOCKER_SHA256=8c2e0c35e3cda11706f54b2d46c2521a6e9026a7b13c7d4b8ae1f3a706fc55e1
# Tue, 27 Dec 2016 18:36:29 GMT
RUN set -x 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - 	&& tar -xzvf docker.tgz 	&& mv docker/* /usr/local/bin/ 	&& rmdir docker 	&& rm docker.tgz 	&& docker -v
# Tue, 27 Dec 2016 18:36:29 GMT
COPY file:a8b1446f032ff01ac092c29a0af328f0b9d47bbee72d1049499f2a9a89ee988a in /usr/local/bin/ 
# Tue, 27 Dec 2016 18:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Dec 2016 18:36:30 GMT
CMD ["sh"]
# Tue, 27 Dec 2016 18:36:41 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1438997aafae96dc7e9ae08d25a298432204c909dbf82d191d5372d8be867fec`  
		Last Modified: Tue, 27 Dec 2016 18:37:58 GMT  
		Size: 915.7 KB (915672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c196c61da5ba3042a689acc83c9ce4089e4cadc154a0fc29dc10b6bfc80a0ae9`  
		Last Modified: Tue, 27 Dec 2016 18:38:05 GMT  
		Size: 20.4 MB (20449714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1a212f313eb2d96ec3b3f6fc2fdd69ae0aa4c443aeaf5fd1d814dfde8930da`  
		Last Modified: Tue, 27 Dec 2016 18:37:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54bf1b0bed7b02701800901bb07ba0f3f63e23d48a3ac6ef378d5e9b794d250`  
		Last Modified: Tue, 27 Dec 2016 18:39:18 GMT  
		Size: 9.1 MB (9138453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
