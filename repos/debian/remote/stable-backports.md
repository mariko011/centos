## `debian:stable-backports`

```console
$ docker pull debian@sha256:6ebc515de476253874393e7b26c62b92999434cb0b5b0f3b931bc1642e01304c
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
$ docker pull debian@sha256:5b1b4ad1d82e5475f9752c447a097788c3f12d0b96e52cf0d187ccbabaed16e3
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45125680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af363e2668b680616d084a6082f549e0dd7d5e4c14310615c21452cf480de0b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:52 GMT
ADD file:4a5eacc45062c4bc339a20c8517d6c999d31123e7ea1c2d63cfc4530735b1695 in / 
# Thu, 07 Sep 2017 23:06:52 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:06:58 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:05517c67421e17b1e09684629a620d6f2a3b66efca6213cd6a89ce306a1b9157`  
		Last Modified: Thu, 07 Sep 2017 23:15:37 GMT  
		Size: 45.1 MB (45125464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83785f78b07c7c115ff2b1907bb106b74482b3a5aae60f817389823f67351bef`  
		Last Modified: Thu, 07 Sep 2017 23:19:52 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:9fcebaa37ad4665d3dfb1761b9f27e35ef92a7a10fa42b0417575c77200d3e0d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43813574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec20f29669b075f1cae2958f80a4d2a7844f5a71baa41f5741b62aa9fd86faee`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:02:23 GMT
ADD file:a4cb19bc86257a969755569872db95169f38b70c272666cc0daa33c81db03031 in / 
# Fri, 08 Sep 2017 20:02:25 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 20:02:42 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:628793565bc6d2c659e315e69b0cbdd01110960f3a316ec16b9e4d36e30c098f`  
		Last Modified: Fri, 08 Sep 2017 20:18:54 GMT  
		Size: 43.8 MB (43813350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376d56c07abdbe64fccde680bf477dd9bb013ed8102bf173f864481a6732425c`  
		Last Modified: Fri, 08 Sep 2017 20:19:19 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:0095ef0dbe7fe177291f1397495c10704c14baa235e7e215072c4a28924a88f2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41847242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdbbc7a86f4160e6caaa2e92e51425e99adcdd44be02ad9ac84e4093ea05acc`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:43:54 GMT
ADD file:2b9d7830f057eeab9a008076dc4c844c2155481c86020528c05a83364637c81d in / 
# Sat, 09 Sep 2017 01:43:55 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:44:03 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1530eb70bc6e42bef789919a2294199de0bc50115020d0f33425bdb29261216f`  
		Last Modified: Sat, 09 Sep 2017 01:56:22 GMT  
		Size: 41.8 MB (41847019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96bb018e76d20a7a59392078f87d98e04f8c5133d9d4f0d0e4040f6a4dd24da`  
		Last Modified: Sat, 09 Sep 2017 01:56:37 GMT  
		Size: 223.0 B  
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
