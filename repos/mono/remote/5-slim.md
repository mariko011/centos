## `mono:5-slim`

```console
$ docker pull mono@sha256:9cb9c6131656a1ea0413e22fa5854a38672d792e63be3fd51c4da214b43113ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:09e7eccb0edb4db6062a9b5909b71b5c89f74dc090af75395dcd6292421d349b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57394467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8dc438b7993d1b3d758dc1998b2e963596f1811227902568e70ea176d8f046`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Mon, 13 Nov 2017 15:39:52 GMT
ENV MONO_VERSION=5.4.1.6
# Mon, 13 Nov 2017 15:39:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 13 Nov 2017 15:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb27a20a9e0266f506095fa3f494077a98339be96a937f93a94aa49538aa7f53`  
		Last Modified: Mon, 13 Nov 2017 15:41:57 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c35b3399fe4c04bbec533b3fd55b4d6f600a4384ffee06fb084c0b549652a4`  
		Last Modified: Mon, 13 Nov 2017 15:42:05 GMT  
		Size: 27.3 MB (27279081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:9d84f29fc358aaba9184feabecd6b598933e4ae8aac01f07acbf725bad191282
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48318219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3addce45a675dde835ee7c09127466ace823a4ba6d79fc1ea83cebdede1495f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 13 Nov 2017 18:51:44 GMT
ENV MONO_VERSION=5.4.1.6
# Mon, 13 Nov 2017 18:51:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 13 Nov 2017 18:53:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5452751b42cf52c011e0e65cd8dabba30d397ba58dd71c63c137a4f5d643b8b`  
		Last Modified: Mon, 13 Nov 2017 18:56:01 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca0c1fda1efbdb5d2c8e1bb215b74d741789eeaf6b2eb31ba974c7aab75902a`  
		Last Modified: Mon, 13 Nov 2017 18:56:08 GMT  
		Size: 22.0 MB (22035170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:93fbbbbb3e1a9060404d5213c882539f5a1bd99bd0a42e354cd4dfc813f13b8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53681070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae65bd04df6ba195243c8e2d1efc261f9101f9717acdb3fbc938fca46b920ef1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Mon, 13 Nov 2017 20:45:51 GMT
ENV MONO_VERSION=5.4.1.6
# Mon, 13 Nov 2017 20:45:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 13 Nov 2017 20:47:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34917a43eadf42cce7e34196dd42a368f69c53e0d6d813efd8354ec42e04530`  
		Last Modified: Mon, 13 Nov 2017 20:53:45 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285a6b321aff60f33ea56407557c7d3ccffb3913c42ad6d27d1649c334837843`  
		Last Modified: Mon, 13 Nov 2017 20:53:57 GMT  
		Size: 26.2 MB (26198413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:fd5b0c4e774c70aee44535b0b318975e43e1f46b3153eb41311cadd613761631
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59320028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f4160105dac9e4b9a1df6df04b6c52c8937e3ee91b2766756b1fdbc25a93e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 14 Nov 2017 02:01:34 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 14 Nov 2017 02:01:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 14 Nov 2017 02:02:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba18d119120b55540ff3ecdf2969f8e124d7d5a4d14805eb3ef4c464a33dae4`  
		Last Modified: Tue, 14 Nov 2017 02:09:29 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea455371e7189400518ff5905843f4c1e5c60b6a79be733f59b88892ba3afdd5`  
		Last Modified: Tue, 14 Nov 2017 02:09:34 GMT  
		Size: 29.1 MB (29053503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
