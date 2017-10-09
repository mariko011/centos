## `debian:stable-backports`

```console
$ docker pull debian@sha256:0229ab447b0042affd24f235e2c844e61104ea17947bd1aad9e66f4615038d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:c9e0055867a9e893f4a664e514cb07b0d913cfda7e4b3b98577253897af124b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45129314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a721522d2b33a720339af72244a49e6cc6f0cdf5694f00e30d7ccc974dd3eeea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:52 GMT
ADD file:4d64cdbd451795c07ae9de1c159fb88fe1eb5bb7c91a1ea7840929ac52849ad2 in / 
# Mon, 09 Oct 2017 21:32:52 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:32:59 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:28f860a8714a885e4b5ed527903efa876221167bdd891e9de690e141a53784e4`  
		Last Modified: Mon, 09 Oct 2017 21:40:43 GMT  
		Size: 45.1 MB (45129093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bef281c825ff8ebf8430835ad57411e3aaf5994532e15bb493acb97a225430`  
		Last Modified: Mon, 09 Oct 2017 21:41:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:1353133a2d5772a63da2beaf17a14fb1f4709d13d85dc61b4f7a1e11120aed9d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43813832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42362a92b17f6b93901cdfe8b35e56d0200730217954b26019c7f00706b19b1d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:25:52 GMT
ADD file:a4cb19bc86257a969755569872db95169f38b70c272666cc0daa33c81db03031 in / 
# Wed, 27 Sep 2017 14:25:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:25:56 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:385473a47f7ddadac1db7c456187c5bd0c1dcbcb06271d27009fb324dc8a267d`  
		Last Modified: Wed, 27 Sep 2017 14:30:44 GMT  
		Size: 43.8 MB (43813610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514ce1971e639b8637ebd563e971d508f1480e5f1447fef176848f0a2a4bd1cd`  
		Last Modified: Wed, 27 Sep 2017 14:30:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:9797865ff4fc31263d719edf976498b0e97f131fab814734b8b7a24bd86bac70
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41846777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c705ad3a1b6c64362e79343da536c4cafb4591d458983871f33fd24b0a3d71c7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:10 GMT
ADD file:2b9d7830f057eeab9a008076dc4c844c2155481c86020528c05a83364637c81d in / 
# Wed, 27 Sep 2017 04:14:10 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:14:15 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:259f332ccb5486728ec5f3db5b66dce9e2fbf31f4ff4cc5632b914ff8552bea4`  
		Last Modified: Wed, 27 Sep 2017 04:19:51 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de2806eee530d966df6ddea150e29a6cd5fb908603d28f5f0aa4d71fb57616`  
		Last Modified: Wed, 27 Sep 2017 04:19:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:af531ec675f068dffbce9aa6dc1308225a6a29651f26337aa82d0b99be6d20d7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42904315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0dd519d555e27644f742a09fb4929a57667e603d08128fc2efe615b8d2385e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:27:15 GMT
ADD file:48f9de3547319f484a0a73908a5b808828e54b62c1440e7672c4eecf54a539d7 in / 
# Fri, 08 Sep 2017 17:27:17 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:27:29 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c0dc78c8df3e85b3d9748f1deb7aba3c92153c0dc3db48e44d3dd80d6522d924`  
		Last Modified: Fri, 08 Sep 2017 17:40:37 GMT  
		Size: 42.9 MB (42904092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7109bf43953e0722602c2963aee48f24efb7845e7234c9bc1730f4d0775d8ac6`  
		Last Modified: Fri, 08 Sep 2017 17:41:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:89b58d93a24004e3ce523314923515ee4807c031cf906f660053d3ead16bf313
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45832079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71351842756dbf2981c76ff87c47b49034d753571a6af0962d1ec4207f1c343`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:22 GMT
ADD file:ea2e19c75a4d5ea9a8c504f7990495dc4ee21bc0a1f35f2f690536aacdf729fe in / 
# Fri, 08 Sep 2017 13:19:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:19:26 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4eebf8ff42c80d72f183c39e0f6e44b7bbcff8460e45b9e865ea180949524a6f`  
		Last Modified: Fri, 08 Sep 2017 13:26:18 GMT  
		Size: 45.8 MB (45831855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb4890232a129e522ef8c7acd159b82c38a3d1b7c6247d8add1c3e5ea23b73f`  
		Last Modified: Fri, 08 Sep 2017 13:26:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:738e2c6b262e263bf91c55a1b04a76fccc4ccbd49cd700c74c0adb77e4f30ca9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45376995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e576114c3ffbe3d9d70ef44d8570b5d7de3f57b7a5b5151427e04a714417c0f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:33:43 GMT
ADD file:19554f42ac9c6f705d5a21b81e39a10ab69feadfc3dfe6dd61de119e7f8fea54 in / 
# Fri, 08 Sep 2017 00:33:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:33:49 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a753508baddf6ffb9faf331d5614d33db322798abf42676f66077a57657d2a60`  
		Last Modified: Fri, 08 Sep 2017 00:40:00 GMT  
		Size: 45.4 MB (45376772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4476b4a9a9cc478093bd22e756812e09ebf5c81e0fdca0a9c9b623a5e7e693b3`  
		Last Modified: Fri, 08 Sep 2017 00:40:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:2d236af17e97a647a8503800f39dd8700d6d9338c5b13d7b131e25ad41440baf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44968775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0425ce257f538f2aad9d6f7d9799827da82d4c297909c48f565ebf5ab782f403`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:35 GMT
ADD file:7418e819bfa13877c1b3bab62441e556df3943e5d28287a10992bf2606601099 in / 
# Fri, 08 Sep 2017 05:22:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:22:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d9e1140c9d2a6102372ffd80e6c1dfc014617126ce0f60e31ddc48d89fb30155`  
		Last Modified: Fri, 08 Sep 2017 05:26:20 GMT  
		Size: 45.0 MB (44968554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4faaf6a7f8c3486bc8faf916754b50b5f8112a430e72933ab6dfea11df505719`  
		Last Modified: Fri, 08 Sep 2017 05:26:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
