## `mono:5-slim`

```console
$ docker pull mono@sha256:f5eb474edaf76e88448fe560918311f46a18698292e41bcc3d850d6dece07859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5-slim` - linux; amd64

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
