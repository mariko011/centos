## `mono:slim`

```console
$ docker pull mono@sha256:34c6c0a900347476c2e18fc54a7699c56d1d4990a5512fa98eba035b12db5dd5
```

-	Platforms:
	-	linux; amd64

### `mono:slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57364122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394b1c02fe0ed0990f6e2fac49db133f196db326111090b4f1b747a2f41b3ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
