## `mono:5-slim`

```console
$ docker pull mono@sha256:5206cbf5af8c60936c2e7bf68e3a16541018a7395b8ee40de728a461b66de7d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:b4b807705a172aedd3a22eb20ca16e8c0a229139d6feea9189c59287eef8627f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57356135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7daf8ffb27d929a87763d48d39be8161f2bb813028ea41eb7df147e0f5eb663d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5cd42475948ffa583df52134779351574a036a004860605532c746e9c1af6603
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47372945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9459e53906fc3b55776589c20ce4355955692e915edb8e74156379ddf6b6b027`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b71c8e76f4905a917ae9478bd4f59fbfe03babd7c312f6570f3260eb8f123bfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54204582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1769e5be9f16107f845afe6528ffb475c8dc97e4fa65c572ead4bc299d2d1d9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:3e9f329445756d18b6ef76a0ad5e8464bf0a4865e2aba4cf008fc3c630440740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cf6239b87a6631d10186ab7a3818e9963695977b3c3326242972eddf333ac3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
