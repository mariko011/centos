<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:indigo`](#rosindigo)
-	[`ros:indigo-perception`](#rosindigo-perception)
-	[`ros:indigo-perception-trusty`](#rosindigo-perception-trusty)
-	[`ros:indigo-robot`](#rosindigo-robot)
-	[`ros:indigo-robot-trusty`](#rosindigo-robot-trusty)
-	[`ros:indigo-ros-base`](#rosindigo-ros-base)
-	[`ros:indigo-ros-base-trusty`](#rosindigo-ros-base-trusty)
-	[`ros:indigo-ros-core`](#rosindigo-ros-core)
-	[`ros:indigo-ros-core-trusty`](#rosindigo-ros-core-trusty)
-	[`ros:jade`](#rosjade)
-	[`ros:jade-perception`](#rosjade-perception)
-	[`ros:jade-perception-trusty`](#rosjade-perception-trusty)
-	[`ros:jade-robot`](#rosjade-robot)
-	[`ros:jade-robot-trusty`](#rosjade-robot-trusty)
-	[`ros:jade-ros-base`](#rosjade-ros-base)
-	[`ros:jade-ros-base-trusty`](#rosjade-ros-base-trusty)
-	[`ros:jade-ros-core`](#rosjade-ros-core)
-	[`ros:jade-ros-core-trusty`](#rosjade-ros-core-trusty)
-	[`ros:kinetic`](#roskinetic)
-	[`ros:kinetic-perception`](#roskinetic-perception)
-	[`ros:kinetic-perception-jessie`](#roskinetic-perception-jessie)
-	[`ros:kinetic-perception-xenial`](#roskinetic-perception-xenial)
-	[`ros:kinetic-robot`](#roskinetic-robot)
-	[`ros:kinetic-robot-jessie`](#roskinetic-robot-jessie)
-	[`ros:kinetic-robot-xenial`](#roskinetic-robot-xenial)
-	[`ros:kinetic-ros-base`](#roskinetic-ros-base)
-	[`ros:kinetic-ros-base-jessie`](#roskinetic-ros-base-jessie)
-	[`ros:kinetic-ros-base-xenial`](#roskinetic-ros-base-xenial)
-	[`ros:kinetic-ros-core`](#roskinetic-ros-core)
-	[`ros:kinetic-ros-core-jessie`](#roskinetic-ros-core-jessie)
-	[`ros:kinetic-ros-core-xenial`](#roskinetic-ros-core-xenial)
-	[`ros:latest`](#roslatest)
-	[`ros:lunar`](#roslunar)
-	[`ros:lunar-perception`](#roslunar-perception)
-	[`ros:lunar-perception-stretch`](#roslunar-perception-stretch)
-	[`ros:lunar-perception-xenial`](#roslunar-perception-xenial)
-	[`ros:lunar-perception-zesty`](#roslunar-perception-zesty)
-	[`ros:lunar-robot`](#roslunar-robot)
-	[`ros:lunar-robot-stretch`](#roslunar-robot-stretch)
-	[`ros:lunar-robot-xenial`](#roslunar-robot-xenial)
-	[`ros:lunar-robot-zesty`](#roslunar-robot-zesty)
-	[`ros:lunar-ros-base`](#roslunar-ros-base)
-	[`ros:lunar-ros-base-stretch`](#roslunar-ros-base-stretch)
-	[`ros:lunar-ros-base-xenial`](#roslunar-ros-base-xenial)
-	[`ros:lunar-ros-base-zesty`](#roslunar-ros-base-zesty)
-	[`ros:lunar-ros-core`](#roslunar-ros-core)
-	[`ros:lunar-ros-core-stretch`](#roslunar-ros-core-stretch)
-	[`ros:lunar-ros-core-xenial`](#roslunar-ros-core-xenial)
-	[`ros:lunar-ros-core-zesty`](#roslunar-ros-core-zesty)

## `ros:indigo`

```console
$ docker pull ros@sha256:fe1cfd20d4e5f94ed524f5c4d3d78e22a2435f3081222a2c8c1c441af1f5aab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:ee72b53ff2127b58ac684eea2d5887e509bc5ca200d0f51fc1f1da42842d14f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270037414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70d2bad629ac729ff0bb3e497e4cb659c4f029dc7af7c8ff1d4f092965c65ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:34:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe8f1bbdfc46b0ec2c51e8a8cd99076063022efba9b802472c10dbf740334e`  
		Last Modified: Sat, 04 Nov 2017 20:18:45 GMT  
		Size: 4.0 MB (3976142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:c4f5acc80ffb264a51629c6787cc1a6c0bfcb6ba84a7b63d2ff88b8f31ed3ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:c8753b051cceb3f86f0b691ddb4e5336cf752e2bfe30527cddbf3dec52035b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.7 MB (534709086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2e65147978153a3b048dc9978c36951d54128e5938175c375458e73d11fe16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:34:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:39:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe8f1bbdfc46b0ec2c51e8a8cd99076063022efba9b802472c10dbf740334e`  
		Last Modified: Sat, 04 Nov 2017 20:18:45 GMT  
		Size: 4.0 MB (3976142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df537e26cd2081b1aa02a0ccc99cf6be98e2e15056bc2367dfe97a0dc655860f`  
		Last Modified: Sat, 04 Nov 2017 20:20:28 GMT  
		Size: 264.7 MB (264671672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:c4f5acc80ffb264a51629c6787cc1a6c0bfcb6ba84a7b63d2ff88b8f31ed3ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:c8753b051cceb3f86f0b691ddb4e5336cf752e2bfe30527cddbf3dec52035b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.7 MB (534709086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2e65147978153a3b048dc9978c36951d54128e5938175c375458e73d11fe16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:34:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:39:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe8f1bbdfc46b0ec2c51e8a8cd99076063022efba9b802472c10dbf740334e`  
		Last Modified: Sat, 04 Nov 2017 20:18:45 GMT  
		Size: 4.0 MB (3976142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df537e26cd2081b1aa02a0ccc99cf6be98e2e15056bc2367dfe97a0dc655860f`  
		Last Modified: Sat, 04 Nov 2017 20:20:28 GMT  
		Size: 264.7 MB (264671672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:0378776d52d80c79d92443dcf76c1016cfb40b123a50600fc25fcfe5d8936ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:05abecf9e86eb05ed33d580f9b760b7f98b6583ed323113157c60537b7cabf6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331319716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f21683028cc42b7f6a3ab4d6f0da47111c1ba804a4ab79fcff06bb0e37c96b5d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:34:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe8f1bbdfc46b0ec2c51e8a8cd99076063022efba9b802472c10dbf740334e`  
		Last Modified: Sat, 04 Nov 2017 20:18:45 GMT  
		Size: 4.0 MB (3976142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f0e1f66e1a25e05239733bf2d56818563c2955f5d88445a66a8e06aaa8037`  
		Last Modified: Sat, 04 Nov 2017 20:19:18 GMT  
		Size: 61.3 MB (61282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:0378776d52d80c79d92443dcf76c1016cfb40b123a50600fc25fcfe5d8936ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:05abecf9e86eb05ed33d580f9b760b7f98b6583ed323113157c60537b7cabf6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331319716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f21683028cc42b7f6a3ab4d6f0da47111c1ba804a4ab79fcff06bb0e37c96b5d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:34:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe8f1bbdfc46b0ec2c51e8a8cd99076063022efba9b802472c10dbf740334e`  
		Last Modified: Sat, 04 Nov 2017 20:18:45 GMT  
		Size: 4.0 MB (3976142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f0e1f66e1a25e05239733bf2d56818563c2955f5d88445a66a8e06aaa8037`  
		Last Modified: Sat, 04 Nov 2017 20:19:18 GMT  
		Size: 61.3 MB (61282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:fe1cfd20d4e5f94ed524f5c4d3d78e22a2435f3081222a2c8c1c441af1f5aab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:ee72b53ff2127b58ac684eea2d5887e509bc5ca200d0f51fc1f1da42842d14f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270037414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70d2bad629ac729ff0bb3e497e4cb659c4f029dc7af7c8ff1d4f092965c65ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:34:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe8f1bbdfc46b0ec2c51e8a8cd99076063022efba9b802472c10dbf740334e`  
		Last Modified: Sat, 04 Nov 2017 20:18:45 GMT  
		Size: 4.0 MB (3976142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:fe1cfd20d4e5f94ed524f5c4d3d78e22a2435f3081222a2c8c1c441af1f5aab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:ee72b53ff2127b58ac684eea2d5887e509bc5ca200d0f51fc1f1da42842d14f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270037414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70d2bad629ac729ff0bb3e497e4cb659c4f029dc7af7c8ff1d4f092965c65ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:34:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe8f1bbdfc46b0ec2c51e8a8cd99076063022efba9b802472c10dbf740334e`  
		Last Modified: Sat, 04 Nov 2017 20:18:45 GMT  
		Size: 4.0 MB (3976142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:8f64106255edfa0d67b1659cad95b32d2a80cf0ae4b6b26a6d6540683c70e660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:cb59c30d4a453b5f35bc64e5932cc8f23149fa224a69d7e4d342f1aa6d76422d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266061272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c03958eaad08a73a529b3c9c691bddfa663ed1d4c72653eb7cfae7da46007e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:8f64106255edfa0d67b1659cad95b32d2a80cf0ae4b6b26a6d6540683c70e660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:cb59c30d4a453b5f35bc64e5932cc8f23149fa224a69d7e4d342f1aa6d76422d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266061272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c03958eaad08a73a529b3c9c691bddfa663ed1d4c72653eb7cfae7da46007e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:89c7a74410e48eccbf5a3c6f635c56f688bfe708c566b3cff8792c29fc771909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

```console
$ docker pull ros@sha256:113f4b6238bea02eb2e15117d92b51eb7120de78dc2cadf25d452705be167b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270192675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337489004bb10156a603d1fa90d6d739c8d74612813378571190c1b9c3bd2697`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:43:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c676e44a41b8ddb7fd748c6dee2a5c9700c57005868e6ec031de4269d3faa`  
		Last Modified: Sat, 04 Nov 2017 20:21:41 GMT  
		Size: 4.0 MB (3996227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:c6b6fc0c82604fb740dbf94a608e544fee7a6077c579bafa60829ca855dac450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

```console
$ docker pull ros@sha256:eb0c4ac663f6f56d5274185a2858b71cbd12fdaa365fd4ee764907f0978aa383
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.7 MB (533681199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3ecab578ac758ecf9852b09186af7c3d9607036d7274506199f32833c3813e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:43:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:49:21 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c676e44a41b8ddb7fd748c6dee2a5c9700c57005868e6ec031de4269d3faa`  
		Last Modified: Sat, 04 Nov 2017 20:21:41 GMT  
		Size: 4.0 MB (3996227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b3f17d74b3b2f21a65ad83b955a965ac36dba06aad07e64d534b4e1ee56cb7`  
		Last Modified: Sat, 04 Nov 2017 20:23:31 GMT  
		Size: 263.5 MB (263488524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception-trusty`

```console
$ docker pull ros@sha256:c6b6fc0c82604fb740dbf94a608e544fee7a6077c579bafa60829ca855dac450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:eb0c4ac663f6f56d5274185a2858b71cbd12fdaa365fd4ee764907f0978aa383
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.7 MB (533681199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3ecab578ac758ecf9852b09186af7c3d9607036d7274506199f32833c3813e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:43:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:49:21 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c676e44a41b8ddb7fd748c6dee2a5c9700c57005868e6ec031de4269d3faa`  
		Last Modified: Sat, 04 Nov 2017 20:21:41 GMT  
		Size: 4.0 MB (3996227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b3f17d74b3b2f21a65ad83b955a965ac36dba06aad07e64d534b4e1ee56cb7`  
		Last Modified: Sat, 04 Nov 2017 20:23:31 GMT  
		Size: 263.5 MB (263488524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:dcca774f72e2755af5de1fb3f0e48eb9d354bdfca543bfdb907cb522db7773a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

```console
$ docker pull ros@sha256:32f65aa52301adb54cf9d30c0ec726f4b75e6185637b60bc8fd3e8a2770b5b6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331504663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07fd6fe0b32ce687b3246b5fbb218e5093495b985099fcf1fc477db0af2f943`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:43:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:44:42 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c676e44a41b8ddb7fd748c6dee2a5c9700c57005868e6ec031de4269d3faa`  
		Last Modified: Sat, 04 Nov 2017 20:21:41 GMT  
		Size: 4.0 MB (3996227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fe930e85cd8389f21b60ab50bc0877742d3ab779b26d0f606f55fd981b56c8`  
		Last Modified: Sat, 04 Nov 2017 20:22:16 GMT  
		Size: 61.3 MB (61311988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot-trusty`

```console
$ docker pull ros@sha256:dcca774f72e2755af5de1fb3f0e48eb9d354bdfca543bfdb907cb522db7773a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:32f65aa52301adb54cf9d30c0ec726f4b75e6185637b60bc8fd3e8a2770b5b6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331504663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07fd6fe0b32ce687b3246b5fbb218e5093495b985099fcf1fc477db0af2f943`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:43:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:44:42 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c676e44a41b8ddb7fd748c6dee2a5c9700c57005868e6ec031de4269d3faa`  
		Last Modified: Sat, 04 Nov 2017 20:21:41 GMT  
		Size: 4.0 MB (3996227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fe930e85cd8389f21b60ab50bc0877742d3ab779b26d0f606f55fd981b56c8`  
		Last Modified: Sat, 04 Nov 2017 20:22:16 GMT  
		Size: 61.3 MB (61311988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:89c7a74410e48eccbf5a3c6f635c56f688bfe708c566b3cff8792c29fc771909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:113f4b6238bea02eb2e15117d92b51eb7120de78dc2cadf25d452705be167b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270192675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337489004bb10156a603d1fa90d6d739c8d74612813378571190c1b9c3bd2697`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:43:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c676e44a41b8ddb7fd748c6dee2a5c9700c57005868e6ec031de4269d3faa`  
		Last Modified: Sat, 04 Nov 2017 20:21:41 GMT  
		Size: 4.0 MB (3996227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base-trusty`

```console
$ docker pull ros@sha256:89c7a74410e48eccbf5a3c6f635c56f688bfe708c566b3cff8792c29fc771909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:113f4b6238bea02eb2e15117d92b51eb7120de78dc2cadf25d452705be167b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270192675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337489004bb10156a603d1fa90d6d739c8d74612813378571190c1b9c3bd2697`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:43:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c676e44a41b8ddb7fd748c6dee2a5c9700c57005868e6ec031de4269d3faa`  
		Last Modified: Sat, 04 Nov 2017 20:21:41 GMT  
		Size: 4.0 MB (3996227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:d23726d4009e630c204b4de32d0b6e2914d0668754c367cf3fe0c9cf7f29d9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:168aae88cc78dc322b17fd50137326d259fb73834544fe18b0a34763c78fc89a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266196448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:868a9e430dcd550789b725445a01f504bd63197e3143c7cde7678c7752806319`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core-trusty`

```console
$ docker pull ros@sha256:d23726d4009e630c204b4de32d0b6e2914d0668754c367cf3fe0c9cf7f29d9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:168aae88cc78dc322b17fd50137326d259fb73834544fe18b0a34763c78fc89a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266196448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:868a9e430dcd550789b725445a01f504bd63197e3143c7cde7678c7752806319`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:ebb409980068a604418ec8e447b5590e90cdaf6fdee5be123e8a955bed04ba9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:a2c66357690507900c49ad998a9739c3028155aaf868fe250ea20e3444c69496
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307478237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252e1862fc0fa1080f697ef83b736902a871b3dcba8d04a19900cd3765bad25f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:55:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4eef5efe8bffdc36da3b79578951ba6beedb075a348b65df4fd160ff4294e7`  
		Last Modified: Sat, 04 Nov 2017 20:26:57 GMT  
		Size: 4.9 MB (4915280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:7eae34ce6b55c710554bfd4127c9f022c1264f77f0e1290e2b798e3f53184bf8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267651193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb5ad7615a3d9bb992a7588728cc294da89168d5aa17deadaa80d89ef97050`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b503323c77021d84dfd19bba8ba759cb1cadf533c24880858e45bae42af4a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280042141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60303c1fa5784ec5121865ff3926e8deba40e42a8b6a91c501230be9e825cb21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:b4bac60444fc3e5e4aee2ba6b71e535c6663f2a059cf97f576cb817938d9923f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:64f0248837faad51dd41897bea0627ac833c5890cb4c727aa2535f772f1d3503
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.4 MB (695410270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88de8b48779cbaf88148c3603ec9ff2ba6d32fe9c726427f7d139f2d4c928325`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:55:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:00:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4eef5efe8bffdc36da3b79578951ba6beedb075a348b65df4fd160ff4294e7`  
		Last Modified: Sat, 04 Nov 2017 20:26:57 GMT  
		Size: 4.9 MB (4915280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9af1265960bba52cae18b00fe53e1a55a5fd9d936f1ad6930e8f50b3fd26d0`  
		Last Modified: Sat, 04 Nov 2017 20:29:26 GMT  
		Size: 387.9 MB (387932033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:630be5435f344784abd282f7a76cfaa1f4a4055143bbcf947eecd38b18cdfbf6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.8 MB (604840316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1e2f9cbb6b8f8726135fe54d8e8954a8c4a01f8b413c3546b05f0bacd09ef0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa6e687cc6f10213fb6ac19c84e42cbd7f87a89c1ac63e003307b955a8a416b`  
		Last Modified: Wed, 11 Oct 2017 13:26:15 GMT  
		Size: 337.2 MB (337189123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1b433e8195bdad444763e46fc4bdb9ec66a6558a75bd61ac4d3a2a4c63bd1602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.2 MB (631206522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189beadc42fb136995638939c9fcecdf429ec3157ed85c0fd809b0253a476bc1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:08:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a426d8aa05561708cbe55d62473f76f2a352cb784a7240c8243c06cd04b3f935`  
		Last Modified: Wed, 11 Oct 2017 15:48:51 GMT  
		Size: 351.2 MB (351164381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-jessie`

```console
$ docker pull ros@sha256:f9a0696edb86ed631036d536c13a0db74f26689baa5c4b9b83cbc42ed9b4bb70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-perception-jessie` - linux; amd64

```console
$ docker pull ros@sha256:20f74809c9bd077ec753685e818c09c8dbd243653cffbac8f92441f58160391a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **579.4 MB (579428920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296a82eeba06b53b4fd631e83142e706edfb8b6e1bb52ef1a250aa4e0c8e851c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:21:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:21:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:22:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:22:38 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:22:38 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:24:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:24:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:24:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:24:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:25:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:29:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0ae9a636a926e9bd468eb854e794ba7d7b9b5b83450a93d83f09b4d81a439`  
		Last Modified: Sat, 04 Nov 2017 08:09:05 GMT  
		Size: 33.8 MB (33762049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43dfed508eccd10a2cd98e1b7f0547c458f6090d31410d246d1e29733d66564`  
		Last Modified: Sat, 04 Nov 2017 08:08:48 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33652d70832942c4dbfb9d842ccb32134497a71976008b4d0a40440264174b`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b632622dfe4f0a078e1b7c9184f911928f51a68db654b081ff7d52d3a9095`  
		Last Modified: Sat, 04 Nov 2017 08:09:14 GMT  
		Size: 46.3 MB (46339112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beac456cab26649fc8c2c467dc1ce22187c499c5d26fede98f11b69d5646938`  
		Last Modified: Sat, 04 Nov 2017 08:08:46 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0febbfa2b96b1b3b4fb2125075b30ad0b66cf6cbd6bba652300b5f6adbb6e9b`  
		Last Modified: Sat, 04 Nov 2017 08:09:53 GMT  
		Size: 157.2 MB (157219096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bf73adf927e962949e8319d2bea0d98db8cb88d68be9b60e8cccdabbe0442`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18a60295cf9ed6ef58f6639b2aff479fc44179c17e8b8e140e7f7fe9db5d594`  
		Last Modified: Sat, 04 Nov 2017 08:10:08 GMT  
		Size: 5.2 MB (5226253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ebf16b0b17a91d9f07de9408218499fbff96a0fdfb364ba1a20349ffb722f3`  
		Last Modified: Sat, 04 Nov 2017 08:11:50 GMT  
		Size: 283.5 MB (283519137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aeea70a016853a6276f87ab441538ff2bf1daf2ac13770bea575a45984944ae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.6 MB (502635497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82768816db3736b1b86df9d40c3464f1b29c53f55d5e447a1d476027cdefe03b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:24:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 05:24:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 05:31:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:31:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 05:31:19 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 05:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 05:32:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 05:42:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:42:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 05:42:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 05:42:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:43:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:07:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a0e32c1b2f2a67dbfad8623465e456ea2dcfd2f437519bc410ba7d4309e7`  
		Last Modified: Tue, 10 Oct 2017 06:56:43 GMT  
		Size: 32.1 MB (32144208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32418b9644e3e3bcaebd80cae720123c7e69300df6492f406d36fda986848f2d`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7403be4847b73b2ed977eb3b1033568eacb60aa9311c46238dbfb252c36367e`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8bc7346a1b1e5d6a0bfbf912f05b222f94ae8f5ad53459637940ed752bea3`  
		Last Modified: Tue, 10 Oct 2017 06:57:20 GMT  
		Size: 44.0 MB (44036516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aff210063002397f556b1e2a11a12603b996412e81c112d3005a186efe7b08`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 760.2 KB (760214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd439c8e2df7fe2a14848eef1e8c2be800dcd3c23ed558ff192485b939579f`  
		Last Modified: Tue, 10 Oct 2017 06:58:10 GMT  
		Size: 130.5 MB (130498440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3779df0d71b7db3d8c37939d122589ca167bb9dd80dafb6a03e63e4727c1a`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e7f4a6b40c3fef37db2f055f377162d11accecb2d6269c91c41657f241b33`  
		Last Modified: Tue, 10 Oct 2017 06:58:51 GMT  
		Size: 5.1 MB (5062708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993f5e4b7ae8cd039dec643241f616896558c728d13bcec7cfa5804a3a1289ce`  
		Last Modified: Tue, 10 Oct 2017 07:01:05 GMT  
		Size: 240.2 MB (240202255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:b4bac60444fc3e5e4aee2ba6b71e535c6663f2a059cf97f576cb817938d9923f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:64f0248837faad51dd41897bea0627ac833c5890cb4c727aa2535f772f1d3503
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.4 MB (695410270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88de8b48779cbaf88148c3603ec9ff2ba6d32fe9c726427f7d139f2d4c928325`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:55:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:00:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4eef5efe8bffdc36da3b79578951ba6beedb075a348b65df4fd160ff4294e7`  
		Last Modified: Sat, 04 Nov 2017 20:26:57 GMT  
		Size: 4.9 MB (4915280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9af1265960bba52cae18b00fe53e1a55a5fd9d936f1ad6930e8f50b3fd26d0`  
		Last Modified: Sat, 04 Nov 2017 20:29:26 GMT  
		Size: 387.9 MB (387932033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:630be5435f344784abd282f7a76cfaa1f4a4055143bbcf947eecd38b18cdfbf6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.8 MB (604840316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1e2f9cbb6b8f8726135fe54d8e8954a8c4a01f8b413c3546b05f0bacd09ef0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa6e687cc6f10213fb6ac19c84e42cbd7f87a89c1ac63e003307b955a8a416b`  
		Last Modified: Wed, 11 Oct 2017 13:26:15 GMT  
		Size: 337.2 MB (337189123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1b433e8195bdad444763e46fc4bdb9ec66a6558a75bd61ac4d3a2a4c63bd1602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.2 MB (631206522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189beadc42fb136995638939c9fcecdf429ec3157ed85c0fd809b0253a476bc1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:08:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a426d8aa05561708cbe55d62473f76f2a352cb784a7240c8243c06cd04b3f935`  
		Last Modified: Wed, 11 Oct 2017 15:48:51 GMT  
		Size: 351.2 MB (351164381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:4fe563fb8a034bf211cc3803973c68637edc9ae85a4d60c92e5614eaa99172a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:815b2742e3d1e773fa0c687fd5f42407d7a221063b795d98d262fc3ac41ce556
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.8 MB (446811178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3118b57c8e900d7f91ffdc0366f2d9d6084e532beaa3ad7d7a00aecd9c2d7c90`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:55:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:56:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4eef5efe8bffdc36da3b79578951ba6beedb075a348b65df4fd160ff4294e7`  
		Last Modified: Sat, 04 Nov 2017 20:26:57 GMT  
		Size: 4.9 MB (4915280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3797606736a8c9bbb82d1f78035f6ea7b485d7e7b740b0479088e3f01c86ae45`  
		Last Modified: Sat, 04 Nov 2017 20:27:53 GMT  
		Size: 139.3 MB (139332941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:df121277676c6a035b0906d183e9cabdcad58e0b71e556efd234c6c5efb74624
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.3 MB (389306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1ada52fa4185a7e7f66dd2ae17f5a4df1d3956356b05031efc261c953da968`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:12:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676b5d2b82c50fe46b0d86a23499dbe6cdf8266b63c9450c762833d2b1c27cf9`  
		Last Modified: Wed, 11 Oct 2017 13:24:30 GMT  
		Size: 121.7 MB (121655548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:beed036ab5ea2e10d925258ec1ad8cbd4605ff2eb891b9d67388251f9a244462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 MB (405749714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8d43832f7e605cc10cbdd3404c0f53e2b35a78bfe21818ebfbe69bd9162a84`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:52:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d40f427c62b342e3cf70774e8a44a468e407aaf9eaefc258dbe454f52783f6b`  
		Last Modified: Wed, 11 Oct 2017 15:46:14 GMT  
		Size: 125.7 MB (125707573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:0d111e2f616084c3edf3a52476c262bc74d6466dc3d3be26bffbd81bc05eb4c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:b529b20341b4a674ce6914ccd6a238bb3cb6f7400f1c30c49dad2e0e5bd48a2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377835594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76148ea2ead4e2c8dfc07b7cdd2c7b5d225054f181c4dc96572143da2e47171a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:21:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:21:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:22:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:22:38 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:22:38 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:24:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:24:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:24:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:24:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:25:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:26:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0ae9a636a926e9bd468eb854e794ba7d7b9b5b83450a93d83f09b4d81a439`  
		Last Modified: Sat, 04 Nov 2017 08:09:05 GMT  
		Size: 33.8 MB (33762049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43dfed508eccd10a2cd98e1b7f0547c458f6090d31410d246d1e29733d66564`  
		Last Modified: Sat, 04 Nov 2017 08:08:48 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33652d70832942c4dbfb9d842ccb32134497a71976008b4d0a40440264174b`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b632622dfe4f0a078e1b7c9184f911928f51a68db654b081ff7d52d3a9095`  
		Last Modified: Sat, 04 Nov 2017 08:09:14 GMT  
		Size: 46.3 MB (46339112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beac456cab26649fc8c2c467dc1ce22187c499c5d26fede98f11b69d5646938`  
		Last Modified: Sat, 04 Nov 2017 08:08:46 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0febbfa2b96b1b3b4fb2125075b30ad0b66cf6cbd6bba652300b5f6adbb6e9b`  
		Last Modified: Sat, 04 Nov 2017 08:09:53 GMT  
		Size: 157.2 MB (157219096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bf73adf927e962949e8319d2bea0d98db8cb88d68be9b60e8cccdabbe0442`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18a60295cf9ed6ef58f6639b2aff479fc44179c17e8b8e140e7f7fe9db5d594`  
		Last Modified: Sat, 04 Nov 2017 08:10:08 GMT  
		Size: 5.2 MB (5226253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b0b3c59ea44eebbab81c23854853152b44013fc4760db63fe6864c5787e9c1`  
		Last Modified: Sat, 04 Nov 2017 08:10:43 GMT  
		Size: 81.9 MB (81925811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2faa9707586a2b668be8c1a30536b599d33ec20cbc8ebde54b8a9671880effbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327304432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b102cd92b1b9a05b80e02c26348a2e883f5e92465ff2bf56a36687e25c1012e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:24:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 05:24:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 05:31:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:31:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 05:31:19 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 05:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 05:32:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 05:42:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:42:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 05:42:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 05:42:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:43:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:50:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a0e32c1b2f2a67dbfad8623465e456ea2dcfd2f437519bc410ba7d4309e7`  
		Last Modified: Tue, 10 Oct 2017 06:56:43 GMT  
		Size: 32.1 MB (32144208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32418b9644e3e3bcaebd80cae720123c7e69300df6492f406d36fda986848f2d`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7403be4847b73b2ed977eb3b1033568eacb60aa9311c46238dbfb252c36367e`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8bc7346a1b1e5d6a0bfbf912f05b222f94ae8f5ad53459637940ed752bea3`  
		Last Modified: Tue, 10 Oct 2017 06:57:20 GMT  
		Size: 44.0 MB (44036516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aff210063002397f556b1e2a11a12603b996412e81c112d3005a186efe7b08`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 760.2 KB (760214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd439c8e2df7fe2a14848eef1e8c2be800dcd3c23ed558ff192485b939579f`  
		Last Modified: Tue, 10 Oct 2017 06:58:10 GMT  
		Size: 130.5 MB (130498440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3779df0d71b7db3d8c37939d122589ca167bb9dd80dafb6a03e63e4727c1a`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e7f4a6b40c3fef37db2f055f377162d11accecb2d6269c91c41657f241b33`  
		Last Modified: Tue, 10 Oct 2017 06:58:51 GMT  
		Size: 5.1 MB (5062708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f45091a1817e9f4797836f2e28a76408756eadb10f8bd3f173cefc78f40637`  
		Last Modified: Tue, 10 Oct 2017 06:59:30 GMT  
		Size: 64.9 MB (64871190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:4fe563fb8a034bf211cc3803973c68637edc9ae85a4d60c92e5614eaa99172a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:815b2742e3d1e773fa0c687fd5f42407d7a221063b795d98d262fc3ac41ce556
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.8 MB (446811178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3118b57c8e900d7f91ffdc0366f2d9d6084e532beaa3ad7d7a00aecd9c2d7c90`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:55:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:56:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4eef5efe8bffdc36da3b79578951ba6beedb075a348b65df4fd160ff4294e7`  
		Last Modified: Sat, 04 Nov 2017 20:26:57 GMT  
		Size: 4.9 MB (4915280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3797606736a8c9bbb82d1f78035f6ea7b485d7e7b740b0479088e3f01c86ae45`  
		Last Modified: Sat, 04 Nov 2017 20:27:53 GMT  
		Size: 139.3 MB (139332941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:df121277676c6a035b0906d183e9cabdcad58e0b71e556efd234c6c5efb74624
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.3 MB (389306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1ada52fa4185a7e7f66dd2ae17f5a4df1d3956356b05031efc261c953da968`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:12:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676b5d2b82c50fe46b0d86a23499dbe6cdf8266b63c9450c762833d2b1c27cf9`  
		Last Modified: Wed, 11 Oct 2017 13:24:30 GMT  
		Size: 121.7 MB (121655548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:beed036ab5ea2e10d925258ec1ad8cbd4605ff2eb891b9d67388251f9a244462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 MB (405749714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8d43832f7e605cc10cbdd3404c0f53e2b35a78bfe21818ebfbe69bd9162a84`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:52:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d40f427c62b342e3cf70774e8a44a468e407aaf9eaefc258dbe454f52783f6b`  
		Last Modified: Wed, 11 Oct 2017 15:46:14 GMT  
		Size: 125.7 MB (125707573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:ebb409980068a604418ec8e447b5590e90cdaf6fdee5be123e8a955bed04ba9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:a2c66357690507900c49ad998a9739c3028155aaf868fe250ea20e3444c69496
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307478237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252e1862fc0fa1080f697ef83b736902a871b3dcba8d04a19900cd3765bad25f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:55:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4eef5efe8bffdc36da3b79578951ba6beedb075a348b65df4fd160ff4294e7`  
		Last Modified: Sat, 04 Nov 2017 20:26:57 GMT  
		Size: 4.9 MB (4915280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:7eae34ce6b55c710554bfd4127c9f022c1264f77f0e1290e2b798e3f53184bf8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267651193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb5ad7615a3d9bb992a7588728cc294da89168d5aa17deadaa80d89ef97050`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b503323c77021d84dfd19bba8ba759cb1cadf533c24880858e45bae42af4a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280042141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60303c1fa5784ec5121865ff3926e8deba40e42a8b6a91c501230be9e825cb21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:2624e0b3edcc23b26c06b9934d1b987f39a744c3258e521721fc09355aab75a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:1f4d4a40aa7f3a95def333435e039db66bb0fcdf408249a1dd3340759320db66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295909783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d3d1654bc26209133549e8752bee6a0ed0c9a5b3b247a8e8c6bbeca32e3828`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:21:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:21:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:22:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:22:38 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:22:38 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:24:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:24:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:24:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:24:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:25:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0ae9a636a926e9bd468eb854e794ba7d7b9b5b83450a93d83f09b4d81a439`  
		Last Modified: Sat, 04 Nov 2017 08:09:05 GMT  
		Size: 33.8 MB (33762049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43dfed508eccd10a2cd98e1b7f0547c458f6090d31410d246d1e29733d66564`  
		Last Modified: Sat, 04 Nov 2017 08:08:48 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33652d70832942c4dbfb9d842ccb32134497a71976008b4d0a40440264174b`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b632622dfe4f0a078e1b7c9184f911928f51a68db654b081ff7d52d3a9095`  
		Last Modified: Sat, 04 Nov 2017 08:09:14 GMT  
		Size: 46.3 MB (46339112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beac456cab26649fc8c2c467dc1ce22187c499c5d26fede98f11b69d5646938`  
		Last Modified: Sat, 04 Nov 2017 08:08:46 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0febbfa2b96b1b3b4fb2125075b30ad0b66cf6cbd6bba652300b5f6adbb6e9b`  
		Last Modified: Sat, 04 Nov 2017 08:09:53 GMT  
		Size: 157.2 MB (157219096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bf73adf927e962949e8319d2bea0d98db8cb88d68be9b60e8cccdabbe0442`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18a60295cf9ed6ef58f6639b2aff479fc44179c17e8b8e140e7f7fe9db5d594`  
		Last Modified: Sat, 04 Nov 2017 08:10:08 GMT  
		Size: 5.2 MB (5226253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1212f2d3432ae36eef1353a1dcb75647139c49f01a23901fc56c90eb8bef908f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262433242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb97fc56d7f9fd0b14d56af12677c8213585c99f90d4921582c20c89cf54bde`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:24:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 05:24:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 05:31:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:31:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 05:31:19 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 05:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 05:32:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 05:42:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:42:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 05:42:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 05:42:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:43:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a0e32c1b2f2a67dbfad8623465e456ea2dcfd2f437519bc410ba7d4309e7`  
		Last Modified: Tue, 10 Oct 2017 06:56:43 GMT  
		Size: 32.1 MB (32144208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32418b9644e3e3bcaebd80cae720123c7e69300df6492f406d36fda986848f2d`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7403be4847b73b2ed977eb3b1033568eacb60aa9311c46238dbfb252c36367e`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8bc7346a1b1e5d6a0bfbf912f05b222f94ae8f5ad53459637940ed752bea3`  
		Last Modified: Tue, 10 Oct 2017 06:57:20 GMT  
		Size: 44.0 MB (44036516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aff210063002397f556b1e2a11a12603b996412e81c112d3005a186efe7b08`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 760.2 KB (760214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd439c8e2df7fe2a14848eef1e8c2be800dcd3c23ed558ff192485b939579f`  
		Last Modified: Tue, 10 Oct 2017 06:58:10 GMT  
		Size: 130.5 MB (130498440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3779df0d71b7db3d8c37939d122589ca167bb9dd80dafb6a03e63e4727c1a`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e7f4a6b40c3fef37db2f055f377162d11accecb2d6269c91c41657f241b33`  
		Last Modified: Tue, 10 Oct 2017 06:58:51 GMT  
		Size: 5.1 MB (5062708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:ebb409980068a604418ec8e447b5590e90cdaf6fdee5be123e8a955bed04ba9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:a2c66357690507900c49ad998a9739c3028155aaf868fe250ea20e3444c69496
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307478237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252e1862fc0fa1080f697ef83b736902a871b3dcba8d04a19900cd3765bad25f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:55:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4eef5efe8bffdc36da3b79578951ba6beedb075a348b65df4fd160ff4294e7`  
		Last Modified: Sat, 04 Nov 2017 20:26:57 GMT  
		Size: 4.9 MB (4915280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:7eae34ce6b55c710554bfd4127c9f022c1264f77f0e1290e2b798e3f53184bf8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267651193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb5ad7615a3d9bb992a7588728cc294da89168d5aa17deadaa80d89ef97050`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b503323c77021d84dfd19bba8ba759cb1cadf533c24880858e45bae42af4a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280042141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60303c1fa5784ec5121865ff3926e8deba40e42a8b6a91c501230be9e825cb21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:b9dffd2da869bb851bcbc476410cc8af9d6c0d00abfd404fc97ada7a416bb4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:48f77dabdd333990558af85028719bacc5ed5788bec3db523a67b3a5a246a9d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302562957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff737feeb570c71962d673d586f199c62a9a88fd60b6f4039bdb4b588a7ac7d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:afc15e2d59156c952385e208341bfac193799193a8388a5c469ba8280e6bbf22
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263178919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2799e658f5f008c1cb247d5efed3d686591fa0637967ee80724c7cea583c97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5502edf5f9666b3845d2a91f5cbe59b3323c2f65d6fd79e673d84184bbd11ba5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275273195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3427228a200f7df20d7e248487912d9e40c8f2ad40e8f8d4c97431b91794d3e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:2654f3194f098f3fd7be61d617a8c289f5bcc2489a213dcc718bf6a9c88785af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:9251f7cb611b3922f0504881e430bcc428874ebb0cca1f7da04a82a1bb75daf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.7 MB (290683530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e257e400a32369da0bd4fdb28b28fa040a734ba087a64d3f2e0d9cae43adf5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:21:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:21:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:22:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:22:38 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:22:38 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:24:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:24:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:24:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:24:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0ae9a636a926e9bd468eb854e794ba7d7b9b5b83450a93d83f09b4d81a439`  
		Last Modified: Sat, 04 Nov 2017 08:09:05 GMT  
		Size: 33.8 MB (33762049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43dfed508eccd10a2cd98e1b7f0547c458f6090d31410d246d1e29733d66564`  
		Last Modified: Sat, 04 Nov 2017 08:08:48 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33652d70832942c4dbfb9d842ccb32134497a71976008b4d0a40440264174b`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b632622dfe4f0a078e1b7c9184f911928f51a68db654b081ff7d52d3a9095`  
		Last Modified: Sat, 04 Nov 2017 08:09:14 GMT  
		Size: 46.3 MB (46339112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beac456cab26649fc8c2c467dc1ce22187c499c5d26fede98f11b69d5646938`  
		Last Modified: Sat, 04 Nov 2017 08:08:46 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0febbfa2b96b1b3b4fb2125075b30ad0b66cf6cbd6bba652300b5f6adbb6e9b`  
		Last Modified: Sat, 04 Nov 2017 08:09:53 GMT  
		Size: 157.2 MB (157219096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bf73adf927e962949e8319d2bea0d98db8cb88d68be9b60e8cccdabbe0442`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:500a43f425b290a8138a38d00397f90d0e54aeaa7e10939350e655b59f813a13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257370534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db83930fdfdea9618bcdb910cbde8a6da1b6a471416d1c6599a507838f55d3e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:24:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 05:24:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 05:31:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:31:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 05:31:19 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 05:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 05:32:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 05:42:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:42:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 05:42:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 05:42:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a0e32c1b2f2a67dbfad8623465e456ea2dcfd2f437519bc410ba7d4309e7`  
		Last Modified: Tue, 10 Oct 2017 06:56:43 GMT  
		Size: 32.1 MB (32144208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32418b9644e3e3bcaebd80cae720123c7e69300df6492f406d36fda986848f2d`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7403be4847b73b2ed977eb3b1033568eacb60aa9311c46238dbfb252c36367e`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8bc7346a1b1e5d6a0bfbf912f05b222f94ae8f5ad53459637940ed752bea3`  
		Last Modified: Tue, 10 Oct 2017 06:57:20 GMT  
		Size: 44.0 MB (44036516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aff210063002397f556b1e2a11a12603b996412e81c112d3005a186efe7b08`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 760.2 KB (760214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd439c8e2df7fe2a14848eef1e8c2be800dcd3c23ed558ff192485b939579f`  
		Last Modified: Tue, 10 Oct 2017 06:58:10 GMT  
		Size: 130.5 MB (130498440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3779df0d71b7db3d8c37939d122589ca167bb9dd80dafb6a03e63e4727c1a`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:b9dffd2da869bb851bcbc476410cc8af9d6c0d00abfd404fc97ada7a416bb4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:48f77dabdd333990558af85028719bacc5ed5788bec3db523a67b3a5a246a9d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302562957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff737feeb570c71962d673d586f199c62a9a88fd60b6f4039bdb4b588a7ac7d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:afc15e2d59156c952385e208341bfac193799193a8388a5c469ba8280e6bbf22
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263178919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2799e658f5f008c1cb247d5efed3d686591fa0637967ee80724c7cea583c97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5502edf5f9666b3845d2a91f5cbe59b3323c2f65d6fd79e673d84184bbd11ba5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275273195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3427228a200f7df20d7e248487912d9e40c8f2ad40e8f8d4c97431b91794d3e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:668574289056cbd372987afad62095b452e045cb31d65f78bd37882ac5a07af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:c80b033d67afe125bfe70b7c77b2a482980c0b2ba18fe4f6e659b83890a19a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307480989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302b715dab3c1b72ab09a08250180a9c38a6593621f6500f59cba7d442e8e123`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:15:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ca84eff49bd01c7084e3d49769bca7efb48904668a0de0f033e7bf5ab9b36`  
		Last Modified: Sat, 04 Nov 2017 08:05:03 GMT  
		Size: 4.9 MB (4915414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:7eae34ce6b55c710554bfd4127c9f022c1264f77f0e1290e2b798e3f53184bf8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267651193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb5ad7615a3d9bb992a7588728cc294da89168d5aa17deadaa80d89ef97050`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b503323c77021d84dfd19bba8ba759cb1cadf533c24880858e45bae42af4a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280042141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60303c1fa5784ec5121865ff3926e8deba40e42a8b6a91c501230be9e825cb21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:857cddd0eca062ae89102d6243a9b45f8b0241e2f6190bd612760c600203393f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:663ad926ada7fe2d13174786312b23546f128babc237a96a43d3f46cdb8cd14f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 MB (392144682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15ab5695dd0bba24b1a9277e7630c07526c170d9d3d20bcf3367c82f3d99a5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:01:59 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:03:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:03:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:03:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:03:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:04:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7861a8ae356425502df673ee6bf0d30e59a952faeef1d5f1936ebaa7a0abf3b`  
		Last Modified: Sat, 04 Nov 2017 20:30:30 GMT  
		Size: 193.3 MB (193330707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8849b1ffecd998783dde7f879b0d29ef5b803277e78d61466f348e8eb1cf97e7`  
		Last Modified: Sat, 04 Nov 2017 20:29:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da305c492890f63b5f9c3d8f6e81c09226beeb3c86ad0c78bc36784c8c15019`  
		Last Modified: Sat, 04 Nov 2017 20:32:56 GMT  
		Size: 89.6 MB (89553172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:209ea0224a573eb16a5febaddac720cbba79385775de57bacad84515a9f45818
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336203052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa73308717f868de2f4ddf0642c7083235c17a1ca1a4ee6e7aa206ec2e955a40`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:121926659150120d1c2505ca6c9b79977a4877791ce295487aa6b9d87ad456d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349870255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28242478c6aaf46312725c236be43ec26dfda7b4270cd05c0a59398970814336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:313f2661875db848e259a67cb98a4522c6e0d06806f1146a63286caa0413ca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:afee30f29a47b2b80a8bbad68f9656d065c8e57da84f643bbf6466dd519328d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.2 MB (741194564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104dbf979aaa6bd568615273f9a80c302b1a7ea55ff3e4e02e84f8ee7e8df85b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:01:59 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:03:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:03:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:03:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:03:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:04:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:08:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7861a8ae356425502df673ee6bf0d30e59a952faeef1d5f1936ebaa7a0abf3b`  
		Last Modified: Sat, 04 Nov 2017 20:30:30 GMT  
		Size: 193.3 MB (193330707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8849b1ffecd998783dde7f879b0d29ef5b803277e78d61466f348e8eb1cf97e7`  
		Last Modified: Sat, 04 Nov 2017 20:29:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da305c492890f63b5f9c3d8f6e81c09226beeb3c86ad0c78bc36784c8c15019`  
		Last Modified: Sat, 04 Nov 2017 20:32:56 GMT  
		Size: 89.6 MB (89553172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3703b31d348463f1fa1b770287c76b5c1016a96a2b1d4a55111f90b37c970d41`  
		Last Modified: Sat, 04 Nov 2017 20:35:05 GMT  
		Size: 349.0 MB (349049882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:4881035a5dd1de40dc09fbbc69809fe7a6859b788ff34fef5e64e0d5c43e058e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 MB (638965168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6396513d2e103d5faa191f1e89b57e3a0dfd9005364a63714e3c176cfc489b79`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5515c97cd1999bb41ba4c02e2608498490d8dc4bbbec61cade1177984e2cc17e`  
		Last Modified: Wed, 11 Oct 2017 13:30:17 GMT  
		Size: 302.8 MB (302762116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:70f159f797c03f20924abfdd9e478343c80bf3e4ab2211b9e33254f22466a87e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.5 MB (666469230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc38381e9e4d3bad9ce5c335d5878b7268e7267e658fb96d7a66b4866eb82b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:41:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3e3be2915bc4e40c02986f6697516712788e8985b54190d921ddefa6b0f356`  
		Last Modified: Wed, 11 Oct 2017 15:57:02 GMT  
		Size: 316.6 MB (316598975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:7a6846a81475948061971ce295ca5a6b0b2a07c08afa3e8985dd7f580c580a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:adedb050228a2e15f8dd00f63fc442bd7e78047bc3790f3b7953819834307539
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.7 MB (900688962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f17cc990dd0eb57a83098c5add4d310fe4e412ee4da9bc7574e4fbd71127c9`
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
# Sat, 04 Nov 2017 07:54:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:92e74c8659a45b7c98c0023791911eb55978106990676b995a0d427bf4f73709`  
		Last Modified: Sat, 04 Nov 2017 08:23:40 GMT  
		Size: 408.9 MB (408917173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5ec3f5280a17f3eec166ce3633ccd43c02b6991d09e00dca378c5abaf57abb2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.9 MB (804899206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95136f5c95474d420a023551511582fa4cb1d638c531da80cf12a08ebebb6074`
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
# Tue, 10 Oct 2017 06:54:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:498119127f36c72daeb324cbb2d1b106a0c2bea8a8f1d5dbdd57416c6ff4c8c8`  
		Last Modified: Tue, 10 Oct 2017 07:09:38 GMT  
		Size: 369.9 MB (369904645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:313f2661875db848e259a67cb98a4522c6e0d06806f1146a63286caa0413ca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:afee30f29a47b2b80a8bbad68f9656d065c8e57da84f643bbf6466dd519328d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.2 MB (741194564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104dbf979aaa6bd568615273f9a80c302b1a7ea55ff3e4e02e84f8ee7e8df85b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:01:59 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:03:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:03:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:03:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:03:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:04:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:08:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7861a8ae356425502df673ee6bf0d30e59a952faeef1d5f1936ebaa7a0abf3b`  
		Last Modified: Sat, 04 Nov 2017 20:30:30 GMT  
		Size: 193.3 MB (193330707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8849b1ffecd998783dde7f879b0d29ef5b803277e78d61466f348e8eb1cf97e7`  
		Last Modified: Sat, 04 Nov 2017 20:29:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da305c492890f63b5f9c3d8f6e81c09226beeb3c86ad0c78bc36784c8c15019`  
		Last Modified: Sat, 04 Nov 2017 20:32:56 GMT  
		Size: 89.6 MB (89553172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3703b31d348463f1fa1b770287c76b5c1016a96a2b1d4a55111f90b37c970d41`  
		Last Modified: Sat, 04 Nov 2017 20:35:05 GMT  
		Size: 349.0 MB (349049882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:4881035a5dd1de40dc09fbbc69809fe7a6859b788ff34fef5e64e0d5c43e058e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 MB (638965168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6396513d2e103d5faa191f1e89b57e3a0dfd9005364a63714e3c176cfc489b79`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5515c97cd1999bb41ba4c02e2608498490d8dc4bbbec61cade1177984e2cc17e`  
		Last Modified: Wed, 11 Oct 2017 13:30:17 GMT  
		Size: 302.8 MB (302762116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:70f159f797c03f20924abfdd9e478343c80bf3e4ab2211b9e33254f22466a87e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.5 MB (666469230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc38381e9e4d3bad9ce5c335d5878b7268e7267e658fb96d7a66b4866eb82b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:41:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3e3be2915bc4e40c02986f6697516712788e8985b54190d921ddefa6b0f356`  
		Last Modified: Wed, 11 Oct 2017 15:57:02 GMT  
		Size: 316.6 MB (316598975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-zesty`

```console
$ docker pull ros@sha256:3e77756209cde5adaa1acff2b765314d189483472761bc87978fb528f9cf2ae9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-perception-zesty` - linux; amd64

```console
$ docker pull ros@sha256:9d072bcce4e47c29b5e08ea4089ef44d16ff601759cb0f74d73471a19bd97e2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **776.3 MB (776302170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f213bebc25730f41d14f8c051f4b3bbabd54b2cd1ea055b9cd89e8da4ae93c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 20:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:09:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 20:09:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 20:09:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 20:10:11 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:10:13 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:11:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:11:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:11:45 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:12:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:16:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae42b33d75209292bf1921803380c8338bfc6365edee0f3ac8cc3c7ceda308`  
		Last Modified: Sat, 04 Nov 2017 20:36:49 GMT  
		Size: 3.4 MB (3401525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046481954d0782f77e2aae81bb79273363e7450c1eb45d7484ee3d10418d643d`  
		Last Modified: Sat, 04 Nov 2017 20:36:48 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4254d46ee395d032b5f112b8e496201e1b2f7a014ecfea2be12f272a482ba5`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c701843d60ff7147d2ab961b3ebd8f91c416349b8c7b12b6e83a3ab00c30926e`  
		Last Modified: Sat, 04 Nov 2017 20:37:19 GMT  
		Size: 58.6 MB (58604684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036ab99b04dabb34947822c17eec28552055f4f9a08ce984338d4a48f33cf26`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 766.6 KB (766563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016973881d5af382dc898ff96079891bc80e25b9a30ad2bd6a853f15cad5e07d`  
		Last Modified: Sat, 04 Nov 2017 20:37:58 GMT  
		Size: 252.3 MB (252314490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8d40bc1da71103ba6479e60ddc5c03c3a15820e52ad2d23ad88150d7a36071`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ebd30b59a20a846bf592bfc5e3f1e09079d1f8161f0846f91d296bdbb9826b`  
		Last Modified: Sat, 04 Nov 2017 20:38:33 GMT  
		Size: 74.6 MB (74576049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68e880c22d5249ec5d79e2c30335072e6165c100cfec18ce724a22f749d6b2`  
		Last Modified: Sat, 04 Nov 2017 20:40:15 GMT  
		Size: 348.2 MB (348196740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:fa545dab7e5dcb3a8d507c0feb8760f92b65b62bff5b3e733c5bd5d715a7d078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:98b8dbfcd87bc12d450993c16fd42f5fe036397dd423b9a26bbcbbbb3280af03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.8 MB (495840898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb26d2afc11f5684f457ab9d9e55643c940f5a9746954b4431c015f20e517e87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:01:59 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:03:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:03:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:03:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:03:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:04:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:05:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7861a8ae356425502df673ee6bf0d30e59a952faeef1d5f1936ebaa7a0abf3b`  
		Last Modified: Sat, 04 Nov 2017 20:30:30 GMT  
		Size: 193.3 MB (193330707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8849b1ffecd998783dde7f879b0d29ef5b803277e78d61466f348e8eb1cf97e7`  
		Last Modified: Sat, 04 Nov 2017 20:29:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da305c492890f63b5f9c3d8f6e81c09226beeb3c86ad0c78bc36784c8c15019`  
		Last Modified: Sat, 04 Nov 2017 20:32:56 GMT  
		Size: 89.6 MB (89553172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e567cf3a39acb905119ef3e767453c42909471e243401db48870d917d41e35f6`  
		Last Modified: Sat, 04 Nov 2017 20:33:40 GMT  
		Size: 103.7 MB (103696216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:1be0ac5b8216e7c902c99f423e986b9e15ba830ff13b7b87aa2467edd494f688
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426291473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7252a976924d9dab32cedc2e0e65f3642225687721871bd9d221bb8250afecbb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:19:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f947d8b4c867fae2ef24aacc21c100aa99b29e8c1b3faac231fdefa455427`  
		Last Modified: Wed, 11 Oct 2017 13:28:40 GMT  
		Size: 90.1 MB (90088421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7759fc5a1faa89db250c2091d3906ec421890db3f0cd3c76b4695e97c9ec82c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443775060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a95a0fd6f02b62fdf3a102c485036b27a38ba158dba17b8848827ec5e268f5b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:28:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8c2d0e91f4f69d5295f85c66021e169a4d308998f872797159d729813f3f42`  
		Last Modified: Wed, 11 Oct 2017 15:54:22 GMT  
		Size: 93.9 MB (93904805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:fa545dab7e5dcb3a8d507c0feb8760f92b65b62bff5b3e733c5bd5d715a7d078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:98b8dbfcd87bc12d450993c16fd42f5fe036397dd423b9a26bbcbbbb3280af03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.8 MB (495840898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb26d2afc11f5684f457ab9d9e55643c940f5a9746954b4431c015f20e517e87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:01:59 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:03:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:03:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:03:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:03:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:04:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:05:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7861a8ae356425502df673ee6bf0d30e59a952faeef1d5f1936ebaa7a0abf3b`  
		Last Modified: Sat, 04 Nov 2017 20:30:30 GMT  
		Size: 193.3 MB (193330707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8849b1ffecd998783dde7f879b0d29ef5b803277e78d61466f348e8eb1cf97e7`  
		Last Modified: Sat, 04 Nov 2017 20:29:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da305c492890f63b5f9c3d8f6e81c09226beeb3c86ad0c78bc36784c8c15019`  
		Last Modified: Sat, 04 Nov 2017 20:32:56 GMT  
		Size: 89.6 MB (89553172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e567cf3a39acb905119ef3e767453c42909471e243401db48870d917d41e35f6`  
		Last Modified: Sat, 04 Nov 2017 20:33:40 GMT  
		Size: 103.7 MB (103696216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:1be0ac5b8216e7c902c99f423e986b9e15ba830ff13b7b87aa2467edd494f688
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426291473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7252a976924d9dab32cedc2e0e65f3642225687721871bd9d221bb8250afecbb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:19:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f947d8b4c867fae2ef24aacc21c100aa99b29e8c1b3faac231fdefa455427`  
		Last Modified: Wed, 11 Oct 2017 13:28:40 GMT  
		Size: 90.1 MB (90088421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7759fc5a1faa89db250c2091d3906ec421890db3f0cd3c76b4695e97c9ec82c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443775060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a95a0fd6f02b62fdf3a102c485036b27a38ba158dba17b8848827ec5e268f5b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:28:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8c2d0e91f4f69d5295f85c66021e169a4d308998f872797159d729813f3f42`  
		Last Modified: Wed, 11 Oct 2017 15:54:22 GMT  
		Size: 93.9 MB (93904805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-zesty`

```console
$ docker pull ros@sha256:2b446b29011586c142cd44c5771dc92b54a41935ba89510b8be181b26d6b7cd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-robot-zesty` - linux; amd64

```console
$ docker pull ros@sha256:bf2d56fbcc9f2b5e4f1de26862c4487fce623d98c37be21813c0c6ce17e13348
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.5 MB (472501434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcc44029b8e5232d7602dd78adb0d022a232f2df6bd260f15f2b8a6a12fce22f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 20:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:09:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 20:09:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 20:09:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 20:10:11 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:10:13 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:11:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:11:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:11:45 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:12:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:13:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae42b33d75209292bf1921803380c8338bfc6365edee0f3ac8cc3c7ceda308`  
		Last Modified: Sat, 04 Nov 2017 20:36:49 GMT  
		Size: 3.4 MB (3401525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046481954d0782f77e2aae81bb79273363e7450c1eb45d7484ee3d10418d643d`  
		Last Modified: Sat, 04 Nov 2017 20:36:48 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4254d46ee395d032b5f112b8e496201e1b2f7a014ecfea2be12f272a482ba5`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c701843d60ff7147d2ab961b3ebd8f91c416349b8c7b12b6e83a3ab00c30926e`  
		Last Modified: Sat, 04 Nov 2017 20:37:19 GMT  
		Size: 58.6 MB (58604684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036ab99b04dabb34947822c17eec28552055f4f9a08ce984338d4a48f33cf26`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 766.6 KB (766563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016973881d5af382dc898ff96079891bc80e25b9a30ad2bd6a853f15cad5e07d`  
		Last Modified: Sat, 04 Nov 2017 20:37:58 GMT  
		Size: 252.3 MB (252314490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8d40bc1da71103ba6479e60ddc5c03c3a15820e52ad2d23ad88150d7a36071`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ebd30b59a20a846bf592bfc5e3f1e09079d1f8161f0846f91d296bdbb9826b`  
		Last Modified: Sat, 04 Nov 2017 20:38:33 GMT  
		Size: 74.6 MB (74576049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba17a0882bb65ff97a820b2bb90afbaae81c7272fe761c92e660db6116fbee4`  
		Last Modified: Sat, 04 Nov 2017 20:38:52 GMT  
		Size: 44.4 MB (44396004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:857cddd0eca062ae89102d6243a9b45f8b0241e2f6190bd612760c600203393f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:663ad926ada7fe2d13174786312b23546f128babc237a96a43d3f46cdb8cd14f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 MB (392144682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15ab5695dd0bba24b1a9277e7630c07526c170d9d3d20bcf3367c82f3d99a5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:01:59 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:03:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:03:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:03:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:03:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:04:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7861a8ae356425502df673ee6bf0d30e59a952faeef1d5f1936ebaa7a0abf3b`  
		Last Modified: Sat, 04 Nov 2017 20:30:30 GMT  
		Size: 193.3 MB (193330707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8849b1ffecd998783dde7f879b0d29ef5b803277e78d61466f348e8eb1cf97e7`  
		Last Modified: Sat, 04 Nov 2017 20:29:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da305c492890f63b5f9c3d8f6e81c09226beeb3c86ad0c78bc36784c8c15019`  
		Last Modified: Sat, 04 Nov 2017 20:32:56 GMT  
		Size: 89.6 MB (89553172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:209ea0224a573eb16a5febaddac720cbba79385775de57bacad84515a9f45818
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336203052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa73308717f868de2f4ddf0642c7083235c17a1ca1a4ee6e7aa206ec2e955a40`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:121926659150120d1c2505ca6c9b79977a4877791ce295487aa6b9d87ad456d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349870255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28242478c6aaf46312725c236be43ec26dfda7b4270cd05c0a59398970814336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:aac92550b97914ca5399af12b48e38e9cf9ea297ce88b1401f30ccbaa0bed495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:3a3314709841ce38a024a36d6dd8e04208d60dbea4e133689e973dd0ad1e0dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.8 MB (491771789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67db55d6a42b579c6bd133a39107ebb9108eabab0c83147bed7a44761cd337ca`
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

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a87fe612d01ec701a75ed54bd5b5f2f2d840cefab3978e3f20d0c24d724c065d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 MB (434994561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1724dfeb799483b77f1a02d3159042f6be9d1616619d4764f72f25f58e2929f8`
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

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:857cddd0eca062ae89102d6243a9b45f8b0241e2f6190bd612760c600203393f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:663ad926ada7fe2d13174786312b23546f128babc237a96a43d3f46cdb8cd14f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 MB (392144682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15ab5695dd0bba24b1a9277e7630c07526c170d9d3d20bcf3367c82f3d99a5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:01:59 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:03:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:03:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:03:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:03:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:04:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7861a8ae356425502df673ee6bf0d30e59a952faeef1d5f1936ebaa7a0abf3b`  
		Last Modified: Sat, 04 Nov 2017 20:30:30 GMT  
		Size: 193.3 MB (193330707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8849b1ffecd998783dde7f879b0d29ef5b803277e78d61466f348e8eb1cf97e7`  
		Last Modified: Sat, 04 Nov 2017 20:29:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da305c492890f63b5f9c3d8f6e81c09226beeb3c86ad0c78bc36784c8c15019`  
		Last Modified: Sat, 04 Nov 2017 20:32:56 GMT  
		Size: 89.6 MB (89553172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:209ea0224a573eb16a5febaddac720cbba79385775de57bacad84515a9f45818
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336203052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa73308717f868de2f4ddf0642c7083235c17a1ca1a4ee6e7aa206ec2e955a40`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:121926659150120d1c2505ca6c9b79977a4877791ce295487aa6b9d87ad456d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349870255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28242478c6aaf46312725c236be43ec26dfda7b4270cd05c0a59398970814336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-zesty`

```console
$ docker pull ros@sha256:9b7a61e2858399a0cb645e737c1409049b4b070dfb0e831e8ca7bff5f39f78a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base-zesty` - linux; amd64

```console
$ docker pull ros@sha256:4d939cf55159b984649323a8c04d0657d4d9b5a812becb0afe1e1c0ccc66fcfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.1 MB (428105430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8053732fd45b5f8ddb1c132dd6ef0865d22c5404801e897cb460c94a67ff7cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 20:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:09:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 20:09:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 20:09:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 20:10:11 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:10:13 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:11:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:11:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:11:45 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:12:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae42b33d75209292bf1921803380c8338bfc6365edee0f3ac8cc3c7ceda308`  
		Last Modified: Sat, 04 Nov 2017 20:36:49 GMT  
		Size: 3.4 MB (3401525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046481954d0782f77e2aae81bb79273363e7450c1eb45d7484ee3d10418d643d`  
		Last Modified: Sat, 04 Nov 2017 20:36:48 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4254d46ee395d032b5f112b8e496201e1b2f7a014ecfea2be12f272a482ba5`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c701843d60ff7147d2ab961b3ebd8f91c416349b8c7b12b6e83a3ab00c30926e`  
		Last Modified: Sat, 04 Nov 2017 20:37:19 GMT  
		Size: 58.6 MB (58604684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036ab99b04dabb34947822c17eec28552055f4f9a08ce984338d4a48f33cf26`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 766.6 KB (766563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016973881d5af382dc898ff96079891bc80e25b9a30ad2bd6a853f15cad5e07d`  
		Last Modified: Sat, 04 Nov 2017 20:37:58 GMT  
		Size: 252.3 MB (252314490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8d40bc1da71103ba6479e60ddc5c03c3a15820e52ad2d23ad88150d7a36071`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ebd30b59a20a846bf592bfc5e3f1e09079d1f8161f0846f91d296bdbb9826b`  
		Last Modified: Sat, 04 Nov 2017 20:38:33 GMT  
		Size: 74.6 MB (74576049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:9b95cb5e09d3153a9256fff50c24775476c5d739167667736b1260bb0964dec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:af6ed66284517421c37c56ff5985610f5738bca10e9c7eb17a39924552cd023b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302591510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcab145c3aa4b79ad0030a9295345f3586e8f0954214d97591d2d9d3ffd0d23`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:01:59 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:03:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:03:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:03:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:03:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7861a8ae356425502df673ee6bf0d30e59a952faeef1d5f1936ebaa7a0abf3b`  
		Last Modified: Sat, 04 Nov 2017 20:30:30 GMT  
		Size: 193.3 MB (193330707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8849b1ffecd998783dde7f879b0d29ef5b803277e78d61466f348e8eb1cf97e7`  
		Last Modified: Sat, 04 Nov 2017 20:29:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:38ec753227955c8e9ecaaab4821d7322b04244f42d88b909c7157abace7dadeb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263204198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df42dee21ea79d360b6eb777185473bc1f36885ab30ef3dbfad3ea7d02885b4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:45a9c477766a950879e85cce4a08baaa7248f0ad7c70a82b9d02370cd5cbb0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275296373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84f967a7473f9c0ed5ea1d1ff5d7821241f1abf61f5fb6f6d67b9e768fd09`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:80b0d8e2838bab78a706b903186be1fda303346ec71dba504508d028f3d799d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:041785076eb638950f234d0c063d4a15e1f6bd8765438d7f79ae8dad29e918bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.6 MB (369574036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213e6315fbb14e4dfd6755d41e494702c1f9a0bf73e9025689e5c3a8617b98e7`
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

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1a46f13904d82e1284fadcf5a771fadf5ebd026c223e2d29e9091a5fc65aaba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.0 MB (318977272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c0f330d2a3815b5515267bb25e0e0ece75d26fbe73a61e7e445e1570b0c426`
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

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:9b95cb5e09d3153a9256fff50c24775476c5d739167667736b1260bb0964dec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:af6ed66284517421c37c56ff5985610f5738bca10e9c7eb17a39924552cd023b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302591510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcab145c3aa4b79ad0030a9295345f3586e8f0954214d97591d2d9d3ffd0d23`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:01:59 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:03:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:03:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:03:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:03:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7861a8ae356425502df673ee6bf0d30e59a952faeef1d5f1936ebaa7a0abf3b`  
		Last Modified: Sat, 04 Nov 2017 20:30:30 GMT  
		Size: 193.3 MB (193330707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8849b1ffecd998783dde7f879b0d29ef5b803277e78d61466f348e8eb1cf97e7`  
		Last Modified: Sat, 04 Nov 2017 20:29:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:38ec753227955c8e9ecaaab4821d7322b04244f42d88b909c7157abace7dadeb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263204198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df42dee21ea79d360b6eb777185473bc1f36885ab30ef3dbfad3ea7d02885b4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:45a9c477766a950879e85cce4a08baaa7248f0ad7c70a82b9d02370cd5cbb0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275296373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84f967a7473f9c0ed5ea1d1ff5d7821241f1abf61f5fb6f6d67b9e768fd09`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-zesty`

```console
$ docker pull ros@sha256:57b5299cc9414cea354fe813179d6f24724796e3b5cb4d4dd222c2c1a6b85eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-core-zesty` - linux; amd64

```console
$ docker pull ros@sha256:b29a4f316ae45e6e1fd3b193692e4df95a5e6ab5f69fa2eae95681cf2080f34b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353529381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf4e1e765e8e3b57955b4663c2dc7b0273c9f1d85d4d1cae98ebab43d74d90e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 20:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:09:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 20:09:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 20:09:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 20:10:11 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:10:13 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:11:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:11:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:11:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae42b33d75209292bf1921803380c8338bfc6365edee0f3ac8cc3c7ceda308`  
		Last Modified: Sat, 04 Nov 2017 20:36:49 GMT  
		Size: 3.4 MB (3401525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046481954d0782f77e2aae81bb79273363e7450c1eb45d7484ee3d10418d643d`  
		Last Modified: Sat, 04 Nov 2017 20:36:48 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4254d46ee395d032b5f112b8e496201e1b2f7a014ecfea2be12f272a482ba5`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c701843d60ff7147d2ab961b3ebd8f91c416349b8c7b12b6e83a3ab00c30926e`  
		Last Modified: Sat, 04 Nov 2017 20:37:19 GMT  
		Size: 58.6 MB (58604684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036ab99b04dabb34947822c17eec28552055f4f9a08ce984338d4a48f33cf26`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 766.6 KB (766563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016973881d5af382dc898ff96079891bc80e25b9a30ad2bd6a853f15cad5e07d`  
		Last Modified: Sat, 04 Nov 2017 20:37:58 GMT  
		Size: 252.3 MB (252314490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8d40bc1da71103ba6479e60ddc5c03c3a15820e52ad2d23ad88150d7a36071`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
