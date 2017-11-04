## `mono:slim`

```console
$ docker pull mono@sha256:33cff71e4e28a65c113f6753a2c4651818c3438b12856c1b66e1f859e07cea92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:59126eae0502c721ef7b4e231bebdeb17e3de5c6a91f0ac2f0495bcea496e0aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57394080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86567101bba4c82370c0d9352d44006fa549f92bb1b735870f0a4e3e38efb63b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:48:29 GMT
ENV MONO_VERSION=5.4.0.201
# Sat, 04 Nov 2017 16:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 04 Nov 2017 16:49:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbaf487fd3d6e58263f32963b92cdab75fda71497cfd89203da2a071391567e`  
		Last Modified: Sat, 04 Nov 2017 16:53:31 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1d1c4633f7c72df00794549888bf831db58d7902fba64945249e7a237ee250`  
		Last Modified: Sat, 04 Nov 2017 16:53:39 GMT  
		Size: 27.3 MB (27278697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5f8055656d4c37b7f31bd06a372376d76050217a4de7975a6a5f637796e3ce37
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48318085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2e28a554ed459c68d737d67e3d3814f15caaf9dbc2025cd52f59957bfbd37c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 17 Oct 2017 17:51:32 GMT
ENV MONO_VERSION=5.4.0.201
# Tue, 17 Oct 2017 17:51:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Oct 2017 17:52:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebc5f99dc26f440db883809cd8379ade7a516c92b91b7d22ae6485b1278ab1f`  
		Last Modified: Tue, 17 Oct 2017 17:55:04 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dec16e095e6115a08f0f8530cdfde275c707acbc3fbb2fcc735b863a95122c1`  
		Last Modified: Tue, 17 Oct 2017 17:55:12 GMT  
		Size: 22.0 MB (22035038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:7c7acc4cd80b4ceaa4309ce4aed1d02f3b7c7209957ffafee4c7cc4cad16e8af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53681920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8480909fbc33d90b5dee55a454ea5be52d3f9c8704ed3e60058f7bce5e2d85b4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 17 Oct 2017 19:45:44 GMT
ENV MONO_VERSION=5.4.0.201
# Tue, 17 Oct 2017 19:45:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Oct 2017 19:47:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad3574e8978c5cdfc63d800a5b8666c43c9d93519dbe83105d3ffdb6bac9f8a`  
		Last Modified: Tue, 17 Oct 2017 19:53:55 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b32240292f03d8f265e50d58923a86660a5730b335e0dc5eb333ae7890cd921`  
		Last Modified: Tue, 17 Oct 2017 19:54:07 GMT  
		Size: 26.2 MB (26199265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:1c1e2d0453aa51c38f1a9c5d857326a7d2584187a3d6b97c7d134857b313eaca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59318493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39ab72d2a85482d0fb58d096da734fa000dea510d2a2d0f2ef4dcfcf4e9350`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 17 Oct 2017 00:57:28 GMT
ENV MONO_VERSION=5.4.0.201
# Tue, 17 Oct 2017 00:57:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Oct 2017 00:58:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6db9a23ef19b82644ae3cc18a517df0a01579623915a4d0ea810e09c608927`  
		Last Modified: Tue, 17 Oct 2017 01:02:43 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e350d9d1943c6f652c74dd24e15cbdf943755f73fa0942cb0a1d8b12187ece`  
		Last Modified: Tue, 17 Oct 2017 01:02:49 GMT  
		Size: 29.1 MB (29051973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
