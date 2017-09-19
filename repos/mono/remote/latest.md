## `mono:latest`

```console
$ docker pull mono@sha256:c206d9b3e65016e19e919d27433044f1ba28406d42c9de77a9e6f6566ea9a9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:85418563842c443b2a76fefe7313b97f76b41bd27a867c816246e2650c7e44ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167041813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b86b92cd59bf80fd90888204cf57e60722a0066149d7c8c0ede3687490325`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:56:16 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 00:56:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 00:57:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Sep 2017 01:03:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb401839c656aca137e79a90a17705a7eb5c0a97eafe20074eec0b3273e1dc3f`  
		Last Modified: Tue, 19 Sep 2017 01:03:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e11b1cfd586adb3805e1ecf2a0a52c008069552f775ccb6fab1aef5f86f6e95`  
		Last Modified: Tue, 19 Sep 2017 01:03:43 GMT  
		Size: 27.2 MB (27240505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425accfb7f8fe9395733145b7bf822575cf7efe5238ccd3e07ccaddc191afae5`  
		Last Modified: Tue, 19 Sep 2017 01:05:58 GMT  
		Size: 109.7 MB (109686105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:fe4d50c35b36ef711fa45aeec10b6b3f3f8cb023c29a42b604f80f68052d92d6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145912383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d468a641fcd7ef69da276026315607dbafa0025e94d07bcce91c1902ebb824`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:48:22 GMT
ADD file:e389776a9a3fc95d77b1de986f0ae670ac389527f87ee7b71a4ffc21c973dff0 in / 
# Tue, 25 Jul 2017 12:48:24 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 18:17:32 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 18:17:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 18:33:30 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 22 Aug 2017 20:37:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3d2780fdc969b3bfd6ebba1e3649e76fc061ec96f60ff3460086bf2148f1a03d`  
		Last Modified: Tue, 25 Jul 2017 13:06:38 GMT  
		Size: 26.3 MB (26288325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf6a88abcb0afb31532456afe0b7531599fedd36c9237e43813a35017a546d6`  
		Last Modified: Tue, 22 Aug 2017 20:37:54 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213b35f61ba025a103d623daf322a61c2b9e3ce979cabdb91a133fdc9612aa32`  
		Last Modified: Tue, 22 Aug 2017 20:38:24 GMT  
		Size: 21.1 MB (21085912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab730f6bac4ef1c0f0d10be43eafa9c70e028a5ed32960f3ba1509fd3a71b7a7`  
		Last Modified: Tue, 22 Aug 2017 20:39:16 GMT  
		Size: 98.5 MB (98536076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c66cb460bd80ea896ce2033717aaa2637af44bc024ecc5ca99535c6181c02c0e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160488661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803f978922ec733b276b827e01ac1b968dc50e61255fc1aa675f6de4498a435c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:36:14 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 21:36:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:38:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 21:57:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba25909a569941f571a4d7a8476b98f797f5985e5d5d3c2d4d51833f7d4be57`  
		Last Modified: Fri, 08 Sep 2017 21:57:32 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d88b9da28f7d692e1b6ef4b73d23901156b68d0f299e5c39476ac06221eff2`  
		Last Modified: Fri, 08 Sep 2017 21:57:45 GMT  
		Size: 25.2 MB (25220231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e709a0d3e3ce778bad5004c45914becc348bad7a2248ccc033f364881b338302`  
		Last Modified: Fri, 08 Sep 2017 21:58:25 GMT  
		Size: 107.8 MB (107785976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:7600f29450588abc55360c785bf9192b7e361e37d6656652e1e8996f9eedc002
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b21562c286248adf684456ac1309a6589aa887e7c45884daf126a01b97fa46d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:59:21 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 14:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:00:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 15:10:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b9bac4dce8f564f62f1e3679087d1017b8a1519d6cc9697fdf1f8d3a07b8a`  
		Last Modified: Fri, 08 Sep 2017 15:11:12 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1c078a2bda3af6881583c84ffd48e8ccb2e90708fb2e1e067fe68a9542127`  
		Last Modified: Fri, 08 Sep 2017 15:11:23 GMT  
		Size: 29.0 MB (29021118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856fcfadb75d8447fa682ea2070bc78d832248250f1456ba5d2a8edbf8d44d82`  
		Last Modified: Fri, 08 Sep 2017 15:11:30 GMT  
		Size: 110.2 MB (110150581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
