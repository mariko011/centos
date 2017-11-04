## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:d8ebbd31a2fccfd73af7a2c6e6a92b023814669b9e508f8910599b949bd743b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:cc29c50d4074351a35b579638b4d5d05bc0e3d83a8401311ddd6bd0f10be8f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.2 MB (552194147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b517d5aa17da205ce1167ecc85bd2bd1d50d7673415656505381acc9b98efa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:47:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:47:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:48:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:48:31 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:48:31 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:49:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:49:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:49:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:49:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:50:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:51:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c691bf98a8b9b022ad7d943044a3b0aa17050fa4d86da14642a76f3688d1742`  
		Last Modified: Sat, 04 Nov 2017 08:19:55 GMT  
		Size: 7.2 MB (7218242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5a999c8f977df42fe8694ed09456d12c7a03807f138a788305e2b8f6c8b61`  
		Last Modified: Sat, 04 Nov 2017 08:19:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00da47f1ff6c9bdcdb8042b5cf91f23ad4b81c4e0c6be15efb8650f898b5bcc`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a2cabceb278bbdaac1b07772dfc1a44549195d531d1d0794cd47027627b953`  
		Last Modified: Sat, 04 Nov 2017 08:20:20 GMT  
		Size: 64.7 MB (64677566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0873d4ee1db3c8672f6d556af881fd67f571acfd58e33a3af25a687c0952bc73`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 766.6 KB (766568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f00b747f15456afadc3934128569256f820fb30db1940e7805ec723524c499`  
		Last Modified: Sat, 04 Nov 2017 08:20:57 GMT  
		Size: 251.8 MB (251780781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94b8c4555f583b2ea91b311a6331e1a67f2b19068995718a3c380fd112366c4`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed34c9355e15efcbb54e7f6c4b8ba1b65780323c9573fb224be745ded5f4af1`  
		Last Modified: Sat, 04 Nov 2017 08:21:39 GMT  
		Size: 122.2 MB (122197753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2441fb4b76fc03bd3895c8b0079c77e5f55fcf3e935f8783e59ecf5095d4dc9`  
		Last Modified: Sat, 04 Nov 2017 08:22:09 GMT  
		Size: 60.4 MB (60422358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43c7928c16dc58b93062c1387f001b215aa39a0300abeec8411cfa719bf91d1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.5 MB (492497121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eecacb155d6cefbbe05fa6496eaf89ea0ef451728ba119aed91922381c8619b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:08:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:08:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 06:08:44 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 06:13:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:13:08 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 06:13:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 06:13:48 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 06:13:49 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 06:24:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:24:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 06:24:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 06:24:40 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:29:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:34:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d7a7a072b756f3eec7f18096a6edc68b278e2fef6f0cfa1c2556ccb10d9d8`  
		Last Modified: Tue, 10 Oct 2017 07:01:28 GMT  
		Size: 6.8 MB (6793394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c304949e92fc2c120b87d79a093cd77a22af9a9bbb6dd21aa98a79a724ef23`  
		Last Modified: Tue, 10 Oct 2017 07:01:26 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd8cc453b9305a42bd7bbad3fe9838ab4a95fed3602abc9174d849babeb86f7`  
		Last Modified: Tue, 10 Oct 2017 07:01:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c258b49f4293fb7f6b7085b6fedc38c34f7f86d7ed80935d0b08410d01f36f`  
		Last Modified: Tue, 10 Oct 2017 07:01:51 GMT  
		Size: 61.8 MB (61767666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833480eca8d21ed46bd927eaaf48b8db1f085b0871618dbce3e62263da74e4f6`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 760.2 KB (760219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64780436c110f86637243acd08bd0f9481f6485b95c1b5cd23acb2830f4a0b48`  
		Last Modified: Tue, 10 Oct 2017 07:02:40 GMT  
		Size: 206.7 MB (206742472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad82b97105a570ad38e6a8c9004e5aae4019a226f02a12e57fb69e4ae4752f19`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e55dfaf6116bf0c989d8b35601f84fc1fbe3505292c3ad46243025ff2df47b8`  
		Last Modified: Tue, 10 Oct 2017 07:03:45 GMT  
		Size: 116.0 MB (116017289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c33ba4707be8bfe4fd31eb5c74ef24fe41b3a6f02fe6107c04271e88235689c`  
		Last Modified: Tue, 10 Oct 2017 07:04:34 GMT  
		Size: 57.5 MB (57502560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
