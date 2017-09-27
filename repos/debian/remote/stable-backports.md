## `debian:stable-backports`

```console
$ docker pull debian@sha256:2cee4926ec60fcaee33752761f66a225e04a108cf7c80001c9b98c2e597ca45f
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
$ docker pull debian@sha256:83b979a48eca254e8110a692f8e9c0646828dfaef73fe2e525ef1d1354521354
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45125684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ebb7d8790a3aa1fa5e910fda55516317b1946d3c02137d713c5bc17f272c3e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:30 GMT
ADD file:4a5eacc45062c4bc339a20c8517d6c999d31123e7ea1c2d63cfc4530735b1695 in / 
# Wed, 13 Sep 2017 08:41:31 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:41:32 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:85b98d9576903ca50b76ce7c528b657c224b87e5585cb17f7014b4f00d6a58b3`  
		Last Modified: Wed, 13 Sep 2017 08:45:47 GMT  
		Size: 45.1 MB (45125464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8679dadd1bf7d51da7a525c0ccaa742fae4107052c36fe9eb496b6abb9c795c`  
		Last Modified: Wed, 13 Sep 2017 08:45:58 GMT  
		Size: 220.0 B  
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
