## `mono:latest`

```console
$ docker pull mono@sha256:042a72a552882b708a3a66e6bb78f98526e8785606db9e9e3edd86e69217a727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:34ea3361a1620fe6a13ed5339b6886f6f8d41166ea0e70edf85a934ac1c36dbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167259050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61351f52f2f9626831bab79a482a10f7b2d0a9671d3e2aabb7b968dc85848adb`
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
# Mon, 13 Nov 2017 15:41:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:a6eecd727cd74ca01e16153750599557fbf8667d3d6598614778c90426e74c93`  
		Last Modified: Mon, 13 Nov 2017 15:43:04 GMT  
		Size: 109.9 MB (109864583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:ec274636863b1a30f8e3b104c41a0760aee5ee423a170bcad911823c5a981bba
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (147048792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f5874e5bb5aa6e4fdb4b6e90858ea872a2837399f7f7f759bb5515e219e9f0`
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
# Mon, 13 Nov 2017 18:55:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:3c4dfbade60e54562907c10779819d6c0429eb07f157c19e79f5a2186c99a924`  
		Last Modified: Mon, 13 Nov 2017 18:57:28 GMT  
		Size: 98.7 MB (98730573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1947aa3208dd675ca0b021b0d7ab2cf292ad28a340fa6bcee68686963e754b44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.6 MB (161636979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b408cbe32183c28ad00ff6f73bedb6d9bc9649e3ea4012ffb41ec058462de2`
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
# Mon, 13 Nov 2017 20:52:57 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:4b2f3e9cb23460e585f60f47f1a9c706bfc88869b081ff068c23358f71872acf`  
		Last Modified: Mon, 13 Nov 2017 20:56:25 GMT  
		Size: 108.0 MB (107955909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
