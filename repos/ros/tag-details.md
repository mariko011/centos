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
$ docker pull ros@sha256:03c0573df8e48d6b4d68ce11ef8549d543bf43657ff7c2668b449da001d6a567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:29f4ca60aa4abb1309f6b6da65c54c741026305a51919d8048e8ef889db4d62a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270070888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f349ac6cbe2e9efdc11487b823788aaaa76ed0a3dfd36e2fe00fdaef56ddce`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:26:21 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Sep 2017 00:27:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:27:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:27:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:27:39 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:29:23 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf312358e383f916988439b256c4b567fac14f1f36aa2693c8005048afdc5b`  
		Last Modified: Thu, 14 Sep 2017 01:17:30 GMT  
		Size: 149.9 MB (149908786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cf3159fd4c5bd4bf2c7a3eea4eb910bdefd1695311370c56cf7e1cd57d1e83`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8aa4f08e6a581674b94ef1ba66295d69a59562420063c029e59fa4c21135ac`  
		Last Modified: Thu, 14 Sep 2017 01:17:47 GMT  
		Size: 4.0 MB (3975877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:4660367c6a3d6373d09c924c43b75797a151bfb9279f95553554b3c5b517556f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:6d415f2cf7fe34040067edb1f06235fb6c46547f84b6aa34b378831d17d32f8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.7 MB (534747418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3644ec94eaa03a29094af2924b0a100a08738d0f9a786ae1f948b47f2098fa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:26:21 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Sep 2017 00:27:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:27:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:27:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:27:39 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:29:23 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:33:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf312358e383f916988439b256c4b567fac14f1f36aa2693c8005048afdc5b`  
		Last Modified: Thu, 14 Sep 2017 01:17:30 GMT  
		Size: 149.9 MB (149908786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cf3159fd4c5bd4bf2c7a3eea4eb910bdefd1695311370c56cf7e1cd57d1e83`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8aa4f08e6a581674b94ef1ba66295d69a59562420063c029e59fa4c21135ac`  
		Last Modified: Thu, 14 Sep 2017 01:17:47 GMT  
		Size: 4.0 MB (3975877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda2eeee78e572031c894e8f5074742d440eb5c10c93d8f427ec55ce73f14bb4`  
		Last Modified: Thu, 14 Sep 2017 01:19:40 GMT  
		Size: 264.7 MB (264676530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:4660367c6a3d6373d09c924c43b75797a151bfb9279f95553554b3c5b517556f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:6d415f2cf7fe34040067edb1f06235fb6c46547f84b6aa34b378831d17d32f8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.7 MB (534747418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3644ec94eaa03a29094af2924b0a100a08738d0f9a786ae1f948b47f2098fa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:26:21 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Sep 2017 00:27:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:27:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:27:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:27:39 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:29:23 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:33:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf312358e383f916988439b256c4b567fac14f1f36aa2693c8005048afdc5b`  
		Last Modified: Thu, 14 Sep 2017 01:17:30 GMT  
		Size: 149.9 MB (149908786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cf3159fd4c5bd4bf2c7a3eea4eb910bdefd1695311370c56cf7e1cd57d1e83`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8aa4f08e6a581674b94ef1ba66295d69a59562420063c029e59fa4c21135ac`  
		Last Modified: Thu, 14 Sep 2017 01:17:47 GMT  
		Size: 4.0 MB (3975877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda2eeee78e572031c894e8f5074742d440eb5c10c93d8f427ec55ce73f14bb4`  
		Last Modified: Thu, 14 Sep 2017 01:19:40 GMT  
		Size: 264.7 MB (264676530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:12f689431cbc3498b739223ab980d3897a3c10dfe9975a998beb1d487e906a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:700a082e939cfc92dccb090bf3d9b7546ca859318b62c244c10350aea016097e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.4 MB (331355719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5d3461128cbf334d69142e032397e7f99e74a1d0055147873735169efb9457`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:26:21 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Sep 2017 00:27:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:27:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:27:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:27:39 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:29:23 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:30:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf312358e383f916988439b256c4b567fac14f1f36aa2693c8005048afdc5b`  
		Last Modified: Thu, 14 Sep 2017 01:17:30 GMT  
		Size: 149.9 MB (149908786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cf3159fd4c5bd4bf2c7a3eea4eb910bdefd1695311370c56cf7e1cd57d1e83`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8aa4f08e6a581674b94ef1ba66295d69a59562420063c029e59fa4c21135ac`  
		Last Modified: Thu, 14 Sep 2017 01:17:47 GMT  
		Size: 4.0 MB (3975877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c847da123af760090d19006367287dbd7683076087873ce6cdccfc830af56c`  
		Last Modified: Thu, 14 Sep 2017 01:18:19 GMT  
		Size: 61.3 MB (61284831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:12f689431cbc3498b739223ab980d3897a3c10dfe9975a998beb1d487e906a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:700a082e939cfc92dccb090bf3d9b7546ca859318b62c244c10350aea016097e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.4 MB (331355719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5d3461128cbf334d69142e032397e7f99e74a1d0055147873735169efb9457`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:26:21 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Sep 2017 00:27:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:27:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:27:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:27:39 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:29:23 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:30:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf312358e383f916988439b256c4b567fac14f1f36aa2693c8005048afdc5b`  
		Last Modified: Thu, 14 Sep 2017 01:17:30 GMT  
		Size: 149.9 MB (149908786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cf3159fd4c5bd4bf2c7a3eea4eb910bdefd1695311370c56cf7e1cd57d1e83`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8aa4f08e6a581674b94ef1ba66295d69a59562420063c029e59fa4c21135ac`  
		Last Modified: Thu, 14 Sep 2017 01:17:47 GMT  
		Size: 4.0 MB (3975877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c847da123af760090d19006367287dbd7683076087873ce6cdccfc830af56c`  
		Last Modified: Thu, 14 Sep 2017 01:18:19 GMT  
		Size: 61.3 MB (61284831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:03c0573df8e48d6b4d68ce11ef8549d543bf43657ff7c2668b449da001d6a567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:29f4ca60aa4abb1309f6b6da65c54c741026305a51919d8048e8ef889db4d62a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270070888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f349ac6cbe2e9efdc11487b823788aaaa76ed0a3dfd36e2fe00fdaef56ddce`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:26:21 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Sep 2017 00:27:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:27:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:27:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:27:39 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:29:23 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf312358e383f916988439b256c4b567fac14f1f36aa2693c8005048afdc5b`  
		Last Modified: Thu, 14 Sep 2017 01:17:30 GMT  
		Size: 149.9 MB (149908786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cf3159fd4c5bd4bf2c7a3eea4eb910bdefd1695311370c56cf7e1cd57d1e83`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8aa4f08e6a581674b94ef1ba66295d69a59562420063c029e59fa4c21135ac`  
		Last Modified: Thu, 14 Sep 2017 01:17:47 GMT  
		Size: 4.0 MB (3975877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:03c0573df8e48d6b4d68ce11ef8549d543bf43657ff7c2668b449da001d6a567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:29f4ca60aa4abb1309f6b6da65c54c741026305a51919d8048e8ef889db4d62a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270070888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f349ac6cbe2e9efdc11487b823788aaaa76ed0a3dfd36e2fe00fdaef56ddce`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:26:21 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Sep 2017 00:27:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:27:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:27:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:27:39 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:29:23 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf312358e383f916988439b256c4b567fac14f1f36aa2693c8005048afdc5b`  
		Last Modified: Thu, 14 Sep 2017 01:17:30 GMT  
		Size: 149.9 MB (149908786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cf3159fd4c5bd4bf2c7a3eea4eb910bdefd1695311370c56cf7e1cd57d1e83`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8aa4f08e6a581674b94ef1ba66295d69a59562420063c029e59fa4c21135ac`  
		Last Modified: Thu, 14 Sep 2017 01:17:47 GMT  
		Size: 4.0 MB (3975877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:c2391180af13baff6254e9ba4a9fe49f6c46fa2883dcff17a63c2cfd4fe4eca9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:25dbc0111434a1d7cedb0c06aeb7eda2d55d072bc3cfe5ceca62661e4132168b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266095011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78132a6f56ee3b1e335a3a73fa73e8707da1aa725cb30336e823b832e8e0d884`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:26:21 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Sep 2017 00:27:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:27:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:27:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:27:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf312358e383f916988439b256c4b567fac14f1f36aa2693c8005048afdc5b`  
		Last Modified: Thu, 14 Sep 2017 01:17:30 GMT  
		Size: 149.9 MB (149908786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cf3159fd4c5bd4bf2c7a3eea4eb910bdefd1695311370c56cf7e1cd57d1e83`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:c2391180af13baff6254e9ba4a9fe49f6c46fa2883dcff17a63c2cfd4fe4eca9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:25dbc0111434a1d7cedb0c06aeb7eda2d55d072bc3cfe5ceca62661e4132168b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266095011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78132a6f56ee3b1e335a3a73fa73e8707da1aa725cb30336e823b832e8e0d884`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:26:21 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Sep 2017 00:27:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:27:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:27:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:27:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcf312358e383f916988439b256c4b567fac14f1f36aa2693c8005048afdc5b`  
		Last Modified: Thu, 14 Sep 2017 01:17:30 GMT  
		Size: 149.9 MB (149908786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cf3159fd4c5bd4bf2c7a3eea4eb910bdefd1695311370c56cf7e1cd57d1e83`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:36f863039f687d5149730f44f8c1d49585ea5fb2e2f5dff1195471de1dcf10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

```console
$ docker pull ros@sha256:df52802e0bcb49aea27e6e2004ff4436a733947875bdbd1e276b5975ad72fd6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270224904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc42cc3783f21d90b0233db0ee919de2437f59d9b408d87e01c17fa247f188bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:34:56 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Sep 2017 00:36:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:36:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:36:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:36:27 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:36:51 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f38f102fa07a842bcb7e692ca3c299a682529485a1130a44899300241ef9ef`  
		Last Modified: Thu, 14 Sep 2017 01:21:53 GMT  
		Size: 150.0 MB (150042790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a57eceb70d4e2a7c0388a4ab597c6e115153a2143849ca77bfc49c7e1e3df5`  
		Last Modified: Thu, 14 Sep 2017 01:21:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29845fef8424a04efb36dca18649327850da3c5acddf33472f2a8aa0731ddc00`  
		Last Modified: Thu, 14 Sep 2017 01:22:10 GMT  
		Size: 4.0 MB (3995889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:529a46e90d45edb0e567efe9cd9f3bd5045e88ba22141ff13df227ad39927d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

```console
$ docker pull ros@sha256:39a4ff4ba616ecd10b579837797f818531a303815f1cdb12583228c5581de78c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.7 MB (533706300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76079e307a247e5349e1ea9dd9add27529c03d7557e546a343318f15c393b89e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:34:56 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Sep 2017 00:36:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:36:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:36:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:36:27 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:36:51 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:12 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f38f102fa07a842bcb7e692ca3c299a682529485a1130a44899300241ef9ef`  
		Last Modified: Thu, 14 Sep 2017 01:21:53 GMT  
		Size: 150.0 MB (150042790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a57eceb70d4e2a7c0388a4ab597c6e115153a2143849ca77bfc49c7e1e3df5`  
		Last Modified: Thu, 14 Sep 2017 01:21:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29845fef8424a04efb36dca18649327850da3c5acddf33472f2a8aa0731ddc00`  
		Last Modified: Thu, 14 Sep 2017 01:22:10 GMT  
		Size: 4.0 MB (3995889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910aae41b79f26e313bd1808e850b89fec24e28e089cde7f0f1614ae2b20c324`  
		Last Modified: Thu, 14 Sep 2017 01:24:07 GMT  
		Size: 263.5 MB (263481396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception-trusty`

```console
$ docker pull ros@sha256:529a46e90d45edb0e567efe9cd9f3bd5045e88ba22141ff13df227ad39927d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:39a4ff4ba616ecd10b579837797f818531a303815f1cdb12583228c5581de78c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.7 MB (533706300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76079e307a247e5349e1ea9dd9add27529c03d7557e546a343318f15c393b89e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:34:56 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Sep 2017 00:36:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:36:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:36:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:36:27 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:36:51 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:12 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f38f102fa07a842bcb7e692ca3c299a682529485a1130a44899300241ef9ef`  
		Last Modified: Thu, 14 Sep 2017 01:21:53 GMT  
		Size: 150.0 MB (150042790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a57eceb70d4e2a7c0388a4ab597c6e115153a2143849ca77bfc49c7e1e3df5`  
		Last Modified: Thu, 14 Sep 2017 01:21:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29845fef8424a04efb36dca18649327850da3c5acddf33472f2a8aa0731ddc00`  
		Last Modified: Thu, 14 Sep 2017 01:22:10 GMT  
		Size: 4.0 MB (3995889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910aae41b79f26e313bd1808e850b89fec24e28e089cde7f0f1614ae2b20c324`  
		Last Modified: Thu, 14 Sep 2017 01:24:07 GMT  
		Size: 263.5 MB (263481396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:1c366167968a43ac191694aba9d502c190e737e7892319e265338dcd486d2969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

```console
$ docker pull ros@sha256:404d132d6da1bf0a335338e4b976d5f47e2fc0ac2ad9fbf5e6531b871488618e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331539587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e86b502f2f0189a8ab3fee6f922e33fae560eeae118b1fae478adcf152bc238`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:34:56 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Sep 2017 00:36:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:36:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:36:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:36:27 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:36:51 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:37:48 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f38f102fa07a842bcb7e692ca3c299a682529485a1130a44899300241ef9ef`  
		Last Modified: Thu, 14 Sep 2017 01:21:53 GMT  
		Size: 150.0 MB (150042790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a57eceb70d4e2a7c0388a4ab597c6e115153a2143849ca77bfc49c7e1e3df5`  
		Last Modified: Thu, 14 Sep 2017 01:21:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29845fef8424a04efb36dca18649327850da3c5acddf33472f2a8aa0731ddc00`  
		Last Modified: Thu, 14 Sep 2017 01:22:10 GMT  
		Size: 4.0 MB (3995889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d23870402f6ac98dc86a5e409d42b32fc9473672af3f33c976a740a4e25ac52`  
		Last Modified: Thu, 14 Sep 2017 01:22:45 GMT  
		Size: 61.3 MB (61314683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot-trusty`

```console
$ docker pull ros@sha256:1c366167968a43ac191694aba9d502c190e737e7892319e265338dcd486d2969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:404d132d6da1bf0a335338e4b976d5f47e2fc0ac2ad9fbf5e6531b871488618e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331539587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e86b502f2f0189a8ab3fee6f922e33fae560eeae118b1fae478adcf152bc238`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:34:56 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Sep 2017 00:36:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:36:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:36:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:36:27 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:36:51 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:37:48 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f38f102fa07a842bcb7e692ca3c299a682529485a1130a44899300241ef9ef`  
		Last Modified: Thu, 14 Sep 2017 01:21:53 GMT  
		Size: 150.0 MB (150042790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a57eceb70d4e2a7c0388a4ab597c6e115153a2143849ca77bfc49c7e1e3df5`  
		Last Modified: Thu, 14 Sep 2017 01:21:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29845fef8424a04efb36dca18649327850da3c5acddf33472f2a8aa0731ddc00`  
		Last Modified: Thu, 14 Sep 2017 01:22:10 GMT  
		Size: 4.0 MB (3995889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d23870402f6ac98dc86a5e409d42b32fc9473672af3f33c976a740a4e25ac52`  
		Last Modified: Thu, 14 Sep 2017 01:22:45 GMT  
		Size: 61.3 MB (61314683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:36f863039f687d5149730f44f8c1d49585ea5fb2e2f5dff1195471de1dcf10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:df52802e0bcb49aea27e6e2004ff4436a733947875bdbd1e276b5975ad72fd6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270224904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc42cc3783f21d90b0233db0ee919de2437f59d9b408d87e01c17fa247f188bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:34:56 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Sep 2017 00:36:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:36:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:36:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:36:27 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:36:51 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f38f102fa07a842bcb7e692ca3c299a682529485a1130a44899300241ef9ef`  
		Last Modified: Thu, 14 Sep 2017 01:21:53 GMT  
		Size: 150.0 MB (150042790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a57eceb70d4e2a7c0388a4ab597c6e115153a2143849ca77bfc49c7e1e3df5`  
		Last Modified: Thu, 14 Sep 2017 01:21:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29845fef8424a04efb36dca18649327850da3c5acddf33472f2a8aa0731ddc00`  
		Last Modified: Thu, 14 Sep 2017 01:22:10 GMT  
		Size: 4.0 MB (3995889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base-trusty`

```console
$ docker pull ros@sha256:36f863039f687d5149730f44f8c1d49585ea5fb2e2f5dff1195471de1dcf10b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:df52802e0bcb49aea27e6e2004ff4436a733947875bdbd1e276b5975ad72fd6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270224904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc42cc3783f21d90b0233db0ee919de2437f59d9b408d87e01c17fa247f188bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:34:56 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Sep 2017 00:36:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:36:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:36:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:36:27 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:36:51 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f38f102fa07a842bcb7e692ca3c299a682529485a1130a44899300241ef9ef`  
		Last Modified: Thu, 14 Sep 2017 01:21:53 GMT  
		Size: 150.0 MB (150042790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a57eceb70d4e2a7c0388a4ab597c6e115153a2143849ca77bfc49c7e1e3df5`  
		Last Modified: Thu, 14 Sep 2017 01:21:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29845fef8424a04efb36dca18649327850da3c5acddf33472f2a8aa0731ddc00`  
		Last Modified: Thu, 14 Sep 2017 01:22:10 GMT  
		Size: 4.0 MB (3995889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:4a4fbf16e68341c39232c8987545ebaae44058165283b0bf75125f89d61fdf61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:5c3d9193a3b39eccc596047f3ce93c4a7ef3655a542a2abcfff6fb213dbf11f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266229015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2e6157f19089bd1bb3c7d9efbcddbbddb6fb3b5bb56df3efff7b539d228a4b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:34:56 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Sep 2017 00:36:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:36:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:36:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:36:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f38f102fa07a842bcb7e692ca3c299a682529485a1130a44899300241ef9ef`  
		Last Modified: Thu, 14 Sep 2017 01:21:53 GMT  
		Size: 150.0 MB (150042790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a57eceb70d4e2a7c0388a4ab597c6e115153a2143849ca77bfc49c7e1e3df5`  
		Last Modified: Thu, 14 Sep 2017 01:21:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core-trusty`

```console
$ docker pull ros@sha256:4a4fbf16e68341c39232c8987545ebaae44058165283b0bf75125f89d61fdf61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:5c3d9193a3b39eccc596047f3ce93c4a7ef3655a542a2abcfff6fb213dbf11f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266229015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2e6157f19089bd1bb3c7d9efbcddbbddb6fb3b5bb56df3efff7b539d228a4b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:25:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:25:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:25:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:26:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:26:12 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:26:21 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:34:56 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Sep 2017 00:36:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:36:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:36:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:36:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4dd5dbd0ce3a73400c5c9548d8f591cd2fa4e3742e704583eb2066b62b17fa`  
		Last Modified: Thu, 14 Sep 2017 01:17:11 GMT  
		Size: 16.5 MB (16499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608aa316d94fda7911490e54f5572db8a7fe01925f05a7980a43742e33b9f8ad`  
		Last Modified: Thu, 14 Sep 2017 01:16:36 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afff6ae8673e2e88e363b878847d568d6337c8cb6d133f6b514acedae528565`  
		Last Modified: Thu, 14 Sep 2017 01:16:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bda247da2af1a4dd81fd3dcf1b246ad32ef5873b0623b79eef1d1113ffb18a4`  
		Last Modified: Thu, 14 Sep 2017 01:16:58 GMT  
		Size: 31.7 MB (31730265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32657b98be328692ad73bc7f7c0ea283c8a7abfa88ddf6c70ec4835ca1092019`  
		Last Modified: Thu, 14 Sep 2017 01:16:34 GMT  
		Size: 754.0 KB (753957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f38f102fa07a842bcb7e692ca3c299a682529485a1130a44899300241ef9ef`  
		Last Modified: Thu, 14 Sep 2017 01:21:53 GMT  
		Size: 150.0 MB (150042790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a57eceb70d4e2a7c0388a4ab597c6e115153a2143849ca77bfc49c7e1e3df5`  
		Last Modified: Thu, 14 Sep 2017 01:21:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:858a964ca453594781c6391eed2075a328f077ec5ee2cad2ca0d6e0ae9636b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:e8aa95fb2202bc60055512a2610a88314dfd74803aec4d00e28da30bb49d0181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307469347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399d089ed001455a6437e3faf1e29c6d6da78e9c2a849c073d69aeb11f531e0a`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:20:46 GMT
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed6110da6519b39df39da2a709c3a0fcf2b1ffabf0b62af10ff631930c5ff3`  
		Last Modified: Tue, 10 Oct 2017 22:34:13 GMT  
		Size: 4.9 MB (4915104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:bd9cf5406b229c9d634534eac46572dd6086efbf494573bfae8b4ae5c8a08d2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267638397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d242d6ea4fc740f3b64a4078888980ffed93eca1980d9e07a70fec059cca59b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c09dc2c668782182d7d0c4a58a821143b16161120be86fdb2544008d925d439e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280066407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80e9bd26325af10efc6c7417e54079e9b5478d3e4e73c2bfe6b438ad0aa2f30`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:24c46db9a0c566ae7e4a05ea7e0c97fe631bd6728c77143677599b7db2b07c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:6462049e08236b56589fc1c721befa378ef94b87359a2b14e1119d684ac0b896
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.4 MB (695387879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e60b30a8cd0e95300403801fed9abaf21f49137b0399943004ab42817473488`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:20:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:25:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed6110da6519b39df39da2a709c3a0fcf2b1ffabf0b62af10ff631930c5ff3`  
		Last Modified: Tue, 10 Oct 2017 22:34:13 GMT  
		Size: 4.9 MB (4915104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8942147fcd9d4835cb8ed2350e5a8404ceba1c347d0288a905b69190138cab8`  
		Last Modified: Tue, 10 Oct 2017 22:37:17 GMT  
		Size: 387.9 MB (387918532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:3cff414f25843bfdb494b85d178c775788974c644c61285b8024220931c049dc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.8 MB (604828065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f731a5bf31623cc63f0ac068f73d5ffaae89fbe8d63a4744acd9ac78f6f45d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:39:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e236f301baa1a1dda9a8a3b8ff270e3176210eacab13b939e9775bae4bcce99e`  
		Last Modified: Wed, 27 Sep 2017 04:51:09 GMT  
		Size: 337.2 MB (337189668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:14c581342a0b948b4014152bc1b2ae70c84e150e0f33093303860c5c3a24442f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.2 MB (631233002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb555015f7d363966ff064fea8a9d375bff1cdadceae65a5f2d7c4c39de36683`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dbe92e275bbfe329469f0a309ea271ff27cffb685615d0b06951a8cda2cb6c`  
		Last Modified: Tue, 19 Sep 2017 01:08:08 GMT  
		Size: 351.2 MB (351166595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-jessie`

```console
$ docker pull ros@sha256:aa2da9536d6bda7184dd3a39b88bce198ea192a15e4c27347c77c3c07b4c5f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-perception-jessie` - linux; amd64

```console
$ docker pull ros@sha256:b30faa82882086bf1897cb240ee4b99a40f8085f649964f369ad90efdfbbc7f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **579.4 MB (579402733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d246f42af10b05a03379317cb0454578803a1aaf461357df6467bcb8655234`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:59:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:59:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 02:59:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:00:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:00:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:00:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:00:22 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:00:26 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 03:01:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:01:34 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:01:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:01:34 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:02:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:05:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef80bde76b59f7b5cd08e5adf9b506e5ebd729d6baa6a19dead5321aa38f23d1`  
		Last Modified: Tue, 10 Oct 2017 03:34:33 GMT  
		Size: 33.8 MB (33762136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c5f4a3cc5bfa890cb39d2b56fe308283b44b19995dce07026db14b277279d9`  
		Last Modified: Tue, 10 Oct 2017 03:34:15 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f04cdf93b607d37c4fc8b4fe1f2f0439357e99796a28ffd56840774aa9572d`  
		Last Modified: Tue, 10 Oct 2017 03:34:12 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38908de15c2aec525640e5dd9713455303711fd2a7b129f5e60674bbf8af9d`  
		Last Modified: Tue, 10 Oct 2017 03:34:48 GMT  
		Size: 46.3 MB (46339219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a2b7652c5abad2043137babaa15293d21fee2db5eda68d282727c9f606148`  
		Last Modified: Tue, 10 Oct 2017 03:34:13 GMT  
		Size: 760.2 KB (760215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0598e51ae9544a1dff6efff8ee8916e577d8c525e5d4e8860a7e007f5496c489`  
		Last Modified: Tue, 10 Oct 2017 03:35:12 GMT  
		Size: 157.2 MB (157217690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2139f1b213ff8c4626f38d17e1b79fb95f32f06768dc2be23320d98e426ffc`  
		Last Modified: Tue, 10 Oct 2017 03:34:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354c27e46e7763822f5217b237d4b7b0f2920b44666e5710e12894cad1def6fa`  
		Last Modified: Tue, 10 Oct 2017 03:35:35 GMT  
		Size: 5.2 MB (5237718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e870dfd402848a50aaa25134a6d36edd87d2c0f1d2a509ac96064a0df1ee00`  
		Last Modified: Tue, 10 Oct 2017 03:37:28 GMT  
		Size: 283.5 MB (283488791 bytes)  
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
$ docker pull ros@sha256:24c46db9a0c566ae7e4a05ea7e0c97fe631bd6728c77143677599b7db2b07c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:6462049e08236b56589fc1c721befa378ef94b87359a2b14e1119d684ac0b896
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.4 MB (695387879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e60b30a8cd0e95300403801fed9abaf21f49137b0399943004ab42817473488`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:20:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:25:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed6110da6519b39df39da2a709c3a0fcf2b1ffabf0b62af10ff631930c5ff3`  
		Last Modified: Tue, 10 Oct 2017 22:34:13 GMT  
		Size: 4.9 MB (4915104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8942147fcd9d4835cb8ed2350e5a8404ceba1c347d0288a905b69190138cab8`  
		Last Modified: Tue, 10 Oct 2017 22:37:17 GMT  
		Size: 387.9 MB (387918532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:3cff414f25843bfdb494b85d178c775788974c644c61285b8024220931c049dc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.8 MB (604828065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f731a5bf31623cc63f0ac068f73d5ffaae89fbe8d63a4744acd9ac78f6f45d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:39:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e236f301baa1a1dda9a8a3b8ff270e3176210eacab13b939e9775bae4bcce99e`  
		Last Modified: Wed, 27 Sep 2017 04:51:09 GMT  
		Size: 337.2 MB (337189668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:14c581342a0b948b4014152bc1b2ae70c84e150e0f33093303860c5c3a24442f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.2 MB (631233002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb555015f7d363966ff064fea8a9d375bff1cdadceae65a5f2d7c4c39de36683`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dbe92e275bbfe329469f0a309ea271ff27cffb685615d0b06951a8cda2cb6c`  
		Last Modified: Tue, 19 Sep 2017 01:08:08 GMT  
		Size: 351.2 MB (351166595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:20477151dd7d659a0303dceb3faa4ae1e2952b71a3d3bf32c88e890c3109fb6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:0951e7662753f0a178201305d0a490fdd19ee05aa41aec9404ed9e032c76f67d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.7 MB (446731565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c05b62409576d9699285d39f757f4f841d10837995e0f0d534e38171b719cb4`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:20:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:22:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed6110da6519b39df39da2a709c3a0fcf2b1ffabf0b62af10ff631930c5ff3`  
		Last Modified: Tue, 10 Oct 2017 22:34:13 GMT  
		Size: 4.9 MB (4915104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a4e09495847f9b2b718e3ab4abf72fd15228039a9691a9b2114bd187032da9`  
		Last Modified: Tue, 10 Oct 2017 22:35:26 GMT  
		Size: 139.3 MB (139262218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:155c6ec0c39181960f16eb7c85c85d1dde537e06979261503ab85c7e30afe978
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.3 MB (389293382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd522f8e355d5f0dec5cc90b06d7403df8e9c3b0f9ff59948fae40296bde1e22`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:36:51 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c747a8440d32191c8b31a5186eb10b5f6c4ebb6fb8f31296ba8fc8ef9e6cf53`  
		Last Modified: Wed, 27 Sep 2017 04:49:17 GMT  
		Size: 121.7 MB (121654985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:31cbc05302b5adf9ca9ac159e3e6d567bd50a7b77691d30d414f1b2d3c1a1930
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.8 MB (405773307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a62c2ab90e4043b0492424fcca1cdcd0841ba86ca2a7e008a04ef59624e448`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe61828853dca3e5508458ad4a4a2d1251eddd8e13d8682a139d31a6e9b9959`  
		Last Modified: Tue, 19 Sep 2017 01:05:23 GMT  
		Size: 125.7 MB (125706900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:40df8da19bb21b2d52030c726265315d6f98b0df8f0e7cacef80e10acee829d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:f0505e36bf3f3aba8d7aae5249879b05c2fb545b1346963635b183312ea4c2db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377839135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777473426c91208c54f9da6ab3ea824510063870a535b4549ff4eb15eed330df`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:59:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:59:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 02:59:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:00:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:00:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:00:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:00:22 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:00:26 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 03:01:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:01:34 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:01:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:01:34 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:02:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:03:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef80bde76b59f7b5cd08e5adf9b506e5ebd729d6baa6a19dead5321aa38f23d1`  
		Last Modified: Tue, 10 Oct 2017 03:34:33 GMT  
		Size: 33.8 MB (33762136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c5f4a3cc5bfa890cb39d2b56fe308283b44b19995dce07026db14b277279d9`  
		Last Modified: Tue, 10 Oct 2017 03:34:15 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f04cdf93b607d37c4fc8b4fe1f2f0439357e99796a28ffd56840774aa9572d`  
		Last Modified: Tue, 10 Oct 2017 03:34:12 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38908de15c2aec525640e5dd9713455303711fd2a7b129f5e60674bbf8af9d`  
		Last Modified: Tue, 10 Oct 2017 03:34:48 GMT  
		Size: 46.3 MB (46339219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a2b7652c5abad2043137babaa15293d21fee2db5eda68d282727c9f606148`  
		Last Modified: Tue, 10 Oct 2017 03:34:13 GMT  
		Size: 760.2 KB (760215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0598e51ae9544a1dff6efff8ee8916e577d8c525e5d4e8860a7e007f5496c489`  
		Last Modified: Tue, 10 Oct 2017 03:35:12 GMT  
		Size: 157.2 MB (157217690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2139f1b213ff8c4626f38d17e1b79fb95f32f06768dc2be23320d98e426ffc`  
		Last Modified: Tue, 10 Oct 2017 03:34:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354c27e46e7763822f5217b237d4b7b0f2920b44666e5710e12894cad1def6fa`  
		Last Modified: Tue, 10 Oct 2017 03:35:35 GMT  
		Size: 5.2 MB (5237718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c29f2c94247f1132580ae1448d0548b92812fcf3809ae3d7cfc22b70e7d26dd`  
		Last Modified: Tue, 10 Oct 2017 03:36:10 GMT  
		Size: 81.9 MB (81925193 bytes)  
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
$ docker pull ros@sha256:20477151dd7d659a0303dceb3faa4ae1e2952b71a3d3bf32c88e890c3109fb6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:0951e7662753f0a178201305d0a490fdd19ee05aa41aec9404ed9e032c76f67d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.7 MB (446731565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c05b62409576d9699285d39f757f4f841d10837995e0f0d534e38171b719cb4`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:20:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:22:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed6110da6519b39df39da2a709c3a0fcf2b1ffabf0b62af10ff631930c5ff3`  
		Last Modified: Tue, 10 Oct 2017 22:34:13 GMT  
		Size: 4.9 MB (4915104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a4e09495847f9b2b718e3ab4abf72fd15228039a9691a9b2114bd187032da9`  
		Last Modified: Tue, 10 Oct 2017 22:35:26 GMT  
		Size: 139.3 MB (139262218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:155c6ec0c39181960f16eb7c85c85d1dde537e06979261503ab85c7e30afe978
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.3 MB (389293382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd522f8e355d5f0dec5cc90b06d7403df8e9c3b0f9ff59948fae40296bde1e22`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:36:51 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c747a8440d32191c8b31a5186eb10b5f6c4ebb6fb8f31296ba8fc8ef9e6cf53`  
		Last Modified: Wed, 27 Sep 2017 04:49:17 GMT  
		Size: 121.7 MB (121654985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:31cbc05302b5adf9ca9ac159e3e6d567bd50a7b77691d30d414f1b2d3c1a1930
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.8 MB (405773307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a62c2ab90e4043b0492424fcca1cdcd0841ba86ca2a7e008a04ef59624e448`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe61828853dca3e5508458ad4a4a2d1251eddd8e13d8682a139d31a6e9b9959`  
		Last Modified: Tue, 19 Sep 2017 01:05:23 GMT  
		Size: 125.7 MB (125706900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:858a964ca453594781c6391eed2075a328f077ec5ee2cad2ca0d6e0ae9636b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:e8aa95fb2202bc60055512a2610a88314dfd74803aec4d00e28da30bb49d0181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307469347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399d089ed001455a6437e3faf1e29c6d6da78e9c2a849c073d69aeb11f531e0a`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:20:46 GMT
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed6110da6519b39df39da2a709c3a0fcf2b1ffabf0b62af10ff631930c5ff3`  
		Last Modified: Tue, 10 Oct 2017 22:34:13 GMT  
		Size: 4.9 MB (4915104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:bd9cf5406b229c9d634534eac46572dd6086efbf494573bfae8b4ae5c8a08d2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267638397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d242d6ea4fc740f3b64a4078888980ffed93eca1980d9e07a70fec059cca59b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c09dc2c668782182d7d0c4a58a821143b16161120be86fdb2544008d925d439e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280066407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80e9bd26325af10efc6c7417e54079e9b5478d3e4e73c2bfe6b438ad0aa2f30`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:e171bb041940895e852571b326e3b6560df897109c87e01eae5fbbf31e9f3c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:a1377deecd639fb88b1bc09b530083ab12be1d8134c495a3e17b4e68db9c968c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295913942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0004f3f843cf56108b925fa2eda59a05e7c8102585faab24b59a5520d08b2edc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:59:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:59:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 02:59:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:00:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:00:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:00:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:00:22 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:00:26 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 03:01:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:01:34 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:01:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:01:34 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:02:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef80bde76b59f7b5cd08e5adf9b506e5ebd729d6baa6a19dead5321aa38f23d1`  
		Last Modified: Tue, 10 Oct 2017 03:34:33 GMT  
		Size: 33.8 MB (33762136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c5f4a3cc5bfa890cb39d2b56fe308283b44b19995dce07026db14b277279d9`  
		Last Modified: Tue, 10 Oct 2017 03:34:15 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f04cdf93b607d37c4fc8b4fe1f2f0439357e99796a28ffd56840774aa9572d`  
		Last Modified: Tue, 10 Oct 2017 03:34:12 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38908de15c2aec525640e5dd9713455303711fd2a7b129f5e60674bbf8af9d`  
		Last Modified: Tue, 10 Oct 2017 03:34:48 GMT  
		Size: 46.3 MB (46339219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a2b7652c5abad2043137babaa15293d21fee2db5eda68d282727c9f606148`  
		Last Modified: Tue, 10 Oct 2017 03:34:13 GMT  
		Size: 760.2 KB (760215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0598e51ae9544a1dff6efff8ee8916e577d8c525e5d4e8860a7e007f5496c489`  
		Last Modified: Tue, 10 Oct 2017 03:35:12 GMT  
		Size: 157.2 MB (157217690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2139f1b213ff8c4626f38d17e1b79fb95f32f06768dc2be23320d98e426ffc`  
		Last Modified: Tue, 10 Oct 2017 03:34:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354c27e46e7763822f5217b237d4b7b0f2920b44666e5710e12894cad1def6fa`  
		Last Modified: Tue, 10 Oct 2017 03:35:35 GMT  
		Size: 5.2 MB (5237718 bytes)  
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
$ docker pull ros@sha256:858a964ca453594781c6391eed2075a328f077ec5ee2cad2ca0d6e0ae9636b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:e8aa95fb2202bc60055512a2610a88314dfd74803aec4d00e28da30bb49d0181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307469347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399d089ed001455a6437e3faf1e29c6d6da78e9c2a849c073d69aeb11f531e0a`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:20:46 GMT
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed6110da6519b39df39da2a709c3a0fcf2b1ffabf0b62af10ff631930c5ff3`  
		Last Modified: Tue, 10 Oct 2017 22:34:13 GMT  
		Size: 4.9 MB (4915104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:bd9cf5406b229c9d634534eac46572dd6086efbf494573bfae8b4ae5c8a08d2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267638397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d242d6ea4fc740f3b64a4078888980ffed93eca1980d9e07a70fec059cca59b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c09dc2c668782182d7d0c4a58a821143b16161120be86fdb2544008d925d439e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280066407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80e9bd26325af10efc6c7417e54079e9b5478d3e4e73c2bfe6b438ad0aa2f30`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:834032c1190c3f7642cf4620e392a40bd108d7954558f34cef95ce5c11031119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:7834b3ad96582f6d9aeb7ade05ef047435d4d24921a6a9a32fc89e505566dc9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302554243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce74ff298a7ad309652bd4ca4c737bc942e03a4f28c963ff8cb7f39cc783fb4b`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:171f12177c327a9f0028b76ba4cecd072d23f79eabd699f7cad337cb6f4e4ff1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263165966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be6576a8e1efceac0abe25aa6e591e18213256d1828602d99c7bc2f34457467`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:19d0908ee4e5b488818f005710a3d841a8d0fab39d9fd2640542daeac9e276b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275297268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177246531fddd7bfdb01ba47e01ded0e42c5d48ab9ed0602a6a4105a66e1eeaa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:855bffe333b43e9b0a5d475cf8d70710141361b22b080a265cfc7eed83d30353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:c063353471a657c674f6901a08e6ee26430c7ea16028c8ca748b5daaa72c1a49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.7 MB (290676224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf376e43a2d0130201a1cc936ef895ff7c43cf62ffbbcea166146865da0c7a4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:59:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:59:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 02:59:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:00:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:00:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:00:13 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:00:22 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:00:26 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 03:01:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:01:34 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:01:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:01:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef80bde76b59f7b5cd08e5adf9b506e5ebd729d6baa6a19dead5321aa38f23d1`  
		Last Modified: Tue, 10 Oct 2017 03:34:33 GMT  
		Size: 33.8 MB (33762136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c5f4a3cc5bfa890cb39d2b56fe308283b44b19995dce07026db14b277279d9`  
		Last Modified: Tue, 10 Oct 2017 03:34:15 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f04cdf93b607d37c4fc8b4fe1f2f0439357e99796a28ffd56840774aa9572d`  
		Last Modified: Tue, 10 Oct 2017 03:34:12 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38908de15c2aec525640e5dd9713455303711fd2a7b129f5e60674bbf8af9d`  
		Last Modified: Tue, 10 Oct 2017 03:34:48 GMT  
		Size: 46.3 MB (46339219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1a2b7652c5abad2043137babaa15293d21fee2db5eda68d282727c9f606148`  
		Last Modified: Tue, 10 Oct 2017 03:34:13 GMT  
		Size: 760.2 KB (760215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0598e51ae9544a1dff6efff8ee8916e577d8c525e5d4e8860a7e007f5496c489`  
		Last Modified: Tue, 10 Oct 2017 03:35:12 GMT  
		Size: 157.2 MB (157217690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2139f1b213ff8c4626f38d17e1b79fb95f32f06768dc2be23320d98e426ffc`  
		Last Modified: Tue, 10 Oct 2017 03:34:12 GMT  
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
$ docker pull ros@sha256:834032c1190c3f7642cf4620e392a40bd108d7954558f34cef95ce5c11031119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:7834b3ad96582f6d9aeb7ade05ef047435d4d24921a6a9a32fc89e505566dc9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302554243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce74ff298a7ad309652bd4ca4c737bc942e03a4f28c963ff8cb7f39cc783fb4b`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:171f12177c327a9f0028b76ba4cecd072d23f79eabd699f7cad337cb6f4e4ff1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263165966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be6576a8e1efceac0abe25aa6e591e18213256d1828602d99c7bc2f34457467`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:19d0908ee4e5b488818f005710a3d841a8d0fab39d9fd2640542daeac9e276b9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275297268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177246531fddd7bfdb01ba47e01ded0e42c5d48ab9ed0602a6a4105a66e1eeaa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:858a964ca453594781c6391eed2075a328f077ec5ee2cad2ca0d6e0ae9636b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:e8aa95fb2202bc60055512a2610a88314dfd74803aec4d00e28da30bb49d0181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307469347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399d089ed001455a6437e3faf1e29c6d6da78e9c2a849c073d69aeb11f531e0a`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:20:46 GMT
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed6110da6519b39df39da2a709c3a0fcf2b1ffabf0b62af10ff631930c5ff3`  
		Last Modified: Tue, 10 Oct 2017 22:34:13 GMT  
		Size: 4.9 MB (4915104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:bd9cf5406b229c9d634534eac46572dd6086efbf494573bfae8b4ae5c8a08d2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267638397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d242d6ea4fc740f3b64a4078888980ffed93eca1980d9e07a70fec059cca59b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c09dc2c668782182d7d0c4a58a821143b16161120be86fdb2544008d925d439e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280066407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80e9bd26325af10efc6c7417e54079e9b5478d3e4e73c2bfe6b438ad0aa2f30`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:4c9058d8aa5c1ac66b54641d00790d8fd9b11e62d8a47d00dc72fd93fb2ff27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:577522134e8b9315b1c0334a75e34e7856dd51ed5c47d462bc81a674c6b05e8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.8 MB (383838357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b09ed6dff4e1e1efc3f08adfe4a7efba4b77445f3d0866da95208056381a668`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:26:01 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 22:27:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:27:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:27:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:32 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:28:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a152f0d8c3e85d4040145d2836ae6e0a05dabe791efd7c69c9a901885466da6e`  
		Last Modified: Tue, 10 Oct 2017 22:38:30 GMT  
		Size: 193.3 MB (193326343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d184f956c7a2fa913f4d82ec0d8e8e0879a4fe1e6f5ea0305abaec505caf0a8`  
		Last Modified: Tue, 10 Oct 2017 22:37:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055e3aeff3408497b0dc2eaea714f68b175aded1c0482b127176fb6425739cdd`  
		Last Modified: Tue, 10 Oct 2017 22:39:20 GMT  
		Size: 81.3 MB (81257901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:80fd91c6eea08b9d3cefd1133197d0c450c3b58d21e03b971013e0e256217a1e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336189893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30983968b0359a248d05afc52994183279c657f56edfbba4fa41eaee9fe8966`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:39:54 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Sep 2017 04:41:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:41:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:41:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:41:30 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c47deec680c4813b57451c58e61642e35846092a5c28d0473e308b1fba28ce`  
		Last Modified: Wed, 27 Sep 2017 04:52:12 GMT  
		Size: 164.7 MB (164704679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a63264e4aafe1acdbd83e07b8322f864e3602ede89713905690d82075d7989`  
		Last Modified: Wed, 27 Sep 2017 04:51:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792f4b7618de91ac883f2e7a456e94e56c1502b17bd586015b554dbba23d254`  
		Last Modified: Wed, 27 Sep 2017 04:52:46 GMT  
		Size: 73.0 MB (72998709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:125e77fdde2bbdf96c8f795a5a0e743ff50995ebbaf299dfe318d6c50c0b833a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349894487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea0429babe8bd4bcd3c4330943a6568fb79d9258c3e368734f5444c17ff72e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:43:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8fc136e0c51a906ba8159562a941c0909a82c342db9f9d31d6693c99b182b4`  
		Last Modified: Tue, 19 Sep 2017 01:11:08 GMT  
		Size: 74.6 MB (74572695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:f26d46df6decc02d90641d642d6e6c810513225186de77a8c12e2eb7dfcfd6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:3cd1c134e58543cd904ee436583bbe2c5f16597e05d8dc6cf7e7693c1ffdb64d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.9 MB (732876345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f5c7e22f87eb9095fe0a328ab85c8ced382b7f5d21f0eca0e890df4b21059f`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:26:01 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 22:27:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:27:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:27:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:32 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:28:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:32:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a152f0d8c3e85d4040145d2836ae6e0a05dabe791efd7c69c9a901885466da6e`  
		Last Modified: Tue, 10 Oct 2017 22:38:30 GMT  
		Size: 193.3 MB (193326343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d184f956c7a2fa913f4d82ec0d8e8e0879a4fe1e6f5ea0305abaec505caf0a8`  
		Last Modified: Tue, 10 Oct 2017 22:37:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055e3aeff3408497b0dc2eaea714f68b175aded1c0482b127176fb6425739cdd`  
		Last Modified: Tue, 10 Oct 2017 22:39:20 GMT  
		Size: 81.3 MB (81257901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a90531e2bde104f51c23fa1ff6ed136a23cab3ba827b2f6878197a8e58f5f6a`  
		Last Modified: Tue, 10 Oct 2017 22:42:09 GMT  
		Size: 349.0 MB (349037988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:f6bfeba76420faa686383aada8fbbbda3fa48ebb73625d781213775f623c73e4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 MB (638954296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c2ffa6251e55b99556fd9554f1e6a8c2da02a1f309360f8164f1f35a3e9a39e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:39:54 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Sep 2017 04:41:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:41:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:41:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:41:30 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:47:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c47deec680c4813b57451c58e61642e35846092a5c28d0473e308b1fba28ce`  
		Last Modified: Wed, 27 Sep 2017 04:52:12 GMT  
		Size: 164.7 MB (164704679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a63264e4aafe1acdbd83e07b8322f864e3602ede89713905690d82075d7989`  
		Last Modified: Wed, 27 Sep 2017 04:51:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792f4b7618de91ac883f2e7a456e94e56c1502b17bd586015b554dbba23d254`  
		Last Modified: Wed, 27 Sep 2017 04:52:46 GMT  
		Size: 73.0 MB (72998709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0507d7c43799771633c8e1ac2bdfdae4441f71e5f442288c3793c92a8a21e1`  
		Last Modified: Wed, 27 Sep 2017 04:54:56 GMT  
		Size: 302.8 MB (302764403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:857dc7e78a0218057b469c0d9740cfc1cb9fc1864e28ac3f69f4962ec47ae9cb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.2 MB (667247120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04704a7ad543a1bee7e065805c1b6c687f3f2ce5e5e59b3b2fd4cdc5fb7646e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:43:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:00:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8fc136e0c51a906ba8159562a941c0909a82c342db9f9d31d6693c99b182b4`  
		Last Modified: Tue, 19 Sep 2017 01:11:08 GMT  
		Size: 74.6 MB (74572695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea37150035f27d1b693732f84c9952754f07ac3341c5b1fb3ab91725d260819`  
		Last Modified: Tue, 19 Sep 2017 01:14:43 GMT  
		Size: 317.4 MB (317352633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:5c3bfc3e2118b2e4a694c01d76025c678da07cc4d7ae160fea6d8613d04100f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:8e6c235d1add246e35516c0125b0988a83f3efef23d1494c4d9eaf7c89b42ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.7 MB (900654772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b217652770d23887e0fb529be4b85516fd899b368e38f937d63b289522ef9980`
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
# Tue, 10 Oct 2017 03:25:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:29:17 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ef8b98bbb58e8bda20c1cdde473d74ef1acf4cb3bc7c4b78b62ea611c0e4015c`  
		Last Modified: Tue, 10 Oct 2017 03:53:14 GMT  
		Size: 122.2 MB (122197360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d0e5f55a8dd5f28894665483aacb28d3af1a65e20128a91fc7e760ebbc696d`  
		Last Modified: Tue, 10 Oct 2017 03:59:43 GMT  
		Size: 408.9 MB (408893832 bytes)  
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
$ docker pull ros@sha256:f26d46df6decc02d90641d642d6e6c810513225186de77a8c12e2eb7dfcfd6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3cd1c134e58543cd904ee436583bbe2c5f16597e05d8dc6cf7e7693c1ffdb64d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.9 MB (732876345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f5c7e22f87eb9095fe0a328ab85c8ced382b7f5d21f0eca0e890df4b21059f`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:26:01 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 22:27:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:27:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:27:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:32 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:28:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:32:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a152f0d8c3e85d4040145d2836ae6e0a05dabe791efd7c69c9a901885466da6e`  
		Last Modified: Tue, 10 Oct 2017 22:38:30 GMT  
		Size: 193.3 MB (193326343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d184f956c7a2fa913f4d82ec0d8e8e0879a4fe1e6f5ea0305abaec505caf0a8`  
		Last Modified: Tue, 10 Oct 2017 22:37:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055e3aeff3408497b0dc2eaea714f68b175aded1c0482b127176fb6425739cdd`  
		Last Modified: Tue, 10 Oct 2017 22:39:20 GMT  
		Size: 81.3 MB (81257901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a90531e2bde104f51c23fa1ff6ed136a23cab3ba827b2f6878197a8e58f5f6a`  
		Last Modified: Tue, 10 Oct 2017 22:42:09 GMT  
		Size: 349.0 MB (349037988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f6bfeba76420faa686383aada8fbbbda3fa48ebb73625d781213775f623c73e4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 MB (638954296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c2ffa6251e55b99556fd9554f1e6a8c2da02a1f309360f8164f1f35a3e9a39e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:39:54 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Sep 2017 04:41:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:41:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:41:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:41:30 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:47:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c47deec680c4813b57451c58e61642e35846092a5c28d0473e308b1fba28ce`  
		Last Modified: Wed, 27 Sep 2017 04:52:12 GMT  
		Size: 164.7 MB (164704679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a63264e4aafe1acdbd83e07b8322f864e3602ede89713905690d82075d7989`  
		Last Modified: Wed, 27 Sep 2017 04:51:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792f4b7618de91ac883f2e7a456e94e56c1502b17bd586015b554dbba23d254`  
		Last Modified: Wed, 27 Sep 2017 04:52:46 GMT  
		Size: 73.0 MB (72998709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0507d7c43799771633c8e1ac2bdfdae4441f71e5f442288c3793c92a8a21e1`  
		Last Modified: Wed, 27 Sep 2017 04:54:56 GMT  
		Size: 302.8 MB (302764403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:857dc7e78a0218057b469c0d9740cfc1cb9fc1864e28ac3f69f4962ec47ae9cb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.2 MB (667247120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04704a7ad543a1bee7e065805c1b6c687f3f2ce5e5e59b3b2fd4cdc5fb7646e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:43:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:00:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8fc136e0c51a906ba8159562a941c0909a82c342db9f9d31d6693c99b182b4`  
		Last Modified: Tue, 19 Sep 2017 01:11:08 GMT  
		Size: 74.6 MB (74572695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea37150035f27d1b693732f84c9952754f07ac3341c5b1fb3ab91725d260819`  
		Last Modified: Tue, 19 Sep 2017 01:14:43 GMT  
		Size: 317.4 MB (317352633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-zesty`

```console
$ docker pull ros@sha256:59c2bfc2324aeed954eb159528654f8d91e4d07bdedd22ff8833ea29a4c68d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-perception-zesty` - linux; amd64

```console
$ docker pull ros@sha256:d8309cb2218e8d1e0f4091d9d1340762aac2a7ed0366a751402a0a32a22ede42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **776.3 MB (776300045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a642313aa93f20cf47130aff5429d3d18b953853e2cb5980e898b6ed75d88b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 03:06:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 03:06:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:06:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:07:00 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:07:00 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 03:08:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:08:38 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:09:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941d2fac0f14226501e34da5b43391f4bbe04d3346877822b31eafa6536129d0`  
		Last Modified: Tue, 10 Oct 2017 03:37:48 GMT  
		Size: 3.4 MB (3401510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b067fed8961dece065ee9bccff1d9119d9eccccf104299066405dba95a2652`  
		Last Modified: Tue, 10 Oct 2017 03:37:46 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbff2b0d61e4e675eeb8cb68cd72d13a05c3906d700390ff97ec5e5b410f25bb`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36675dd75235c3e694f430b21494a0524ac4578a3706eb08fd6e6684e14d8a1e`  
		Last Modified: Tue, 10 Oct 2017 03:38:15 GMT  
		Size: 58.6 MB (58605790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498574cb89d5edfe2e30643da36d0160ccf0677f80ecc5fdaa36046a8b464d9f`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a435b81f91cade435478334da7c04ceaba7578753f48749829c22a28d5db6c`  
		Last Modified: Tue, 10 Oct 2017 03:38:59 GMT  
		Size: 252.3 MB (252323400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ebb4a524495455eaae97004bcb1e81121bd358b5468f441ba48639314e26ae`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334c2df628a7b923af30203c3117ed1bd54157ae5975b9498ed532325be18544`  
		Last Modified: Tue, 10 Oct 2017 03:43:29 GMT  
		Size: 74.6 MB (74575502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbc5819711c7fa89e2ea4dca2238d7f4ba0c6b87df815ed9f87e021871b8fb8`  
		Last Modified: Tue, 10 Oct 2017 03:47:45 GMT  
		Size: 348.2 MB (348191523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:77ba5175ade528e3457d0f6f72628971f8e276e84757c8149ac6debab36492d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:3a94f9a57dfc60b5ea531af03c36bbf0e8f7a507fbba5e2668bb3173d9a8c068
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.5 MB (487477508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbd7fa29a1b175a68eef26dab54f112a3d9d02e73af92b2957b9e29b53661c9`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:26:01 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 22:27:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:27:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:27:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:32 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:28:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:29:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a152f0d8c3e85d4040145d2836ae6e0a05dabe791efd7c69c9a901885466da6e`  
		Last Modified: Tue, 10 Oct 2017 22:38:30 GMT  
		Size: 193.3 MB (193326343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d184f956c7a2fa913f4d82ec0d8e8e0879a4fe1e6f5ea0305abaec505caf0a8`  
		Last Modified: Tue, 10 Oct 2017 22:37:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055e3aeff3408497b0dc2eaea714f68b175aded1c0482b127176fb6425739cdd`  
		Last Modified: Tue, 10 Oct 2017 22:39:20 GMT  
		Size: 81.3 MB (81257901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fc9974252b9bc4ede7cb761ad67cda49e5ba554361ac15ee9c7bab9f7cc1a`  
		Last Modified: Tue, 10 Oct 2017 22:40:24 GMT  
		Size: 103.6 MB (103639151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:c996aba32bae98ba0ed5fe23fbe08e52c09b07810d1fc554aeab2dff80794128
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426278396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00bc8eb8f0275a27dcbf6091524054e50a91a3bdae3cd4a6358bec10015825b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:39:54 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Sep 2017 04:41:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:41:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:41:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:41:30 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:43:33 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c47deec680c4813b57451c58e61642e35846092a5c28d0473e308b1fba28ce`  
		Last Modified: Wed, 27 Sep 2017 04:52:12 GMT  
		Size: 164.7 MB (164704679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a63264e4aafe1acdbd83e07b8322f864e3602ede89713905690d82075d7989`  
		Last Modified: Wed, 27 Sep 2017 04:51:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792f4b7618de91ac883f2e7a456e94e56c1502b17bd586015b554dbba23d254`  
		Last Modified: Wed, 27 Sep 2017 04:52:46 GMT  
		Size: 73.0 MB (72998709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33564a73ed20f7fdf884f5abe380b8739e0153ec46c093f6ce92a609f61c2b6e`  
		Last Modified: Wed, 27 Sep 2017 04:53:24 GMT  
		Size: 90.1 MB (90088503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3d2f8e603900a58106bcb3c9ef10db7be80a4274f8f4f9072b33cdc7b381f85d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443795741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c32a1378340c626c2f51e2b2d9add28080907444e1c419e223a80e420967fb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:43:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:49:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8fc136e0c51a906ba8159562a941c0909a82c342db9f9d31d6693c99b182b4`  
		Last Modified: Tue, 19 Sep 2017 01:11:08 GMT  
		Size: 74.6 MB (74572695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0b591ff93b9781220151e8ae82ec90762aecf0764d20ceb3df5b4b00e10619`  
		Last Modified: Tue, 19 Sep 2017 01:12:22 GMT  
		Size: 93.9 MB (93901254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:e5a661a51c54b06b92a4dd3f317c8fe70056d320d9d835f88785da985b23ca36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:8c3cceaaf2c63f67528c67c78ad63aaf3cb670bae2848c8cbd0e8df9da9cf5dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.2 MB (552183013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff132ba161e18463c868e000b6f639c38dd2337d88a5816fcf55f33264334723`
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
# Tue, 10 Oct 2017 03:25:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:26:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ef8b98bbb58e8bda20c1cdde473d74ef1acf4cb3bc7c4b78b62ea611c0e4015c`  
		Last Modified: Tue, 10 Oct 2017 03:53:14 GMT  
		Size: 122.2 MB (122197360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5599c6eb5d06a9ee8e541da65b99bb2421be514a745dc997317f29303e9f7015`  
		Last Modified: Tue, 10 Oct 2017 03:57:49 GMT  
		Size: 60.4 MB (60422073 bytes)  
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
$ docker pull ros@sha256:77ba5175ade528e3457d0f6f72628971f8e276e84757c8149ac6debab36492d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3a94f9a57dfc60b5ea531af03c36bbf0e8f7a507fbba5e2668bb3173d9a8c068
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.5 MB (487477508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbd7fa29a1b175a68eef26dab54f112a3d9d02e73af92b2957b9e29b53661c9`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:26:01 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 22:27:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:27:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:27:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:32 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:28:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:29:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a152f0d8c3e85d4040145d2836ae6e0a05dabe791efd7c69c9a901885466da6e`  
		Last Modified: Tue, 10 Oct 2017 22:38:30 GMT  
		Size: 193.3 MB (193326343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d184f956c7a2fa913f4d82ec0d8e8e0879a4fe1e6f5ea0305abaec505caf0a8`  
		Last Modified: Tue, 10 Oct 2017 22:37:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055e3aeff3408497b0dc2eaea714f68b175aded1c0482b127176fb6425739cdd`  
		Last Modified: Tue, 10 Oct 2017 22:39:20 GMT  
		Size: 81.3 MB (81257901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fc9974252b9bc4ede7cb761ad67cda49e5ba554361ac15ee9c7bab9f7cc1a`  
		Last Modified: Tue, 10 Oct 2017 22:40:24 GMT  
		Size: 103.6 MB (103639151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:c996aba32bae98ba0ed5fe23fbe08e52c09b07810d1fc554aeab2dff80794128
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426278396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00bc8eb8f0275a27dcbf6091524054e50a91a3bdae3cd4a6358bec10015825b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:39:54 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Sep 2017 04:41:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:41:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:41:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:41:30 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:43:33 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c47deec680c4813b57451c58e61642e35846092a5c28d0473e308b1fba28ce`  
		Last Modified: Wed, 27 Sep 2017 04:52:12 GMT  
		Size: 164.7 MB (164704679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a63264e4aafe1acdbd83e07b8322f864e3602ede89713905690d82075d7989`  
		Last Modified: Wed, 27 Sep 2017 04:51:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792f4b7618de91ac883f2e7a456e94e56c1502b17bd586015b554dbba23d254`  
		Last Modified: Wed, 27 Sep 2017 04:52:46 GMT  
		Size: 73.0 MB (72998709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33564a73ed20f7fdf884f5abe380b8739e0153ec46c093f6ce92a609f61c2b6e`  
		Last Modified: Wed, 27 Sep 2017 04:53:24 GMT  
		Size: 90.1 MB (90088503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3d2f8e603900a58106bcb3c9ef10db7be80a4274f8f4f9072b33cdc7b381f85d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443795741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c32a1378340c626c2f51e2b2d9add28080907444e1c419e223a80e420967fb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:43:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:49:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8fc136e0c51a906ba8159562a941c0909a82c342db9f9d31d6693c99b182b4`  
		Last Modified: Tue, 19 Sep 2017 01:11:08 GMT  
		Size: 74.6 MB (74572695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0b591ff93b9781220151e8ae82ec90762aecf0764d20ceb3df5b4b00e10619`  
		Last Modified: Tue, 19 Sep 2017 01:12:22 GMT  
		Size: 93.9 MB (93901254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-zesty`

```console
$ docker pull ros@sha256:1e7b9cc7006ef9d17cb66c6e8a78e0ee529098274884024ebb941a36a5d383a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-robot-zesty` - linux; amd64

```console
$ docker pull ros@sha256:bc6a0cc9739875b86b3788f70ae97ec2deb8ffd1fa13e0f4ea133fc261312d54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.5 MB (472504499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfbb18e3bb414c2c81dfe6365f3e502a5301aa0d15e7a0dac66926b71f0670e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 03:06:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 03:06:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:06:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:07:00 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:07:00 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 03:08:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:08:38 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:09:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:11:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941d2fac0f14226501e34da5b43391f4bbe04d3346877822b31eafa6536129d0`  
		Last Modified: Tue, 10 Oct 2017 03:37:48 GMT  
		Size: 3.4 MB (3401510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b067fed8961dece065ee9bccff1d9119d9eccccf104299066405dba95a2652`  
		Last Modified: Tue, 10 Oct 2017 03:37:46 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbff2b0d61e4e675eeb8cb68cd72d13a05c3906d700390ff97ec5e5b410f25bb`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36675dd75235c3e694f430b21494a0524ac4578a3706eb08fd6e6684e14d8a1e`  
		Last Modified: Tue, 10 Oct 2017 03:38:15 GMT  
		Size: 58.6 MB (58605790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498574cb89d5edfe2e30643da36d0160ccf0677f80ecc5fdaa36046a8b464d9f`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a435b81f91cade435478334da7c04ceaba7578753f48749829c22a28d5db6c`  
		Last Modified: Tue, 10 Oct 2017 03:38:59 GMT  
		Size: 252.3 MB (252323400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ebb4a524495455eaae97004bcb1e81121bd358b5468f441ba48639314e26ae`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334c2df628a7b923af30203c3117ed1bd54157ae5975b9498ed532325be18544`  
		Last Modified: Tue, 10 Oct 2017 03:43:29 GMT  
		Size: 74.6 MB (74575502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a4362417bf412a46a9a0dd599400099f6f62983d3b3fb9345f888164e782b0`  
		Last Modified: Tue, 10 Oct 2017 03:43:55 GMT  
		Size: 44.4 MB (44395977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:4c9058d8aa5c1ac66b54641d00790d8fd9b11e62d8a47d00dc72fd93fb2ff27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:577522134e8b9315b1c0334a75e34e7856dd51ed5c47d462bc81a674c6b05e8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.8 MB (383838357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b09ed6dff4e1e1efc3f08adfe4a7efba4b77445f3d0866da95208056381a668`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:26:01 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 22:27:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:27:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:27:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:32 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:28:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a152f0d8c3e85d4040145d2836ae6e0a05dabe791efd7c69c9a901885466da6e`  
		Last Modified: Tue, 10 Oct 2017 22:38:30 GMT  
		Size: 193.3 MB (193326343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d184f956c7a2fa913f4d82ec0d8e8e0879a4fe1e6f5ea0305abaec505caf0a8`  
		Last Modified: Tue, 10 Oct 2017 22:37:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055e3aeff3408497b0dc2eaea714f68b175aded1c0482b127176fb6425739cdd`  
		Last Modified: Tue, 10 Oct 2017 22:39:20 GMT  
		Size: 81.3 MB (81257901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:80fd91c6eea08b9d3cefd1133197d0c450c3b58d21e03b971013e0e256217a1e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336189893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30983968b0359a248d05afc52994183279c657f56edfbba4fa41eaee9fe8966`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:39:54 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Sep 2017 04:41:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:41:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:41:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:41:30 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c47deec680c4813b57451c58e61642e35846092a5c28d0473e308b1fba28ce`  
		Last Modified: Wed, 27 Sep 2017 04:52:12 GMT  
		Size: 164.7 MB (164704679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a63264e4aafe1acdbd83e07b8322f864e3602ede89713905690d82075d7989`  
		Last Modified: Wed, 27 Sep 2017 04:51:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792f4b7618de91ac883f2e7a456e94e56c1502b17bd586015b554dbba23d254`  
		Last Modified: Wed, 27 Sep 2017 04:52:46 GMT  
		Size: 73.0 MB (72998709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:125e77fdde2bbdf96c8f795a5a0e743ff50995ebbaf299dfe318d6c50c0b833a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349894487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea0429babe8bd4bcd3c4330943a6568fb79d9258c3e368734f5444c17ff72e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:43:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8fc136e0c51a906ba8159562a941c0909a82c342db9f9d31d6693c99b182b4`  
		Last Modified: Tue, 19 Sep 2017 01:11:08 GMT  
		Size: 74.6 MB (74572695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:4dde96233781eb68f0ecd0c19998e74d5133d44ab913020f2d7f4cdf52fcaed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c1d73f5505a8ce05cec6b6a8d61ff8a95051bd7c01c3bef6f62ac55e142d4fc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.8 MB (491760940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08347702cee2bf8425f34f743b2b565c95a31cec139e46d4308792ccd52f9bc7`
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
# Tue, 10 Oct 2017 03:25:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ef8b98bbb58e8bda20c1cdde473d74ef1acf4cb3bc7c4b78b62ea611c0e4015c`  
		Last Modified: Tue, 10 Oct 2017 03:53:14 GMT  
		Size: 122.2 MB (122197360 bytes)  
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
$ docker pull ros@sha256:4c9058d8aa5c1ac66b54641d00790d8fd9b11e62d8a47d00dc72fd93fb2ff27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:577522134e8b9315b1c0334a75e34e7856dd51ed5c47d462bc81a674c6b05e8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.8 MB (383838357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b09ed6dff4e1e1efc3f08adfe4a7efba4b77445f3d0866da95208056381a668`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:26:01 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 22:27:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:27:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:27:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:32 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:28:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a152f0d8c3e85d4040145d2836ae6e0a05dabe791efd7c69c9a901885466da6e`  
		Last Modified: Tue, 10 Oct 2017 22:38:30 GMT  
		Size: 193.3 MB (193326343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d184f956c7a2fa913f4d82ec0d8e8e0879a4fe1e6f5ea0305abaec505caf0a8`  
		Last Modified: Tue, 10 Oct 2017 22:37:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055e3aeff3408497b0dc2eaea714f68b175aded1c0482b127176fb6425739cdd`  
		Last Modified: Tue, 10 Oct 2017 22:39:20 GMT  
		Size: 81.3 MB (81257901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:80fd91c6eea08b9d3cefd1133197d0c450c3b58d21e03b971013e0e256217a1e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336189893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30983968b0359a248d05afc52994183279c657f56edfbba4fa41eaee9fe8966`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:39:54 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Sep 2017 04:41:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:41:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:41:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:41:30 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c47deec680c4813b57451c58e61642e35846092a5c28d0473e308b1fba28ce`  
		Last Modified: Wed, 27 Sep 2017 04:52:12 GMT  
		Size: 164.7 MB (164704679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a63264e4aafe1acdbd83e07b8322f864e3602ede89713905690d82075d7989`  
		Last Modified: Wed, 27 Sep 2017 04:51:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792f4b7618de91ac883f2e7a456e94e56c1502b17bd586015b554dbba23d254`  
		Last Modified: Wed, 27 Sep 2017 04:52:46 GMT  
		Size: 73.0 MB (72998709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:125e77fdde2bbdf96c8f795a5a0e743ff50995ebbaf299dfe318d6c50c0b833a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349894487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea0429babe8bd4bcd3c4330943a6568fb79d9258c3e368734f5444c17ff72e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:43:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8fc136e0c51a906ba8159562a941c0909a82c342db9f9d31d6693c99b182b4`  
		Last Modified: Tue, 19 Sep 2017 01:11:08 GMT  
		Size: 74.6 MB (74572695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-zesty`

```console
$ docker pull ros@sha256:27419dfb8c7deb520216efdcccd310dcabdca1046d812fa69d175447dcc90c55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base-zesty` - linux; amd64

```console
$ docker pull ros@sha256:d6cdf53adaeebda090dd25a71f7a9e40cbdc45e2be601abc04200a209d23b656
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.1 MB (428108522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337af70055f5626967f67304c864fc2a39041c7546bf0876ee1837b1099f92fb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 03:06:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 03:06:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:06:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:07:00 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:07:00 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 03:08:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:08:38 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:09:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941d2fac0f14226501e34da5b43391f4bbe04d3346877822b31eafa6536129d0`  
		Last Modified: Tue, 10 Oct 2017 03:37:48 GMT  
		Size: 3.4 MB (3401510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b067fed8961dece065ee9bccff1d9119d9eccccf104299066405dba95a2652`  
		Last Modified: Tue, 10 Oct 2017 03:37:46 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbff2b0d61e4e675eeb8cb68cd72d13a05c3906d700390ff97ec5e5b410f25bb`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36675dd75235c3e694f430b21494a0524ac4578a3706eb08fd6e6684e14d8a1e`  
		Last Modified: Tue, 10 Oct 2017 03:38:15 GMT  
		Size: 58.6 MB (58605790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498574cb89d5edfe2e30643da36d0160ccf0677f80ecc5fdaa36046a8b464d9f`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a435b81f91cade435478334da7c04ceaba7578753f48749829c22a28d5db6c`  
		Last Modified: Tue, 10 Oct 2017 03:38:59 GMT  
		Size: 252.3 MB (252323400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ebb4a524495455eaae97004bcb1e81121bd358b5468f441ba48639314e26ae`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334c2df628a7b923af30203c3117ed1bd54157ae5975b9498ed532325be18544`  
		Last Modified: Tue, 10 Oct 2017 03:43:29 GMT  
		Size: 74.6 MB (74575502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:9812039b92fde9d366c71cae692de968604f804b9381ca61e40de392c0573ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a786d84cf2d7d72600835bd41c1087401a11c0e65ddea620cc7d1a8f19694974
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302580456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18db0e780a67a2dfaeb591f485b1295226b11c0fe1bd71f85506ba478ff42cee`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:26:01 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 22:27:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:27:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:27:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:32 GMT
CMD ["bash"]
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a152f0d8c3e85d4040145d2836ae6e0a05dabe791efd7c69c9a901885466da6e`  
		Last Modified: Tue, 10 Oct 2017 22:38:30 GMT  
		Size: 193.3 MB (193326343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d184f956c7a2fa913f4d82ec0d8e8e0879a4fe1e6f5ea0305abaec505caf0a8`  
		Last Modified: Tue, 10 Oct 2017 22:37:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:d3bfaf0a47260aaa7ac66bbac7a6da754590c7a4b0c88840f75351d4e95167cc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263191184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992abc733b5b536300ad567d588673b02be5b355d73a3e7c14c7656e6c2a320c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:39:54 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Sep 2017 04:41:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:41:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:41:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:41:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c47deec680c4813b57451c58e61642e35846092a5c28d0473e308b1fba28ce`  
		Last Modified: Wed, 27 Sep 2017 04:52:12 GMT  
		Size: 164.7 MB (164704679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a63264e4aafe1acdbd83e07b8322f864e3602ede89713905690d82075d7989`  
		Last Modified: Wed, 27 Sep 2017 04:51:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d1eb7e8e3689cd0c8f0f7588e114b18ec5cf95a18dca6d89d1a6344eaa196f28
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275321792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6634b7099b2d6e78a94f4f2352acd79d4194647811055395021165071d34f8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:cb224362596b0961411a040793f078d52d8fb29dc5bdbefaacd12033219c8483
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
$ docker pull ros@sha256:9812039b92fde9d366c71cae692de968604f804b9381ca61e40de392c0573ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:a786d84cf2d7d72600835bd41c1087401a11c0e65ddea620cc7d1a8f19694974
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302580456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18db0e780a67a2dfaeb591f485b1295226b11c0fe1bd71f85506ba478ff42cee`
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
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:26:01 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 22:27:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:27:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:27:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:27:32 GMT
CMD ["bash"]
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
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a152f0d8c3e85d4040145d2836ae6e0a05dabe791efd7c69c9a901885466da6e`  
		Last Modified: Tue, 10 Oct 2017 22:38:30 GMT  
		Size: 193.3 MB (193326343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d184f956c7a2fa913f4d82ec0d8e8e0879a4fe1e6f5ea0305abaec505caf0a8`  
		Last Modified: Tue, 10 Oct 2017 22:37:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:d3bfaf0a47260aaa7ac66bbac7a6da754590c7a4b0c88840f75351d4e95167cc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263191184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992abc733b5b536300ad567d588673b02be5b355d73a3e7c14c7656e6c2a320c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:39:54 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Sep 2017 04:41:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:41:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:41:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:41:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c47deec680c4813b57451c58e61642e35846092a5c28d0473e308b1fba28ce`  
		Last Modified: Wed, 27 Sep 2017 04:52:12 GMT  
		Size: 164.7 MB (164704679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a63264e4aafe1acdbd83e07b8322f864e3602ede89713905690d82075d7989`  
		Last Modified: Wed, 27 Sep 2017 04:51:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d1eb7e8e3689cd0c8f0f7588e114b18ec5cf95a18dca6d89d1a6344eaa196f28
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275321792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6634b7099b2d6e78a94f4f2352acd79d4194647811055395021165071d34f8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-zesty`

```console
$ docker pull ros@sha256:2d35c8a86f0f07195ca2b872f8a57ee5bf5733c8ccdde0b28928bc52eddc1767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-core-zesty` - linux; amd64

```console
$ docker pull ros@sha256:8e761b559d4f0d140bf003ee3b1b8050dd99aa67ac2c2aebe75a000f1dc539f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353533020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4daeda0edc4a426c6ff24633c6eecb613e6f1eddcf4de5598523c66b3dcc7b68`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 03:06:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 03:06:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:06:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:07:00 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:07:00 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 03:08:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:08:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941d2fac0f14226501e34da5b43391f4bbe04d3346877822b31eafa6536129d0`  
		Last Modified: Tue, 10 Oct 2017 03:37:48 GMT  
		Size: 3.4 MB (3401510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b067fed8961dece065ee9bccff1d9119d9eccccf104299066405dba95a2652`  
		Last Modified: Tue, 10 Oct 2017 03:37:46 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbff2b0d61e4e675eeb8cb68cd72d13a05c3906d700390ff97ec5e5b410f25bb`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36675dd75235c3e694f430b21494a0524ac4578a3706eb08fd6e6684e14d8a1e`  
		Last Modified: Tue, 10 Oct 2017 03:38:15 GMT  
		Size: 58.6 MB (58605790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498574cb89d5edfe2e30643da36d0160ccf0677f80ecc5fdaa36046a8b464d9f`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a435b81f91cade435478334da7c04ceaba7578753f48749829c22a28d5db6c`  
		Last Modified: Tue, 10 Oct 2017 03:38:59 GMT  
		Size: 252.3 MB (252323400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ebb4a524495455eaae97004bcb1e81121bd358b5468f441ba48639314e26ae`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
