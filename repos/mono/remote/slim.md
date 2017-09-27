## `mono:slim`

```console
$ docker pull mono@sha256:351458832307a737eb647a42922c70910c6a4d088619be04cb8817674046a5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:8c656e76dd6da950ee0023a440cba59fdd0334c113e7ce42324cb3a6863d94da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc434c6491a380726ad5226c8aaa362a788461ffb25cb50f181a23f1cce1525`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:6900c3f95d445abadae77dadd2378403c2947dab18e58fa9ce55d29069dab760
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48838267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22b622ac78fe5fd5562dc03eb5f31d489cc56fda3dba8feb4c01c9c2f6c29e7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

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

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:d921d576c42ca886a2585641c5ad84054066feed1ce85c4a61b842dec4270e0b
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59286958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57432770ee8caf9bb10d2c4e0442ce7b696ebb92c06fd25f729003e485728ad8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
