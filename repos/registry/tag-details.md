<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:2`](#registry2)
-	[`registry:2.6`](#registry26)
-	[`registry:2.6.2`](#registry262)
-	[`registry:latest`](#registrylatest)
-	[`registry:2.5`](#registry25)
-	[`registry:2.5.2`](#registry252)

## `registry:2`

```console
$ docker pull registry@sha256:f5552e60ffd56fecbe2f04b61a3089a9cd755bd9352b6b5ab22cf2208af6a3a8
```

-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10664421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751f286bc25e303c733ec5c03e2f792ce5d6fb8a9e5e1f6006adfa6ea66c6daf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:06 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 20 Jul 2017 22:10:44 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Thu, 20 Jul 2017 22:10:44 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 20 Jul 2017 22:10:45 GMT
VOLUME [/var/lib/registry]
# Thu, 20 Jul 2017 22:10:45 GMT
EXPOSE 5000/tcp
# Thu, 20 Jul 2017 22:10:46 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 20 Jul 2017 22:10:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Jul 2017 22:10:47 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a754cdc94a5af4ef6c939acfc7f82f3ef56840a62c0e22b3c8a70ee085743b9`  
		Last Modified: Fri, 30 Jun 2017 01:00:31 GMT  
		Size: 2.0 MB (2013448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf16d9b6d4c135da483eed2fee6522e4db3e0c8dff524bfc0e7efcabbcf285c5`  
		Last Modified: Thu, 20 Jul 2017 22:11:12 GMT  
		Size: 6.3 MB (6265382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eea83c9b7bb6f1d03507134fbd50a7918c21a61848a126418fb69e254c1e032`  
		Last Modified: Thu, 20 Jul 2017 22:11:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23293c7275515256a47e06c099a50ba71a457fe158f0333e964ee93f2f2a73fe`  
		Last Modified: Thu, 20 Jul 2017 22:11:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:f5552e60ffd56fecbe2f04b61a3089a9cd755bd9352b6b5ab22cf2208af6a3a8
```

-	Platforms:
	-	linux; amd64

### `registry:2.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10664421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751f286bc25e303c733ec5c03e2f792ce5d6fb8a9e5e1f6006adfa6ea66c6daf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:06 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 20 Jul 2017 22:10:44 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Thu, 20 Jul 2017 22:10:44 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 20 Jul 2017 22:10:45 GMT
VOLUME [/var/lib/registry]
# Thu, 20 Jul 2017 22:10:45 GMT
EXPOSE 5000/tcp
# Thu, 20 Jul 2017 22:10:46 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 20 Jul 2017 22:10:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Jul 2017 22:10:47 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a754cdc94a5af4ef6c939acfc7f82f3ef56840a62c0e22b3c8a70ee085743b9`  
		Last Modified: Fri, 30 Jun 2017 01:00:31 GMT  
		Size: 2.0 MB (2013448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf16d9b6d4c135da483eed2fee6522e4db3e0c8dff524bfc0e7efcabbcf285c5`  
		Last Modified: Thu, 20 Jul 2017 22:11:12 GMT  
		Size: 6.3 MB (6265382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eea83c9b7bb6f1d03507134fbd50a7918c21a61848a126418fb69e254c1e032`  
		Last Modified: Thu, 20 Jul 2017 22:11:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23293c7275515256a47e06c099a50ba71a457fe158f0333e964ee93f2f2a73fe`  
		Last Modified: Thu, 20 Jul 2017 22:11:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6.2`

```console
$ docker pull registry@sha256:f5552e60ffd56fecbe2f04b61a3089a9cd755bd9352b6b5ab22cf2208af6a3a8
```

-	Platforms:
	-	linux; amd64

### `registry:2.6.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10664421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751f286bc25e303c733ec5c03e2f792ce5d6fb8a9e5e1f6006adfa6ea66c6daf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:06 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 20 Jul 2017 22:10:44 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Thu, 20 Jul 2017 22:10:44 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 20 Jul 2017 22:10:45 GMT
VOLUME [/var/lib/registry]
# Thu, 20 Jul 2017 22:10:45 GMT
EXPOSE 5000/tcp
# Thu, 20 Jul 2017 22:10:46 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 20 Jul 2017 22:10:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Jul 2017 22:10:47 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a754cdc94a5af4ef6c939acfc7f82f3ef56840a62c0e22b3c8a70ee085743b9`  
		Last Modified: Fri, 30 Jun 2017 01:00:31 GMT  
		Size: 2.0 MB (2013448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf16d9b6d4c135da483eed2fee6522e4db3e0c8dff524bfc0e7efcabbcf285c5`  
		Last Modified: Thu, 20 Jul 2017 22:11:12 GMT  
		Size: 6.3 MB (6265382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eea83c9b7bb6f1d03507134fbd50a7918c21a61848a126418fb69e254c1e032`  
		Last Modified: Thu, 20 Jul 2017 22:11:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23293c7275515256a47e06c099a50ba71a457fe158f0333e964ee93f2f2a73fe`  
		Last Modified: Thu, 20 Jul 2017 22:11:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:f5552e60ffd56fecbe2f04b61a3089a9cd755bd9352b6b5ab22cf2208af6a3a8
```

-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10664421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751f286bc25e303c733ec5c03e2f792ce5d6fb8a9e5e1f6006adfa6ea66c6daf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:06 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 20 Jul 2017 22:10:44 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Thu, 20 Jul 2017 22:10:44 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 20 Jul 2017 22:10:45 GMT
VOLUME [/var/lib/registry]
# Thu, 20 Jul 2017 22:10:45 GMT
EXPOSE 5000/tcp
# Thu, 20 Jul 2017 22:10:46 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 20 Jul 2017 22:10:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Jul 2017 22:10:47 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a754cdc94a5af4ef6c939acfc7f82f3ef56840a62c0e22b3c8a70ee085743b9`  
		Last Modified: Fri, 30 Jun 2017 01:00:31 GMT  
		Size: 2.0 MB (2013448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf16d9b6d4c135da483eed2fee6522e4db3e0c8dff524bfc0e7efcabbcf285c5`  
		Last Modified: Thu, 20 Jul 2017 22:11:12 GMT  
		Size: 6.3 MB (6265382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eea83c9b7bb6f1d03507134fbd50a7918c21a61848a126418fb69e254c1e032`  
		Last Modified: Thu, 20 Jul 2017 22:11:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23293c7275515256a47e06c099a50ba71a457fe158f0333e964ee93f2f2a73fe`  
		Last Modified: Thu, 20 Jul 2017 22:11:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5`

```console
$ docker pull registry@sha256:47ff8f665ccce1268355daa92a56637597d2b2213535ca46d3277300294ca568
```

-	Platforms:
	-	linux; amd64

### `registry:2.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11190728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bc34f33530b5704d2271aec9ec1e5499e961f6d8e8d3fb90c79ba8c5ad3bcc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:06 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 20 Jul 2017 22:10:56 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Thu, 20 Jul 2017 22:10:57 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 20 Jul 2017 22:10:57 GMT
VOLUME [/var/lib/registry]
# Thu, 20 Jul 2017 22:10:58 GMT
EXPOSE 5000/tcp
# Thu, 20 Jul 2017 22:10:58 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 20 Jul 2017 22:10:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Jul 2017 22:10:59 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a754cdc94a5af4ef6c939acfc7f82f3ef56840a62c0e22b3c8a70ee085743b9`  
		Last Modified: Fri, 30 Jun 2017 01:00:31 GMT  
		Size: 2.0 MB (2013448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d049a23c156a9fe5b4d7c1fae450f938e0c5d1c15328f5bf5053454080cb9736`  
		Last Modified: Thu, 20 Jul 2017 22:11:56 GMT  
		Size: 6.8 MB (6791689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d129ba8af1a50814c1ae9a0efb3060964693a827c50c13a899dc11fccd0585`  
		Last Modified: Thu, 20 Jul 2017 22:11:54 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8345562ddcf6a44adac3c0e6e6a5950039c00e6e3f72664c1cad3eab582e186c`  
		Last Modified: Thu, 20 Jul 2017 22:11:54 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5.2`

```console
$ docker pull registry@sha256:47ff8f665ccce1268355daa92a56637597d2b2213535ca46d3277300294ca568
```

-	Platforms:
	-	linux; amd64

### `registry:2.5.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11190728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bc34f33530b5704d2271aec9ec1e5499e961f6d8e8d3fb90c79ba8c5ad3bcc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:06 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 20 Jul 2017 22:10:56 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Thu, 20 Jul 2017 22:10:57 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Thu, 20 Jul 2017 22:10:57 GMT
VOLUME [/var/lib/registry]
# Thu, 20 Jul 2017 22:10:58 GMT
EXPOSE 5000/tcp
# Thu, 20 Jul 2017 22:10:58 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Thu, 20 Jul 2017 22:10:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Jul 2017 22:10:59 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a754cdc94a5af4ef6c939acfc7f82f3ef56840a62c0e22b3c8a70ee085743b9`  
		Last Modified: Fri, 30 Jun 2017 01:00:31 GMT  
		Size: 2.0 MB (2013448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d049a23c156a9fe5b4d7c1fae450f938e0c5d1c15328f5bf5053454080cb9736`  
		Last Modified: Thu, 20 Jul 2017 22:11:56 GMT  
		Size: 6.8 MB (6791689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d129ba8af1a50814c1ae9a0efb3060964693a827c50c13a899dc11fccd0585`  
		Last Modified: Thu, 20 Jul 2017 22:11:54 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8345562ddcf6a44adac3c0e6e6a5950039c00e6e3f72664c1cad3eab582e186c`  
		Last Modified: Thu, 20 Jul 2017 22:11:54 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
