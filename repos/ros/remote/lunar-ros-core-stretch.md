## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:c7c6d0c709bad1dfcba21ee3f56db50e8a6f4f11e070bb208d8f891f95be8b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:a257683892fa1b0a9d36169e2c676e15f66cfbac3acc6e94d01428b3694e22fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.6 MB (369563580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77a73af9a05d31b0258f0611d3483c39b414b4b2ea06d9d449c867641621e35`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:18:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:18:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 03:18:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:19:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:19:21 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:19:21 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:19:32 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:19:32 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 03:20:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:20:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:20:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:20:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7892ab6fca1896a65378c15a61abad4514e0014625f65d55689d9ac6ebd753a5`  
		Last Modified: Tue, 10 Oct 2017 03:51:04 GMT  
		Size: 7.2 MB (7218281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45fcdffe19da2c48bfe22bc70e5f29b3301fcdadb875c0b4c47d3ae6ffcebd3`  
		Last Modified: Tue, 10 Oct 2017 03:51:01 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248e0aea5dd0b4a53addcfc6bd054d36045896686c9399d596badb705f4cda22`  
		Last Modified: Tue, 10 Oct 2017 03:50:58 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613b64f0b045f98a42d4c2772b40f825e0224a3351300075a507e40a20860e4`  
		Last Modified: Tue, 10 Oct 2017 03:51:45 GMT  
		Size: 64.7 MB (64677052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a94e785d6b7a9e47af10559a13809badeaf0bae85b8ea79d01f676fe28fe537`  
		Last Modified: Tue, 10 Oct 2017 03:50:58 GMT  
		Size: 760.2 KB (760209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3d40b5f0c30fb2bc520099bf187ceaf9dd6c55c0f4110b8e7b1d43fa417948`  
		Last Modified: Tue, 10 Oct 2017 03:52:11 GMT  
		Size: 251.8 MB (251777158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4874f11353b6d96da96e9caf09689477999e95aea93c9d39f71a3b6d94009c94`  
		Last Modified: Tue, 10 Oct 2017 03:50:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:794d371e29442a883eaf3402b16ae8b7e710f5d5da1db23f747ef4485ad0ea63
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.9 MB (318925799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5f6dc759a544d86c8e29a07f4ced1c1d6c60d5758217e07d9954c8c99d81b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:00:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 09 Sep 2017 03:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 09 Sep 2017 03:03:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:03:40 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 03:03:41 GMT
ENV LC_ALL=C.UTF-8
# Sat, 09 Sep 2017 03:04:20 GMT
RUN rosdep init     && rosdep update
# Sat, 09 Sep 2017 03:04:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 09 Sep 2017 03:13:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:13:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 09 Sep 2017 03:13:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 09 Sep 2017 03:13:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339e3f01464484159157dcb531252b73df1b220691a7ffd2091324c080ec49e4`  
		Last Modified: Sat, 09 Sep 2017 03:44:59 GMT  
		Size: 6.8 MB (6793747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fb38c29873a3e31ce4160fc4c702c0e49cd92494667f18f28b4a48c453f695`  
		Last Modified: Sat, 09 Sep 2017 03:44:57 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39a719799140764a5137c166f1358bbaa4ca764c08bf3c39147a5be46458781`  
		Last Modified: Sat, 09 Sep 2017 03:44:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c906ccb71f2eac0e6b0c7af59de795e0df1a95b95bf6c7729f1a518ed76fd8`  
		Last Modified: Sat, 09 Sep 2017 03:45:23 GMT  
		Size: 61.8 MB (61757065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca968171f0d1ac2050e850cfe7dd667f0aa225c2c331b4b133ee8a445f9fe9e`  
		Last Modified: Sat, 09 Sep 2017 03:44:55 GMT  
		Size: 753.5 KB (753458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4953cb37dc100a245f6ab57d66a4e7f46abb75d342c510e750833c49042d996d`  
		Last Modified: Sat, 09 Sep 2017 03:46:11 GMT  
		Size: 206.7 MB (206715653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c792391df4479123bd175039d78253ab7a3435bbb346ba00248d52e036365703`  
		Last Modified: Sat, 09 Sep 2017 03:44:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
