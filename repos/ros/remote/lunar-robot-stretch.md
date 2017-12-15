## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:025c404c0a2a6e6e0e10559b61136392e0aa6efd8a1b92f528be099db9c11933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:2f99700325e9a211d9f1f955fb54bf32b3c24076fd9378669544d36976c8d252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.2 MB (552232363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55773e9a8d08621029d67c7fa31edba39c92dc3d74e08f9beb3be363e88009ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 03:13:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 03:13:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 03:14:11 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 03:14:11 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Dec 2017 03:15:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 03:18:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 03:18:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:21:36 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:22:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881311a949618a7b1e5e6fcc5ee40340c97e2ce833a339ca47330a014716907`  
		Last Modified: Tue, 12 Dec 2017 03:41:26 GMT  
		Size: 7.2 MB (7218465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4137cdb5caae38d5f6e3463a8a0be788367f21f852025381993bcd2309392`  
		Last Modified: Tue, 12 Dec 2017 03:41:01 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f75c4c738a4dc486e37a888e46f7e60fc014548ee29999da793fc77aefb0873`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af68fa55b53e1208ae0047849fa9a111526a9ca5341c17dbde48e909bcf40c6a`  
		Last Modified: Tue, 12 Dec 2017 03:41:43 GMT  
		Size: 64.7 MB (64683160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6c0293ad8b6fec5fc330f2be37b9f622e3cd91cef923f6acccd5227f0dfab9`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 776.9 KB (776927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4155bf28eba98aca7db6cc872e5f9b59664574ed6d177c681a4518d729e0e6`  
		Last Modified: Tue, 12 Dec 2017 03:42:22 GMT  
		Size: 251.8 MB (251798957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631f111cca06ac2e4c33f685be0aaa629fb0565b34e2d7fa73fe6cef76f9e3d1`  
		Last Modified: Tue, 12 Dec 2017 03:40:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0899d2d2f85ee842982298f2daa6af5703269277e0ad0c32d53c9d500c6a328`  
		Last Modified: Tue, 12 Dec 2017 03:48:28 GMT  
		Size: 122.2 MB (122210316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5aac166e7891d0b5a64bf698ed1a34949c457ae381f3e255a1e9095476e55a8`  
		Last Modified: Tue, 12 Dec 2017 03:49:05 GMT  
		Size: 60.4 MB (60421113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:afc0dd12e1d8ecc9743533b6d07ad5c6151f93b48b2f3f0cea686f61ef4c2b82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.5 MB (492537217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359517d50ffc19ab84049b5c55cca1e4d78580cd4d2850a7fd47bfa61a4d62c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 20:02:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:05:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645eb3ea882edb3f22ca411234a79187bc609fe3016dbe4b4db17f50f580e5e7`  
		Last Modified: Fri, 15 Dec 2017 20:41:39 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb8962fce1bd9df59c74a224d844ef6e32ed6cda3dfa3a7338403c9a4a533ec`  
		Last Modified: Fri, 15 Dec 2017 20:42:11 GMT  
		Size: 57.5 MB (57498927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
