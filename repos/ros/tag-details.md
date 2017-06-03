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
-	[`ros:lunar-ros-core`](#roslunar-ros-core)
-	[`ros:lunar-ros-base`](#roslunar-ros-base)
-	[`ros:lunar`](#roslunar)
-	[`ros:lunar-robot`](#roslunar-robot)
-	[`ros:lunar-perception`](#roslunar-perception)

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:4381d64e774cc174052b0fcbf7813350123d95808e40127ae57569529898c957
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.0 MB (253993333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1fd36caf944c7cfdc028aac450f5e78fdcefe0c227338db345f4400708c118`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 00:48:55 GMT
ENV ROS_DISTRO=indigo
# Sat, 03 Jun 2017 00:50:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:54:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 00:54:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 00:54:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8934e82868ce20d99f674012f7f5c4ad717ae059fd35e0527cfbf3b967dd41`  
		Last Modified: Sat, 03 Jun 2017 03:20:14 GMT  
		Size: 152.6 MB (152572112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864452181e1c18f51b78293ece0b6323953d63839bdda9a6f57bef8c30edb129`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:18a23def121495d44654da7f46a30c47298413404e5595f4e5990bcbc3e1c0f0
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257474505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b67f2d9cee5c4dc3d32b992254e2b2f7f3e944fe21fc41c4664b97b4897066`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 00:48:55 GMT
ENV ROS_DISTRO=indigo
# Sat, 03 Jun 2017 00:50:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:54:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 00:54:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 00:54:49 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 00:55:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8934e82868ce20d99f674012f7f5c4ad717ae059fd35e0527cfbf3b967dd41`  
		Last Modified: Sat, 03 Jun 2017 03:20:14 GMT  
		Size: 152.6 MB (152572112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864452181e1c18f51b78293ece0b6323953d63839bdda9a6f57bef8c30edb129`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2c78cb484202557ace10f3dc4c01d37e12eb147bcc42cded9a5f8d6079164`  
		Last Modified: Sat, 03 Jun 2017 03:20:47 GMT  
		Size: 3.5 MB (3481172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:18a23def121495d44654da7f46a30c47298413404e5595f4e5990bcbc3e1c0f0
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257474505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b67f2d9cee5c4dc3d32b992254e2b2f7f3e944fe21fc41c4664b97b4897066`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 00:48:55 GMT
ENV ROS_DISTRO=indigo
# Sat, 03 Jun 2017 00:50:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:54:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 00:54:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 00:54:49 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 00:55:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8934e82868ce20d99f674012f7f5c4ad717ae059fd35e0527cfbf3b967dd41`  
		Last Modified: Sat, 03 Jun 2017 03:20:14 GMT  
		Size: 152.6 MB (152572112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864452181e1c18f51b78293ece0b6323953d63839bdda9a6f57bef8c30edb129`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2c78cb484202557ace10f3dc4c01d37e12eb147bcc42cded9a5f8d6079164`  
		Last Modified: Sat, 03 Jun 2017 03:20:47 GMT  
		Size: 3.5 MB (3481172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:6a8c59db8a10f441eed184257604b3b69d17dfccf3ec256a8a77792a7c2b1b1c
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327348154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a0f617d0b1f20f602595659058f7213ff21bd929db29499a4a833996777f18`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 00:48:55 GMT
ENV ROS_DISTRO=indigo
# Sat, 03 Jun 2017 00:50:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:54:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 00:54:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 00:54:49 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 00:55:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:56:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8934e82868ce20d99f674012f7f5c4ad717ae059fd35e0527cfbf3b967dd41`  
		Last Modified: Sat, 03 Jun 2017 03:20:14 GMT  
		Size: 152.6 MB (152572112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864452181e1c18f51b78293ece0b6323953d63839bdda9a6f57bef8c30edb129`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2c78cb484202557ace10f3dc4c01d37e12eb147bcc42cded9a5f8d6079164`  
		Last Modified: Sat, 03 Jun 2017 03:20:47 GMT  
		Size: 3.5 MB (3481172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47593aa1eca0c53d1987a7cc3c86b0e712cddd947d3dedce1218076991aeba3`  
		Last Modified: Sat, 03 Jun 2017 03:21:58 GMT  
		Size: 69.9 MB (69873649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:d4ac313efddac79948078db246be03fd9501d99d1423e1e43c0db4fe66c74a1e
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.7 MB (530714571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f15729d69bd368afbc650b76aeea43428a2024147bdc73c87c35268e375332d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 00:48:55 GMT
ENV ROS_DISTRO=indigo
# Sat, 03 Jun 2017 00:50:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:54:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 00:54:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 00:54:49 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 00:55:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:00:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8934e82868ce20d99f674012f7f5c4ad717ae059fd35e0527cfbf3b967dd41`  
		Last Modified: Sat, 03 Jun 2017 03:20:14 GMT  
		Size: 152.6 MB (152572112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864452181e1c18f51b78293ece0b6323953d63839bdda9a6f57bef8c30edb129`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2c78cb484202557ace10f3dc4c01d37e12eb147bcc42cded9a5f8d6079164`  
		Last Modified: Sat, 03 Jun 2017 03:20:47 GMT  
		Size: 3.5 MB (3481172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3568411da458f4c033d39dbf9b0c2098e01b3b1eb7d789897a545224a965218`  
		Last Modified: Sat, 03 Jun 2017 03:23:41 GMT  
		Size: 273.2 MB (273240066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:52b8fa5f9fc6739fe5ebf6f798cfe309d8cd41eff2d31a075933a513265cb050
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254100508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5370bad9e3cc7f6637db601a0ad5635d0518ffc8ac5688331e6b2087e472a15`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:25:12 GMT
ENV ROS_DISTRO=jade
# Sat, 03 Jun 2017 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:26:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:26:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660b10c14dad8b6b73c2441f1eef4967a010141efdf117e3412c483d46ee509`  
		Last Modified: Sat, 03 Jun 2017 03:25:06 GMT  
		Size: 152.7 MB (152679287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d23bba3f4adfae41d5ae2161489c960587177db71d977963d004b33d613152`  
		Last Modified: Sat, 03 Jun 2017 03:24:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:71b567fc8c3bc519052eb3e983b99480c0e1b6ab8a24836d37d7e36e3a87f749
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257598138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acc7029bf3af21ca66137c70ad5b5e4f1d62c06164933442b940340708609ae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:25:12 GMT
ENV ROS_DISTRO=jade
# Sat, 03 Jun 2017 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:26:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:26:43 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 01:27:23 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660b10c14dad8b6b73c2441f1eef4967a010141efdf117e3412c483d46ee509`  
		Last Modified: Sat, 03 Jun 2017 03:25:06 GMT  
		Size: 152.7 MB (152679287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d23bba3f4adfae41d5ae2161489c960587177db71d977963d004b33d613152`  
		Last Modified: Sat, 03 Jun 2017 03:24:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59508485f741cb83207a658f0467286f8b31c245b112072fd6b1bc6f0404a013`  
		Last Modified: Sat, 03 Jun 2017 03:25:39 GMT  
		Size: 3.5 MB (3497630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:71b567fc8c3bc519052eb3e983b99480c0e1b6ab8a24836d37d7e36e3a87f749
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257598138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acc7029bf3af21ca66137c70ad5b5e4f1d62c06164933442b940340708609ae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:25:12 GMT
ENV ROS_DISTRO=jade
# Sat, 03 Jun 2017 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:26:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:26:43 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 01:27:23 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660b10c14dad8b6b73c2441f1eef4967a010141efdf117e3412c483d46ee509`  
		Last Modified: Sat, 03 Jun 2017 03:25:06 GMT  
		Size: 152.7 MB (152679287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d23bba3f4adfae41d5ae2161489c960587177db71d977963d004b33d613152`  
		Last Modified: Sat, 03 Jun 2017 03:24:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59508485f741cb83207a658f0467286f8b31c245b112072fd6b1bc6f0404a013`  
		Last Modified: Sat, 03 Jun 2017 03:25:39 GMT  
		Size: 3.5 MB (3497630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:ad6ead233e8e2bfcd0f22b1551e6c916e350a78b5d2f1c3fd7351994740dc657
```

-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.5 MB (327481683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8088b8409d8bb6299087f28ff2461a6282d9163bca581ab17fadb13dfc0cfe3f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:25:12 GMT
ENV ROS_DISTRO=jade
# Sat, 03 Jun 2017 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:26:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:26:43 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 01:27:23 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:28:40 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660b10c14dad8b6b73c2441f1eef4967a010141efdf117e3412c483d46ee509`  
		Last Modified: Sat, 03 Jun 2017 03:25:06 GMT  
		Size: 152.7 MB (152679287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d23bba3f4adfae41d5ae2161489c960587177db71d977963d004b33d613152`  
		Last Modified: Sat, 03 Jun 2017 03:24:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59508485f741cb83207a658f0467286f8b31c245b112072fd6b1bc6f0404a013`  
		Last Modified: Sat, 03 Jun 2017 03:25:39 GMT  
		Size: 3.5 MB (3497630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08916aec20e11b6b9e38eb9803d48437bda8829573fa8bf9029090d2a20e61d8`  
		Last Modified: Sat, 03 Jun 2017 03:26:51 GMT  
		Size: 69.9 MB (69883545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:a70e574ae60827d6f8ebbe207642847febda4fd7ec003642f98652b07de67052
```

-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **529.7 MB (529655588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd91a89bab5ad1d5969e4efdf38dc978787e1026cfa5fd91846b98d88893c482`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:48:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 00:48:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 00:48:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 00:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 00:48:45 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 00:48:54 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:25:12 GMT
ENV ROS_DISTRO=jade
# Sat, 03 Jun 2017 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:26:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:26:43 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 01:27:23 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:32:00 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8709a7a04df67030b1f558fefdcfc7e4029f9b76b5427bae88d3681d29a932`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db5e465681f471df1d32104ebf698d2e9fe92d0c0db78bbef8ff1e4b02358c5`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181db3f323852519bb4df929596be02135cfba823212d2de3577b8ce24d5d7cb`  
		Last Modified: Sat, 03 Jun 2017 03:19:38 GMT  
		Size: 33.5 MB (33508462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4e5e428f4a8ffbff1c643faf02115f3fdbe8207c0b290f2c261ec6cc24c5d`  
		Last Modified: Sat, 03 Jun 2017 03:19:22 GMT  
		Size: 715.3 KB (715260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660b10c14dad8b6b73c2441f1eef4967a010141efdf117e3412c483d46ee509`  
		Last Modified: Sat, 03 Jun 2017 03:25:06 GMT  
		Size: 152.7 MB (152679287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d23bba3f4adfae41d5ae2161489c960587177db71d977963d004b33d613152`  
		Last Modified: Sat, 03 Jun 2017 03:24:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59508485f741cb83207a658f0467286f8b31c245b112072fd6b1bc6f0404a013`  
		Last Modified: Sat, 03 Jun 2017 03:25:39 GMT  
		Size: 3.5 MB (3497630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3472520eeb983bb4bc109b4865508da010204092339b5ef49211324e47f0dd`  
		Last Modified: Sat, 03 Jun 2017 03:28:29 GMT  
		Size: 272.1 MB (272057450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:541ead68987acccd3eda2c1cb6698b382148a05bae5d384af25461920bdc063d
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299506077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff1ddebb9857390999bae3738c92a843e4a76f202c67bc5ec4d631d09a5ea99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 01:56:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 01:56:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 01:57:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:57:11 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 01:57:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 01:57:23 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:57:24 GMT
ENV ROS_DISTRO=kinetic
# Sat, 03 Jun 2017 01:58:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:58:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:58:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:58:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d60414a57ed486651a742bd6f1a8d57e06ffeb19866d004f32646fecd41e12`  
		Last Modified: Sat, 03 Jun 2017 03:29:00 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e52c3383b0c079b3babdc3ce7c0447f41dc21baa997f81a2631acba1af786`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357b9c9b16723f3af3f8ab490b0a56518b9474e5fea894e04414c369d4af0e0d`  
		Last Modified: Sat, 03 Jun 2017 03:29:28 GMT  
		Size: 58.8 MB (58779948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c791091ba5c89739438557c06949b3cb21ada271a02e2c29c1b1b103098401`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 715.4 KB (715368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f407e2fe38a228d159e7dfeb6f48203e24808fdb679f4308a0bd80edce5c09c1`  
		Last Modified: Sat, 03 Jun 2017 03:30:01 GMT  
		Size: 193.1 MB (193061694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3cf91c7ed951049babac50718bd114f70d6532dc3e2572f8a2d290989181b4`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:8c2e126a875b168151019517ab43fa58ae7d5f54558e38370efcd11c7b745453
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304236920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4aa6a727271bf90ec91f4ad40017dc757f0be355663ac2a8ffcceefd5b562e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 01:56:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 01:56:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 01:57:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:57:11 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 01:57:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 01:57:23 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:57:24 GMT
ENV ROS_DISTRO=kinetic
# Sat, 03 Jun 2017 01:58:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:58:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:58:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:58:51 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 02:01:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d60414a57ed486651a742bd6f1a8d57e06ffeb19866d004f32646fecd41e12`  
		Last Modified: Sat, 03 Jun 2017 03:29:00 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e52c3383b0c079b3babdc3ce7c0447f41dc21baa997f81a2631acba1af786`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357b9c9b16723f3af3f8ab490b0a56518b9474e5fea894e04414c369d4af0e0d`  
		Last Modified: Sat, 03 Jun 2017 03:29:28 GMT  
		Size: 58.8 MB (58779948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c791091ba5c89739438557c06949b3cb21ada271a02e2c29c1b1b103098401`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 715.4 KB (715368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f407e2fe38a228d159e7dfeb6f48203e24808fdb679f4308a0bd80edce5c09c1`  
		Last Modified: Sat, 03 Jun 2017 03:30:01 GMT  
		Size: 193.1 MB (193061694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3cf91c7ed951049babac50718bd114f70d6532dc3e2572f8a2d290989181b4`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a217e85ac413babb1965c6a2697dd04c9c1c4e43d332c80d4a8266d4cbcaa88`  
		Last Modified: Sat, 03 Jun 2017 03:30:35 GMT  
		Size: 4.7 MB (4730843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:8c2e126a875b168151019517ab43fa58ae7d5f54558e38370efcd11c7b745453
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304236920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4aa6a727271bf90ec91f4ad40017dc757f0be355663ac2a8ffcceefd5b562e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 01:56:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 01:56:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 01:57:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:57:11 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 01:57:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 01:57:23 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:57:24 GMT
ENV ROS_DISTRO=kinetic
# Sat, 03 Jun 2017 01:58:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:58:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:58:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:58:51 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 02:01:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d60414a57ed486651a742bd6f1a8d57e06ffeb19866d004f32646fecd41e12`  
		Last Modified: Sat, 03 Jun 2017 03:29:00 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e52c3383b0c079b3babdc3ce7c0447f41dc21baa997f81a2631acba1af786`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357b9c9b16723f3af3f8ab490b0a56518b9474e5fea894e04414c369d4af0e0d`  
		Last Modified: Sat, 03 Jun 2017 03:29:28 GMT  
		Size: 58.8 MB (58779948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c791091ba5c89739438557c06949b3cb21ada271a02e2c29c1b1b103098401`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 715.4 KB (715368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f407e2fe38a228d159e7dfeb6f48203e24808fdb679f4308a0bd80edce5c09c1`  
		Last Modified: Sat, 03 Jun 2017 03:30:01 GMT  
		Size: 193.1 MB (193061694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3cf91c7ed951049babac50718bd114f70d6532dc3e2572f8a2d290989181b4`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a217e85ac413babb1965c6a2697dd04c9c1c4e43d332c80d4a8266d4cbcaa88`  
		Last Modified: Sat, 03 Jun 2017 03:30:35 GMT  
		Size: 4.7 MB (4730843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:a292c5059a95f97fc755294602991bfe546ea46115408a9cf9028628fb1d1186
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304191223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f35a699fe18690ae3ca80f47b156f9b587fc581e88317cc80b2e6522f699822`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Wed, 24 May 2017 17:39:43 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 24 May 2017 17:40:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 24 May 2017 17:40:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:40:54 GMT
ENV LANG=C.UTF-8
# Wed, 24 May 2017 17:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 24 May 2017 17:41:08 GMT
RUN rosdep init     && rosdep update
# Wed, 24 May 2017 19:36:29 GMT
ENV ROS_DISTRO=kinetic
# Wed, 24 May 2017 19:37:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 19:37:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 24 May 2017 19:37:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 24 May 2017 19:37:55 GMT
CMD ["bash"]
# Wed, 24 May 2017 19:38:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a888df954433da8e538333503c3a3142359dd8b812e77cfc8347c1afc41835`  
		Last Modified: Wed, 24 May 2017 18:20:59 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4421b4fe281c38da3393d8b6e157d13ec628139c0b907733d2971401d6fd3782`  
		Last Modified: Wed, 24 May 2017 18:20:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354e3e5f562a3e058acd5644d0238b40b3c64f2a315f78d65a298688139681c6`  
		Last Modified: Wed, 24 May 2017 18:21:29 GMT  
		Size: 58.8 MB (58779580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecf6e9dacca1f956b752d6811bc007d41a10fd73ca60dd9b56caa9a567389d4`  
		Last Modified: Wed, 24 May 2017 18:20:59 GMT  
		Size: 711.1 KB (711060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f168aa27e1fe20128ed5d76a776cb9108669d90d4176999056bae0dcc4f28d08`  
		Last Modified: Wed, 24 May 2017 20:23:26 GMT  
		Size: 193.1 MB (193060965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8c5f3a34b8f9db0d936b23873eddec6ce8f751cc872a770a23889c48e7ad7a`  
		Last Modified: Wed, 24 May 2017 20:22:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdcc192772b9c24767ec58fa1dad788836fb945b696932a7486a552acd54d7d`  
		Last Modified: Wed, 24 May 2017 20:23:55 GMT  
		Size: 4.7 MB (4730434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:30a9dc68c19a6a62cbb92516b627212de310db0541d882926320e46e2aaf579f
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.7 MB (438692815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd958b5262156de71c1923ed1d5e935f2da869717081651ae4be30fe13a4c34`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 01:56:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 01:56:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 01:57:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:57:11 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 01:57:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 01:57:23 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:57:24 GMT
ENV ROS_DISTRO=kinetic
# Sat, 03 Jun 2017 01:58:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:58:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:58:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:58:51 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 02:01:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 02:03:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d60414a57ed486651a742bd6f1a8d57e06ffeb19866d004f32646fecd41e12`  
		Last Modified: Sat, 03 Jun 2017 03:29:00 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e52c3383b0c079b3babdc3ce7c0447f41dc21baa997f81a2631acba1af786`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357b9c9b16723f3af3f8ab490b0a56518b9474e5fea894e04414c369d4af0e0d`  
		Last Modified: Sat, 03 Jun 2017 03:29:28 GMT  
		Size: 58.8 MB (58779948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c791091ba5c89739438557c06949b3cb21ada271a02e2c29c1b1b103098401`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 715.4 KB (715368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f407e2fe38a228d159e7dfeb6f48203e24808fdb679f4308a0bd80edce5c09c1`  
		Last Modified: Sat, 03 Jun 2017 03:30:01 GMT  
		Size: 193.1 MB (193061694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3cf91c7ed951049babac50718bd114f70d6532dc3e2572f8a2d290989181b4`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a217e85ac413babb1965c6a2697dd04c9c1c4e43d332c80d4a8266d4cbcaa88`  
		Last Modified: Sat, 03 Jun 2017 03:30:35 GMT  
		Size: 4.7 MB (4730843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d2f78e4f1fe44db0a3c7b2dac8fdc45203cfd3c5b65c9936f87d979b5137ba`  
		Last Modified: Sat, 03 Jun 2017 03:32:25 GMT  
		Size: 134.5 MB (134455895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:c14881a6cd284be7bf6341f300691e756889efb9e61e7844123e0f3b2c1c8393
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **687.5 MB (687475549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4924320a5fe0158db5b85413d5e34dbd8ab04852d904f8d34872cfd6077f3ed3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 01:56:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 01:56:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 01:57:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:57:11 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 01:57:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 01:57:23 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 01:57:24 GMT
ENV ROS_DISTRO=kinetic
# Sat, 03 Jun 2017 01:58:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:58:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 01:58:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 01:58:51 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 02:01:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 02:07:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d60414a57ed486651a742bd6f1a8d57e06ffeb19866d004f32646fecd41e12`  
		Last Modified: Sat, 03 Jun 2017 03:29:00 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e52c3383b0c079b3babdc3ce7c0447f41dc21baa997f81a2631acba1af786`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357b9c9b16723f3af3f8ab490b0a56518b9474e5fea894e04414c369d4af0e0d`  
		Last Modified: Sat, 03 Jun 2017 03:29:28 GMT  
		Size: 58.8 MB (58779948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c791091ba5c89739438557c06949b3cb21ada271a02e2c29c1b1b103098401`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 715.4 KB (715368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f407e2fe38a228d159e7dfeb6f48203e24808fdb679f4308a0bd80edce5c09c1`  
		Last Modified: Sat, 03 Jun 2017 03:30:01 GMT  
		Size: 193.1 MB (193061694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3cf91c7ed951049babac50718bd114f70d6532dc3e2572f8a2d290989181b4`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a217e85ac413babb1965c6a2697dd04c9c1c4e43d332c80d4a8266d4cbcaa88`  
		Last Modified: Sat, 03 Jun 2017 03:30:35 GMT  
		Size: 4.7 MB (4730843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfd7919a0d5ae66776bb9cae0252ebc13fec1fcb84d9eb70cfdb3882c37c52d`  
		Last Modified: Sat, 03 Jun 2017 03:34:29 GMT  
		Size: 383.2 MB (383238629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:83cd2d08cae94b7a3d509d81e7c7e75a581d29da6b3b76be35fcff8bd91dbb78
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-core` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299488657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca73c04a8832535cc281ce83fe0a5c2c16ffcc1d8b486e6e01952b7f215de72`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 01:56:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 01:56:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 01:57:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:57:11 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 01:57:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 01:57:23 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 02:31:22 GMT
ENV ROS_DISTRO=lunar
# Sat, 03 Jun 2017 02:32:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 02:32:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 02:32:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 02:32:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d60414a57ed486651a742bd6f1a8d57e06ffeb19866d004f32646fecd41e12`  
		Last Modified: Sat, 03 Jun 2017 03:29:00 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e52c3383b0c079b3babdc3ce7c0447f41dc21baa997f81a2631acba1af786`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357b9c9b16723f3af3f8ab490b0a56518b9474e5fea894e04414c369d4af0e0d`  
		Last Modified: Sat, 03 Jun 2017 03:29:28 GMT  
		Size: 58.8 MB (58779948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c791091ba5c89739438557c06949b3cb21ada271a02e2c29c1b1b103098401`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 715.4 KB (715368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e606744e6b66f53316f570b15561f5c9688d08036d91dd03c99cd54734cb577`  
		Last Modified: Sat, 03 Jun 2017 03:35:56 GMT  
		Size: 193.0 MB (193044275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f8d44623741d74046454f2d0d1f1c849ec75bf8f613168c57bbc0695c75730`  
		Last Modified: Sat, 03 Jun 2017 03:35:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:5602e0d59aac14b0645813b02794377f0e1c30c96a24b300ceef6e44e3154e0d
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304312681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd56cc7b0e82ce4ba6084992fb3d6759ee617cb15e6ff189ae5e87cbf62e816f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 01:56:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 01:56:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 01:57:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:57:11 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 01:57:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 01:57:23 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 02:31:22 GMT
ENV ROS_DISTRO=lunar
# Sat, 03 Jun 2017 02:32:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 02:32:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 02:32:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 02:32:55 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 02:46:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d60414a57ed486651a742bd6f1a8d57e06ffeb19866d004f32646fecd41e12`  
		Last Modified: Sat, 03 Jun 2017 03:29:00 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e52c3383b0c079b3babdc3ce7c0447f41dc21baa997f81a2631acba1af786`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357b9c9b16723f3af3f8ab490b0a56518b9474e5fea894e04414c369d4af0e0d`  
		Last Modified: Sat, 03 Jun 2017 03:29:28 GMT  
		Size: 58.8 MB (58779948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c791091ba5c89739438557c06949b3cb21ada271a02e2c29c1b1b103098401`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 715.4 KB (715368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e606744e6b66f53316f570b15561f5c9688d08036d91dd03c99cd54734cb577`  
		Last Modified: Sat, 03 Jun 2017 03:35:56 GMT  
		Size: 193.0 MB (193044275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f8d44623741d74046454f2d0d1f1c849ec75bf8f613168c57bbc0695c75730`  
		Last Modified: Sat, 03 Jun 2017 03:35:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e528d6d57fc1e4e0d4fededcd76d0692fe5af1881204c43d6ce2789466216d`  
		Last Modified: Sat, 03 Jun 2017 03:36:33 GMT  
		Size: 4.8 MB (4824024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:5602e0d59aac14b0645813b02794377f0e1c30c96a24b300ceef6e44e3154e0d
```

-	Platforms:
	-	linux; amd64

### `ros:lunar` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304312681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd56cc7b0e82ce4ba6084992fb3d6759ee617cb15e6ff189ae5e87cbf62e816f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 01:56:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 01:56:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 01:57:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:57:11 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 01:57:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 01:57:23 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 02:31:22 GMT
ENV ROS_DISTRO=lunar
# Sat, 03 Jun 2017 02:32:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 02:32:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 02:32:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 02:32:55 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 02:46:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d60414a57ed486651a742bd6f1a8d57e06ffeb19866d004f32646fecd41e12`  
		Last Modified: Sat, 03 Jun 2017 03:29:00 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e52c3383b0c079b3babdc3ce7c0447f41dc21baa997f81a2631acba1af786`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357b9c9b16723f3af3f8ab490b0a56518b9474e5fea894e04414c369d4af0e0d`  
		Last Modified: Sat, 03 Jun 2017 03:29:28 GMT  
		Size: 58.8 MB (58779948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c791091ba5c89739438557c06949b3cb21ada271a02e2c29c1b1b103098401`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 715.4 KB (715368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e606744e6b66f53316f570b15561f5c9688d08036d91dd03c99cd54734cb577`  
		Last Modified: Sat, 03 Jun 2017 03:35:56 GMT  
		Size: 193.0 MB (193044275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f8d44623741d74046454f2d0d1f1c849ec75bf8f613168c57bbc0695c75730`  
		Last Modified: Sat, 03 Jun 2017 03:35:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e528d6d57fc1e4e0d4fededcd76d0692fe5af1881204c43d6ce2789466216d`  
		Last Modified: Sat, 03 Jun 2017 03:36:33 GMT  
		Size: 4.8 MB (4824024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:bfd63d5a8004c6c35fea3538ba8a2c66213700415cfbec755607684401087bc0
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.8 MB (438768452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65354152f688670452504637411114ad692dabaac16dcc3e0c5e922bd4253542`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 01:56:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 03 Jun 2017 01:56:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 03 Jun 2017 01:57:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 01:57:11 GMT
ENV LANG=C.UTF-8
# Sat, 03 Jun 2017 01:57:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 03 Jun 2017 01:57:23 GMT
RUN rosdep init     && rosdep update
# Sat, 03 Jun 2017 02:31:22 GMT
ENV ROS_DISTRO=lunar
# Sat, 03 Jun 2017 02:32:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 02:32:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 03 Jun 2017 02:32:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 03 Jun 2017 02:32:55 GMT
CMD ["bash"]
# Sat, 03 Jun 2017 02:46:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Jun 2017 02:47:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d60414a57ed486651a742bd6f1a8d57e06ffeb19866d004f32646fecd41e12`  
		Last Modified: Sat, 03 Jun 2017 03:29:00 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93e52c3383b0c079b3babdc3ce7c0447f41dc21baa997f81a2631acba1af786`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357b9c9b16723f3af3f8ab490b0a56518b9474e5fea894e04414c369d4af0e0d`  
		Last Modified: Sat, 03 Jun 2017 03:29:28 GMT  
		Size: 58.8 MB (58779948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c791091ba5c89739438557c06949b3cb21ada271a02e2c29c1b1b103098401`  
		Last Modified: Sat, 03 Jun 2017 03:29:01 GMT  
		Size: 715.4 KB (715368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e606744e6b66f53316f570b15561f5c9688d08036d91dd03c99cd54734cb577`  
		Last Modified: Sat, 03 Jun 2017 03:35:56 GMT  
		Size: 193.0 MB (193044275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f8d44623741d74046454f2d0d1f1c849ec75bf8f613168c57bbc0695c75730`  
		Last Modified: Sat, 03 Jun 2017 03:35:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e528d6d57fc1e4e0d4fededcd76d0692fe5af1881204c43d6ce2789466216d`  
		Last Modified: Sat, 03 Jun 2017 03:36:33 GMT  
		Size: 4.8 MB (4824024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea60dbea8a8e502ba74cc0a8624b2c1dda77c92dd872f6180cb0dbce6e12fa70`  
		Last Modified: Sat, 03 Jun 2017 03:38:01 GMT  
		Size: 134.5 MB (134455771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:6ec9fd66f0e67bd8134c15add920ed14b25f296fc211bd2f1815f16eec07dae5
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-perception` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **687.5 MB (687503312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e7fb47ea55d64827b4f5efcdcda14985aca661c78770a0f677ea75b52e2e25`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Wed, 24 May 2017 17:39:43 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 24 May 2017 17:40:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 24 May 2017 17:40:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:40:54 GMT
ENV LANG=C.UTF-8
# Wed, 24 May 2017 17:40:55 GMT
ENV LC_ALL=C.UTF-8
# Wed, 24 May 2017 17:41:08 GMT
RUN rosdep init     && rosdep update
# Wed, 24 May 2017 17:41:20 GMT
ENV ROS_DISTRO=lunar
# Wed, 24 May 2017 17:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:43:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 24 May 2017 17:43:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 24 May 2017 17:43:34 GMT
CMD ["bash"]
# Wed, 24 May 2017 17:44:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:49:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a888df954433da8e538333503c3a3142359dd8b812e77cfc8347c1afc41835`  
		Last Modified: Wed, 24 May 2017 18:20:59 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4421b4fe281c38da3393d8b6e157d13ec628139c0b907733d2971401d6fd3782`  
		Last Modified: Wed, 24 May 2017 18:20:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354e3e5f562a3e058acd5644d0238b40b3c64f2a315f78d65a298688139681c6`  
		Last Modified: Wed, 24 May 2017 18:21:29 GMT  
		Size: 58.8 MB (58779580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecf6e9dacca1f956b752d6811bc007d41a10fd73ca60dd9b56caa9a567389d4`  
		Last Modified: Wed, 24 May 2017 18:20:59 GMT  
		Size: 711.1 KB (711060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744ce0af0642f091d719c949000088cc3fab0ad4baf4c58bdb3c44829ee2e350`  
		Last Modified: Wed, 24 May 2017 18:22:02 GMT  
		Size: 193.0 MB (193041822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36d3cb3ce89a9ae95dc982242dafedc98d15d52df57f81ac787929414ed10ba`  
		Last Modified: Wed, 24 May 2017 18:20:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f69259aa6ba9c2f9fca9bfa063783073a24d34218316b6f0af0b3833d8fbb7d`  
		Last Modified: Wed, 24 May 2017 18:22:34 GMT  
		Size: 4.8 MB (4823715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca1d5af837526bf66b775083718c87983f88c86522ad67060cf3eb8d9a16fa9`  
		Last Modified: Wed, 24 May 2017 18:25:26 GMT  
		Size: 383.2 MB (383237951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
