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
$ docker pull ros@sha256:18e200b97c758bb71eca711e3847a14370cc12e129a402d3b524e76a5551a4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:27d80047c7cebe3f8c115396d73cacb37d92dd007af2dafd05073c44c028d9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307393933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bf812ee90521098a83aac6342e4fa2fcf5f7e4cf5c3a932b2f726a40890d26`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:19:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7760b3e75049e9a5ebf4cbbeab14f2aa09c289378676def785907e66fbc7ea75`  
		Last Modified: Tue, 19 Sep 2017 00:37:45 GMT  
		Size: 4.9 MB (4915052 bytes)  
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
$ docker pull ros@sha256:3f8c92429aa58553c4643149fb0274d413c50e0c3362e6ab046dd280414b8ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:4230c77601242a8fd734b7adf587af71a634446b737d71626741ac1d05c95345
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 MB (695308647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4b13b3cf91b6bb8de0dbf8655840e942290edbd7580158577466a80b72a717`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:19:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:24:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7760b3e75049e9a5ebf4cbbeab14f2aa09c289378676def785907e66fbc7ea75`  
		Last Modified: Tue, 19 Sep 2017 00:37:45 GMT  
		Size: 4.9 MB (4915052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e962708fc9fce4fde98ecb11f1e6e9803d166ef56b4ddd1183918c5d2235eeb`  
		Last Modified: Tue, 19 Sep 2017 00:40:45 GMT  
		Size: 387.9 MB (387914714 bytes)  
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
$ docker pull ros@sha256:a0dd555c540d82fe65368520d72f37b6182c93b91503fcc917f16075cd841678
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

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:3f8c92429aa58553c4643149fb0274d413c50e0c3362e6ab046dd280414b8ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:4230c77601242a8fd734b7adf587af71a634446b737d71626741ac1d05c95345
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 MB (695308647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4b13b3cf91b6bb8de0dbf8655840e942290edbd7580158577466a80b72a717`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:19:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:24:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7760b3e75049e9a5ebf4cbbeab14f2aa09c289378676def785907e66fbc7ea75`  
		Last Modified: Tue, 19 Sep 2017 00:37:45 GMT  
		Size: 4.9 MB (4915052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e962708fc9fce4fde98ecb11f1e6e9803d166ef56b4ddd1183918c5d2235eeb`  
		Last Modified: Tue, 19 Sep 2017 00:40:45 GMT  
		Size: 387.9 MB (387914714 bytes)  
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
$ docker pull ros@sha256:ebf04f6264d2074c891ac656351e62cf551fe7db442ad19e3fb83a33e46c5c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:05355aa5280c1f57b4a80b9dda604780efbace74237377285fac96033f71722d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.7 MB (446656151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c495a3406f33e6d71223138858ec9fa0e5e2290eb60cd786801f4d8cf57a04`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:19:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:20:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7760b3e75049e9a5ebf4cbbeab14f2aa09c289378676def785907e66fbc7ea75`  
		Last Modified: Tue, 19 Sep 2017 00:37:45 GMT  
		Size: 4.9 MB (4915052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5e9d1f01b3b98361ef2ac1903cbcd0145689993262c104d242e0af62c34b6`  
		Last Modified: Tue, 19 Sep 2017 00:38:52 GMT  
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
$ docker pull ros@sha256:7875fe84cf70575e4eaca3e0db67193eac0ad953acbf4171c113db69b40b4b27
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

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:ebf04f6264d2074c891ac656351e62cf551fe7db442ad19e3fb83a33e46c5c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:05355aa5280c1f57b4a80b9dda604780efbace74237377285fac96033f71722d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.7 MB (446656151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c495a3406f33e6d71223138858ec9fa0e5e2290eb60cd786801f4d8cf57a04`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:19:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:20:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7760b3e75049e9a5ebf4cbbeab14f2aa09c289378676def785907e66fbc7ea75`  
		Last Modified: Tue, 19 Sep 2017 00:37:45 GMT  
		Size: 4.9 MB (4915052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5e9d1f01b3b98361ef2ac1903cbcd0145689993262c104d242e0af62c34b6`  
		Last Modified: Tue, 19 Sep 2017 00:38:52 GMT  
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
$ docker pull ros@sha256:18e200b97c758bb71eca711e3847a14370cc12e129a402d3b524e76a5551a4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:27d80047c7cebe3f8c115396d73cacb37d92dd007af2dafd05073c44c028d9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307393933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bf812ee90521098a83aac6342e4fa2fcf5f7e4cf5c3a932b2f726a40890d26`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:19:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7760b3e75049e9a5ebf4cbbeab14f2aa09c289378676def785907e66fbc7ea75`  
		Last Modified: Tue, 19 Sep 2017 00:37:45 GMT  
		Size: 4.9 MB (4915052 bytes)  
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
$ docker pull ros@sha256:f52eb4c24a62901a4c8a1b85401f7ab88eec8b3be368ce5eed2c99ea0b6b70d4
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

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:18e200b97c758bb71eca711e3847a14370cc12e129a402d3b524e76a5551a4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:27d80047c7cebe3f8c115396d73cacb37d92dd007af2dafd05073c44c028d9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307393933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bf812ee90521098a83aac6342e4fa2fcf5f7e4cf5c3a932b2f726a40890d26`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:19:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7760b3e75049e9a5ebf4cbbeab14f2aa09c289378676def785907e66fbc7ea75`  
		Last Modified: Tue, 19 Sep 2017 00:37:45 GMT  
		Size: 4.9 MB (4915052 bytes)  
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
$ docker pull ros@sha256:0e113061d24a0a71beeb71bc065022ef317c506ec52dc053e96fb7a0e4e7fc99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:87265e0c8aae5ec7eed237073b6159ee4e2f47838d6301a30e8a14faad6a48ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302478881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0096a2531ff4c641a8a03dde63d42559efe217260beb05bad870eb45a378b290`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
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
$ docker pull ros@sha256:9f12e45ff53e6f20ade5eadae7d7df2f23f3edb665e28c72665be470ea1e9a6d
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

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:0e113061d24a0a71beeb71bc065022ef317c506ec52dc053e96fb7a0e4e7fc99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:87265e0c8aae5ec7eed237073b6159ee4e2f47838d6301a30e8a14faad6a48ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302478881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0096a2531ff4c641a8a03dde63d42559efe217260beb05bad870eb45a378b290`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
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
$ docker pull ros@sha256:18e200b97c758bb71eca711e3847a14370cc12e129a402d3b524e76a5551a4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:27d80047c7cebe3f8c115396d73cacb37d92dd007af2dafd05073c44c028d9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307393933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bf812ee90521098a83aac6342e4fa2fcf5f7e4cf5c3a932b2f726a40890d26`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:19:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7760b3e75049e9a5ebf4cbbeab14f2aa09c289378676def785907e66fbc7ea75`  
		Last Modified: Tue, 19 Sep 2017 00:37:45 GMT  
		Size: 4.9 MB (4915052 bytes)  
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
$ docker pull ros@sha256:67f9c4952d2c96e6a0a07f4f4af388a852630612bd9a52657e7c72bcdddaeb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:37da425dd20112967f803ccd3b03b35e3fd8998baae766ebd4145822953aec5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.8 MB (383755658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb720ea03434887f389fe9301292b550fcf87289d61fa048a0e73a8042b451`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333de0c7ac9e332e550eed9b83a9125de4bf9edaa79e8d34aa4218180854f54`  
		Last Modified: Tue, 19 Sep 2017 00:43:03 GMT  
		Size: 81.3 MB (81257767 bytes)  
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
$ docker pull ros@sha256:068a4b189ac59a72725847be66dc014028191d586ee736de1aa9acfaacdd904f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:cec200fff1aec00d5c271dd9d1bd73437f6b795bf2e402cd29c3a9db3037d37c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.8 MB (732787913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86a7a56b5db159a5897c8fd0dd544f754de05e790b1e47b2325b78ac95079e9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:35:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333de0c7ac9e332e550eed9b83a9125de4bf9edaa79e8d34aa4218180854f54`  
		Last Modified: Tue, 19 Sep 2017 00:43:03 GMT  
		Size: 81.3 MB (81257767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473aef4c3217560c7c3d5449a07d6e3192777ecf80ccce4f0498c761dda51fb6`  
		Last Modified: Tue, 19 Sep 2017 00:45:35 GMT  
		Size: 349.0 MB (349032255 bytes)  
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
$ docker pull ros@sha256:bfacb6401c41db9dbb1dfc1cc679085f2174628ab181b2e4bd8b936982051aa0
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

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:068a4b189ac59a72725847be66dc014028191d586ee736de1aa9acfaacdd904f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:cec200fff1aec00d5c271dd9d1bd73437f6b795bf2e402cd29c3a9db3037d37c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.8 MB (732787913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86a7a56b5db159a5897c8fd0dd544f754de05e790b1e47b2325b78ac95079e9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:35:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333de0c7ac9e332e550eed9b83a9125de4bf9edaa79e8d34aa4218180854f54`  
		Last Modified: Tue, 19 Sep 2017 00:43:03 GMT  
		Size: 81.3 MB (81257767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473aef4c3217560c7c3d5449a07d6e3192777ecf80ccce4f0498c761dda51fb6`  
		Last Modified: Tue, 19 Sep 2017 00:45:35 GMT  
		Size: 349.0 MB (349032255 bytes)  
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
$ docker pull ros@sha256:75fbe775d97b319505335e1cfdbcbe85625b3095f2c69e7470fda3ba3d9bb635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:8f048fd589ab0de794aa26bd49bd686a9a27a0b5c58f3c75f0809c6a89f9708b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.4 MB (487393688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418eeb44870b996c0d560310b3e68bf52eef48a27094ac478c0ceec78a63fd1e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333de0c7ac9e332e550eed9b83a9125de4bf9edaa79e8d34aa4218180854f54`  
		Last Modified: Tue, 19 Sep 2017 00:43:03 GMT  
		Size: 81.3 MB (81257767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037cdaad5e71680ccac92ea8ae881dc4f05deb603926d884e20068f2230a3f81`  
		Last Modified: Tue, 19 Sep 2017 00:43:54 GMT  
		Size: 103.6 MB (103638030 bytes)  
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
$ docker pull ros@sha256:c79d3a912f45ddb1f46c6573f7195d1e0ab6f2d8e0ab17748c24d05036c8b4dd
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

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:75fbe775d97b319505335e1cfdbcbe85625b3095f2c69e7470fda3ba3d9bb635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:8f048fd589ab0de794aa26bd49bd686a9a27a0b5c58f3c75f0809c6a89f9708b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.4 MB (487393688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418eeb44870b996c0d560310b3e68bf52eef48a27094ac478c0ceec78a63fd1e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333de0c7ac9e332e550eed9b83a9125de4bf9edaa79e8d34aa4218180854f54`  
		Last Modified: Tue, 19 Sep 2017 00:43:03 GMT  
		Size: 81.3 MB (81257767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037cdaad5e71680ccac92ea8ae881dc4f05deb603926d884e20068f2230a3f81`  
		Last Modified: Tue, 19 Sep 2017 00:43:54 GMT  
		Size: 103.6 MB (103638030 bytes)  
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
$ docker pull ros@sha256:67f9c4952d2c96e6a0a07f4f4af388a852630612bd9a52657e7c72bcdddaeb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:37da425dd20112967f803ccd3b03b35e3fd8998baae766ebd4145822953aec5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.8 MB (383755658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb720ea03434887f389fe9301292b550fcf87289d61fa048a0e73a8042b451`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333de0c7ac9e332e550eed9b83a9125de4bf9edaa79e8d34aa4218180854f54`  
		Last Modified: Tue, 19 Sep 2017 00:43:03 GMT  
		Size: 81.3 MB (81257767 bytes)  
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
$ docker pull ros@sha256:98c6109a863cb03087390fcbce04d8569060a0eff932c8ff266467836c669ec7
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

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:67f9c4952d2c96e6a0a07f4f4af388a852630612bd9a52657e7c72bcdddaeb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:37da425dd20112967f803ccd3b03b35e3fd8998baae766ebd4145822953aec5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.8 MB (383755658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb720ea03434887f389fe9301292b550fcf87289d61fa048a0e73a8042b451`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333de0c7ac9e332e550eed9b83a9125de4bf9edaa79e8d34aa4218180854f54`  
		Last Modified: Tue, 19 Sep 2017 00:43:03 GMT  
		Size: 81.3 MB (81257767 bytes)  
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
$ docker pull ros@sha256:59c2cc7513a0d998ca880cde4f18a352cb04010f450e36e6f0eb3f7713887fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3bb21d2e6a2c8545bb4b30095633c276dc3bdaf9172acd44da402b9ab55ecb8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302497891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2599d59f749469ec86ad7d7075da713ee99b6e864236cf8002f58bb9b033ff8c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
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

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:59c2cc7513a0d998ca880cde4f18a352cb04010f450e36e6f0eb3f7713887fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3bb21d2e6a2c8545bb4b30095633c276dc3bdaf9172acd44da402b9ab55ecb8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302497891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2599d59f749469ec86ad7d7075da713ee99b6e864236cf8002f58bb9b033ff8c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
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
