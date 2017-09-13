<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:indigo-ros-core`](#rosindigo-ros-core)
-	[`ros:indigo-ros-core-trusty`](#rosindigo-ros-core-trusty)
-	[`ros:indigo-ros-base`](#rosindigo-ros-base)
-	[`ros:indigo-ros-base-trusty`](#rosindigo-ros-base-trusty)
-	[`ros:indigo`](#rosindigo)
-	[`ros:indigo-robot`](#rosindigo-robot)
-	[`ros:indigo-robot-trusty`](#rosindigo-robot-trusty)
-	[`ros:indigo-perception`](#rosindigo-perception)
-	[`ros:indigo-perception-trusty`](#rosindigo-perception-trusty)
-	[`ros:jade-ros-core`](#rosjade-ros-core)
-	[`ros:jade-ros-core-trusty`](#rosjade-ros-core-trusty)
-	[`ros:jade-ros-base`](#rosjade-ros-base)
-	[`ros:jade-ros-base-trusty`](#rosjade-ros-base-trusty)
-	[`ros:jade`](#rosjade)
-	[`ros:jade-robot`](#rosjade-robot)
-	[`ros:jade-robot-trusty`](#rosjade-robot-trusty)
-	[`ros:jade-perception`](#rosjade-perception)
-	[`ros:jade-perception-trusty`](#rosjade-perception-trusty)
-	[`ros:kinetic-ros-core`](#roskinetic-ros-core)
-	[`ros:kinetic-ros-core-xenial`](#roskinetic-ros-core-xenial)
-	[`ros:kinetic-ros-base`](#roskinetic-ros-base)
-	[`ros:kinetic-ros-base-xenial`](#roskinetic-ros-base-xenial)
-	[`ros:kinetic`](#roskinetic)
-	[`ros:latest`](#roslatest)
-	[`ros:kinetic-robot`](#roskinetic-robot)
-	[`ros:kinetic-robot-xenial`](#roskinetic-robot-xenial)
-	[`ros:kinetic-perception`](#roskinetic-perception)
-	[`ros:kinetic-perception-xenial`](#roskinetic-perception-xenial)
-	[`ros:kinetic-ros-core-jessie`](#roskinetic-ros-core-jessie)
-	[`ros:kinetic-ros-base-jessie`](#roskinetic-ros-base-jessie)
-	[`ros:kinetic-robot-jessie`](#roskinetic-robot-jessie)
-	[`ros:kinetic-perception-jessie`](#roskinetic-perception-jessie)
-	[`ros:lunar-ros-core`](#roslunar-ros-core)
-	[`ros:lunar-ros-core-xenial`](#roslunar-ros-core-xenial)
-	[`ros:lunar-ros-base`](#roslunar-ros-base)
-	[`ros:lunar-ros-base-xenial`](#roslunar-ros-base-xenial)
-	[`ros:lunar`](#roslunar)
-	[`ros:lunar-robot`](#roslunar-robot)
-	[`ros:lunar-robot-xenial`](#roslunar-robot-xenial)
-	[`ros:lunar-perception`](#roslunar-perception)
-	[`ros:lunar-perception-xenial`](#roslunar-perception-xenial)
-	[`ros:lunar-ros-core-stretch`](#roslunar-ros-core-stretch)
-	[`ros:lunar-ros-base-stretch`](#roslunar-ros-base-stretch)
-	[`ros:lunar-robot-stretch`](#roslunar-robot-stretch)
-	[`ros:lunar-perception-stretch`](#roslunar-perception-stretch)

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:68eedc9a93d5bde5d0a0932f726add26608b08589e593612861e37e5aed3f599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:580b53d4b661d10792599376c6868eb2b53a367181765465632c979dbf4543a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266094653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817a0361187e48e82954562b7c09f87f8b118d9b4f5491cb6e5807a24f0fdada`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:68eedc9a93d5bde5d0a0932f726add26608b08589e593612861e37e5aed3f599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:580b53d4b661d10792599376c6868eb2b53a367181765465632c979dbf4543a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266094653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817a0361187e48e82954562b7c09f87f8b118d9b4f5491cb6e5807a24f0fdada`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:00e67323787c1a35df686dbe978a31870183663d39c3c8a326d8061a2a9bb252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:f21b7a897a83471511383d466d0cf432f4fc54ce7d4b3c0239eb007d65a9d335
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270070496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021452c9a99fe8a4c59f062c26d39a45dd975e11989d692a04d131f48425e4b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e0a88a02014b2df9e992972928485a036994eaa84a3e59903e6a3a02c4bca2`  
		Last Modified: Wed, 13 Sep 2017 01:37:02 GMT  
		Size: 4.0 MB (3975843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:00e67323787c1a35df686dbe978a31870183663d39c3c8a326d8061a2a9bb252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:f21b7a897a83471511383d466d0cf432f4fc54ce7d4b3c0239eb007d65a9d335
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270070496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021452c9a99fe8a4c59f062c26d39a45dd975e11989d692a04d131f48425e4b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e0a88a02014b2df9e992972928485a036994eaa84a3e59903e6a3a02c4bca2`  
		Last Modified: Wed, 13 Sep 2017 01:37:02 GMT  
		Size: 4.0 MB (3975843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:00e67323787c1a35df686dbe978a31870183663d39c3c8a326d8061a2a9bb252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:f21b7a897a83471511383d466d0cf432f4fc54ce7d4b3c0239eb007d65a9d335
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270070496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021452c9a99fe8a4c59f062c26d39a45dd975e11989d692a04d131f48425e4b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e0a88a02014b2df9e992972928485a036994eaa84a3e59903e6a3a02c4bca2`  
		Last Modified: Wed, 13 Sep 2017 01:37:02 GMT  
		Size: 4.0 MB (3975843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:d8fb7c52616274afa595fac6420eef8637ecdca80706b2588ebd5646482b5e96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:3915e51a700b8ce48c7095ea6951a988d0528a750eb70d2f22b81683ff8230ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.4 MB (331352897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed88f08ffa40af74025b5f1479ef7d4a582b6e1b0d5c62b98f3e4e437854f93`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:54:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e0a88a02014b2df9e992972928485a036994eaa84a3e59903e6a3a02c4bca2`  
		Last Modified: Wed, 13 Sep 2017 01:37:02 GMT  
		Size: 4.0 MB (3975843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2021fa67f3956bb8f4c138029e5717ba2515dc5df258449345ef7840a5b43e`  
		Last Modified: Wed, 13 Sep 2017 01:37:35 GMT  
		Size: 61.3 MB (61282401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:d8fb7c52616274afa595fac6420eef8637ecdca80706b2588ebd5646482b5e96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:3915e51a700b8ce48c7095ea6951a988d0528a750eb70d2f22b81683ff8230ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.4 MB (331352897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed88f08ffa40af74025b5f1479ef7d4a582b6e1b0d5c62b98f3e4e437854f93`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:54:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e0a88a02014b2df9e992972928485a036994eaa84a3e59903e6a3a02c4bca2`  
		Last Modified: Wed, 13 Sep 2017 01:37:02 GMT  
		Size: 4.0 MB (3975843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2021fa67f3956bb8f4c138029e5717ba2515dc5df258449345ef7840a5b43e`  
		Last Modified: Wed, 13 Sep 2017 01:37:35 GMT  
		Size: 61.3 MB (61282401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:c40d03e470edbbc0f4bbcec3377aef813ab8f7409cd0ad3d221b5b1eb658103a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:1962d29e989c1773e95be625c9dda9056f688096b8cc9574b84a549dbf46acf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.7 MB (534747463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33762c11d7fa2c6fdcea4a72665c20ba72ca31f809dc425f78661300d7e8a8a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:56:29 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e0a88a02014b2df9e992972928485a036994eaa84a3e59903e6a3a02c4bca2`  
		Last Modified: Wed, 13 Sep 2017 01:37:02 GMT  
		Size: 4.0 MB (3975843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f2b6523d645331c9589b4640e829232c547bf67663465fb1a2707b01a372f`  
		Last Modified: Wed, 13 Sep 2017 01:38:53 GMT  
		Size: 264.7 MB (264676967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:c40d03e470edbbc0f4bbcec3377aef813ab8f7409cd0ad3d221b5b1eb658103a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:1962d29e989c1773e95be625c9dda9056f688096b8cc9574b84a549dbf46acf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.7 MB (534747463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33762c11d7fa2c6fdcea4a72665c20ba72ca31f809dc425f78661300d7e8a8a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:56:29 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e0a88a02014b2df9e992972928485a036994eaa84a3e59903e6a3a02c4bca2`  
		Last Modified: Wed, 13 Sep 2017 01:37:02 GMT  
		Size: 4.0 MB (3975843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f2b6523d645331c9589b4640e829232c547bf67663465fb1a2707b01a372f`  
		Last Modified: Wed, 13 Sep 2017 01:38:53 GMT  
		Size: 264.7 MB (264676967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:a8ce57ba2cf36c4a7c4c270a6517fcb0ee359b3f986ba862e3d06f35fe9bfa06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3806e57f1a9c6ae51a85174f12db2d1fed9f8371df9466a58db24797d53c4b83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266229087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d3cb683583ad5c48027d5dc69d7a3c69dc6f18ba5b7fe87c3e70dd9ca37897`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core-trusty`

```console
$ docker pull ros@sha256:a8ce57ba2cf36c4a7c4c270a6517fcb0ee359b3f986ba862e3d06f35fe9bfa06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:3806e57f1a9c6ae51a85174f12db2d1fed9f8371df9466a58db24797d53c4b83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266229087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d3cb683583ad5c48027d5dc69d7a3c69dc6f18ba5b7fe87c3e70dd9ca37897`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:f275639935ed1c18a532fce18c5bb9e673b06281aa0314830ba9351c5634102b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:1da2719a88d7ca05997fafb887f8647a3e472c49aec6fb3f54c5dbedcc9c6c8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270225187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52dc52ae3b8cc4449ff8df883b4290047f598a0d9cc9537a2560887435ae1f38`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:59:11 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952a7cd98960a0fcf043684bbe9ecbc12af8c3b6bc3020b824c351e2adb862`  
		Last Modified: Wed, 13 Sep 2017 01:40:11 GMT  
		Size: 4.0 MB (3996100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base-trusty`

```console
$ docker pull ros@sha256:f275639935ed1c18a532fce18c5bb9e673b06281aa0314830ba9351c5634102b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:1da2719a88d7ca05997fafb887f8647a3e472c49aec6fb3f54c5dbedcc9c6c8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270225187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52dc52ae3b8cc4449ff8df883b4290047f598a0d9cc9537a2560887435ae1f38`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:59:11 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952a7cd98960a0fcf043684bbe9ecbc12af8c3b6bc3020b824c351e2adb862`  
		Last Modified: Wed, 13 Sep 2017 01:40:11 GMT  
		Size: 4.0 MB (3996100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:f275639935ed1c18a532fce18c5bb9e673b06281aa0314830ba9351c5634102b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

```console
$ docker pull ros@sha256:1da2719a88d7ca05997fafb887f8647a3e472c49aec6fb3f54c5dbedcc9c6c8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270225187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52dc52ae3b8cc4449ff8df883b4290047f598a0d9cc9537a2560887435ae1f38`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:59:11 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952a7cd98960a0fcf043684bbe9ecbc12af8c3b6bc3020b824c351e2adb862`  
		Last Modified: Wed, 13 Sep 2017 01:40:11 GMT  
		Size: 4.0 MB (3996100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:e51e7ed5e1adf2bcbd0a3de050fa4bc2e2f99ee88c7c1723186eeea9eec750bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

```console
$ docker pull ros@sha256:c548c9c0603a1ab1d16ed0379cac4282acae3ac0fe94aca151bb1935721a34e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331540478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e347a347d0512eb822011804aa5af519131a82027ea6123afca8424a85d872e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:59:11 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:00:05 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952a7cd98960a0fcf043684bbe9ecbc12af8c3b6bc3020b824c351e2adb862`  
		Last Modified: Wed, 13 Sep 2017 01:40:11 GMT  
		Size: 4.0 MB (3996100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec726cf159128cccb36771c8984caecc386f0803570e358f2a91048ecf73db07`  
		Last Modified: Wed, 13 Sep 2017 01:40:46 GMT  
		Size: 61.3 MB (61315291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot-trusty`

```console
$ docker pull ros@sha256:e51e7ed5e1adf2bcbd0a3de050fa4bc2e2f99ee88c7c1723186eeea9eec750bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:c548c9c0603a1ab1d16ed0379cac4282acae3ac0fe94aca151bb1935721a34e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331540478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e347a347d0512eb822011804aa5af519131a82027ea6123afca8424a85d872e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:59:11 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:00:05 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952a7cd98960a0fcf043684bbe9ecbc12af8c3b6bc3020b824c351e2adb862`  
		Last Modified: Wed, 13 Sep 2017 01:40:11 GMT  
		Size: 4.0 MB (3996100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec726cf159128cccb36771c8984caecc386f0803570e358f2a91048ecf73db07`  
		Last Modified: Wed, 13 Sep 2017 01:40:46 GMT  
		Size: 61.3 MB (61315291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:2ffcaf401c4256b86c3b60445e06977068c4715c7aa517d482fa743ba5b301ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

```console
$ docker pull ros@sha256:51a4e8cb4e46cf6eb75808abcb3272a875c8a8c2bb28ff12d74c73a6e82df908
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.7 MB (533706976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0281f9d2f28f5f0c0f8656c36ae7e55b24efc64fdb6e439d986b8426f0438b20`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:59:11 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:02:55 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952a7cd98960a0fcf043684bbe9ecbc12af8c3b6bc3020b824c351e2adb862`  
		Last Modified: Wed, 13 Sep 2017 01:40:11 GMT  
		Size: 4.0 MB (3996100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b17709ac817de94dddc5f7a71cd49530e2a529f589d2ee29a3d29d15aafbde9`  
		Last Modified: Wed, 13 Sep 2017 01:42:13 GMT  
		Size: 263.5 MB (263481789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception-trusty`

```console
$ docker pull ros@sha256:2ffcaf401c4256b86c3b60445e06977068c4715c7aa517d482fa743ba5b301ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:51a4e8cb4e46cf6eb75808abcb3272a875c8a8c2bb28ff12d74c73a6e82df908
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.7 MB (533706976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0281f9d2f28f5f0c0f8656c36ae7e55b24efc64fdb6e439d986b8426f0438b20`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:59:11 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:02:55 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5952a7cd98960a0fcf043684bbe9ecbc12af8c3b6bc3020b824c351e2adb862`  
		Last Modified: Wed, 13 Sep 2017 01:40:11 GMT  
		Size: 4.0 MB (3996100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b17709ac817de94dddc5f7a71cd49530e2a529f589d2ee29a3d29d15aafbde9`  
		Last Modified: Wed, 13 Sep 2017 01:42:13 GMT  
		Size: 263.5 MB (263481789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:c30db9a29d2cefa858efeae0f1a94e6cbc4e7b31f6bff55f316e83abca6c1124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:e12573fff96838459fca27605db8da832d18dc75e4e2621c26c3ff51a927688c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302200970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101d6763af836e9aa6f34ef8f0354885a652031bfd02eef9560b3159d4cd6d92`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 01:03:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 01:03:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 01:04:00 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 01:04:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 13 Sep 2017 01:05:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:05:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 01:05:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 01:05:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a49206befc92a6db1763f228dd9d5bfbd032b7d0b74821b7cde881d459410`  
		Last Modified: Wed, 13 Sep 2017 01:42:30 GMT  
		Size: 5.4 MB (5362254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd00ef329b7db9d3b05253495cc701279395d0b607effa3d473b673bdc2db099`  
		Last Modified: Wed, 13 Sep 2017 01:42:29 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519bc05a029f7d6f5cc416d1b3ddb8bf5c911bf18d3686db483469633507d1f4`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1803f7f1e147c106ed70614500f521099c33cc2a6bf74cc1b37f365fd0ee4224`  
		Last Modified: Wed, 13 Sep 2017 01:42:51 GMT  
		Size: 55.5 MB (55543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282aa1b2582c88ce7f520487c1981e1ae8da6b5c2c9aa70fedfa6e887e6f6c9`  
		Last Modified: Wed, 13 Sep 2017 01:42:26 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb271987ca6c951e5e19e1f1922223e11b7047a3f752e5ad4d5d86ca83e69e`  
		Last Modified: Wed, 13 Sep 2017 01:43:26 GMT  
		Size: 193.3 MB (193266741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285464ef5dde4533cb260f8fc3fe5f6d8eab7edb1152299b7e492d873e1cb9f`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:f3697652dac0901547caf8c945b1bc0b06a0a655e5d1e41fe122f6be5059b2c9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262926912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828a2d387ac262f0cb6d426cb5f8d61d0ef683b8ed49acd92573a63259dd5e1c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d5e59d2115c5c98c0f51e6bec1c86aa93e55002bdc37542a50d6f47670f6dbf4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275083806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284fa4b5b9157324e6a26962ff866bfb4bd91cfab859a28dbd6094a12e6b4659`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:c30db9a29d2cefa858efeae0f1a94e6cbc4e7b31f6bff55f316e83abca6c1124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:e12573fff96838459fca27605db8da832d18dc75e4e2621c26c3ff51a927688c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302200970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101d6763af836e9aa6f34ef8f0354885a652031bfd02eef9560b3159d4cd6d92`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 01:03:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 01:03:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 01:04:00 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 01:04:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 13 Sep 2017 01:05:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:05:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 01:05:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 01:05:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a49206befc92a6db1763f228dd9d5bfbd032b7d0b74821b7cde881d459410`  
		Last Modified: Wed, 13 Sep 2017 01:42:30 GMT  
		Size: 5.4 MB (5362254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd00ef329b7db9d3b05253495cc701279395d0b607effa3d473b673bdc2db099`  
		Last Modified: Wed, 13 Sep 2017 01:42:29 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519bc05a029f7d6f5cc416d1b3ddb8bf5c911bf18d3686db483469633507d1f4`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1803f7f1e147c106ed70614500f521099c33cc2a6bf74cc1b37f365fd0ee4224`  
		Last Modified: Wed, 13 Sep 2017 01:42:51 GMT  
		Size: 55.5 MB (55543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282aa1b2582c88ce7f520487c1981e1ae8da6b5c2c9aa70fedfa6e887e6f6c9`  
		Last Modified: Wed, 13 Sep 2017 01:42:26 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb271987ca6c951e5e19e1f1922223e11b7047a3f752e5ad4d5d86ca83e69e`  
		Last Modified: Wed, 13 Sep 2017 01:43:26 GMT  
		Size: 193.3 MB (193266741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285464ef5dde4533cb260f8fc3fe5f6d8eab7edb1152299b7e492d873e1cb9f`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f3697652dac0901547caf8c945b1bc0b06a0a655e5d1e41fe122f6be5059b2c9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262926912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828a2d387ac262f0cb6d426cb5f8d61d0ef683b8ed49acd92573a63259dd5e1c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d5e59d2115c5c98c0f51e6bec1c86aa93e55002bdc37542a50d6f47670f6dbf4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275083806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284fa4b5b9157324e6a26962ff866bfb4bd91cfab859a28dbd6094a12e6b4659`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:0561c338d5557d97a4138508dabfba85633e8dedd85e8ce6657e3fa656763625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:8ffedd0663fab7c1202c685b1af90e893fbc315a39e08d49ed5bd317318be25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307116012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a3d4fb777c1b3d64f9a45bcc4e53fb39e3a77fec6a3483716514cc815e7ada`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 01:03:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 01:03:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 01:04:00 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 01:04:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 13 Sep 2017 01:05:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:05:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 01:05:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 01:05:17 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 01:05:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a49206befc92a6db1763f228dd9d5bfbd032b7d0b74821b7cde881d459410`  
		Last Modified: Wed, 13 Sep 2017 01:42:30 GMT  
		Size: 5.4 MB (5362254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd00ef329b7db9d3b05253495cc701279395d0b607effa3d473b673bdc2db099`  
		Last Modified: Wed, 13 Sep 2017 01:42:29 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519bc05a029f7d6f5cc416d1b3ddb8bf5c911bf18d3686db483469633507d1f4`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1803f7f1e147c106ed70614500f521099c33cc2a6bf74cc1b37f365fd0ee4224`  
		Last Modified: Wed, 13 Sep 2017 01:42:51 GMT  
		Size: 55.5 MB (55543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282aa1b2582c88ce7f520487c1981e1ae8da6b5c2c9aa70fedfa6e887e6f6c9`  
		Last Modified: Wed, 13 Sep 2017 01:42:26 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb271987ca6c951e5e19e1f1922223e11b7047a3f752e5ad4d5d86ca83e69e`  
		Last Modified: Wed, 13 Sep 2017 01:43:26 GMT  
		Size: 193.3 MB (193266741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285464ef5dde4533cb260f8fc3fe5f6d8eab7edb1152299b7e492d873e1cb9f`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47aa7609687b7220521f3b2b08e67985b4ed91c3bc0743ffcf5833ce867032b`  
		Last Modified: Wed, 13 Sep 2017 01:43:49 GMT  
		Size: 4.9 MB (4915042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:8cac76fded9e3393bcf6c5605e074829780d1ad58029a0b1f58fd9a3ec23862c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267398971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b055e27c9d23e565669563b84fcfd4b67d660d9a484737c9ef2c1c1280a7e4ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:36:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e19ed6ee30aea78431695136576639ac8eb2f53d7d601926a23f1dc6c709c0`  
		Last Modified: Tue, 12 Sep 2017 21:36:30 GMT  
		Size: 4.5 MB (4472059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9a91fc6b2fa426bd5029f3979a13b273c55b3f5a6b8f573af481bbea2c262e6c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef64a9de99ce939d2ae9c2b1e8b0cacaa6d0f51a860cd659e1cc4db43df0e99b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
# Thu, 17 Aug 2017 14:23:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c3904a51b4227d752087a7ac14b8f4723d4cf86e486f9c8c8e52685f7728d0`  
		Last Modified: Thu, 17 Aug 2017 15:14:41 GMT  
		Size: 4.8 MB (4767716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:0561c338d5557d97a4138508dabfba85633e8dedd85e8ce6657e3fa656763625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:8ffedd0663fab7c1202c685b1af90e893fbc315a39e08d49ed5bd317318be25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307116012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a3d4fb777c1b3d64f9a45bcc4e53fb39e3a77fec6a3483716514cc815e7ada`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 01:03:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 01:03:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 01:04:00 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 01:04:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 13 Sep 2017 01:05:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:05:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 01:05:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 01:05:17 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 01:05:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a49206befc92a6db1763f228dd9d5bfbd032b7d0b74821b7cde881d459410`  
		Last Modified: Wed, 13 Sep 2017 01:42:30 GMT  
		Size: 5.4 MB (5362254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd00ef329b7db9d3b05253495cc701279395d0b607effa3d473b673bdc2db099`  
		Last Modified: Wed, 13 Sep 2017 01:42:29 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519bc05a029f7d6f5cc416d1b3ddb8bf5c911bf18d3686db483469633507d1f4`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1803f7f1e147c106ed70614500f521099c33cc2a6bf74cc1b37f365fd0ee4224`  
		Last Modified: Wed, 13 Sep 2017 01:42:51 GMT  
		Size: 55.5 MB (55543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282aa1b2582c88ce7f520487c1981e1ae8da6b5c2c9aa70fedfa6e887e6f6c9`  
		Last Modified: Wed, 13 Sep 2017 01:42:26 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb271987ca6c951e5e19e1f1922223e11b7047a3f752e5ad4d5d86ca83e69e`  
		Last Modified: Wed, 13 Sep 2017 01:43:26 GMT  
		Size: 193.3 MB (193266741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285464ef5dde4533cb260f8fc3fe5f6d8eab7edb1152299b7e492d873e1cb9f`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47aa7609687b7220521f3b2b08e67985b4ed91c3bc0743ffcf5833ce867032b`  
		Last Modified: Wed, 13 Sep 2017 01:43:49 GMT  
		Size: 4.9 MB (4915042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:8cac76fded9e3393bcf6c5605e074829780d1ad58029a0b1f58fd9a3ec23862c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267398971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b055e27c9d23e565669563b84fcfd4b67d660d9a484737c9ef2c1c1280a7e4ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:36:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e19ed6ee30aea78431695136576639ac8eb2f53d7d601926a23f1dc6c709c0`  
		Last Modified: Tue, 12 Sep 2017 21:36:30 GMT  
		Size: 4.5 MB (4472059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9a91fc6b2fa426bd5029f3979a13b273c55b3f5a6b8f573af481bbea2c262e6c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef64a9de99ce939d2ae9c2b1e8b0cacaa6d0f51a860cd659e1cc4db43df0e99b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
# Thu, 17 Aug 2017 14:23:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c3904a51b4227d752087a7ac14b8f4723d4cf86e486f9c8c8e52685f7728d0`  
		Last Modified: Thu, 17 Aug 2017 15:14:41 GMT  
		Size: 4.8 MB (4767716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:0561c338d5557d97a4138508dabfba85633e8dedd85e8ce6657e3fa656763625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:8ffedd0663fab7c1202c685b1af90e893fbc315a39e08d49ed5bd317318be25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307116012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a3d4fb777c1b3d64f9a45bcc4e53fb39e3a77fec6a3483716514cc815e7ada`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 01:03:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 01:03:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 01:04:00 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 01:04:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 13 Sep 2017 01:05:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:05:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 01:05:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 01:05:17 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 01:05:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a49206befc92a6db1763f228dd9d5bfbd032b7d0b74821b7cde881d459410`  
		Last Modified: Wed, 13 Sep 2017 01:42:30 GMT  
		Size: 5.4 MB (5362254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd00ef329b7db9d3b05253495cc701279395d0b607effa3d473b673bdc2db099`  
		Last Modified: Wed, 13 Sep 2017 01:42:29 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519bc05a029f7d6f5cc416d1b3ddb8bf5c911bf18d3686db483469633507d1f4`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1803f7f1e147c106ed70614500f521099c33cc2a6bf74cc1b37f365fd0ee4224`  
		Last Modified: Wed, 13 Sep 2017 01:42:51 GMT  
		Size: 55.5 MB (55543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282aa1b2582c88ce7f520487c1981e1ae8da6b5c2c9aa70fedfa6e887e6f6c9`  
		Last Modified: Wed, 13 Sep 2017 01:42:26 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb271987ca6c951e5e19e1f1922223e11b7047a3f752e5ad4d5d86ca83e69e`  
		Last Modified: Wed, 13 Sep 2017 01:43:26 GMT  
		Size: 193.3 MB (193266741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285464ef5dde4533cb260f8fc3fe5f6d8eab7edb1152299b7e492d873e1cb9f`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47aa7609687b7220521f3b2b08e67985b4ed91c3bc0743ffcf5833ce867032b`  
		Last Modified: Wed, 13 Sep 2017 01:43:49 GMT  
		Size: 4.9 MB (4915042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:8cac76fded9e3393bcf6c5605e074829780d1ad58029a0b1f58fd9a3ec23862c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267398971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b055e27c9d23e565669563b84fcfd4b67d660d9a484737c9ef2c1c1280a7e4ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:36:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e19ed6ee30aea78431695136576639ac8eb2f53d7d601926a23f1dc6c709c0`  
		Last Modified: Tue, 12 Sep 2017 21:36:30 GMT  
		Size: 4.5 MB (4472059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9a91fc6b2fa426bd5029f3979a13b273c55b3f5a6b8f573af481bbea2c262e6c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef64a9de99ce939d2ae9c2b1e8b0cacaa6d0f51a860cd659e1cc4db43df0e99b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
# Thu, 17 Aug 2017 14:23:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c3904a51b4227d752087a7ac14b8f4723d4cf86e486f9c8c8e52685f7728d0`  
		Last Modified: Thu, 17 Aug 2017 15:14:41 GMT  
		Size: 4.8 MB (4767716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:0561c338d5557d97a4138508dabfba85633e8dedd85e8ce6657e3fa656763625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:8ffedd0663fab7c1202c685b1af90e893fbc315a39e08d49ed5bd317318be25f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307116012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a3d4fb777c1b3d64f9a45bcc4e53fb39e3a77fec6a3483716514cc815e7ada`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 01:03:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 01:03:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 01:04:00 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 01:04:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 13 Sep 2017 01:05:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:05:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 01:05:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 01:05:17 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 01:05:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a49206befc92a6db1763f228dd9d5bfbd032b7d0b74821b7cde881d459410`  
		Last Modified: Wed, 13 Sep 2017 01:42:30 GMT  
		Size: 5.4 MB (5362254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd00ef329b7db9d3b05253495cc701279395d0b607effa3d473b673bdc2db099`  
		Last Modified: Wed, 13 Sep 2017 01:42:29 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519bc05a029f7d6f5cc416d1b3ddb8bf5c911bf18d3686db483469633507d1f4`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1803f7f1e147c106ed70614500f521099c33cc2a6bf74cc1b37f365fd0ee4224`  
		Last Modified: Wed, 13 Sep 2017 01:42:51 GMT  
		Size: 55.5 MB (55543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282aa1b2582c88ce7f520487c1981e1ae8da6b5c2c9aa70fedfa6e887e6f6c9`  
		Last Modified: Wed, 13 Sep 2017 01:42:26 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb271987ca6c951e5e19e1f1922223e11b7047a3f752e5ad4d5d86ca83e69e`  
		Last Modified: Wed, 13 Sep 2017 01:43:26 GMT  
		Size: 193.3 MB (193266741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285464ef5dde4533cb260f8fc3fe5f6d8eab7edb1152299b7e492d873e1cb9f`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47aa7609687b7220521f3b2b08e67985b4ed91c3bc0743ffcf5833ce867032b`  
		Last Modified: Wed, 13 Sep 2017 01:43:49 GMT  
		Size: 4.9 MB (4915042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:8cac76fded9e3393bcf6c5605e074829780d1ad58029a0b1f58fd9a3ec23862c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267398971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b055e27c9d23e565669563b84fcfd4b67d660d9a484737c9ef2c1c1280a7e4ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:36:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e19ed6ee30aea78431695136576639ac8eb2f53d7d601926a23f1dc6c709c0`  
		Last Modified: Tue, 12 Sep 2017 21:36:30 GMT  
		Size: 4.5 MB (4472059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9a91fc6b2fa426bd5029f3979a13b273c55b3f5a6b8f573af481bbea2c262e6c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef64a9de99ce939d2ae9c2b1e8b0cacaa6d0f51a860cd659e1cc4db43df0e99b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
# Thu, 17 Aug 2017 14:23:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c3904a51b4227d752087a7ac14b8f4723d4cf86e486f9c8c8e52685f7728d0`  
		Last Modified: Thu, 17 Aug 2017 15:14:41 GMT  
		Size: 4.8 MB (4767716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:3898e32aad842683af600a2d7df83737f86f302c6792f6f6eb06d54398a94186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:7a5d3ec70e7d77a4c9ddaf4449e3bd8f63e2d1d8a9cb7d8dc9b1425cb6f8064f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.4 MB (446378364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dada402e2159e25c07306abc17ffa7b00ff9d6f6eec07263e36a8655594fd3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 01:03:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 01:03:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 01:04:00 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 01:04:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 13 Sep 2017 01:05:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:05:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 01:05:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 01:05:17 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 01:05:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:07:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a49206befc92a6db1763f228dd9d5bfbd032b7d0b74821b7cde881d459410`  
		Last Modified: Wed, 13 Sep 2017 01:42:30 GMT  
		Size: 5.4 MB (5362254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd00ef329b7db9d3b05253495cc701279395d0b607effa3d473b673bdc2db099`  
		Last Modified: Wed, 13 Sep 2017 01:42:29 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519bc05a029f7d6f5cc416d1b3ddb8bf5c911bf18d3686db483469633507d1f4`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1803f7f1e147c106ed70614500f521099c33cc2a6bf74cc1b37f365fd0ee4224`  
		Last Modified: Wed, 13 Sep 2017 01:42:51 GMT  
		Size: 55.5 MB (55543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282aa1b2582c88ce7f520487c1981e1ae8da6b5c2c9aa70fedfa6e887e6f6c9`  
		Last Modified: Wed, 13 Sep 2017 01:42:26 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb271987ca6c951e5e19e1f1922223e11b7047a3f752e5ad4d5d86ca83e69e`  
		Last Modified: Wed, 13 Sep 2017 01:43:26 GMT  
		Size: 193.3 MB (193266741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285464ef5dde4533cb260f8fc3fe5f6d8eab7edb1152299b7e492d873e1cb9f`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47aa7609687b7220521f3b2b08e67985b4ed91c3bc0743ffcf5833ce867032b`  
		Last Modified: Wed, 13 Sep 2017 01:43:49 GMT  
		Size: 4.9 MB (4915042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761504f62368974bf44daa0da793ebfc9ac9f3132c40254655d8b3b221c8dcab`  
		Last Modified: Wed, 13 Sep 2017 01:44:46 GMT  
		Size: 139.3 MB (139262352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:9ae5582a09a6c75f85e7c52766b13d9f4ca1e785dd7488fdb19425bc57fbb344
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.0 MB (389040476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b137741f813079d787519cf10cb955d7fccf73930bf26e3ef99c8afbb943c00`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:36:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:44:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e19ed6ee30aea78431695136576639ac8eb2f53d7d601926a23f1dc6c709c0`  
		Last Modified: Tue, 12 Sep 2017 21:36:30 GMT  
		Size: 4.5 MB (4472059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9ec958c95316cab7543f664235a08f7074123da387e38e65e6f8dcd8e70637`  
		Last Modified: Tue, 12 Sep 2017 21:38:19 GMT  
		Size: 121.6 MB (121641505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e61b415c49ff81d313848a9ba012ccd88e6bd089b25d5bf189bb36978de94c22
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.6 MB (405558139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4e823cad8e5e2f6d0a8395c0a9643b07d64ad33cc6de02154f36b981653160`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
# Thu, 17 Aug 2017 14:23:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:30:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c3904a51b4227d752087a7ac14b8f4723d4cf86e486f9c8c8e52685f7728d0`  
		Last Modified: Thu, 17 Aug 2017 15:14:41 GMT  
		Size: 4.8 MB (4767716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a174cf9bbdcfbdf380930daf839ba5137f8470b25cdfcc1619c3e301b0a178`  
		Last Modified: Thu, 17 Aug 2017 15:15:51 GMT  
		Size: 125.7 MB (125706617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:3898e32aad842683af600a2d7df83737f86f302c6792f6f6eb06d54398a94186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:7a5d3ec70e7d77a4c9ddaf4449e3bd8f63e2d1d8a9cb7d8dc9b1425cb6f8064f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.4 MB (446378364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dada402e2159e25c07306abc17ffa7b00ff9d6f6eec07263e36a8655594fd3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 01:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 01:03:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 01:03:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 01:03:49 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 01:04:00 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 01:04:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 13 Sep 2017 01:05:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:05:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 01:05:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 01:05:17 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 01:05:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:07:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a49206befc92a6db1763f228dd9d5bfbd032b7d0b74821b7cde881d459410`  
		Last Modified: Wed, 13 Sep 2017 01:42:30 GMT  
		Size: 5.4 MB (5362254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd00ef329b7db9d3b05253495cc701279395d0b607effa3d473b673bdc2db099`  
		Last Modified: Wed, 13 Sep 2017 01:42:29 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519bc05a029f7d6f5cc416d1b3ddb8bf5c911bf18d3686db483469633507d1f4`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1803f7f1e147c106ed70614500f521099c33cc2a6bf74cc1b37f365fd0ee4224`  
		Last Modified: Wed, 13 Sep 2017 01:42:51 GMT  
		Size: 55.5 MB (55543463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0282aa1b2582c88ce7f520487c1981e1ae8da6b5c2c9aa70fedfa6e887e6f6c9`  
		Last Modified: Wed, 13 Sep 2017 01:42:26 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb271987ca6c951e5e19e1f1922223e11b7047a3f752e5ad4d5d86ca83e69e`  
		Last Modified: Wed, 13 Sep 2017 01:43:26 GMT  
		Size: 193.3 MB (193266741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285464ef5dde4533cb260f8fc3fe5f6d8eab7edb1152299b7e492d873e1cb9f`  
		Last Modified: Wed, 13 Sep 2017 01:42:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47aa7609687b7220521f3b2b08e67985b4ed91c3bc0743ffcf5833ce867032b`  
		Last Modified: Wed, 13 Sep 2017 01:43:49 GMT  
		Size: 4.9 MB (4915042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761504f62368974bf44daa0da793ebfc9ac9f3132c40254655d8b3b221c8dcab`  
		Last Modified: Wed, 13 Sep 2017 01:44:46 GMT  
		Size: 139.3 MB (139262352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:9ae5582a09a6c75f85e7c52766b13d9f4ca1e785dd7488fdb19425bc57fbb344
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.0 MB (389040476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b137741f813079d787519cf10cb955d7fccf73930bf26e3ef99c8afbb943c00`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:36:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:44:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e19ed6ee30aea78431695136576639ac8eb2f53d7d601926a23f1dc6c709c0`  
		Last Modified: Tue, 12 Sep 2017 21:36:30 GMT  
		Size: 4.5 MB (4472059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9ec958c95316cab7543f664235a08f7074123da387e38e65e6f8dcd8e70637`  
		Last Modified: Tue, 12 Sep 2017 21:38:19 GMT  
		Size: 121.6 MB (121641505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e61b415c49ff81d313848a9ba012ccd88e6bd089b25d5bf189bb36978de94c22
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.6 MB (405558139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4e823cad8e5e2f6d0a8395c0a9643b07d64ad33cc6de02154f36b981653160`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
# Thu, 17 Aug 2017 14:23:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:30:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c3904a51b4227d752087a7ac14b8f4723d4cf86e486f9c8c8e52685f7728d0`  
		Last Modified: Thu, 17 Aug 2017 15:14:41 GMT  
		Size: 4.8 MB (4767716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a174cf9bbdcfbdf380930daf839ba5137f8470b25cdfcc1619c3e301b0a178`  
		Last Modified: Thu, 17 Aug 2017 15:15:51 GMT  
		Size: 125.7 MB (125706617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:41a6126b788408fdad5fa5f9f6f8b68bddecee703823a718a5b88ac615da0181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:d8d8d66904ae43a173a5768e4c424e04713760f196d70d441a4e8d89688426cb
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.5 MB (694534873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d28a1d267e4d4f6d514f94c3e5d5abe7bc8965f9671d128504dd1f70614aedc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 00:54:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 16 Aug 2017 00:55:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:55:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 00:55:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 00:55:17 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 00:55:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:00:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d881907dda5d53d5a5d28e1bbdad398bad29b94ea930e899702c3ffba3378e13`  
		Last Modified: Wed, 16 Aug 2017 01:42:44 GMT  
		Size: 193.1 MB (193085876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc11f3535f47cfca05879c2eaf0b516632b9c4416aead722a974aeaadff2d6ef`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112706997bfe5d06cda80a327eac1b985679aecd95aa4d36a14f9af10e1e8f35`  
		Last Modified: Wed, 16 Aug 2017 01:43:06 GMT  
		Size: 4.7 MB (4735870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49494896106c08d48d0fba48e25d0c29419fd8bd9a4f7df1f0ce1ad7eba42b89`  
		Last Modified: Wed, 16 Aug 2017 01:46:00 GMT  
		Size: 387.9 MB (387909425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:1195dc0b3921b96afd6b1a3d4a25fbc0a9d250b5babc5382702c99270059000e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.6 MB (604593036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a7bb80da9fc22d530171678d4894ad84e6c444762d0672232a076999cf9a2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:36:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:59:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e19ed6ee30aea78431695136576639ac8eb2f53d7d601926a23f1dc6c709c0`  
		Last Modified: Tue, 12 Sep 2017 21:36:30 GMT  
		Size: 4.5 MB (4472059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73271180b20cfb6534f2da6afefc6364f46f5671fb1d780d57679361f9851f7`  
		Last Modified: Tue, 12 Sep 2017 21:43:06 GMT  
		Size: 337.2 MB (337194065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a1a387496b6eb89203cf23b264bccf432940b6210f36184f7476143c42eea61a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.0 MB (631017487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e280a099d81ed42a7ee2024b3ccb1e258bb6734a1c3e1cfcfec775a8ae58642`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
# Thu, 17 Aug 2017 14:23:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:43:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c3904a51b4227d752087a7ac14b8f4723d4cf86e486f9c8c8e52685f7728d0`  
		Last Modified: Thu, 17 Aug 2017 15:14:41 GMT  
		Size: 4.8 MB (4767716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8396d127b45521c14747586921aa19822e81511eb3c1ee11c90c0286b6c941`  
		Last Modified: Thu, 17 Aug 2017 15:18:15 GMT  
		Size: 351.2 MB (351165965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:41a6126b788408fdad5fa5f9f6f8b68bddecee703823a718a5b88ac615da0181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:d8d8d66904ae43a173a5768e4c424e04713760f196d70d441a4e8d89688426cb
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.5 MB (694534873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d28a1d267e4d4f6d514f94c3e5d5abe7bc8965f9671d128504dd1f70614aedc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 00:54:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 16 Aug 2017 00:55:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:55:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 00:55:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 00:55:17 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 00:55:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:00:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d881907dda5d53d5a5d28e1bbdad398bad29b94ea930e899702c3ffba3378e13`  
		Last Modified: Wed, 16 Aug 2017 01:42:44 GMT  
		Size: 193.1 MB (193085876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc11f3535f47cfca05879c2eaf0b516632b9c4416aead722a974aeaadff2d6ef`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112706997bfe5d06cda80a327eac1b985679aecd95aa4d36a14f9af10e1e8f35`  
		Last Modified: Wed, 16 Aug 2017 01:43:06 GMT  
		Size: 4.7 MB (4735870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49494896106c08d48d0fba48e25d0c29419fd8bd9a4f7df1f0ce1ad7eba42b89`  
		Last Modified: Wed, 16 Aug 2017 01:46:00 GMT  
		Size: 387.9 MB (387909425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:1195dc0b3921b96afd6b1a3d4a25fbc0a9d250b5babc5382702c99270059000e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.6 MB (604593036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a7bb80da9fc22d530171678d4894ad84e6c444762d0672232a076999cf9a2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 20:26:40 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Sep 2017 20:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:35:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 20:35:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 20:35:20 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:36:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:59:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ed4590cf5422852938d070c7dd9c44aa6cf09389b063b89dcb220d37fe1ba`  
		Last Modified: Tue, 12 Sep 2017 21:36:04 GMT  
		Size: 164.7 MB (164666566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39adcf0bad2f69f202b435cbd5a395054a0a8a6f09d493be2f7262605a94e9b5`  
		Last Modified: Tue, 12 Sep 2017 21:33:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e19ed6ee30aea78431695136576639ac8eb2f53d7d601926a23f1dc6c709c0`  
		Last Modified: Tue, 12 Sep 2017 21:36:30 GMT  
		Size: 4.5 MB (4472059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73271180b20cfb6534f2da6afefc6364f46f5671fb1d780d57679361f9851f7`  
		Last Modified: Tue, 12 Sep 2017 21:43:06 GMT  
		Size: 337.2 MB (337194065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a1a387496b6eb89203cf23b264bccf432940b6210f36184f7476143c42eea61a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.0 MB (631017487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e280a099d81ed42a7ee2024b3ccb1e258bb6734a1c3e1cfcfec775a8ae58642`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Aug 2017 14:17:07 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Aug 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:22:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Aug 2017 14:22:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Aug 2017 14:22:16 GMT
CMD ["bash"]
# Thu, 17 Aug 2017 14:23:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 14:43:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141b84014bac13610185aa66cccf0fb21635cc51fc21af65f64b2779fe3ac251`  
		Last Modified: Thu, 17 Aug 2017 15:14:23 GMT  
		Size: 173.9 MB (173919030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f597297cad477e53a198bb4c90d0928b70ebcfbfa2f909865b5d20ff25b7eb`  
		Last Modified: Thu, 17 Aug 2017 15:13:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c3904a51b4227d752087a7ac14b8f4723d4cf86e486f9c8c8e52685f7728d0`  
		Last Modified: Thu, 17 Aug 2017 15:14:41 GMT  
		Size: 4.8 MB (4767716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8396d127b45521c14747586921aa19822e81511eb3c1ee11c90c0286b6c941`  
		Last Modified: Thu, 17 Aug 2017 15:18:15 GMT  
		Size: 351.2 MB (351165965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:59e060e576d14bdcf8ee2ba2539a1e65dcbbcdeacb8a93d478fef84d33fa816e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:6ad9857cd257ce91874c1d535b4df25f8cab129ab685d4358ad7ac5791ca51fe
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290421757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930dc045da3a7f276c0d1a249fc3b62c3604d69bf2e67dd5aa2a1a7e722cddf6`
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

### `ros:kinetic-ros-core-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9be91d5c454965b0643b8217668da71eba4d3353c96e24364cae3f6a4f872d5b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257362255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96322e33ebae649652d9a6d48a9a8bdf63069e71fe0fc2904acdba871b30e3f9`
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

## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:e1a5cbdaedf8dd2ecb0b2eafccd37d3392ebdd9d9a9b8f72f578694be567290d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:8b3e129de1bff10107aa686ec0619606c63001942d3816e25f785192551ff524
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.4 MB (295409649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54fc8049c4731dfa2a041b04af2af21590947f00f0260c6881597c167d61b68e`
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

### `ros:kinetic-ros-base-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c5ebf995828365adf429edc9d342e9e16928144fee9b667c044a130ca9f9a10d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262425199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b2ac46804aa187f6a48a8f0d3a333f51d79dafb730c62f89500c34b13615b8`
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

## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:d53376af07b456b4e5414bf490c5f61a1c8187bcfa4d4dcf17d39e2477aa0739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:3d18678a0c795ece9f5c21f391a031cfff81126161e4ba6cf05819a096c3e6de
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377335203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ccd9e58bc71b84dcc93dbe0db407fdb54b360731a5dcd0c184f7c41503feba`
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
# Fri, 08 Sep 2017 10:06:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:2e5188ed27dabf1c59529a3c03e767215a2d8eb8179aa419dd085d236295461a`  
		Last Modified: Mon, 11 Sep 2017 14:29:45 GMT  
		Size: 81.9 MB (81925554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:85085159646e29dbe46c506bcba617cbd524bceba65bfbf7c2827c0c02bc8df2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327297329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea669f246d41cd54605ab7d117ed56a68ce367872bbbbe78c8b02afd4d5f2d6`
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
# Sat, 09 Sep 2017 02:45:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:da0f70d42c17c537c91694e4b814dca655b7e8dcf04ae64db2d810a206978393`  
		Last Modified: Sat, 09 Sep 2017 03:42:28 GMT  
		Size: 64.9 MB (64872130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:1f1b4cfd2ac95031b76009c40d45c563c10888a54f352764ab54e489a5487cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:de29030d680d28ee596ec7471fcd3ec01fd925ed863bb8373e17b8f02d2b5040
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301868189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae542cfd058dbd51a96c5493b3dc171a8c91a77123c9f98d09a0ddad9cf6da9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:38445aaa5a2bdc223528560333941cea289ffb8a262b20ca3d719bc1c2e84c3f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262951201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e365ad577373c2353ded8218eb4fe2bcd44c6cbb01bc5b007f548c3bd9999f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:581f5c64423a54c64ce88fe7c22ef70c1a0f4301fe8e1e658f1ff515892598b5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275069020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b268b7a44a5614e217e452c2ab8ec1696cb49757f61b62fc5d06ef61cd82b3bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:1f1b4cfd2ac95031b76009c40d45c563c10888a54f352764ab54e489a5487cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:de29030d680d28ee596ec7471fcd3ec01fd925ed863bb8373e17b8f02d2b5040
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301868189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae542cfd058dbd51a96c5493b3dc171a8c91a77123c9f98d09a0ddad9cf6da9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:38445aaa5a2bdc223528560333941cea289ffb8a262b20ca3d719bc1c2e84c3f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262951201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e365ad577373c2353ded8218eb4fe2bcd44c6cbb01bc5b007f548c3bd9999f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:581f5c64423a54c64ce88fe7c22ef70c1a0f4301fe8e1e658f1ff515892598b5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275069020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b268b7a44a5614e217e452c2ab8ec1696cb49757f61b62fc5d06ef61cd82b3bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:41e1e6e6262142b33c9709e75f94f2ee2d296fb2753f02b53bcfd883b2c01633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:108ca9d6013c3d6af8ce971afba8d5e25170a86e5f8b10d2e1afa1c495d82317
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306696993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:133ce87ed3ae5ac78c4038254cfffff15e6b658524f16320eb30effa9106695d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:15:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f848aaab573b35cabd467fd58302b95549d703bd88ba62c3343f08c424d88`  
		Last Modified: Wed, 16 Aug 2017 01:50:44 GMT  
		Size: 4.8 MB (4828804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:5dfb49472650707e868ea981b3987fc25331c4d8904ccce95adb460a3a7e1038
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.9 MB (335940163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df3104108537ad0e039c2672364dfe83502888160e9a3fbc26627090cab18b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:13:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34198c929a1422590b2e40678771cd45bb8a2e7810f0a4688c3110387c946507`  
		Last Modified: Tue, 12 Sep 2017 21:46:49 GMT  
		Size: 73.0 MB (72988962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:32bdf7b91fccb24636b5086a1dfb990ee9d0b90e80b14f961f9a3abe61ec3b3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279932223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b77a25423dfd9b4260a18d22524d9e31ab39f00a0980275555478149ba599`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 14:28:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f03c150122e67a66496c6efbe0219ddfcbf467d0b65e3f9d3d369862835055c`  
		Last Modified: Wed, 16 Aug 2017 15:31:06 GMT  
		Size: 4.9 MB (4863203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:41e1e6e6262142b33c9709e75f94f2ee2d296fb2753f02b53bcfd883b2c01633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:108ca9d6013c3d6af8ce971afba8d5e25170a86e5f8b10d2e1afa1c495d82317
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306696993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:133ce87ed3ae5ac78c4038254cfffff15e6b658524f16320eb30effa9106695d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:15:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f848aaab573b35cabd467fd58302b95549d703bd88ba62c3343f08c424d88`  
		Last Modified: Wed, 16 Aug 2017 01:50:44 GMT  
		Size: 4.8 MB (4828804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:5dfb49472650707e868ea981b3987fc25331c4d8904ccce95adb460a3a7e1038
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.9 MB (335940163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df3104108537ad0e039c2672364dfe83502888160e9a3fbc26627090cab18b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:13:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34198c929a1422590b2e40678771cd45bb8a2e7810f0a4688c3110387c946507`  
		Last Modified: Tue, 12 Sep 2017 21:46:49 GMT  
		Size: 73.0 MB (72988962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:32bdf7b91fccb24636b5086a1dfb990ee9d0b90e80b14f961f9a3abe61ec3b3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279932223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b77a25423dfd9b4260a18d22524d9e31ab39f00a0980275555478149ba599`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 14:28:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f03c150122e67a66496c6efbe0219ddfcbf467d0b65e3f9d3d369862835055c`  
		Last Modified: Wed, 16 Aug 2017 15:31:06 GMT  
		Size: 4.9 MB (4863203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:41e1e6e6262142b33c9709e75f94f2ee2d296fb2753f02b53bcfd883b2c01633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:108ca9d6013c3d6af8ce971afba8d5e25170a86e5f8b10d2e1afa1c495d82317
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306696993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:133ce87ed3ae5ac78c4038254cfffff15e6b658524f16320eb30effa9106695d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:15:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f848aaab573b35cabd467fd58302b95549d703bd88ba62c3343f08c424d88`  
		Last Modified: Wed, 16 Aug 2017 01:50:44 GMT  
		Size: 4.8 MB (4828804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:5dfb49472650707e868ea981b3987fc25331c4d8904ccce95adb460a3a7e1038
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.9 MB (335940163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df3104108537ad0e039c2672364dfe83502888160e9a3fbc26627090cab18b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:13:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34198c929a1422590b2e40678771cd45bb8a2e7810f0a4688c3110387c946507`  
		Last Modified: Tue, 12 Sep 2017 21:46:49 GMT  
		Size: 73.0 MB (72988962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:32bdf7b91fccb24636b5086a1dfb990ee9d0b90e80b14f961f9a3abe61ec3b3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279932223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b77a25423dfd9b4260a18d22524d9e31ab39f00a0980275555478149ba599`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 14:28:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f03c150122e67a66496c6efbe0219ddfcbf467d0b65e3f9d3d369862835055c`  
		Last Modified: Wed, 16 Aug 2017 15:31:06 GMT  
		Size: 4.9 MB (4863203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:e5b02e758eb58c602eff6f3be9c56962c6b6116e1f0b7aca25c864c12324453b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:a1a1ece4bc0760e54ba40b67698893045f2670332770f8c1d38ea20c005f4a5b
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.9 MB (445885852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cef0782a17257cf5f1a9fa08709e7b63c4e99ab2e997ade517ba76c1b65e6ef`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:15:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:16:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f848aaab573b35cabd467fd58302b95549d703bd88ba62c3343f08c424d88`  
		Last Modified: Wed, 16 Aug 2017 01:50:44 GMT  
		Size: 4.8 MB (4828804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9d9d1aa4448e0f8df333ff89ef3dfc7f3cb99c5a1f4290cc95ee2af244ecd9`  
		Last Modified: Wed, 16 Aug 2017 01:51:42 GMT  
		Size: 139.2 MB (139188859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:ef2908a31d1c7d1264f16668ee49df993d33df88c18dbf47cee8103973f20ee0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.0 MB (426011293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054fc4722946dea0e37eea0b3eedd2365bccdb5b5b10e3fc269328f898d92e4b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:13:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:18:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34198c929a1422590b2e40678771cd45bb8a2e7810f0a4688c3110387c946507`  
		Last Modified: Tue, 12 Sep 2017 21:46:49 GMT  
		Size: 73.0 MB (72988962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6df3366c4367723396f8eb2f07e0bb3c71001a41606fcffe9e8815c77b3d760`  
		Last Modified: Tue, 12 Sep 2017 21:48:17 GMT  
		Size: 90.1 MB (90071130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:49543a00b01362116c0e57011aa569074ccd664b7d2068ee6a57f938ddb6f95a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.6 MB (405564697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200de05314e88e62b7f7cb90210f14dcf700344f2e6fad823d837f6002acaf13`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 14:28:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:35:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f03c150122e67a66496c6efbe0219ddfcbf467d0b65e3f9d3d369862835055c`  
		Last Modified: Wed, 16 Aug 2017 15:31:06 GMT  
		Size: 4.9 MB (4863203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ae071165dcbf3d31ce900db191e88101893ef62aed82a33607352cc96a3c92`  
		Last Modified: Wed, 16 Aug 2017 15:32:14 GMT  
		Size: 125.6 MB (125632474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:e5b02e758eb58c602eff6f3be9c56962c6b6116e1f0b7aca25c864c12324453b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:a1a1ece4bc0760e54ba40b67698893045f2670332770f8c1d38ea20c005f4a5b
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.9 MB (445885852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cef0782a17257cf5f1a9fa08709e7b63c4e99ab2e997ade517ba76c1b65e6ef`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:15:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:16:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f848aaab573b35cabd467fd58302b95549d703bd88ba62c3343f08c424d88`  
		Last Modified: Wed, 16 Aug 2017 01:50:44 GMT  
		Size: 4.8 MB (4828804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9d9d1aa4448e0f8df333ff89ef3dfc7f3cb99c5a1f4290cc95ee2af244ecd9`  
		Last Modified: Wed, 16 Aug 2017 01:51:42 GMT  
		Size: 139.2 MB (139188859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:ef2908a31d1c7d1264f16668ee49df993d33df88c18dbf47cee8103973f20ee0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.0 MB (426011293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054fc4722946dea0e37eea0b3eedd2365bccdb5b5b10e3fc269328f898d92e4b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:13:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:18:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34198c929a1422590b2e40678771cd45bb8a2e7810f0a4688c3110387c946507`  
		Last Modified: Tue, 12 Sep 2017 21:46:49 GMT  
		Size: 73.0 MB (72988962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6df3366c4367723396f8eb2f07e0bb3c71001a41606fcffe9e8815c77b3d760`  
		Last Modified: Tue, 12 Sep 2017 21:48:17 GMT  
		Size: 90.1 MB (90071130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:49543a00b01362116c0e57011aa569074ccd664b7d2068ee6a57f938ddb6f95a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.6 MB (405564697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200de05314e88e62b7f7cb90210f14dcf700344f2e6fad823d837f6002acaf13`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 14:28:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:35:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f03c150122e67a66496c6efbe0219ddfcbf467d0b65e3f9d3d369862835055c`  
		Last Modified: Wed, 16 Aug 2017 15:31:06 GMT  
		Size: 4.9 MB (4863203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ae071165dcbf3d31ce900db191e88101893ef62aed82a33607352cc96a3c92`  
		Last Modified: Wed, 16 Aug 2017 15:32:14 GMT  
		Size: 125.6 MB (125632474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:0522675c580599e9345ec784d263bcbe9b7a5945281d760feadfcc18ad64e766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:fba01675d33080325f2978d6df56c91e9929bacd8987627c413649386228b5ac
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.7 MB (694671557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aec7d4d6cbf3080338459deb3933e43d908b13e2b351c9394b2203d6ad02e99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:15:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f848aaab573b35cabd467fd58302b95549d703bd88ba62c3343f08c424d88`  
		Last Modified: Wed, 16 Aug 2017 01:50:44 GMT  
		Size: 4.8 MB (4828804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a18227e434d72cdecd44d4458256e1d6fbf64fbf7fe1e45d82a7319c38e3ed`  
		Last Modified: Wed, 16 Aug 2017 01:53:59 GMT  
		Size: 388.0 MB (387974564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:b16633f6ac4101ef3bf65e8bd0a0c50af1d1706189e532a6debbaddbf60c7fe2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.7 MB (638704807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791c4aa76c501069cd7f4f965923a9e208b058949f3cc2aed66043d4ec308207`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:13:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:32:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34198c929a1422590b2e40678771cd45bb8a2e7810f0a4688c3110387c946507`  
		Last Modified: Tue, 12 Sep 2017 21:46:49 GMT  
		Size: 73.0 MB (72988962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c50b2030c6d9b513fed17d2bd8f796377224671ff03a1e0f181eac0ebb0d66`  
		Last Modified: Tue, 12 Sep 2017 21:51:56 GMT  
		Size: 302.8 MB (302764644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79903f79fa0d6e28a2d47ee8d97c73d24fabcc3bb7430f596c856596a4baed28
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.2 MB (631166721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac7bce752d68fac0cabc0dccc520f5d712b97795710db95538542cd41a25adb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 14:28:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:48:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f03c150122e67a66496c6efbe0219ddfcbf467d0b65e3f9d3d369862835055c`  
		Last Modified: Wed, 16 Aug 2017 15:31:06 GMT  
		Size: 4.9 MB (4863203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8d8e777dd4a44cd36601d2439cbcaec26af80b4e1bcc3a06fc4250d675d480`  
		Last Modified: Wed, 16 Aug 2017 15:34:38 GMT  
		Size: 351.2 MB (351234498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:0522675c580599e9345ec784d263bcbe9b7a5945281d760feadfcc18ad64e766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:fba01675d33080325f2978d6df56c91e9929bacd8987627c413649386228b5ac
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.7 MB (694671557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aec7d4d6cbf3080338459deb3933e43d908b13e2b351c9394b2203d6ad02e99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:15:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f848aaab573b35cabd467fd58302b95549d703bd88ba62c3343f08c424d88`  
		Last Modified: Wed, 16 Aug 2017 01:50:44 GMT  
		Size: 4.8 MB (4828804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a18227e434d72cdecd44d4458256e1d6fbf64fbf7fe1e45d82a7319c38e3ed`  
		Last Modified: Wed, 16 Aug 2017 01:53:59 GMT  
		Size: 388.0 MB (387974564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:b16633f6ac4101ef3bf65e8bd0a0c50af1d1706189e532a6debbaddbf60c7fe2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.7 MB (638704807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791c4aa76c501069cd7f4f965923a9e208b058949f3cc2aed66043d4ec308207`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:13:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:32:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34198c929a1422590b2e40678771cd45bb8a2e7810f0a4688c3110387c946507`  
		Last Modified: Tue, 12 Sep 2017 21:46:49 GMT  
		Size: 73.0 MB (72988962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c50b2030c6d9b513fed17d2bd8f796377224671ff03a1e0f181eac0ebb0d66`  
		Last Modified: Tue, 12 Sep 2017 21:51:56 GMT  
		Size: 302.8 MB (302764644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79903f79fa0d6e28a2d47ee8d97c73d24fabcc3bb7430f596c856596a4baed28
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.2 MB (631166721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac7bce752d68fac0cabc0dccc520f5d712b97795710db95538542cd41a25adb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 14:28:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:48:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f03c150122e67a66496c6efbe0219ddfcbf467d0b65e3f9d3d369862835055c`  
		Last Modified: Wed, 16 Aug 2017 15:31:06 GMT  
		Size: 4.9 MB (4863203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8d8e777dd4a44cd36601d2439cbcaec26af80b4e1bcc3a06fc4250d675d480`  
		Last Modified: Wed, 16 Aug 2017 15:34:38 GMT  
		Size: 351.2 MB (351234498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:fec060aece45afc9563f4d09cefe26d873aed433d06b5b79dc06a608d47c23a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e86f4da1c7d8a52cb8498f5e219051a8fb8c6633be24e79cb964a3200af9765b
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.3 MB (369334176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed857d9f9df45f3ba124ca7949d772c022314cf1b4b3598f5d3f92d8d85ed3df`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:16:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:16:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 08 Sep 2017 10:16:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 08 Sep 2017 10:17:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LC_ALL=C.UTF-8
# Fri, 08 Sep 2017 10:17:13 GMT
RUN rosdep init     && rosdep update
# Fri, 08 Sep 2017 10:17:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 08 Sep 2017 10:18:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:18:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 08 Sep 2017 10:18:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 08 Sep 2017 10:18:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0668963ee9e4eb45d3f4b5b3f63b1959b4350738429be8bae458531331c87d2`  
		Last Modified: Mon, 11 Sep 2017 14:31:32 GMT  
		Size: 7.0 MB (7030081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd6f833f6fbd8c50d8a1b9f3f7fc0744f0e5944246b7d3de497bca56ad7bd17`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66404c74f7795afe361e73d56824b8a5309e4f9cfef3558033afb28d76fbce9d`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68c2317f3554e6d0c2f7198af72729551baeb5e092be07784d9fff5ff445e63`  
		Last Modified: Mon, 11 Sep 2017 14:31:53 GMT  
		Size: 64.7 MB (64672566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697e183c8fb5207639adcec972aef038c34936c7f76bb9d67a5999b7c615c7d8`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 758.9 KB (758883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08b9e98fd2bf7e3ca474a9babe52f8c6bed8335a97a5c35f69348dc20c75fd`  
		Last Modified: Mon, 11 Sep 2017 14:32:37 GMT  
		Size: 251.7 MB (251745361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fe8bf533d47ba13343cf08eaded36fede4d6d631a42616e4fb18885fa8c6b`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 195.0 B  
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

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:677cd6452ebc0f6728e1b7883118d064e73d810197a7c9a1c7b3fbe0121b6b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c00fbd0e4d1525bfac8590904ed72f38cd8469fce6bd070879bcb217dbdb7c53
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.5 MB (491530129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6276f3a61846de2ada9c77171351ace4aa9c5c7e4fb6ffecfc43c89183bfeaca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:16:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:16:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 08 Sep 2017 10:16:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 08 Sep 2017 10:17:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LC_ALL=C.UTF-8
# Fri, 08 Sep 2017 10:17:13 GMT
RUN rosdep init     && rosdep update
# Fri, 08 Sep 2017 10:17:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 08 Sep 2017 10:18:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:18:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 08 Sep 2017 10:18:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 08 Sep 2017 10:18:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:20:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0668963ee9e4eb45d3f4b5b3f63b1959b4350738429be8bae458531331c87d2`  
		Last Modified: Mon, 11 Sep 2017 14:31:32 GMT  
		Size: 7.0 MB (7030081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd6f833f6fbd8c50d8a1b9f3f7fc0744f0e5944246b7d3de497bca56ad7bd17`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66404c74f7795afe361e73d56824b8a5309e4f9cfef3558033afb28d76fbce9d`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68c2317f3554e6d0c2f7198af72729551baeb5e092be07784d9fff5ff445e63`  
		Last Modified: Mon, 11 Sep 2017 14:31:53 GMT  
		Size: 64.7 MB (64672566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697e183c8fb5207639adcec972aef038c34936c7f76bb9d67a5999b7c615c7d8`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 758.9 KB (758883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08b9e98fd2bf7e3ca474a9babe52f8c6bed8335a97a5c35f69348dc20c75fd`  
		Last Modified: Mon, 11 Sep 2017 14:32:37 GMT  
		Size: 251.7 MB (251745361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fe8bf533d47ba13343cf08eaded36fede4d6d631a42616e4fb18885fa8c6b`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2e48e6972bfc4adbb1664eedadccfee230f1b1cc348d27266e13600aecb1b`  
		Last Modified: Mon, 11 Sep 2017 14:37:05 GMT  
		Size: 122.2 MB (122195953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:11b0bd636abb58ab8b1e86f7d7b80a8e9e5d1579e1c740b33913ec240eae59b0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.9 MB (434935312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94dd878dba478ea0e6ee3af2e0ef4f73f44226d47f237021ecb3c3e667fbe9d`
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
# Sat, 09 Sep 2017 03:20:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ee0622ca2800e6092b0d95d64e2be63f3fd2c38caad477fb22febdd6e0c56e55`  
		Last Modified: Sat, 09 Sep 2017 03:47:01 GMT  
		Size: 116.0 MB (116009513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:f1fbebbcf5146c7b3a8245f08a8887f7fb1877c6ec182e044d79bdcdd1219e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:0811b2d15313729d366dbd5bccafc67536ff6ff00c01b6885fb86fe694730bcd
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.0 MB (551951549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b3b9753c572a5742a29ae41bb828c79d6c38aad53bdbc0ecdb54c57c2ff30cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:16:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:16:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 08 Sep 2017 10:16:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 08 Sep 2017 10:17:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LC_ALL=C.UTF-8
# Fri, 08 Sep 2017 10:17:13 GMT
RUN rosdep init     && rosdep update
# Fri, 08 Sep 2017 10:17:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 08 Sep 2017 10:18:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:18:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 08 Sep 2017 10:18:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 08 Sep 2017 10:18:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:20:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0668963ee9e4eb45d3f4b5b3f63b1959b4350738429be8bae458531331c87d2`  
		Last Modified: Mon, 11 Sep 2017 14:31:32 GMT  
		Size: 7.0 MB (7030081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd6f833f6fbd8c50d8a1b9f3f7fc0744f0e5944246b7d3de497bca56ad7bd17`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66404c74f7795afe361e73d56824b8a5309e4f9cfef3558033afb28d76fbce9d`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68c2317f3554e6d0c2f7198af72729551baeb5e092be07784d9fff5ff445e63`  
		Last Modified: Mon, 11 Sep 2017 14:31:53 GMT  
		Size: 64.7 MB (64672566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697e183c8fb5207639adcec972aef038c34936c7f76bb9d67a5999b7c615c7d8`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 758.9 KB (758883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08b9e98fd2bf7e3ca474a9babe52f8c6bed8335a97a5c35f69348dc20c75fd`  
		Last Modified: Mon, 11 Sep 2017 14:32:37 GMT  
		Size: 251.7 MB (251745361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fe8bf533d47ba13343cf08eaded36fede4d6d631a42616e4fb18885fa8c6b`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2e48e6972bfc4adbb1664eedadccfee230f1b1cc348d27266e13600aecb1b`  
		Last Modified: Mon, 11 Sep 2017 14:37:05 GMT  
		Size: 122.2 MB (122195953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b343f4b5e8bfddeec406f586a95a9d5277354ad8aaa73d4cd5c03354108aa17`  
		Last Modified: Mon, 11 Sep 2017 14:37:43 GMT  
		Size: 60.4 MB (60421420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a6ba5bcaf32429159df53ca48d537ba5ce4eef72339421cdadb8ce5cb7ae8037
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.4 MB (492437288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26102525f5ca2213e14334d41c78721ab985f6ba9bb1386e8c97018c8ea1aa75`
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
# Sat, 09 Sep 2017 03:20:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:24:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ee0622ca2800e6092b0d95d64e2be63f3fd2c38caad477fb22febdd6e0c56e55`  
		Last Modified: Sat, 09 Sep 2017 03:47:01 GMT  
		Size: 116.0 MB (116009513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00392fdf1b9ef9ac6a677b467135156a562662dc343260536e87d0151164bde`  
		Last Modified: Sat, 09 Sep 2017 03:47:36 GMT  
		Size: 57.5 MB (57501976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:04e5123726e5c6e3b41d8b2e3ff34df2afec4169115a7b648f779e7f418a96a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:a79e84c6defd94afe05059d3dd804e6906d244391f6ca3433683afa5e324a067
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.4 MB (900415459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcbd865a85ca818d0186c7423ff7431da8ad4377e1c6afbb572b352a14336a4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:16:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:16:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 08 Sep 2017 10:16:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 08 Sep 2017 10:17:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LC_ALL=C.UTF-8
# Fri, 08 Sep 2017 10:17:13 GMT
RUN rosdep init     && rosdep update
# Fri, 08 Sep 2017 10:17:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 08 Sep 2017 10:18:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:18:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 08 Sep 2017 10:18:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 08 Sep 2017 10:18:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:20:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:30:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0668963ee9e4eb45d3f4b5b3f63b1959b4350738429be8bae458531331c87d2`  
		Last Modified: Mon, 11 Sep 2017 14:31:32 GMT  
		Size: 7.0 MB (7030081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd6f833f6fbd8c50d8a1b9f3f7fc0744f0e5944246b7d3de497bca56ad7bd17`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66404c74f7795afe361e73d56824b8a5309e4f9cfef3558033afb28d76fbce9d`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68c2317f3554e6d0c2f7198af72729551baeb5e092be07784d9fff5ff445e63`  
		Last Modified: Mon, 11 Sep 2017 14:31:53 GMT  
		Size: 64.7 MB (64672566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697e183c8fb5207639adcec972aef038c34936c7f76bb9d67a5999b7c615c7d8`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 758.9 KB (758883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08b9e98fd2bf7e3ca474a9babe52f8c6bed8335a97a5c35f69348dc20c75fd`  
		Last Modified: Mon, 11 Sep 2017 14:32:37 GMT  
		Size: 251.7 MB (251745361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fe8bf533d47ba13343cf08eaded36fede4d6d631a42616e4fb18885fa8c6b`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2e48e6972bfc4adbb1664eedadccfee230f1b1cc348d27266e13600aecb1b`  
		Last Modified: Mon, 11 Sep 2017 14:37:05 GMT  
		Size: 122.2 MB (122195953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7ef2da8f714cb47bbec2b5f685eee9d74810bfc6a08f4545a4f8c7e7c8f920`  
		Last Modified: Mon, 11 Sep 2017 14:39:40 GMT  
		Size: 408.9 MB (408885330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:365604819573740b08d83179cc04656b85371c97c69da5b056a192c53a0d81f2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.8 MB (804845160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26624fb648d294ba95bd9f3e21ac19fa83892c7d0ea430573b2bbec8ec96547`
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
# Sat, 09 Sep 2017 03:20:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:40:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ee0622ca2800e6092b0d95d64e2be63f3fd2c38caad477fb22febdd6e0c56e55`  
		Last Modified: Sat, 09 Sep 2017 03:47:01 GMT  
		Size: 116.0 MB (116009513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27868226f7e7f3f95cf9cfa0e1b059d551c384e118c489edf028770ccc487fc0`  
		Last Modified: Sat, 09 Sep 2017 03:50:07 GMT  
		Size: 369.9 MB (369909848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
