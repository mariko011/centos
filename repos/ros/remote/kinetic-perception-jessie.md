## `ros:kinetic-perception-jessie`

```console
$ docker pull ros@sha256:0fa2bc414b7ae772b5d4ad0e342405fae03d40263e0f9f5ef92034108fd4da21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-perception-jessie` - linux; amd64

```console
$ docker pull ros@sha256:2000d63a3f823038f3f96179064e592aab2a255fa0a82de04fcca8ec23220bd3
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **578.9 MB (578929132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683521bc13505062668edefa71a8c70af55ea1670fb0fa32db46f32f04cdf1da`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:02:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 08 Sep 2017 10:02:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 08 Sep 2017 10:03:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:03:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 10:03:13 GMT
ENV LC_ALL=C.UTF-8
# Fri, 08 Sep 2017 10:03:22 GMT
RUN rosdep init     && rosdep update
# Fri, 08 Sep 2017 10:03:22 GMT
ENV ROS_DISTRO=kinetic
# Fri, 08 Sep 2017 10:04:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:04:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 08 Sep 2017 10:04:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 08 Sep 2017 10:04:55 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:05:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:09:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52bab3b1ec56bac0fc78d5c08a01765180e9812924a0db8c0aafd1ce97dd6d4`  
		Last Modified: Mon, 11 Sep 2017 14:25:09 GMT  
		Size: 33.8 MB (33759211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c39c19c4ee0e0756fa7ade179f84a9a9622d399e7067871d0986276b8ea99a`  
		Last Modified: Mon, 11 Sep 2017 14:24:50 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102211a30372ac4ff84e6c7fdf0cc2acdf92f657e6b620077d4bccdb62955442`  
		Last Modified: Mon, 11 Sep 2017 14:24:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033de1d2375fc00195a63595e089a239316cd19e49757413ab50e063afc7a72f`  
		Last Modified: Mon, 11 Sep 2017 14:25:15 GMT  
		Size: 46.3 MB (46338520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d26e7eb91af4522aeacf56cd7c61ea78085072681e47e3c920ee9a4c687125`  
		Last Modified: Mon, 11 Sep 2017 14:24:50 GMT  
		Size: 758.9 KB (758877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75236d617c9f063a054ff20726fc7e1d8d68cdc71a8bc3fa4223223e8708cd0`  
		Last Modified: Mon, 11 Sep 2017 14:25:57 GMT  
		Size: 157.0 MB (156967764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a0f28b66f9d7dc6ba5b587048a216ec1369703dccb43560711a6a4f423489c`  
		Last Modified: Mon, 11 Sep 2017 14:24:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c51638b249be1a057ae8640754a27b017f647e738a7cbc7753ae7768f38e54`  
		Last Modified: Mon, 11 Sep 2017 14:29:08 GMT  
		Size: 5.0 MB (4987892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab495d08d9e27a811eb4a78e3d29d337c0f6fadd75f1b9df2bdfae44a85b25a`  
		Last Modified: Mon, 11 Sep 2017 14:31:12 GMT  
		Size: 283.5 MB (283519483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1b2c57349d708ad42a833453d7f3c148ee555d470ab29f9d37fd90c5f3ac90dc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.6 MB (502602160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19285945e7efcd1bc5b436edbaa38077d13822dc2e4afb76f936ba0bb9eb59f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:27:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:27:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 09 Sep 2017 02:27:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 09 Sep 2017 02:31:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:31:08 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 02:31:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 09 Sep 2017 02:31:49 GMT
RUN rosdep init     && rosdep update
# Sat, 09 Sep 2017 02:31:50 GMT
ENV ROS_DISTRO=kinetic
# Sat, 09 Sep 2017 02:39:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:39:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 09 Sep 2017 02:39:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 09 Sep 2017 02:39:45 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:41:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102eeef0441ceb62ea192224cc8a989588713c2ae51bcaa6b35e1d01c9bcdda9`  
		Last Modified: Sat, 09 Sep 2017 03:40:50 GMT  
		Size: 32.1 MB (32143815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6d23f5fdf72d2761ca4da6e64f54927c2574473a1494362663044c9c3c8062`  
		Last Modified: Sat, 09 Sep 2017 03:40:36 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a16c0c2316a5956fc0f6cc64683e29593d7350bfe6925b6636bab8623fc7e1f`  
		Last Modified: Sat, 09 Sep 2017 03:40:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8779c0c576842ba6ab828de2b525f6d03c8b200cec037fc6ebd41a518190f1d`  
		Last Modified: Sat, 09 Sep 2017 03:41:03 GMT  
		Size: 44.0 MB (44035460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2004d6b508cd6068dd24b6eebc3283e21a00749a8b98471d78fc042fe5917c8`  
		Last Modified: Sat, 09 Sep 2017 03:40:34 GMT  
		Size: 753.5 KB (753457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4ba5ec7dd4008ab5fe6178f7bd4a035aab6bbf49e0d9d6c27d3cd33af3d365`  
		Last Modified: Sat, 09 Sep 2017 03:41:36 GMT  
		Size: 130.5 MB (130498225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d1a56dd9723032155af4d0c31932b4d4b8b587001fb93d7d0bbdea593f577`  
		Last Modified: Sat, 09 Sep 2017 03:40:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03638fa9839e91f5b10a2cd17c6fac2d29751958174f938613f70c001ad3c4c5`  
		Last Modified: Sat, 09 Sep 2017 03:41:54 GMT  
		Size: 5.1 MB (5062944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5c1120b57f0c5c9f086ba888f210f5a688440f51b0eb42036a6ea87b28f972`  
		Last Modified: Sat, 09 Sep 2017 03:44:40 GMT  
		Size: 240.2 MB (240176961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
