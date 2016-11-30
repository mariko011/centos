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
$ docker pull ros@sha256:9923464eeff6efa487387e90d53e5557939a2d1dc1aff506fcd1821ec1cada00
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249650929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e160171ae77d0d09319b49c000917064c2043ce59a0cc53fed08ba195593df`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:54:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 30 Nov 2016 17:56:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:56:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:56:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:56:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90e1b52ea74720d0df7ff87ec4dfd041bdd6bc043dffcc3659372caef566e1f`  
		Last Modified: Wed, 30 Nov 2016 18:26:19 GMT  
		Size: 150.0 MB (149973840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1482caf0cd06ad4fd9430c001045304aa3ef1870d8bbb90e49d088a0e91ba`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:991cddb90361e23540d7bb1be5e5ffb2b897af9a3dca96d920bf52c42e154229
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253076419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be10adc34357557acd49a13b134855dd319defcf8c8e63dceaf14ea5ea1d937`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:54:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 30 Nov 2016 17:56:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:56:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:56:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:56:09 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:11 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90e1b52ea74720d0df7ff87ec4dfd041bdd6bc043dffcc3659372caef566e1f`  
		Last Modified: Wed, 30 Nov 2016 18:26:19 GMT  
		Size: 150.0 MB (149973840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1482caf0cd06ad4fd9430c001045304aa3ef1870d8bbb90e49d088a0e91ba`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e4a834a09e105460cb96feefec185f43043e337f21ae61f5d690e3c14e55ed`  
		Last Modified: Wed, 30 Nov 2016 18:29:38 GMT  
		Size: 3.4 MB (3425490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:991cddb90361e23540d7bb1be5e5ffb2b897af9a3dca96d920bf52c42e154229
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253076419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be10adc34357557acd49a13b134855dd319defcf8c8e63dceaf14ea5ea1d937`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:54:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 30 Nov 2016 17:56:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:56:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:56:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:56:09 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:11 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90e1b52ea74720d0df7ff87ec4dfd041bdd6bc043dffcc3659372caef566e1f`  
		Last Modified: Wed, 30 Nov 2016 18:26:19 GMT  
		Size: 150.0 MB (149973840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1482caf0cd06ad4fd9430c001045304aa3ef1870d8bbb90e49d088a0e91ba`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e4a834a09e105460cb96feefec185f43043e337f21ae61f5d690e3c14e55ed`  
		Last Modified: Wed, 30 Nov 2016 18:29:38 GMT  
		Size: 3.4 MB (3425490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:699612a0a040836aaf00ae00d9ee6dd773f85fb51004288340b6023f80530952
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321535510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90f70187dca45099135acfa470034873eec5a72a47e26874da4a200d773765e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:54:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 30 Nov 2016 17:56:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:56:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:56:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:56:09 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:11 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:01:00 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:04:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90e1b52ea74720d0df7ff87ec4dfd041bdd6bc043dffcc3659372caef566e1f`  
		Last Modified: Wed, 30 Nov 2016 18:26:19 GMT  
		Size: 150.0 MB (149973840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1482caf0cd06ad4fd9430c001045304aa3ef1870d8bbb90e49d088a0e91ba`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e4a834a09e105460cb96feefec185f43043e337f21ae61f5d690e3c14e55ed`  
		Last Modified: Wed, 30 Nov 2016 18:29:38 GMT  
		Size: 3.4 MB (3425490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b245dd166c1ffa4b8a11d302af78d55f221dbdfd97ba200abc9bb320020ac77`  
		Last Modified: Wed, 30 Nov 2016 18:34:02 GMT  
		Size: 68.5 MB (68459091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:54a593e1b20b041683cf0306cdbd98cb278ddb3505e38885cb388d43f51db787
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.7 MB (520664349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b211de8decd1b276b01ce5fce3e76805585e6a88aa36131fd0d1bbec24b4565`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:54:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 30 Nov 2016 17:56:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:56:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:56:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:56:09 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:11 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:01:00 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:03:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90e1b52ea74720d0df7ff87ec4dfd041bdd6bc043dffcc3659372caef566e1f`  
		Last Modified: Wed, 30 Nov 2016 18:26:19 GMT  
		Size: 150.0 MB (149973840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1482caf0cd06ad4fd9430c001045304aa3ef1870d8bbb90e49d088a0e91ba`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e4a834a09e105460cb96feefec185f43043e337f21ae61f5d690e3c14e55ed`  
		Last Modified: Wed, 30 Nov 2016 18:29:38 GMT  
		Size: 3.4 MB (3425490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74525bfe90db065a5fb4d10282ca06fe1882c39e03b1a2df64e22df31dd86b22`  
		Last Modified: Wed, 30 Nov 2016 18:33:10 GMT  
		Size: 267.6 MB (267587930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:338797ce978ebae72956b3bf1530bd360100b98ac720293f309c046f4e8019d6
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249771739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df4304eb1a8aa4757d2302b6589fc06d2b0d14dae77caef9e0216db5b998fcd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:56:10 GMT
ENV ROS_DISTRO=jade
# Wed, 30 Nov 2016 17:57:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:57:41 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:57:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:57:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023268d4b503382b9d117cf15c598f54c1978ab8d7fa3bb538a679c991f11e9f`  
		Last Modified: Wed, 30 Nov 2016 18:27:35 GMT  
		Size: 150.1 MB (150094650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94d6a0a2082b2ad2cf1981a2adaf34c265499121328842fe769499a1516ff94`  
		Last Modified: Wed, 30 Nov 2016 18:26:40 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:10f1b1288e56d1bbf0ef27d285f71c1194f43ba068db1946a51aaddfd94ddbfa
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253212599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518f1529622d0a49c8939acaf467fbddc2f8bc10cc800b4624f365c1c20bc6f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:56:10 GMT
ENV ROS_DISTRO=jade
# Wed, 30 Nov 2016 17:57:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:57:41 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:57:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:57:41 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:31 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:48 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023268d4b503382b9d117cf15c598f54c1978ab8d7fa3bb538a679c991f11e9f`  
		Last Modified: Wed, 30 Nov 2016 18:27:35 GMT  
		Size: 150.1 MB (150094650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94d6a0a2082b2ad2cf1981a2adaf34c265499121328842fe769499a1516ff94`  
		Last Modified: Wed, 30 Nov 2016 18:26:40 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e2510f2fe0c3077dd36c64626f45cf08bdccd9782a2fab8774d395c6b78acd`  
		Last Modified: Wed, 30 Nov 2016 18:30:14 GMT  
		Size: 3.4 MB (3440860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:10f1b1288e56d1bbf0ef27d285f71c1194f43ba068db1946a51aaddfd94ddbfa
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253212599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518f1529622d0a49c8939acaf467fbddc2f8bc10cc800b4624f365c1c20bc6f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:56:10 GMT
ENV ROS_DISTRO=jade
# Wed, 30 Nov 2016 17:57:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:57:41 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:57:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:57:41 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:31 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:48 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023268d4b503382b9d117cf15c598f54c1978ab8d7fa3bb538a679c991f11e9f`  
		Last Modified: Wed, 30 Nov 2016 18:27:35 GMT  
		Size: 150.1 MB (150094650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94d6a0a2082b2ad2cf1981a2adaf34c265499121328842fe769499a1516ff94`  
		Last Modified: Wed, 30 Nov 2016 18:26:40 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e2510f2fe0c3077dd36c64626f45cf08bdccd9782a2fab8774d395c6b78acd`  
		Last Modified: Wed, 30 Nov 2016 18:30:14 GMT  
		Size: 3.4 MB (3440860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:886abc10103278420ee2622a07ad92b8db686d61fe8b4fa7cc70b9ae750dd87c
```

-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321307522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d05aafb15903618c9ddbede913aa24ac46f1f3e1ec1dfd2b0b18eab202f1e33`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:56:10 GMT
ENV ROS_DISTRO=jade
# Wed, 30 Nov 2016 17:57:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:57:41 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:57:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:57:41 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:31 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:48 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:04:34 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:08:08 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023268d4b503382b9d117cf15c598f54c1978ab8d7fa3bb538a679c991f11e9f`  
		Last Modified: Wed, 30 Nov 2016 18:27:35 GMT  
		Size: 150.1 MB (150094650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94d6a0a2082b2ad2cf1981a2adaf34c265499121328842fe769499a1516ff94`  
		Last Modified: Wed, 30 Nov 2016 18:26:40 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e2510f2fe0c3077dd36c64626f45cf08bdccd9782a2fab8774d395c6b78acd`  
		Last Modified: Wed, 30 Nov 2016 18:30:14 GMT  
		Size: 3.4 MB (3440860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a11da3fee95b7bb321414d5d30cf362585114ef57b286e4ddecc9b1db61a3c`  
		Last Modified: Wed, 30 Nov 2016 18:36:47 GMT  
		Size: 68.1 MB (68094923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:33b65c1911b7edcb1ea2820c753be5bf084db2ed62de3df0d5ae277c32963e39
```

-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.6 MB (520606931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ea95c1f7e28df3a168af8b21f6f71ca68dcf99faaf5cde8773247d24a18bb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:56:10 GMT
ENV ROS_DISTRO=jade
# Wed, 30 Nov 2016 17:57:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:57:41 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:57:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:57:41 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:31 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:48 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:04:34 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:07:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023268d4b503382b9d117cf15c598f54c1978ab8d7fa3bb538a679c991f11e9f`  
		Last Modified: Wed, 30 Nov 2016 18:27:35 GMT  
		Size: 150.1 MB (150094650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94d6a0a2082b2ad2cf1981a2adaf34c265499121328842fe769499a1516ff94`  
		Last Modified: Wed, 30 Nov 2016 18:26:40 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e2510f2fe0c3077dd36c64626f45cf08bdccd9782a2fab8774d395c6b78acd`  
		Last Modified: Wed, 30 Nov 2016 18:30:14 GMT  
		Size: 3.4 MB (3440860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a9a1882fc8390031beb72aa768fc44a2ac9296635925f95ae31826efb69ee9`  
		Last Modified: Wed, 30 Nov 2016 18:35:55 GMT  
		Size: 267.4 MB (267394332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:ec73322121d0afc952da72b8c4789d0a2373bfa3b822307693f6c03d56b3d0ed
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298423936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044aef9bfd990eb2d6012b1b7a34d4518a0d7e8d7362fc1c234f9335a3284161`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:32 GMT
ADD file:2ca910a8c0cef4144f7c4ef779f9d85d5f451a776c3c67fc83a7a461de73e7d7 in / 
# Tue, 29 Nov 2016 20:04:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:57:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:57:45 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:57:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:57:47 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:57:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:58:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:58:31 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:58:32 GMT
ENV ROS_DISTRO=kinetic
# Wed, 30 Nov 2016 18:00:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:00:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 18:00:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 18:00:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:af49a5ceb2a56a8232402f5868cdb13dfdae5d66a62955a73e647e16e9f30a63`  
		Last Modified: Tue, 29 Nov 2016 20:08:29 GMT  
		Size: 50.1 MB (50096701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9757b472e7962a4304d4af61630e2cde66129218135b4093a43b9db8942c34`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931b117db38a05b9d0bbd28ca99a0abe5236a0026d88b3db804f520e59977ec`  
		Last Modified: Tue, 29 Nov 2016 20:08:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b5e16c0811b08c1cf3198fa5ac0b920946ac538a0a0030627d19763e2fa212`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332eaf1a55b72fb779d2f249b65855c623c8ce7be83c822b7d80115ef5a3af3`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371bded0f55a95a26133943a347dec77139e09da73166b361a7ff50d7dc8e7d8`  
		Last Modified: Wed, 30 Nov 2016 18:28:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc50994e1df321ddf642db38d33b12116a39bbbd8819bf0b56293d8ea7e2ab27`  
		Last Modified: Wed, 30 Nov 2016 18:28:04 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d0dd8418592bfe462f086933904724f1a5619855990f7ebcb791d70c384a6`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7725fafd3a81268e67abaed916de4448d3c8b430643948893c8aa1cb761a121d`  
		Last Modified: Wed, 30 Nov 2016 18:28:28 GMT  
		Size: 57.6 MB (57649246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e63dc17e81661695f0c82eff31c1b1db8543e52832d242eb311c88c9c6fe2`  
		Last Modified: Wed, 30 Nov 2016 18:28:02 GMT  
		Size: 685.8 KB (685812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1877a34c30f915ed147edd87a2deb2da5ea6d67819fc2beb0ea87f3901742308`  
		Last Modified: Wed, 30 Nov 2016 18:29:10 GMT  
		Size: 189.6 MB (189637087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9c2261f5a65d40aabbc5ec55f32e1865cbd813ee07be89fdcada2f44a52e1f`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:e6d7cf20d1591e898c95244578410b05b22ff35ece05bb6e3be4331ac8cc96cf
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303067405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f5c437b32519137106713ab064004d99fb7ba0fec231c3ea17ed9e388b3c55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:32 GMT
ADD file:2ca910a8c0cef4144f7c4ef779f9d85d5f451a776c3c67fc83a7a461de73e7d7 in / 
# Tue, 29 Nov 2016 20:04:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:57:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:57:45 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:57:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:57:47 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:57:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:58:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:58:31 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:58:32 GMT
ENV ROS_DISTRO=kinetic
# Wed, 30 Nov 2016 18:00:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:00:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 18:00:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 18:00:10 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:49 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af49a5ceb2a56a8232402f5868cdb13dfdae5d66a62955a73e647e16e9f30a63`  
		Last Modified: Tue, 29 Nov 2016 20:08:29 GMT  
		Size: 50.1 MB (50096701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9757b472e7962a4304d4af61630e2cde66129218135b4093a43b9db8942c34`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931b117db38a05b9d0bbd28ca99a0abe5236a0026d88b3db804f520e59977ec`  
		Last Modified: Tue, 29 Nov 2016 20:08:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b5e16c0811b08c1cf3198fa5ac0b920946ac538a0a0030627d19763e2fa212`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332eaf1a55b72fb779d2f249b65855c623c8ce7be83c822b7d80115ef5a3af3`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371bded0f55a95a26133943a347dec77139e09da73166b361a7ff50d7dc8e7d8`  
		Last Modified: Wed, 30 Nov 2016 18:28:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc50994e1df321ddf642db38d33b12116a39bbbd8819bf0b56293d8ea7e2ab27`  
		Last Modified: Wed, 30 Nov 2016 18:28:04 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d0dd8418592bfe462f086933904724f1a5619855990f7ebcb791d70c384a6`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7725fafd3a81268e67abaed916de4448d3c8b430643948893c8aa1cb761a121d`  
		Last Modified: Wed, 30 Nov 2016 18:28:28 GMT  
		Size: 57.6 MB (57649246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e63dc17e81661695f0c82eff31c1b1db8543e52832d242eb311c88c9c6fe2`  
		Last Modified: Wed, 30 Nov 2016 18:28:02 GMT  
		Size: 685.8 KB (685812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1877a34c30f915ed147edd87a2deb2da5ea6d67819fc2beb0ea87f3901742308`  
		Last Modified: Wed, 30 Nov 2016 18:29:10 GMT  
		Size: 189.6 MB (189637087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9c2261f5a65d40aabbc5ec55f32e1865cbd813ee07be89fdcada2f44a52e1f`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8447f54c305fabd9eb89f3fab17fd81706c70d1fbfbad46476baa50503eeffb8`  
		Last Modified: Wed, 30 Nov 2016 18:30:51 GMT  
		Size: 4.6 MB (4643469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:e6d7cf20d1591e898c95244578410b05b22ff35ece05bb6e3be4331ac8cc96cf
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303067405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f5c437b32519137106713ab064004d99fb7ba0fec231c3ea17ed9e388b3c55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:32 GMT
ADD file:2ca910a8c0cef4144f7c4ef779f9d85d5f451a776c3c67fc83a7a461de73e7d7 in / 
# Tue, 29 Nov 2016 20:04:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:57:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:57:45 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:57:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:57:47 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:57:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:58:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:58:31 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:58:32 GMT
ENV ROS_DISTRO=kinetic
# Wed, 30 Nov 2016 18:00:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:00:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 18:00:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 18:00:10 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:49 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af49a5ceb2a56a8232402f5868cdb13dfdae5d66a62955a73e647e16e9f30a63`  
		Last Modified: Tue, 29 Nov 2016 20:08:29 GMT  
		Size: 50.1 MB (50096701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9757b472e7962a4304d4af61630e2cde66129218135b4093a43b9db8942c34`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931b117db38a05b9d0bbd28ca99a0abe5236a0026d88b3db804f520e59977ec`  
		Last Modified: Tue, 29 Nov 2016 20:08:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b5e16c0811b08c1cf3198fa5ac0b920946ac538a0a0030627d19763e2fa212`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332eaf1a55b72fb779d2f249b65855c623c8ce7be83c822b7d80115ef5a3af3`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371bded0f55a95a26133943a347dec77139e09da73166b361a7ff50d7dc8e7d8`  
		Last Modified: Wed, 30 Nov 2016 18:28:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc50994e1df321ddf642db38d33b12116a39bbbd8819bf0b56293d8ea7e2ab27`  
		Last Modified: Wed, 30 Nov 2016 18:28:04 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d0dd8418592bfe462f086933904724f1a5619855990f7ebcb791d70c384a6`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7725fafd3a81268e67abaed916de4448d3c8b430643948893c8aa1cb761a121d`  
		Last Modified: Wed, 30 Nov 2016 18:28:28 GMT  
		Size: 57.6 MB (57649246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e63dc17e81661695f0c82eff31c1b1db8543e52832d242eb311c88c9c6fe2`  
		Last Modified: Wed, 30 Nov 2016 18:28:02 GMT  
		Size: 685.8 KB (685812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1877a34c30f915ed147edd87a2deb2da5ea6d67819fc2beb0ea87f3901742308`  
		Last Modified: Wed, 30 Nov 2016 18:29:10 GMT  
		Size: 189.6 MB (189637087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9c2261f5a65d40aabbc5ec55f32e1865cbd813ee07be89fdcada2f44a52e1f`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8447f54c305fabd9eb89f3fab17fd81706c70d1fbfbad46476baa50503eeffb8`  
		Last Modified: Wed, 30 Nov 2016 18:30:51 GMT  
		Size: 4.6 MB (4643469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:e6d7cf20d1591e898c95244578410b05b22ff35ece05bb6e3be4331ac8cc96cf
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303067405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f5c437b32519137106713ab064004d99fb7ba0fec231c3ea17ed9e388b3c55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:32 GMT
ADD file:2ca910a8c0cef4144f7c4ef779f9d85d5f451a776c3c67fc83a7a461de73e7d7 in / 
# Tue, 29 Nov 2016 20:04:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:57:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:57:45 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:57:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:57:47 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:57:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:58:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:58:31 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:58:32 GMT
ENV ROS_DISTRO=kinetic
# Wed, 30 Nov 2016 18:00:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:00:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 18:00:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 18:00:10 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:49 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af49a5ceb2a56a8232402f5868cdb13dfdae5d66a62955a73e647e16e9f30a63`  
		Last Modified: Tue, 29 Nov 2016 20:08:29 GMT  
		Size: 50.1 MB (50096701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9757b472e7962a4304d4af61630e2cde66129218135b4093a43b9db8942c34`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931b117db38a05b9d0bbd28ca99a0abe5236a0026d88b3db804f520e59977ec`  
		Last Modified: Tue, 29 Nov 2016 20:08:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b5e16c0811b08c1cf3198fa5ac0b920946ac538a0a0030627d19763e2fa212`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332eaf1a55b72fb779d2f249b65855c623c8ce7be83c822b7d80115ef5a3af3`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371bded0f55a95a26133943a347dec77139e09da73166b361a7ff50d7dc8e7d8`  
		Last Modified: Wed, 30 Nov 2016 18:28:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc50994e1df321ddf642db38d33b12116a39bbbd8819bf0b56293d8ea7e2ab27`  
		Last Modified: Wed, 30 Nov 2016 18:28:04 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d0dd8418592bfe462f086933904724f1a5619855990f7ebcb791d70c384a6`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7725fafd3a81268e67abaed916de4448d3c8b430643948893c8aa1cb761a121d`  
		Last Modified: Wed, 30 Nov 2016 18:28:28 GMT  
		Size: 57.6 MB (57649246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e63dc17e81661695f0c82eff31c1b1db8543e52832d242eb311c88c9c6fe2`  
		Last Modified: Wed, 30 Nov 2016 18:28:02 GMT  
		Size: 685.8 KB (685812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1877a34c30f915ed147edd87a2deb2da5ea6d67819fc2beb0ea87f3901742308`  
		Last Modified: Wed, 30 Nov 2016 18:29:10 GMT  
		Size: 189.6 MB (189637087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9c2261f5a65d40aabbc5ec55f32e1865cbd813ee07be89fdcada2f44a52e1f`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8447f54c305fabd9eb89f3fab17fd81706c70d1fbfbad46476baa50503eeffb8`  
		Last Modified: Wed, 30 Nov 2016 18:30:51 GMT  
		Size: 4.6 MB (4643469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:a37647d289e475a4289882f68c2814f9ec4909ea82d5db44960238484bce67cc
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.5 MB (434534671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2edf9a74239c15e2acb98074d3a7f1de26bc68868f39eab82b749945355127e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:32 GMT
ADD file:2ca910a8c0cef4144f7c4ef779f9d85d5f451a776c3c67fc83a7a461de73e7d7 in / 
# Tue, 29 Nov 2016 20:04:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:57:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:57:45 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:57:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:57:47 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:57:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:58:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:58:31 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:58:32 GMT
ENV ROS_DISTRO=kinetic
# Wed, 30 Nov 2016 18:00:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:00:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 18:00:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 18:00:10 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:49 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:08:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:13:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af49a5ceb2a56a8232402f5868cdb13dfdae5d66a62955a73e647e16e9f30a63`  
		Last Modified: Tue, 29 Nov 2016 20:08:29 GMT  
		Size: 50.1 MB (50096701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9757b472e7962a4304d4af61630e2cde66129218135b4093a43b9db8942c34`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931b117db38a05b9d0bbd28ca99a0abe5236a0026d88b3db804f520e59977ec`  
		Last Modified: Tue, 29 Nov 2016 20:08:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b5e16c0811b08c1cf3198fa5ac0b920946ac538a0a0030627d19763e2fa212`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332eaf1a55b72fb779d2f249b65855c623c8ce7be83c822b7d80115ef5a3af3`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371bded0f55a95a26133943a347dec77139e09da73166b361a7ff50d7dc8e7d8`  
		Last Modified: Wed, 30 Nov 2016 18:28:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc50994e1df321ddf642db38d33b12116a39bbbd8819bf0b56293d8ea7e2ab27`  
		Last Modified: Wed, 30 Nov 2016 18:28:04 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d0dd8418592bfe462f086933904724f1a5619855990f7ebcb791d70c384a6`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7725fafd3a81268e67abaed916de4448d3c8b430643948893c8aa1cb761a121d`  
		Last Modified: Wed, 30 Nov 2016 18:28:28 GMT  
		Size: 57.6 MB (57649246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e63dc17e81661695f0c82eff31c1b1db8543e52832d242eb311c88c9c6fe2`  
		Last Modified: Wed, 30 Nov 2016 18:28:02 GMT  
		Size: 685.8 KB (685812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1877a34c30f915ed147edd87a2deb2da5ea6d67819fc2beb0ea87f3901742308`  
		Last Modified: Wed, 30 Nov 2016 18:29:10 GMT  
		Size: 189.6 MB (189637087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9c2261f5a65d40aabbc5ec55f32e1865cbd813ee07be89fdcada2f44a52e1f`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8447f54c305fabd9eb89f3fab17fd81706c70d1fbfbad46476baa50503eeffb8`  
		Last Modified: Wed, 30 Nov 2016 18:30:51 GMT  
		Size: 4.6 MB (4643469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f69091aa1ca3248837aa899437b536f70781d7dc9924840433f67637cab6971`  
		Last Modified: Wed, 30 Nov 2016 18:40:32 GMT  
		Size: 131.5 MB (131467266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:35f8fde7939c5338f7b9994f2df0d2b53546921e2cf2fd2289c4b294536f47f3
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.8 MB (706773993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad4eb208545a16fc4659e050d545f5b6912b364d75e323e9f8ad201f57af8e1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:32 GMT
ADD file:2ca910a8c0cef4144f7c4ef779f9d85d5f451a776c3c67fc83a7a461de73e7d7 in / 
# Tue, 29 Nov 2016 20:04:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:57:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:57:45 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:57:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:57:47 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:57:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:58:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:58:31 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:58:32 GMT
ENV ROS_DISTRO=kinetic
# Wed, 30 Nov 2016 18:00:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:00:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 18:00:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 18:00:10 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:49 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:08:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:11:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af49a5ceb2a56a8232402f5868cdb13dfdae5d66a62955a73e647e16e9f30a63`  
		Last Modified: Tue, 29 Nov 2016 20:08:29 GMT  
		Size: 50.1 MB (50096701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9757b472e7962a4304d4af61630e2cde66129218135b4093a43b9db8942c34`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931b117db38a05b9d0bbd28ca99a0abe5236a0026d88b3db804f520e59977ec`  
		Last Modified: Tue, 29 Nov 2016 20:08:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b5e16c0811b08c1cf3198fa5ac0b920946ac538a0a0030627d19763e2fa212`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332eaf1a55b72fb779d2f249b65855c623c8ce7be83c822b7d80115ef5a3af3`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371bded0f55a95a26133943a347dec77139e09da73166b361a7ff50d7dc8e7d8`  
		Last Modified: Wed, 30 Nov 2016 18:28:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc50994e1df321ddf642db38d33b12116a39bbbd8819bf0b56293d8ea7e2ab27`  
		Last Modified: Wed, 30 Nov 2016 18:28:04 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d0dd8418592bfe462f086933904724f1a5619855990f7ebcb791d70c384a6`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7725fafd3a81268e67abaed916de4448d3c8b430643948893c8aa1cb761a121d`  
		Last Modified: Wed, 30 Nov 2016 18:28:28 GMT  
		Size: 57.6 MB (57649246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e63dc17e81661695f0c82eff31c1b1db8543e52832d242eb311c88c9c6fe2`  
		Last Modified: Wed, 30 Nov 2016 18:28:02 GMT  
		Size: 685.8 KB (685812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1877a34c30f915ed147edd87a2deb2da5ea6d67819fc2beb0ea87f3901742308`  
		Last Modified: Wed, 30 Nov 2016 18:29:10 GMT  
		Size: 189.6 MB (189637087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9c2261f5a65d40aabbc5ec55f32e1865cbd813ee07be89fdcada2f44a52e1f`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8447f54c305fabd9eb89f3fab17fd81706c70d1fbfbad46476baa50503eeffb8`  
		Last Modified: Wed, 30 Nov 2016 18:30:51 GMT  
		Size: 4.6 MB (4643469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae244599dce2d52e818e6432da533b94e600ef716528833e47673b9acb56573`  
		Last Modified: Wed, 30 Nov 2016 18:39:20 GMT  
		Size: 403.7 MB (403706588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
