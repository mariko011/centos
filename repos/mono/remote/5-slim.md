## `mono:5-slim`

```console
$ docker pull mono@sha256:e8db6c188ec8d082459d8164c9971d6e38ceffba2d29702dc50b4315175d8050
```

-	Platforms:
	-	linux; amd64

### `mono:5-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290ecc0d3a09bb94665c1a48b07654d4dd71894da134d89a01085a0604c6a45e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
