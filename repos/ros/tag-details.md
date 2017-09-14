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
-	[`ros:lunar-robot`](#roslunar-robot)
-	[`ros:lunar-robot-stretch`](#roslunar-robot-stretch)
-	[`ros:lunar-robot-xenial`](#roslunar-robot-xenial)
-	[`ros:lunar-ros-base`](#roslunar-ros-base)
-	[`ros:lunar-ros-base-stretch`](#roslunar-ros-base-stretch)
-	[`ros:lunar-ros-base-xenial`](#roslunar-ros-base-xenial)
-	[`ros:lunar-ros-core`](#roslunar-ros-core)
-	[`ros:lunar-ros-core-stretch`](#roslunar-ros-core-stretch)
-	[`ros:lunar-ros-core-xenial`](#roslunar-ros-core-xenial)

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
$ docker pull ros@sha256:b91962a9655a32d5e070a3513934ab876633ad624d592c9c486df1f2e1c521e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:3a025ab2df7db02d4bc6263f855fd2e909c2d11a5c3dc31c58a62542fc4f09c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307117111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33759e9d686baf3019b7f3f9922edb7375122e8ad04ce05588f1c059beea7162`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7de9be4503fbbe6a3946906e2528f82d31c47be1cc8ce3cfc0bf5c538a01f0`  
		Last Modified: Thu, 14 Sep 2017 01:26:55 GMT  
		Size: 4.9 MB (4915173 bytes)  
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

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:a597adbc0e77b85dc197aeb86ca4d087717e627225c26624d7cf77eef2e57a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:8b273c26a35b940fe92388eea12f7fd6be4dd15dcd9d83e3caee7a483f9c98d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.0 MB (695009148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7287713a14fb6a438332e0c103a57d7b300d3ce500b6e01c26438ae48a506e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:51:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7de9be4503fbbe6a3946906e2528f82d31c47be1cc8ce3cfc0bf5c538a01f0`  
		Last Modified: Thu, 14 Sep 2017 01:26:55 GMT  
		Size: 4.9 MB (4915173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cee897845ad22523b3fb7ef343ee4173caa4039010d67b2ba65699a12e2825`  
		Last Modified: Thu, 14 Sep 2017 01:29:35 GMT  
		Size: 387.9 MB (387892037 bytes)  
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

## `ros:kinetic-perception-jessie`

```console
$ docker pull ros@sha256:5f1b3a3c66ac146610f3ea87955fc88520e7436527ae921771b0b30d1f794002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-perception-jessie` - linux; amd64

```console
$ docker pull ros@sha256:2197eb683048c141f19f2d851f560d0a64a159a452f1e9dcaa1e0ea69357d890
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **579.4 MB (579416163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d17ad1077dce94179082090a4275c534c0a598acc84b50122d08dc8e43b33c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:53:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:53:53 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:53:53 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:53:54 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:54:03 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:54:04 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:55:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:55:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:55:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:55:20 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:56:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:00:31 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51949222cb5c5f13b74874383c7887b3da1fed584a35923260288f128fb5285f`  
		Last Modified: Thu, 14 Sep 2017 01:30:12 GMT  
		Size: 33.8 MB (33760764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9ad6c36307681bc688ac33f91392f4f60fdcf9177bd8fe235b849a89325c63`  
		Last Modified: Thu, 14 Sep 2017 01:29:53 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051013f06cd2eabc80f8bb69bd1bd20892794b6f64bd82a72c20694079ba173a`  
		Last Modified: Thu, 14 Sep 2017 01:29:51 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5333365bd4281fde91bd09e152f47bec1948e2fbedd60f517e8b7fbe0be7bc`  
		Last Modified: Thu, 14 Sep 2017 01:30:15 GMT  
		Size: 46.3 MB (46338636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dcde45ce5bce9d755fc149e407d48cbb9085b5a207245695ef259c9693988`  
		Last Modified: Thu, 14 Sep 2017 01:29:52 GMT  
		Size: 754.0 KB (753964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcb5a2d83d177ecd2d7e7690738bc567d508930052f177547a31b0042966d5a`  
		Last Modified: Thu, 14 Sep 2017 01:30:51 GMT  
		Size: 157.2 MB (157217433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68933bf6544e6b48308d34a3e7fb527c292c356020327b2687e4bbe2146d2f8`  
		Last Modified: Thu, 14 Sep 2017 01:29:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f53641c522eb1ef5dfacdd6c302c15c9bae57e7f6ab0f7ff4e1e519277df67`  
		Last Modified: Thu, 14 Sep 2017 01:32:11 GMT  
		Size: 5.2 MB (5237652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7c7f34ca087f64250458647b87d178e0fccf77183b5076ad81a636dc0b4d9`  
		Last Modified: Thu, 14 Sep 2017 01:33:51 GMT  
		Size: 283.5 MB (283510329 bytes)  
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
$ docker pull ros@sha256:a597adbc0e77b85dc197aeb86ca4d087717e627225c26624d7cf77eef2e57a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:8b273c26a35b940fe92388eea12f7fd6be4dd15dcd9d83e3caee7a483f9c98d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.0 MB (695009148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7287713a14fb6a438332e0c103a57d7b300d3ce500b6e01c26438ae48a506e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:51:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7de9be4503fbbe6a3946906e2528f82d31c47be1cc8ce3cfc0bf5c538a01f0`  
		Last Modified: Thu, 14 Sep 2017 01:26:55 GMT  
		Size: 4.9 MB (4915173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cee897845ad22523b3fb7ef343ee4173caa4039010d67b2ba65699a12e2825`  
		Last Modified: Thu, 14 Sep 2017 01:29:35 GMT  
		Size: 387.9 MB (387892037 bytes)  
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

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:90912c181076c8fa2fc3d598a594d5349b019958603e29fe8153cd4e9d7370d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:13b82b21e92413870627b6d3205c43c7227123d8b9c26ab2548c0e7d65a6dcd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.4 MB (446379433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce7ce489d5194d1f998922ce21a6e28d1a43eacc709659e487a3a094073c86b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:45:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7de9be4503fbbe6a3946906e2528f82d31c47be1cc8ce3cfc0bf5c538a01f0`  
		Last Modified: Thu, 14 Sep 2017 01:26:55 GMT  
		Size: 4.9 MB (4915173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a9880c742d4ea0a3a972df6b0fc1a8baeed1b7857f9b097714da70cc1d16d0`  
		Last Modified: Thu, 14 Sep 2017 01:27:48 GMT  
		Size: 139.3 MB (139262322 bytes)  
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

## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:69cd191ad927956333d4354d485507c90c63dca1089e8858ff11feaba85511d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:ef2930461742d7afb0fcff662717dec25fffbc1c2ed003bf60c5a2f14b516d61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377830608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd2aad589e4e141ac9f5866f55de3fac68cbdea8178066dea37afa405c9ba7d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:53:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:53:53 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:53:53 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:53:54 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:54:03 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:54:04 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:55:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:55:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:55:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:55:20 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:56:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:58:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51949222cb5c5f13b74874383c7887b3da1fed584a35923260288f128fb5285f`  
		Last Modified: Thu, 14 Sep 2017 01:30:12 GMT  
		Size: 33.8 MB (33760764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9ad6c36307681bc688ac33f91392f4f60fdcf9177bd8fe235b849a89325c63`  
		Last Modified: Thu, 14 Sep 2017 01:29:53 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051013f06cd2eabc80f8bb69bd1bd20892794b6f64bd82a72c20694079ba173a`  
		Last Modified: Thu, 14 Sep 2017 01:29:51 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5333365bd4281fde91bd09e152f47bec1948e2fbedd60f517e8b7fbe0be7bc`  
		Last Modified: Thu, 14 Sep 2017 01:30:15 GMT  
		Size: 46.3 MB (46338636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dcde45ce5bce9d755fc149e407d48cbb9085b5a207245695ef259c9693988`  
		Last Modified: Thu, 14 Sep 2017 01:29:52 GMT  
		Size: 754.0 KB (753964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcb5a2d83d177ecd2d7e7690738bc567d508930052f177547a31b0042966d5a`  
		Last Modified: Thu, 14 Sep 2017 01:30:51 GMT  
		Size: 157.2 MB (157217433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68933bf6544e6b48308d34a3e7fb527c292c356020327b2687e4bbe2146d2f8`  
		Last Modified: Thu, 14 Sep 2017 01:29:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f53641c522eb1ef5dfacdd6c302c15c9bae57e7f6ab0f7ff4e1e519277df67`  
		Last Modified: Thu, 14 Sep 2017 01:32:11 GMT  
		Size: 5.2 MB (5237652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80730d62a49ebc7b4ce6855805a03871eed58fd9772af70237aef06192f1567`  
		Last Modified: Thu, 14 Sep 2017 01:32:41 GMT  
		Size: 81.9 MB (81924774 bytes)  
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
$ docker pull ros@sha256:90912c181076c8fa2fc3d598a594d5349b019958603e29fe8153cd4e9d7370d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:13b82b21e92413870627b6d3205c43c7227123d8b9c26ab2548c0e7d65a6dcd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.4 MB (446379433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce7ce489d5194d1f998922ce21a6e28d1a43eacc709659e487a3a094073c86b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:45:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7de9be4503fbbe6a3946906e2528f82d31c47be1cc8ce3cfc0bf5c538a01f0`  
		Last Modified: Thu, 14 Sep 2017 01:26:55 GMT  
		Size: 4.9 MB (4915173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a9880c742d4ea0a3a972df6b0fc1a8baeed1b7857f9b097714da70cc1d16d0`  
		Last Modified: Thu, 14 Sep 2017 01:27:48 GMT  
		Size: 139.3 MB (139262322 bytes)  
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

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:b91962a9655a32d5e070a3513934ab876633ad624d592c9c486df1f2e1c521e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:3a025ab2df7db02d4bc6263f855fd2e909c2d11a5c3dc31c58a62542fc4f09c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307117111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33759e9d686baf3019b7f3f9922edb7375122e8ad04ce05588f1c059beea7162`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7de9be4503fbbe6a3946906e2528f82d31c47be1cc8ce3cfc0bf5c538a01f0`  
		Last Modified: Thu, 14 Sep 2017 01:26:55 GMT  
		Size: 4.9 MB (4915173 bytes)  
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

## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:155a9d7be35c6431803a801106a4c5d5c1200723616e776b0ac600d5ce005753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:58e454c697f9296ca2e4fd952dcacbc83d1f1162887e740a9fdb272e9cedf272
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295905834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6559c6790dd627ed445f28111000ccd95690580eb8a034daebd26b83734732`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:53:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:53:53 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:53:53 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:53:54 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:54:03 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:54:04 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:55:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:55:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:55:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:55:20 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:56:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51949222cb5c5f13b74874383c7887b3da1fed584a35923260288f128fb5285f`  
		Last Modified: Thu, 14 Sep 2017 01:30:12 GMT  
		Size: 33.8 MB (33760764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9ad6c36307681bc688ac33f91392f4f60fdcf9177bd8fe235b849a89325c63`  
		Last Modified: Thu, 14 Sep 2017 01:29:53 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051013f06cd2eabc80f8bb69bd1bd20892794b6f64bd82a72c20694079ba173a`  
		Last Modified: Thu, 14 Sep 2017 01:29:51 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5333365bd4281fde91bd09e152f47bec1948e2fbedd60f517e8b7fbe0be7bc`  
		Last Modified: Thu, 14 Sep 2017 01:30:15 GMT  
		Size: 46.3 MB (46338636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dcde45ce5bce9d755fc149e407d48cbb9085b5a207245695ef259c9693988`  
		Last Modified: Thu, 14 Sep 2017 01:29:52 GMT  
		Size: 754.0 KB (753964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcb5a2d83d177ecd2d7e7690738bc567d508930052f177547a31b0042966d5a`  
		Last Modified: Thu, 14 Sep 2017 01:30:51 GMT  
		Size: 157.2 MB (157217433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68933bf6544e6b48308d34a3e7fb527c292c356020327b2687e4bbe2146d2f8`  
		Last Modified: Thu, 14 Sep 2017 01:29:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f53641c522eb1ef5dfacdd6c302c15c9bae57e7f6ab0f7ff4e1e519277df67`  
		Last Modified: Thu, 14 Sep 2017 01:32:11 GMT  
		Size: 5.2 MB (5237652 bytes)  
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
$ docker pull ros@sha256:b91962a9655a32d5e070a3513934ab876633ad624d592c9c486df1f2e1c521e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3a025ab2df7db02d4bc6263f855fd2e909c2d11a5c3dc31c58a62542fc4f09c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307117111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33759e9d686baf3019b7f3f9922edb7375122e8ad04ce05588f1c059beea7162`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7de9be4503fbbe6a3946906e2528f82d31c47be1cc8ce3cfc0bf5c538a01f0`  
		Last Modified: Thu, 14 Sep 2017 01:26:55 GMT  
		Size: 4.9 MB (4915173 bytes)  
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

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:4e60b275d7afa9eebc6cb11ccbafac2149249534e0aaf0fb8d1d8188361e7779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:eb247a2a63658753b6e93b6d99d2cd2f50028c4013c6a8649b2bb5f7f8c7097f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302201938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793d021a9cad2a294887a43f0defa58e4812242acbd8850014d96f6d512205b0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
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

## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:22f83172c73d88f8a177e5b325319f95cc2a65318b4db44ded0755b4cf9daff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:7410a5bf2bee3f67676702c98cb1e98369f903cfbe53ee380bd8d074e7d25b6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.7 MB (290668182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06de2b3d8f2fd4925d9368ade8ca3e8501a7df2c233d05601b94b852ec88e595`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:53:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:53:53 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:53:53 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:53:54 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:54:03 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:54:04 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:55:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:55:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:55:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:55:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51949222cb5c5f13b74874383c7887b3da1fed584a35923260288f128fb5285f`  
		Last Modified: Thu, 14 Sep 2017 01:30:12 GMT  
		Size: 33.8 MB (33760764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9ad6c36307681bc688ac33f91392f4f60fdcf9177bd8fe235b849a89325c63`  
		Last Modified: Thu, 14 Sep 2017 01:29:53 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051013f06cd2eabc80f8bb69bd1bd20892794b6f64bd82a72c20694079ba173a`  
		Last Modified: Thu, 14 Sep 2017 01:29:51 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5333365bd4281fde91bd09e152f47bec1948e2fbedd60f517e8b7fbe0be7bc`  
		Last Modified: Thu, 14 Sep 2017 01:30:15 GMT  
		Size: 46.3 MB (46338636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dcde45ce5bce9d755fc149e407d48cbb9085b5a207245695ef259c9693988`  
		Last Modified: Thu, 14 Sep 2017 01:29:52 GMT  
		Size: 754.0 KB (753964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcb5a2d83d177ecd2d7e7690738bc567d508930052f177547a31b0042966d5a`  
		Last Modified: Thu, 14 Sep 2017 01:30:51 GMT  
		Size: 157.2 MB (157217433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68933bf6544e6b48308d34a3e7fb527c292c356020327b2687e4bbe2146d2f8`  
		Last Modified: Thu, 14 Sep 2017 01:29:50 GMT  
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
$ docker pull ros@sha256:4e60b275d7afa9eebc6cb11ccbafac2149249534e0aaf0fb8d1d8188361e7779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:eb247a2a63658753b6e93b6d99d2cd2f50028c4013c6a8649b2bb5f7f8c7097f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302201938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793d021a9cad2a294887a43f0defa58e4812242acbd8850014d96f6d512205b0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
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

## `ros:latest`

```console
$ docker pull ros@sha256:b91962a9655a32d5e070a3513934ab876633ad624d592c9c486df1f2e1c521e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:3a025ab2df7db02d4bc6263f855fd2e909c2d11a5c3dc31c58a62542fc4f09c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307117111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33759e9d686baf3019b7f3f9922edb7375122e8ad04ce05588f1c059beea7162`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 00:42:14 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Sep 2017 00:43:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:43:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 00:43:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 00:43:47 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bacf0fdc0ad14a48c5dca191d4ebd1c012500f99237ee7653aaab6efa8195e`  
		Last Modified: Thu, 14 Sep 2017 01:25:24 GMT  
		Size: 193.3 MB (193267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b6396885c750c317461a7c6458ea7e9dbaa37b68f83a271c1dbf9100bef94d`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7de9be4503fbbe6a3946906e2528f82d31c47be1cc8ce3cfc0bf5c538a01f0`  
		Last Modified: Thu, 14 Sep 2017 01:26:55 GMT  
		Size: 4.9 MB (4915173 bytes)  
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

## `ros:lunar`

```console
$ docker pull ros@sha256:0028e5c5555bed3a3efef3a8efee115c98eff4c6794318d3e64abf1db01bbc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:352958c3bab4509f503e3cd9dd66bac37f954d2dc204f67d54b7d07fd2bd387d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383475697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c00384b1f174c3b98345a0763a102cb4b54dc043470e4bb0f5c5ea4791c0d16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:00:34 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:01:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:01:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:01:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:01:57 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:02:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dcd61b487616644eff18af694c8ba30ce42da315c99c8fc68b06f5229676f9`  
		Last Modified: Thu, 14 Sep 2017 01:34:58 GMT  
		Size: 193.3 MB (193284410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b0b93234bc7602e83ad694af483e12d02f5bec6686511ffde2f3fe86471184`  
		Last Modified: Thu, 14 Sep 2017 01:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae117f14091490ee084ee80b725dbc7001a507802636f70b5ffb0d01fb5ca849`  
		Last Modified: Thu, 14 Sep 2017 01:35:36 GMT  
		Size: 81.3 MB (81256782 bytes)  
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

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:64ed68a6025597088a33598c872a670982abe0bdce148bcf3fc706ce3fd8bb3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:0c25037c613ea4dc9c65f5f594102f3fa11552106ab04556796db0f76b0a8f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.5 MB (732516507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affe51a680c753dc4137bf37530e6b82fb75fc0b7cb1be22b8aa1e347b6855bb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:00:34 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:01:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:01:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:01:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:01:57 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:02:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:07:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dcd61b487616644eff18af694c8ba30ce42da315c99c8fc68b06f5229676f9`  
		Last Modified: Thu, 14 Sep 2017 01:34:58 GMT  
		Size: 193.3 MB (193284410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b0b93234bc7602e83ad694af483e12d02f5bec6686511ffde2f3fe86471184`  
		Last Modified: Thu, 14 Sep 2017 01:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae117f14091490ee084ee80b725dbc7001a507802636f70b5ffb0d01fb5ca849`  
		Last Modified: Thu, 14 Sep 2017 01:35:36 GMT  
		Size: 81.3 MB (81256782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e107d0a379d50cc3906af8fea45cf8343f9ecd48d12a02c87ef9296a5dad4f3b`  
		Last Modified: Thu, 14 Sep 2017 01:38:14 GMT  
		Size: 349.0 MB (349040810 bytes)  
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

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:08ff6a428451df3671bd369afd605f138f78d5e3f12d1f117cff7167e4f8435d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:501fdc9fcc863e7d0ff73762156088d53bef72da662e3ff981a5bc1ab0c063b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.6 MB (900602484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7df281123248967591104295b0beb5a286be2ea43afaef276a8b1df8a43e60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:09:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:09:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 01:09:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 01:09:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:09:44 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 01:09:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 01:09:54 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:09:55 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:11:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:11:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:11:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:11:10 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:11:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:14:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6715f5616da558795714a097083f73919705bf09438e09023943839c5fcc91`  
		Last Modified: Thu, 14 Sep 2017 01:38:35 GMT  
		Size: 7.2 MB (7218367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895c2ad2188fca971dfabdec9ea176f890dd197ae9953774c12dd15dffa0d770`  
		Last Modified: Thu, 14 Sep 2017 01:38:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716516e92dc43f06351009f3a8589171bedf1855534a70897c45228be0009143`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7269d84d2dfe9b1afe32660ba96ff4ec7ca6aa54edee6ad2dc2aa4effc5d028`  
		Last Modified: Thu, 14 Sep 2017 01:39:00 GMT  
		Size: 64.7 MB (64673239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2784a293892a12d9e63f96d2f2b2d2f34fa3d7b14d176c570437cab9260c3e9`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 754.0 KB (753962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005b13fbbc78ba9a09749e0ab836858131857028f30f913590e3dcdbb4139af6`  
		Last Modified: Thu, 14 Sep 2017 01:39:51 GMT  
		Size: 251.8 MB (251756726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14b866cc2961911e685e9d5344e326296ca39f6f890fb8da2a1e74acab3cc83`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20a12cfc745c475ccc8069e48cde18a19df2ac7ca2ef4909fe91aa4a95cc554`  
		Last Modified: Thu, 14 Sep 2017 01:40:52 GMT  
		Size: 122.2 MB (122198307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7756b3da10922fa94f0b7fc2134accbaab3404420ab446463db6fd19c5a501cb`  
		Last Modified: Thu, 14 Sep 2017 01:43:10 GMT  
		Size: 408.9 MB (408874587 bytes)  
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
$ docker pull ros@sha256:64ed68a6025597088a33598c872a670982abe0bdce148bcf3fc706ce3fd8bb3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:0c25037c613ea4dc9c65f5f594102f3fa11552106ab04556796db0f76b0a8f45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.5 MB (732516507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affe51a680c753dc4137bf37530e6b82fb75fc0b7cb1be22b8aa1e347b6855bb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:00:34 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:01:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:01:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:01:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:01:57 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:02:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:07:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dcd61b487616644eff18af694c8ba30ce42da315c99c8fc68b06f5229676f9`  
		Last Modified: Thu, 14 Sep 2017 01:34:58 GMT  
		Size: 193.3 MB (193284410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b0b93234bc7602e83ad694af483e12d02f5bec6686511ffde2f3fe86471184`  
		Last Modified: Thu, 14 Sep 2017 01:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae117f14091490ee084ee80b725dbc7001a507802636f70b5ffb0d01fb5ca849`  
		Last Modified: Thu, 14 Sep 2017 01:35:36 GMT  
		Size: 81.3 MB (81256782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e107d0a379d50cc3906af8fea45cf8343f9ecd48d12a02c87ef9296a5dad4f3b`  
		Last Modified: Thu, 14 Sep 2017 01:38:14 GMT  
		Size: 349.0 MB (349040810 bytes)  
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

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:70dc29e96016c9b1973d238b7c1a499161dde49a227f1a935f265a3c49c03f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:783f1dd1a9b687e7fb249d08ae83c5ac4c14249bf3693c8b92bdfcdda31b8f4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.1 MB (487112886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd62641a27f5686efc39978b7f55cca51aa1976cf62cb6b3a9e64b00c89fb37`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:00:34 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:01:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:01:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:01:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:01:57 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:02:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:04:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dcd61b487616644eff18af694c8ba30ce42da315c99c8fc68b06f5229676f9`  
		Last Modified: Thu, 14 Sep 2017 01:34:58 GMT  
		Size: 193.3 MB (193284410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b0b93234bc7602e83ad694af483e12d02f5bec6686511ffde2f3fe86471184`  
		Last Modified: Thu, 14 Sep 2017 01:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae117f14091490ee084ee80b725dbc7001a507802636f70b5ffb0d01fb5ca849`  
		Last Modified: Thu, 14 Sep 2017 01:35:36 GMT  
		Size: 81.3 MB (81256782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b2b6c9b8d900f2c69362f90b5b0980b1b3b9d1458d5cc3a026911eb55afbac`  
		Last Modified: Thu, 14 Sep 2017 01:36:23 GMT  
		Size: 103.6 MB (103637189 bytes)  
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

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:3f52a3532503e91fc0b0769f6eb69912c5079a72682c23e10de6372a8b838b16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e656f44a94dc48686ddca72a9ef6b025f4910d3cf822bd47828edd3f318f2c04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.1 MB (552149918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48afe876d939ac7ec801c4a2cde055a41d851b3b952330dfb19599b9e517c6a2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:09:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:09:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 01:09:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 01:09:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:09:44 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 01:09:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 01:09:54 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:09:55 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:11:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:11:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:11:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:11:10 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:11:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:12:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6715f5616da558795714a097083f73919705bf09438e09023943839c5fcc91`  
		Last Modified: Thu, 14 Sep 2017 01:38:35 GMT  
		Size: 7.2 MB (7218367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895c2ad2188fca971dfabdec9ea176f890dd197ae9953774c12dd15dffa0d770`  
		Last Modified: Thu, 14 Sep 2017 01:38:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716516e92dc43f06351009f3a8589171bedf1855534a70897c45228be0009143`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7269d84d2dfe9b1afe32660ba96ff4ec7ca6aa54edee6ad2dc2aa4effc5d028`  
		Last Modified: Thu, 14 Sep 2017 01:39:00 GMT  
		Size: 64.7 MB (64673239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2784a293892a12d9e63f96d2f2b2d2f34fa3d7b14d176c570437cab9260c3e9`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 754.0 KB (753962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005b13fbbc78ba9a09749e0ab836858131857028f30f913590e3dcdbb4139af6`  
		Last Modified: Thu, 14 Sep 2017 01:39:51 GMT  
		Size: 251.8 MB (251756726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14b866cc2961911e685e9d5344e326296ca39f6f890fb8da2a1e74acab3cc83`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20a12cfc745c475ccc8069e48cde18a19df2ac7ca2ef4909fe91aa4a95cc554`  
		Last Modified: Thu, 14 Sep 2017 01:40:52 GMT  
		Size: 122.2 MB (122198307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4517526ca590619c738eda9472e5d85110ead035143d338be0ce2fbde4ad48d`  
		Last Modified: Thu, 14 Sep 2017 01:41:22 GMT  
		Size: 60.4 MB (60422021 bytes)  
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
$ docker pull ros@sha256:70dc29e96016c9b1973d238b7c1a499161dde49a227f1a935f265a3c49c03f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:783f1dd1a9b687e7fb249d08ae83c5ac4c14249bf3693c8b92bdfcdda31b8f4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.1 MB (487112886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd62641a27f5686efc39978b7f55cca51aa1976cf62cb6b3a9e64b00c89fb37`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:00:34 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:01:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:01:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:01:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:01:57 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:02:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:04:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dcd61b487616644eff18af694c8ba30ce42da315c99c8fc68b06f5229676f9`  
		Last Modified: Thu, 14 Sep 2017 01:34:58 GMT  
		Size: 193.3 MB (193284410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b0b93234bc7602e83ad694af483e12d02f5bec6686511ffde2f3fe86471184`  
		Last Modified: Thu, 14 Sep 2017 01:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae117f14091490ee084ee80b725dbc7001a507802636f70b5ffb0d01fb5ca849`  
		Last Modified: Thu, 14 Sep 2017 01:35:36 GMT  
		Size: 81.3 MB (81256782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b2b6c9b8d900f2c69362f90b5b0980b1b3b9d1458d5cc3a026911eb55afbac`  
		Last Modified: Thu, 14 Sep 2017 01:36:23 GMT  
		Size: 103.6 MB (103637189 bytes)  
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

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:0028e5c5555bed3a3efef3a8efee115c98eff4c6794318d3e64abf1db01bbc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:352958c3bab4509f503e3cd9dd66bac37f954d2dc204f67d54b7d07fd2bd387d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383475697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c00384b1f174c3b98345a0763a102cb4b54dc043470e4bb0f5c5ea4791c0d16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:00:34 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:01:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:01:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:01:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:01:57 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:02:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dcd61b487616644eff18af694c8ba30ce42da315c99c8fc68b06f5229676f9`  
		Last Modified: Thu, 14 Sep 2017 01:34:58 GMT  
		Size: 193.3 MB (193284410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b0b93234bc7602e83ad694af483e12d02f5bec6686511ffde2f3fe86471184`  
		Last Modified: Thu, 14 Sep 2017 01:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae117f14091490ee084ee80b725dbc7001a507802636f70b5ffb0d01fb5ca849`  
		Last Modified: Thu, 14 Sep 2017 01:35:36 GMT  
		Size: 81.3 MB (81256782 bytes)  
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

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:2be3c7b99e0d5388ac25d21b69ece6c0e10993abfc940b07c2b8e7d63c9f922f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:6f9c879eff3dc3afbeedce81873ddb474d546e8f62d201843602c7af8ce4cdc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.7 MB (491727897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe5f47a9a374502baeba5663be69bc2c23b39092ae541f1d8b6613c026b4fab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:09:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:09:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 01:09:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 01:09:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:09:44 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 01:09:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 01:09:54 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:09:55 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:11:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:11:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:11:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:11:10 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:11:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6715f5616da558795714a097083f73919705bf09438e09023943839c5fcc91`  
		Last Modified: Thu, 14 Sep 2017 01:38:35 GMT  
		Size: 7.2 MB (7218367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895c2ad2188fca971dfabdec9ea176f890dd197ae9953774c12dd15dffa0d770`  
		Last Modified: Thu, 14 Sep 2017 01:38:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716516e92dc43f06351009f3a8589171bedf1855534a70897c45228be0009143`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7269d84d2dfe9b1afe32660ba96ff4ec7ca6aa54edee6ad2dc2aa4effc5d028`  
		Last Modified: Thu, 14 Sep 2017 01:39:00 GMT  
		Size: 64.7 MB (64673239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2784a293892a12d9e63f96d2f2b2d2f34fa3d7b14d176c570437cab9260c3e9`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 754.0 KB (753962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005b13fbbc78ba9a09749e0ab836858131857028f30f913590e3dcdbb4139af6`  
		Last Modified: Thu, 14 Sep 2017 01:39:51 GMT  
		Size: 251.8 MB (251756726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14b866cc2961911e685e9d5344e326296ca39f6f890fb8da2a1e74acab3cc83`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20a12cfc745c475ccc8069e48cde18a19df2ac7ca2ef4909fe91aa4a95cc554`  
		Last Modified: Thu, 14 Sep 2017 01:40:52 GMT  
		Size: 122.2 MB (122198307 bytes)  
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
$ docker pull ros@sha256:0028e5c5555bed3a3efef3a8efee115c98eff4c6794318d3e64abf1db01bbc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:352958c3bab4509f503e3cd9dd66bac37f954d2dc204f67d54b7d07fd2bd387d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383475697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c00384b1f174c3b98345a0763a102cb4b54dc043470e4bb0f5c5ea4791c0d16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:00:34 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:01:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:01:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:01:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:01:57 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:02:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dcd61b487616644eff18af694c8ba30ce42da315c99c8fc68b06f5229676f9`  
		Last Modified: Thu, 14 Sep 2017 01:34:58 GMT  
		Size: 193.3 MB (193284410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b0b93234bc7602e83ad694af483e12d02f5bec6686511ffde2f3fe86471184`  
		Last Modified: Thu, 14 Sep 2017 01:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae117f14091490ee084ee80b725dbc7001a507802636f70b5ffb0d01fb5ca849`  
		Last Modified: Thu, 14 Sep 2017 01:35:36 GMT  
		Size: 81.3 MB (81256782 bytes)  
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

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:465450505df14b030b1ef5013340d15f39bac383ae9262daa3233dd4598d7e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3b16c91a07b3c80372f40d1c58bdccec2689fbfef648186eaa049ff238b5c2c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302218915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c06440b6f674312ed8fd737a6b505de1196a3b1d5a66329cb0c7cbea20b6d5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:00:34 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:01:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:01:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:01:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:01:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dcd61b487616644eff18af694c8ba30ce42da315c99c8fc68b06f5229676f9`  
		Last Modified: Thu, 14 Sep 2017 01:34:58 GMT  
		Size: 193.3 MB (193284410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b0b93234bc7602e83ad694af483e12d02f5bec6686511ffde2f3fe86471184`  
		Last Modified: Thu, 14 Sep 2017 01:34:02 GMT  
		Size: 195.0 B  
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

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:b5a0e4516f2d177d4e1feae8e295bc8520ee7b6238770a4ba7e11748b376c8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:957f0c80399b816bbdb34efb74fc4caed66f6303c44c4a233a02fde1a7c1ffcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.5 MB (369529590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a291c6edcb88c04ac22564efbc54ca6e42e918322d0c60343822dddcf609b4a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 01:09:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:09:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 01:09:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 01:09:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:09:44 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 01:09:45 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 01:09:54 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:09:55 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:11:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:11:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:11:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:11:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6715f5616da558795714a097083f73919705bf09438e09023943839c5fcc91`  
		Last Modified: Thu, 14 Sep 2017 01:38:35 GMT  
		Size: 7.2 MB (7218367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895c2ad2188fca971dfabdec9ea176f890dd197ae9953774c12dd15dffa0d770`  
		Last Modified: Thu, 14 Sep 2017 01:38:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716516e92dc43f06351009f3a8589171bedf1855534a70897c45228be0009143`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7269d84d2dfe9b1afe32660ba96ff4ec7ca6aa54edee6ad2dc2aa4effc5d028`  
		Last Modified: Thu, 14 Sep 2017 01:39:00 GMT  
		Size: 64.7 MB (64673239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2784a293892a12d9e63f96d2f2b2d2f34fa3d7b14d176c570437cab9260c3e9`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
		Size: 754.0 KB (753962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005b13fbbc78ba9a09749e0ab836858131857028f30f913590e3dcdbb4139af6`  
		Last Modified: Thu, 14 Sep 2017 01:39:51 GMT  
		Size: 251.8 MB (251756726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14b866cc2961911e685e9d5344e326296ca39f6f890fb8da2a1e74acab3cc83`  
		Last Modified: Thu, 14 Sep 2017 01:38:31 GMT  
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

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:465450505df14b030b1ef5013340d15f39bac383ae9262daa3233dd4598d7e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3b16c91a07b3c80372f40d1c58bdccec2689fbfef648186eaa049ff238b5c2c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302218915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c06440b6f674312ed8fd737a6b505de1196a3b1d5a66329cb0c7cbea20b6d5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:41:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Sep 2017 00:41:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Sep 2017 00:42:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 00:42:03 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Sep 2017 00:42:14 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Sep 2017 01:00:34 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Sep 2017 01:01:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 01:01:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Sep 2017 01:01:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Sep 2017 01:01:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f9e1b344df5866d63798d95ee359c2090492fce14257bdd202dd89319e460`  
		Last Modified: Thu, 14 Sep 2017 01:24:29 GMT  
		Size: 5.4 MB (5362231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfc397f044f1ff6e56461f93c0bdf554515183068188102aafcdd866a5ad3`  
		Last Modified: Thu, 14 Sep 2017 01:24:27 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d214eef354e0c39d37fc345720720084a3676a556040d2fac4403e13801ab`  
		Last Modified: Thu, 14 Sep 2017 01:24:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85067b5b90b192ff2b7aa756271e7c9cc07a62845ae19d6c9366d712ae3756c2`  
		Last Modified: Thu, 14 Sep 2017 01:24:49 GMT  
		Size: 55.5 MB (55543619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e755fbada78a8c917aaddf71968a7da9af9f042fe0c8260ad45b0decf68f3`  
		Last Modified: Thu, 14 Sep 2017 01:24:25 GMT  
		Size: 754.0 KB (753963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dcd61b487616644eff18af694c8ba30ce42da315c99c8fc68b06f5229676f9`  
		Last Modified: Thu, 14 Sep 2017 01:34:58 GMT  
		Size: 193.3 MB (193284410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b0b93234bc7602e83ad694af483e12d02f5bec6686511ffde2f3fe86471184`  
		Last Modified: Thu, 14 Sep 2017 01:34:02 GMT  
		Size: 195.0 B  
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
