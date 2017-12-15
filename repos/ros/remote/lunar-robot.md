## `ros:lunar-robot`

```console
$ docker pull ros@sha256:8659c91ecca07b1cc48115aec438cd0279f1ec77ffd2ef8391515d53cc4c19e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:fcd09a981b38706ebb75533d5976299276d20c8487204000e563de5f229ccf8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.6 MB (482646540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:977a86fcea1b2bfe604257bfb66acb5ec1e61951bbf4929267f46dfbed68eb1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:23:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:24:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3689978da433bf51f6c4242da81dc0a7c795829f2b1615de2e510ccca47a8e`  
		Last Modified: Fri, 15 Dec 2017 01:29:53 GMT  
		Size: 81.3 MB (81262815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b04ead9cc82b522cf2709e9d0161aeb6317affcdd07e92bfe6179276e732b9`  
		Last Modified: Fri, 15 Dec 2017 01:30:55 GMT  
		Size: 103.6 MB (103644754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:ae74e18ef21565ddad88506891ca03605b2345393d94000eb64fbbf562809a66
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.8 MB (421761678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6a486e183ab6aa4d8a4b184c7ab95d497cf9c9f8913c96c15b24361fce652f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:43:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:45:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35beaf3660587096e791a1c8b2d53d33713956e145f11d805eb66f2297f41ec`  
		Last Modified: Fri, 15 Dec 2017 14:59:11 GMT  
		Size: 73.0 MB (73000075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bc119a05036bf547988b7c174ffa8c88e9a036e8b07749f16ab48d932c4321`  
		Last Modified: Fri, 15 Dec 2017 14:59:48 GMT  
		Size: 90.1 MB (90091526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4d6cfbbb4529100d4e6784a6d7e3dea8a2e9d26049508727d9be1315ae616eff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443854889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ece4a593cecd3767100594eaa29346c4f0162d77da3da2c15d81258656311`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:10:44 GMT
ADD file:d77c0d95beda43347e2aef035d8d2396f1005104427c4beac6f2cb5e2537a197 in / 
# Fri, 17 Nov 2017 22:10:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:10:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:10:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:50 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:36:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 17 Nov 2017 22:36:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 17 Nov 2017 22:38:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:38:12 GMT
ENV LANG=C.UTF-8
# Fri, 17 Nov 2017 22:38:13 GMT
ENV LC_ALL=C.UTF-8
# Fri, 17 Nov 2017 22:38:52 GMT
RUN rosdep init     && rosdep update
# Fri, 17 Nov 2017 23:18:54 GMT
ENV ROS_DISTRO=lunar
# Fri, 17 Nov 2017 23:30:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:30:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 17 Nov 2017 23:30:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 17 Nov 2017 23:30:40 GMT
CMD ["bash"]
# Fri, 17 Nov 2017 23:35:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:41:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa17bdeb0d8abe4e2c5af98903791e6443acd93814cce9fc4313cc6b979a6790`  
		Last Modified: Fri, 17 Nov 2017 22:16:00 GMT  
		Size: 43.5 MB (43510220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de9f461273ed25acc47f2903a0486e938de1ec9d9956a698b5d1a49470cd4ef`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb43b74b44a7ee747aee5b1e61f631c79095306bcb8ce56cdc55568d7b55ddc4`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae2b3d5795087d14d671d6c2357470ef616e8976634fce128863c7db5709de`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318bffa324ea908ff39fb3751a2c5cd31ca672b49b5783b477bc4138198b0bb0`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee39e45354b4e583aa0f381e5ebb42230a145cce93412227121a03064f7422a`  
		Last Modified: Fri, 17 Nov 2017 23:56:09 GMT  
		Size: 4.8 MB (4819304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8de20f8745cd38563aadc1ae3f569cdffb87ef278b186ae1b35ad6518b5970c`  
		Last Modified: Fri, 17 Nov 2017 23:56:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8677801d0fe66a9d1de41a73283b652af8c06238d63c3d5a83639f4c1d5b8923`  
		Last Modified: Fri, 17 Nov 2017 23:56:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b3ed86135662910960b0111ab125e9bc4dc223687b4ed529fa2dad0c74eb78`  
		Last Modified: Fri, 17 Nov 2017 23:56:30 GMT  
		Size: 52.3 MB (52333997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f026b0387094d8ec4e2f7d4815b781576d174f05089672414f0aa7a084cb71`  
		Last Modified: Fri, 17 Nov 2017 23:56:06 GMT  
		Size: 769.0 KB (769022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fcd9ce2121dcba64404565ecc90f5e52e40cf1e7d50729c82526ed831b6606`  
		Last Modified: Sat, 18 Nov 2017 00:05:17 GMT  
		Size: 173.9 MB (173933592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75208802fa8d5628032748a49627f8ba2db8d2ab665da7dee950b183a5081bc8`  
		Last Modified: Sat, 18 Nov 2017 00:04:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db6336f93302cf249627b75d94302856aac37410739de0ed719797b9c735bbd`  
		Last Modified: Sat, 18 Nov 2017 00:06:41 GMT  
		Size: 74.6 MB (74570940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb1fef87bbada5f948d1cfdec23271bb09f641e1b77d44324d45cf07b6cc320`  
		Last Modified: Sat, 18 Nov 2017 00:08:40 GMT  
		Size: 93.9 MB (93901827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
