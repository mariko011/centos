<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:indigo-ros-core`](#rosindigo-ros-core)
-	[`ros:indigo-ros-base`](#rosindigo-ros-base)
-	[`ros:indigo`](#rosindigo)
-	[`ros:indigo-robot`](#rosindigo-robot)
-	[`ros:indigo-perception`](#rosindigo-perception)
-	[`ros:jade-ros-core`](#rosjade-ros-core)
-	[`ros:jade-ros-base`](#rosjade-ros-base)
-	[`ros:jade`](#rosjade)
-	[`ros:jade-robot`](#rosjade-robot)
-	[`ros:jade-perception`](#rosjade-perception)
-	[`ros:kinetic-ros-core`](#roskinetic-ros-core)
-	[`ros:kinetic-ros-base`](#roskinetic-ros-base)
-	[`ros:kinetic`](#roskinetic)
-	[`ros:latest`](#roslatest)
-	[`ros:kinetic-robot`](#roskinetic-robot)
-	[`ros:kinetic-perception`](#roskinetic-perception)

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:af733eb1e8c128d33a3afb414e17819188de5c6716022b90f4093c2dfa8737fa
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249658461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888c7710ccaaca3e210f45f8b8977196e7668a38e4c1adc5a5c7bb99e0879d85`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:07:04 GMT
ENV ROS_DISTRO=indigo
# Sat, 21 Jan 2017 01:08:31 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:08:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0956dba9e62f6a446d8da7f67bc38a36c0c7a5f944b79eed48e581a49bf51cb9`  
		Last Modified: Sat, 21 Jan 2017 01:43:24 GMT  
		Size: 150.0 MB (149973768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae75004d08873eba9a0d90d30e1bb09f7547a97636a33e91052eaf26bb5a9a0`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:654d5b6f634c3606cebe7a25fa8b3f42c33f0fa6d8051796e19d181eaf757596
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253084870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60254cf26e58b952a2d4ced44528eb25b552ec53897d5be1322d3e9cf67f06cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:07:04 GMT
ENV ROS_DISTRO=indigo
# Sat, 21 Jan 2017 01:08:31 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:08:34 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:12:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:12:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0956dba9e62f6a446d8da7f67bc38a36c0c7a5f944b79eed48e581a49bf51cb9`  
		Last Modified: Sat, 21 Jan 2017 01:43:24 GMT  
		Size: 150.0 MB (149973768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae75004d08873eba9a0d90d30e1bb09f7547a97636a33e91052eaf26bb5a9a0`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1df243cfbd07ba50315486981eff4a7fbda1097f5937bdffe9a5da7c8f18a70`  
		Last Modified: Sat, 21 Jan 2017 01:46:36 GMT  
		Size: 3.4 MB (3426409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:654d5b6f634c3606cebe7a25fa8b3f42c33f0fa6d8051796e19d181eaf757596
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253084870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60254cf26e58b952a2d4ced44528eb25b552ec53897d5be1322d3e9cf67f06cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:07:04 GMT
ENV ROS_DISTRO=indigo
# Sat, 21 Jan 2017 01:08:31 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:08:34 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:12:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:12:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0956dba9e62f6a446d8da7f67bc38a36c0c7a5f944b79eed48e581a49bf51cb9`  
		Last Modified: Sat, 21 Jan 2017 01:43:24 GMT  
		Size: 150.0 MB (149973768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae75004d08873eba9a0d90d30e1bb09f7547a97636a33e91052eaf26bb5a9a0`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1df243cfbd07ba50315486981eff4a7fbda1097f5937bdffe9a5da7c8f18a70`  
		Last Modified: Sat, 21 Jan 2017 01:46:36 GMT  
		Size: 3.4 MB (3426409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:3ef26bc16e9229bec7b299c1f0c4a522f0d68f3de436710906fe6c5235ab1407
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321543440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d148f208b6eebb3bd2241847b80e91a1d5d41bc4a492ba37f3c976c74650ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:07:04 GMT
ENV ROS_DISTRO=indigo
# Sat, 21 Jan 2017 01:08:31 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:08:34 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:12:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:12:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:13:22 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:16:41 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0956dba9e62f6a446d8da7f67bc38a36c0c7a5f944b79eed48e581a49bf51cb9`  
		Last Modified: Sat, 21 Jan 2017 01:43:24 GMT  
		Size: 150.0 MB (149973768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae75004d08873eba9a0d90d30e1bb09f7547a97636a33e91052eaf26bb5a9a0`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1df243cfbd07ba50315486981eff4a7fbda1097f5937bdffe9a5da7c8f18a70`  
		Last Modified: Sat, 21 Jan 2017 01:46:36 GMT  
		Size: 3.4 MB (3426409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b9242efb2b403b20f0ff46fcb4dbbf6499c3ad75b2b801196bafbd99ae12f3`  
		Last Modified: Sat, 21 Jan 2017 01:50:57 GMT  
		Size: 68.5 MB (68458570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:412014e861b98f86939ea71d3356fa57bf63669df452502576463d5cf95e869e
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.7 MB (520685208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b27fe36f2ffb7b15ab210deeef4c5bcc0dc2002ac4eec1b0c547f1f9d70134`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:07:04 GMT
ENV ROS_DISTRO=indigo
# Sat, 21 Jan 2017 01:08:31 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:08:34 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:12:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:12:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:13:22 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:15:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0956dba9e62f6a446d8da7f67bc38a36c0c7a5f944b79eed48e581a49bf51cb9`  
		Last Modified: Sat, 21 Jan 2017 01:43:24 GMT  
		Size: 150.0 MB (149973768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae75004d08873eba9a0d90d30e1bb09f7547a97636a33e91052eaf26bb5a9a0`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1df243cfbd07ba50315486981eff4a7fbda1097f5937bdffe9a5da7c8f18a70`  
		Last Modified: Sat, 21 Jan 2017 01:46:36 GMT  
		Size: 3.4 MB (3426409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673b5cf6f6c1bc483865caa2824e7ad9e3ab0454f6c8c21b489feb16b6b2aff1`  
		Last Modified: Sat, 21 Jan 2017 01:50:10 GMT  
		Size: 267.6 MB (267600338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:6c9ee86398404b350aac5554b6d110ad4d06983f4eacdd4b0e86888797312ecf
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249779046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6f75d17f82b23616f05b7f9b9f5d640b5a3eafae34c845171e661e0851b97e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:08:34 GMT
ENV ROS_DISTRO=jade
# Sat, 21 Jan 2017 01:10:01 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:10:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:10:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71055fda7e14066e02140408b314a81028c313d0024f46fd32d0d94b2aed7190`  
		Last Modified: Sat, 21 Jan 2017 01:44:42 GMT  
		Size: 150.1 MB (150094355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a04ebe02e3de80eecb4f6ffcbefd7a0bf073d12a410ec05dcbc9ec10a40cf`  
		Last Modified: Sat, 21 Jan 2017 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:177a4948c4c55247fe944bdd7a79aa47f98e2aa5d1de471d3a07cfcaeacb3fa7
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253220866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d0f89fa4f605ef9a22484bd30538ba842034eb85e2258ca786d5403b87b156`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:08:34 GMT
ENV ROS_DISTRO=jade
# Sat, 21 Jan 2017 01:10:01 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:10:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:10:03 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:12:51 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:09 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71055fda7e14066e02140408b314a81028c313d0024f46fd32d0d94b2aed7190`  
		Last Modified: Sat, 21 Jan 2017 01:44:42 GMT  
		Size: 150.1 MB (150094355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a04ebe02e3de80eecb4f6ffcbefd7a0bf073d12a410ec05dcbc9ec10a40cf`  
		Last Modified: Sat, 21 Jan 2017 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee055233293ff817ddaae03bc9faa87bd197d368a3b69cbedc85d33096ba71c8`  
		Last Modified: Sat, 21 Jan 2017 01:47:12 GMT  
		Size: 3.4 MB (3441820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:177a4948c4c55247fe944bdd7a79aa47f98e2aa5d1de471d3a07cfcaeacb3fa7
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253220866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d0f89fa4f605ef9a22484bd30538ba842034eb85e2258ca786d5403b87b156`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:08:34 GMT
ENV ROS_DISTRO=jade
# Sat, 21 Jan 2017 01:10:01 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:10:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:10:03 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:12:51 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:09 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71055fda7e14066e02140408b314a81028c313d0024f46fd32d0d94b2aed7190`  
		Last Modified: Sat, 21 Jan 2017 01:44:42 GMT  
		Size: 150.1 MB (150094355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a04ebe02e3de80eecb4f6ffcbefd7a0bf073d12a410ec05dcbc9ec10a40cf`  
		Last Modified: Sat, 21 Jan 2017 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee055233293ff817ddaae03bc9faa87bd197d368a3b69cbedc85d33096ba71c8`  
		Last Modified: Sat, 21 Jan 2017 01:47:12 GMT  
		Size: 3.4 MB (3441820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:d66eefd0dec2eb393de9cffc35a96102e6ca2db55f252e9f9f7294e8761cb4ae
```

-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321316310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eee34367497fd08c7604a7c3c40b8a1c9abe2256fd2be23e13377f5cb564e05`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:08:34 GMT
ENV ROS_DISTRO=jade
# Sat, 21 Jan 2017 01:10:01 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:10:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:10:03 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:12:51 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:09 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:16:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:20:17 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71055fda7e14066e02140408b314a81028c313d0024f46fd32d0d94b2aed7190`  
		Last Modified: Sat, 21 Jan 2017 01:44:42 GMT  
		Size: 150.1 MB (150094355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a04ebe02e3de80eecb4f6ffcbefd7a0bf073d12a410ec05dcbc9ec10a40cf`  
		Last Modified: Sat, 21 Jan 2017 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee055233293ff817ddaae03bc9faa87bd197d368a3b69cbedc85d33096ba71c8`  
		Last Modified: Sat, 21 Jan 2017 01:47:12 GMT  
		Size: 3.4 MB (3441820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4f1e78156e3301ddde70bc91872742772663caf5fa935e4c8780877db34b54`  
		Last Modified: Sat, 21 Jan 2017 01:53:38 GMT  
		Size: 68.1 MB (68095444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:ff7003a9b556b2fbd37819a73b77cd1aadd2dca91a20f18ff2eeb8b5971b9afe
```

-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.6 MB (520624820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565264cce6b4ff86a30612d729deb4c2b3a6e3c47809c2cbf554e1d6839905a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:08:34 GMT
ENV ROS_DISTRO=jade
# Sat, 21 Jan 2017 01:10:01 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:10:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:10:03 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:12:51 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:09 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:16:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:19:23 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71055fda7e14066e02140408b314a81028c313d0024f46fd32d0d94b2aed7190`  
		Last Modified: Sat, 21 Jan 2017 01:44:42 GMT  
		Size: 150.1 MB (150094355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a04ebe02e3de80eecb4f6ffcbefd7a0bf073d12a410ec05dcbc9ec10a40cf`  
		Last Modified: Sat, 21 Jan 2017 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee055233293ff817ddaae03bc9faa87bd197d368a3b69cbedc85d33096ba71c8`  
		Last Modified: Sat, 21 Jan 2017 01:47:12 GMT  
		Size: 3.4 MB (3441820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eaa72f8aaad83d1da4a444ada8fe734445eaa292d5dc07bfc9cd1d953765d51`  
		Last Modified: Sat, 21 Jan 2017 01:52:48 GMT  
		Size: 267.4 MB (267403954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:a7603106c795dc7eb3a292a9bd5326b2913636a6236d3adf09bc2b45456b50b4
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298636757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46bbee946f72937b97d3dfc4026599b1bc1be025e6fe2820060a37f0ad86824`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:10:04 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:10:06 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:10:07 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:10:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:10:10 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:10:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:52 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:10:53 GMT
ENV ROS_DISTRO=kinetic
# Sat, 21 Jan 2017 01:12:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:12:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:12:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:12:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bcf6c8099429131b724d89f8795a2495609e89eb1d11096afb0d88b187513c`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77af3fcece3a266673b0f2d057f95dcec2e28180d8f96a6f6ed9baf28abd6d`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 13.1 KB (13068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05f865dea394b168637b7094f1349fddd27bdc6fdabbf8e3d38f803cc54bd7`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af14333eff237b42e953d62b30d6a50d477489423e5a7ba5c0434825e8ef05`  
		Last Modified: Sat, 21 Jan 2017 01:45:29 GMT  
		Size: 57.6 MB (57648676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390e614be3b54cf8977cdbd8c4be4bded52ca720017eb8f5a7a9832dd21294eb`  
		Last Modified: Sat, 21 Jan 2017 01:45:03 GMT  
		Size: 698.0 KB (697979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692a268e78a6471f9d94dd108051893d39b9911a17949ffba2650f263040a774`  
		Last Modified: Sat, 21 Jan 2017 01:46:12 GMT  
		Size: 189.6 MB (189626844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d9831139419db3b660ea4df09595fd41862a4a2ab28f9d02c33d8c9ee328e`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:63c5d01817d10a3a8ff1be36171bd287fbcc5151e8711b64b9f23b6d9af4c84f
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303281293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f643aa85b1084c0577c4eb0a96049ca7d6f043e5c399df3e1790415f8b6c3292`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:10:04 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:10:06 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:10:07 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:10:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:10:10 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:10:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:52 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:10:53 GMT
ENV ROS_DISTRO=kinetic
# Sat, 21 Jan 2017 01:12:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:12:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:12:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:12:29 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:13:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bcf6c8099429131b724d89f8795a2495609e89eb1d11096afb0d88b187513c`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77af3fcece3a266673b0f2d057f95dcec2e28180d8f96a6f6ed9baf28abd6d`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 13.1 KB (13068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05f865dea394b168637b7094f1349fddd27bdc6fdabbf8e3d38f803cc54bd7`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af14333eff237b42e953d62b30d6a50d477489423e5a7ba5c0434825e8ef05`  
		Last Modified: Sat, 21 Jan 2017 01:45:29 GMT  
		Size: 57.6 MB (57648676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390e614be3b54cf8977cdbd8c4be4bded52ca720017eb8f5a7a9832dd21294eb`  
		Last Modified: Sat, 21 Jan 2017 01:45:03 GMT  
		Size: 698.0 KB (697979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692a268e78a6471f9d94dd108051893d39b9911a17949ffba2650f263040a774`  
		Last Modified: Sat, 21 Jan 2017 01:46:12 GMT  
		Size: 189.6 MB (189626844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d9831139419db3b660ea4df09595fd41862a4a2ab28f9d02c33d8c9ee328e`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a7ef4e646599f39bdd49224cf131e732ba14f1472e55413b22880188d5939a`  
		Last Modified: Sat, 21 Jan 2017 01:47:48 GMT  
		Size: 4.6 MB (4644536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:63c5d01817d10a3a8ff1be36171bd287fbcc5151e8711b64b9f23b6d9af4c84f
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303281293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f643aa85b1084c0577c4eb0a96049ca7d6f043e5c399df3e1790415f8b6c3292`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:10:04 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:10:06 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:10:07 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:10:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:10:10 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:10:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:52 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:10:53 GMT
ENV ROS_DISTRO=kinetic
# Sat, 21 Jan 2017 01:12:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:12:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:12:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:12:29 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:13:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bcf6c8099429131b724d89f8795a2495609e89eb1d11096afb0d88b187513c`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77af3fcece3a266673b0f2d057f95dcec2e28180d8f96a6f6ed9baf28abd6d`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 13.1 KB (13068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05f865dea394b168637b7094f1349fddd27bdc6fdabbf8e3d38f803cc54bd7`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af14333eff237b42e953d62b30d6a50d477489423e5a7ba5c0434825e8ef05`  
		Last Modified: Sat, 21 Jan 2017 01:45:29 GMT  
		Size: 57.6 MB (57648676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390e614be3b54cf8977cdbd8c4be4bded52ca720017eb8f5a7a9832dd21294eb`  
		Last Modified: Sat, 21 Jan 2017 01:45:03 GMT  
		Size: 698.0 KB (697979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692a268e78a6471f9d94dd108051893d39b9911a17949ffba2650f263040a774`  
		Last Modified: Sat, 21 Jan 2017 01:46:12 GMT  
		Size: 189.6 MB (189626844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d9831139419db3b660ea4df09595fd41862a4a2ab28f9d02c33d8c9ee328e`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a7ef4e646599f39bdd49224cf131e732ba14f1472e55413b22880188d5939a`  
		Last Modified: Sat, 21 Jan 2017 01:47:48 GMT  
		Size: 4.6 MB (4644536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:63c5d01817d10a3a8ff1be36171bd287fbcc5151e8711b64b9f23b6d9af4c84f
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303281293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f643aa85b1084c0577c4eb0a96049ca7d6f043e5c399df3e1790415f8b6c3292`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:10:04 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:10:06 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:10:07 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:10:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:10:10 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:10:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:52 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:10:53 GMT
ENV ROS_DISTRO=kinetic
# Sat, 21 Jan 2017 01:12:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:12:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:12:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:12:29 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:13:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bcf6c8099429131b724d89f8795a2495609e89eb1d11096afb0d88b187513c`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77af3fcece3a266673b0f2d057f95dcec2e28180d8f96a6f6ed9baf28abd6d`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 13.1 KB (13068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05f865dea394b168637b7094f1349fddd27bdc6fdabbf8e3d38f803cc54bd7`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af14333eff237b42e953d62b30d6a50d477489423e5a7ba5c0434825e8ef05`  
		Last Modified: Sat, 21 Jan 2017 01:45:29 GMT  
		Size: 57.6 MB (57648676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390e614be3b54cf8977cdbd8c4be4bded52ca720017eb8f5a7a9832dd21294eb`  
		Last Modified: Sat, 21 Jan 2017 01:45:03 GMT  
		Size: 698.0 KB (697979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692a268e78a6471f9d94dd108051893d39b9911a17949ffba2650f263040a774`  
		Last Modified: Sat, 21 Jan 2017 01:46:12 GMT  
		Size: 189.6 MB (189626844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d9831139419db3b660ea4df09595fd41862a4a2ab28f9d02c33d8c9ee328e`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a7ef4e646599f39bdd49224cf131e732ba14f1472e55413b22880188d5939a`  
		Last Modified: Sat, 21 Jan 2017 01:47:48 GMT  
		Size: 4.6 MB (4644536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:06b7fe2953c7d6cb393db51e5c78da6033db183ccef9cac72c8ed4cdfe5ba3c9
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.7 MB (434748349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12b4650f78cc726022b1c16228589d5985213750c3cdb60d4adac59d71451ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:10:04 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:10:06 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:10:07 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:10:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:10:10 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:10:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:52 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:10:53 GMT
ENV ROS_DISTRO=kinetic
# Sat, 21 Jan 2017 01:12:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:12:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:12:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:12:29 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:13:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:20:18 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:25:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bcf6c8099429131b724d89f8795a2495609e89eb1d11096afb0d88b187513c`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77af3fcece3a266673b0f2d057f95dcec2e28180d8f96a6f6ed9baf28abd6d`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 13.1 KB (13068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05f865dea394b168637b7094f1349fddd27bdc6fdabbf8e3d38f803cc54bd7`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af14333eff237b42e953d62b30d6a50d477489423e5a7ba5c0434825e8ef05`  
		Last Modified: Sat, 21 Jan 2017 01:45:29 GMT  
		Size: 57.6 MB (57648676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390e614be3b54cf8977cdbd8c4be4bded52ca720017eb8f5a7a9832dd21294eb`  
		Last Modified: Sat, 21 Jan 2017 01:45:03 GMT  
		Size: 698.0 KB (697979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692a268e78a6471f9d94dd108051893d39b9911a17949ffba2650f263040a774`  
		Last Modified: Sat, 21 Jan 2017 01:46:12 GMT  
		Size: 189.6 MB (189626844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d9831139419db3b660ea4df09595fd41862a4a2ab28f9d02c33d8c9ee328e`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a7ef4e646599f39bdd49224cf131e732ba14f1472e55413b22880188d5939a`  
		Last Modified: Sat, 21 Jan 2017 01:47:48 GMT  
		Size: 4.6 MB (4644536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f23c487d200c963ab0ae3a288cb686ea7bb62d2efd3e2300e1e39f47af6da5`  
		Last Modified: Sat, 21 Jan 2017 01:57:18 GMT  
		Size: 131.5 MB (131467056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:84ed3441727f6cd77d61ed6804b4a4fe2cee2c48e4f81cdf14b7feb7dbe01793
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.9 MB (706928038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4422ba76810dde71903ce44cfb2effe37bcb00ae65cd65a15f77422a1ffa0f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:10:04 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:10:06 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:10:07 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:10:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:10:10 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:10:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:52 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:10:53 GMT
ENV ROS_DISTRO=kinetic
# Sat, 21 Jan 2017 01:12:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:12:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:12:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:12:29 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:13:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:20:18 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:23:51 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bcf6c8099429131b724d89f8795a2495609e89eb1d11096afb0d88b187513c`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77af3fcece3a266673b0f2d057f95dcec2e28180d8f96a6f6ed9baf28abd6d`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 13.1 KB (13068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05f865dea394b168637b7094f1349fddd27bdc6fdabbf8e3d38f803cc54bd7`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af14333eff237b42e953d62b30d6a50d477489423e5a7ba5c0434825e8ef05`  
		Last Modified: Sat, 21 Jan 2017 01:45:29 GMT  
		Size: 57.6 MB (57648676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390e614be3b54cf8977cdbd8c4be4bded52ca720017eb8f5a7a9832dd21294eb`  
		Last Modified: Sat, 21 Jan 2017 01:45:03 GMT  
		Size: 698.0 KB (697979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692a268e78a6471f9d94dd108051893d39b9911a17949ffba2650f263040a774`  
		Last Modified: Sat, 21 Jan 2017 01:46:12 GMT  
		Size: 189.6 MB (189626844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d9831139419db3b660ea4df09595fd41862a4a2ab28f9d02c33d8c9ee328e`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a7ef4e646599f39bdd49224cf131e732ba14f1472e55413b22880188d5939a`  
		Last Modified: Sat, 21 Jan 2017 01:47:48 GMT  
		Size: 4.6 MB (4644536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db49c29b0f7537846e75a6532de1b804980a0d4148169fdf590953d06bc12fcd`  
		Last Modified: Sat, 21 Jan 2017 01:56:10 GMT  
		Size: 403.6 MB (403646745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
