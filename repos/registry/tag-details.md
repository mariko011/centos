<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:2`](#registry2)
-	[`registry:2.5`](#registry25)
-	[`registry:2.5.2`](#registry252)
-	[`registry:2.6`](#registry26)
-	[`registry:2.6.2`](#registry262)
-	[`registry:latest`](#registrylatest)

## `registry:2`

```console
$ docker pull registry@sha256:49bb29785ecac06e412738fd910329ff1c089eb20c04793064319c02ffa87c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

```console
$ docker pull registry@sha256:7aac3a31e920ba78616bd0520b762d0ce7bbc138223fc9ad5e747fdac2e69b6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10659517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebefe7c539b404c035da1ec6eff7b70edeedd1d634eb77ee041744f58e7c459`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 07:13:28 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 13 Sep 2017 07:13:29 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 13 Sep 2017 07:13:29 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 13 Sep 2017 07:13:29 GMT
VOLUME [/var/lib/registry]
# Wed, 13 Sep 2017 07:13:29 GMT
EXPOSE 5000/tcp
# Wed, 13 Sep 2017 07:13:30 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 13 Sep 2017 07:13:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 07:13:30 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617db05474c9371703e912b839ad42b36e12f99f8f5ccefdb1688400802ef80a`  
		Last Modified: Wed, 13 Sep 2017 07:13:43 GMT  
		Size: 2.0 MB (2008553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2a0d0d3401eaf8b140af82104e54648af5454407e3e5add7a0007fda6e246a`  
		Last Modified: Wed, 13 Sep 2017 07:13:45 GMT  
		Size: 6.3 MB (6265373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f05b0925afe635f69f55b13464210f1ef0830325db92714fca2dc6baf2924e`  
		Last Modified: Wed, 13 Sep 2017 07:13:42 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860aa3fc43f25e03d1cc5ae3478c806569bd050b4c832c81f6d3cd9829460f4f`  
		Last Modified: Wed, 13 Sep 2017 07:13:42 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5`

```console
$ docker pull registry@sha256:e50ef49bb7a0f3fac89b1dd1f82f3a3b82bc7b1a10e70868c56428add74e3d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5` - linux; amd64

```console
$ docker pull registry@sha256:8e8fdd12b457e8002c30333f5f1de317051941134c378d8428bd0d77fccd8236
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11185826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c100880149590aa94e99da78b066929e910e687b751fb2ffd124c0f537a9a4b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 07:13:28 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 13 Sep 2017 07:13:33 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Wed, 13 Sep 2017 07:13:33 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 13 Sep 2017 07:13:34 GMT
VOLUME [/var/lib/registry]
# Wed, 13 Sep 2017 07:13:34 GMT
EXPOSE 5000/tcp
# Wed, 13 Sep 2017 07:13:34 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 13 Sep 2017 07:13:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 07:13:35 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617db05474c9371703e912b839ad42b36e12f99f8f5ccefdb1688400802ef80a`  
		Last Modified: Wed, 13 Sep 2017 07:13:43 GMT  
		Size: 2.0 MB (2008553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba11e94418e67f0d922e10c7639fda0b3115f253c625a6e26eef43cbc8c5245`  
		Last Modified: Wed, 13 Sep 2017 07:14:04 GMT  
		Size: 6.8 MB (6791683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf30e8bc950c061c8af08ad24fc7263d0b12f9165b5a56ca025c8b7e729e987`  
		Last Modified: Wed, 13 Sep 2017 07:14:02 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6325a4d9f0f37c8a4a71afcf3b7a15e1bec70d300f3e33ce245f77ade3c9860e`  
		Last Modified: Wed, 13 Sep 2017 07:14:04 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5.2`

```console
$ docker pull registry@sha256:e50ef49bb7a0f3fac89b1dd1f82f3a3b82bc7b1a10e70868c56428add74e3d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5.2` - linux; amd64

```console
$ docker pull registry@sha256:8e8fdd12b457e8002c30333f5f1de317051941134c378d8428bd0d77fccd8236
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11185826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c100880149590aa94e99da78b066929e910e687b751fb2ffd124c0f537a9a4b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 07:13:28 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 13 Sep 2017 07:13:33 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Wed, 13 Sep 2017 07:13:33 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 13 Sep 2017 07:13:34 GMT
VOLUME [/var/lib/registry]
# Wed, 13 Sep 2017 07:13:34 GMT
EXPOSE 5000/tcp
# Wed, 13 Sep 2017 07:13:34 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 13 Sep 2017 07:13:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 07:13:35 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617db05474c9371703e912b839ad42b36e12f99f8f5ccefdb1688400802ef80a`  
		Last Modified: Wed, 13 Sep 2017 07:13:43 GMT  
		Size: 2.0 MB (2008553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba11e94418e67f0d922e10c7639fda0b3115f253c625a6e26eef43cbc8c5245`  
		Last Modified: Wed, 13 Sep 2017 07:14:04 GMT  
		Size: 6.8 MB (6791683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf30e8bc950c061c8af08ad24fc7263d0b12f9165b5a56ca025c8b7e729e987`  
		Last Modified: Wed, 13 Sep 2017 07:14:02 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6325a4d9f0f37c8a4a71afcf3b7a15e1bec70d300f3e33ce245f77ade3c9860e`  
		Last Modified: Wed, 13 Sep 2017 07:14:04 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:49bb29785ecac06e412738fd910329ff1c089eb20c04793064319c02ffa87c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6` - linux; amd64

```console
$ docker pull registry@sha256:7aac3a31e920ba78616bd0520b762d0ce7bbc138223fc9ad5e747fdac2e69b6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10659517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebefe7c539b404c035da1ec6eff7b70edeedd1d634eb77ee041744f58e7c459`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 07:13:28 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 13 Sep 2017 07:13:29 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 13 Sep 2017 07:13:29 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 13 Sep 2017 07:13:29 GMT
VOLUME [/var/lib/registry]
# Wed, 13 Sep 2017 07:13:29 GMT
EXPOSE 5000/tcp
# Wed, 13 Sep 2017 07:13:30 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 13 Sep 2017 07:13:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 07:13:30 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617db05474c9371703e912b839ad42b36e12f99f8f5ccefdb1688400802ef80a`  
		Last Modified: Wed, 13 Sep 2017 07:13:43 GMT  
		Size: 2.0 MB (2008553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2a0d0d3401eaf8b140af82104e54648af5454407e3e5add7a0007fda6e246a`  
		Last Modified: Wed, 13 Sep 2017 07:13:45 GMT  
		Size: 6.3 MB (6265373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f05b0925afe635f69f55b13464210f1ef0830325db92714fca2dc6baf2924e`  
		Last Modified: Wed, 13 Sep 2017 07:13:42 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860aa3fc43f25e03d1cc5ae3478c806569bd050b4c832c81f6d3cd9829460f4f`  
		Last Modified: Wed, 13 Sep 2017 07:13:42 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6.2`

```console
$ docker pull registry@sha256:49bb29785ecac06e412738fd910329ff1c089eb20c04793064319c02ffa87c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6.2` - linux; amd64

```console
$ docker pull registry@sha256:7aac3a31e920ba78616bd0520b762d0ce7bbc138223fc9ad5e747fdac2e69b6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10659517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebefe7c539b404c035da1ec6eff7b70edeedd1d634eb77ee041744f58e7c459`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 07:13:28 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 13 Sep 2017 07:13:29 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 13 Sep 2017 07:13:29 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 13 Sep 2017 07:13:29 GMT
VOLUME [/var/lib/registry]
# Wed, 13 Sep 2017 07:13:29 GMT
EXPOSE 5000/tcp
# Wed, 13 Sep 2017 07:13:30 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 13 Sep 2017 07:13:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 07:13:30 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617db05474c9371703e912b839ad42b36e12f99f8f5ccefdb1688400802ef80a`  
		Last Modified: Wed, 13 Sep 2017 07:13:43 GMT  
		Size: 2.0 MB (2008553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2a0d0d3401eaf8b140af82104e54648af5454407e3e5add7a0007fda6e246a`  
		Last Modified: Wed, 13 Sep 2017 07:13:45 GMT  
		Size: 6.3 MB (6265373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f05b0925afe635f69f55b13464210f1ef0830325db92714fca2dc6baf2924e`  
		Last Modified: Wed, 13 Sep 2017 07:13:42 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860aa3fc43f25e03d1cc5ae3478c806569bd050b4c832c81f6d3cd9829460f4f`  
		Last Modified: Wed, 13 Sep 2017 07:13:42 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:49bb29785ecac06e412738fd910329ff1c089eb20c04793064319c02ffa87c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:7aac3a31e920ba78616bd0520b762d0ce7bbc138223fc9ad5e747fdac2e69b6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10659517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebefe7c539b404c035da1ec6eff7b70edeedd1d634eb77ee041744f58e7c459`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 07:13:28 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 13 Sep 2017 07:13:29 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 13 Sep 2017 07:13:29 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 13 Sep 2017 07:13:29 GMT
VOLUME [/var/lib/registry]
# Wed, 13 Sep 2017 07:13:29 GMT
EXPOSE 5000/tcp
# Wed, 13 Sep 2017 07:13:30 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 13 Sep 2017 07:13:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 07:13:30 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617db05474c9371703e912b839ad42b36e12f99f8f5ccefdb1688400802ef80a`  
		Last Modified: Wed, 13 Sep 2017 07:13:43 GMT  
		Size: 2.0 MB (2008553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2a0d0d3401eaf8b140af82104e54648af5454407e3e5add7a0007fda6e246a`  
		Last Modified: Wed, 13 Sep 2017 07:13:45 GMT  
		Size: 6.3 MB (6265373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f05b0925afe635f69f55b13464210f1ef0830325db92714fca2dc6baf2924e`  
		Last Modified: Wed, 13 Sep 2017 07:13:42 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860aa3fc43f25e03d1cc5ae3478c806569bd050b4c832c81f6d3cd9829460f4f`  
		Last Modified: Wed, 13 Sep 2017 07:13:42 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
