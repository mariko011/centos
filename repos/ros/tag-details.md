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
$ docker pull ros@sha256:cfd886c172af0c85e6a7993dcec09c5976970764fd92e446bd1abf21f3b7ef12
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.0 MB (254012136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534bf34bee9c0fb64bb99cd5855296d59d5276812d3a81a047aab8fec9d76523`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 06:23:45 GMT
ENV ROS_DISTRO=indigo
# Fri, 23 Jun 2017 06:25:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:25:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 06:25:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 06:25:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383954afb24b41b20babb973b922e0a5bb789c1a3f241d28af7a721dd869962f`  
		Last Modified: Sat, 24 Jun 2017 22:03:05 GMT  
		Size: 152.6 MB (152571599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a69685718bcaa8b0e336c362ea0c74363e9d93409eabc732703960cef525e`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:51a7845012acede375f3f0d5be9bbf7a2235d0b4f3fb5cbf415b956506c0d9dd
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257493197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d77a39d2766f109f4375fde55bc14afa620de5dd0f4075fd9cb3b060f2b715`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 06:23:45 GMT
ENV ROS_DISTRO=indigo
# Fri, 23 Jun 2017 06:25:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:25:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 06:25:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 06:25:11 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 06:25:54 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383954afb24b41b20babb973b922e0a5bb789c1a3f241d28af7a721dd869962f`  
		Last Modified: Sat, 24 Jun 2017 22:03:05 GMT  
		Size: 152.6 MB (152571599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a69685718bcaa8b0e336c362ea0c74363e9d93409eabc732703960cef525e`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92495b1da6cdc8e7eae6812e918d724d51d9bc429e075c1eabc5fde3aefd1f1b`  
		Last Modified: Sat, 24 Jun 2017 22:33:59 GMT  
		Size: 3.5 MB (3481061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:51a7845012acede375f3f0d5be9bbf7a2235d0b4f3fb5cbf415b956506c0d9dd
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257493197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d77a39d2766f109f4375fde55bc14afa620de5dd0f4075fd9cb3b060f2b715`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 06:23:45 GMT
ENV ROS_DISTRO=indigo
# Fri, 23 Jun 2017 06:25:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:25:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 06:25:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 06:25:11 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 06:25:54 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383954afb24b41b20babb973b922e0a5bb789c1a3f241d28af7a721dd869962f`  
		Last Modified: Sat, 24 Jun 2017 22:03:05 GMT  
		Size: 152.6 MB (152571599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a69685718bcaa8b0e336c362ea0c74363e9d93409eabc732703960cef525e`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92495b1da6cdc8e7eae6812e918d724d51d9bc429e075c1eabc5fde3aefd1f1b`  
		Last Modified: Sat, 24 Jun 2017 22:33:59 GMT  
		Size: 3.5 MB (3481061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:1d18a37767c8c1d37f0d3158737afa2be54916a7726cbaf06a9376678044b527
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.4 MB (327366589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44662719413b1cb2bfd69d9a6269c1cd24f8e4c75c383fae77bbdb9e3902e07d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 06:23:45 GMT
ENV ROS_DISTRO=indigo
# Fri, 23 Jun 2017 06:25:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:25:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 06:25:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 06:25:11 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 06:25:54 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:27:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383954afb24b41b20babb973b922e0a5bb789c1a3f241d28af7a721dd869962f`  
		Last Modified: Sat, 24 Jun 2017 22:03:05 GMT  
		Size: 152.6 MB (152571599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a69685718bcaa8b0e336c362ea0c74363e9d93409eabc732703960cef525e`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92495b1da6cdc8e7eae6812e918d724d51d9bc429e075c1eabc5fde3aefd1f1b`  
		Last Modified: Sat, 24 Jun 2017 22:33:59 GMT  
		Size: 3.5 MB (3481061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beaf7db1b4d716cdd2b76666b5ba7fa609792beebdc4804eeccb79674743e486`  
		Last Modified: Sat, 24 Jun 2017 22:35:13 GMT  
		Size: 69.9 MB (69873392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:5d8fcd477f5d0de271db5102161b650fea4422bfa0c1a6015b8f063ee26edf3a
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.7 MB (530732942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f81a898f479250bb1727c7843155313eb47daa3f91ddd856e164a417079e172`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 06:23:45 GMT
ENV ROS_DISTRO=indigo
# Fri, 23 Jun 2017 06:25:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:25:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 06:25:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 06:25:11 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 06:25:54 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:31:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383954afb24b41b20babb973b922e0a5bb789c1a3f241d28af7a721dd869962f`  
		Last Modified: Sat, 24 Jun 2017 22:03:05 GMT  
		Size: 152.6 MB (152571599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612a69685718bcaa8b0e336c362ea0c74363e9d93409eabc732703960cef525e`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92495b1da6cdc8e7eae6812e918d724d51d9bc429e075c1eabc5fde3aefd1f1b`  
		Last Modified: Sat, 24 Jun 2017 22:33:59 GMT  
		Size: 3.5 MB (3481061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81da96a7ecfb4fea37d8556efd857ad1cf44bf65c2c774ed642cc099b7b764a4`  
		Last Modified: Sat, 24 Jun 2017 22:36:45 GMT  
		Size: 273.2 MB (273239745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:527093ad15e6e75211ad84c75757aa58147211f3cd856f8019d037b3f1785188
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254120531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656f4910615a7fe4565a69d4f846d625948338b99b999e08794d9353648d7150`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 07:23:01 GMT
ENV ROS_DISTRO=jade
# Fri, 23 Jun 2017 07:24:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 07:24:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 07:24:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 07:24:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9e70b25663e468221f70f9bf53c41b2778e916ff227252abf94b7d074dee54`  
		Last Modified: Sat, 24 Jun 2017 22:45:13 GMT  
		Size: 152.7 MB (152679994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419788658c92fe3efdfaa7d221d63928919b563bf5f4ec8b432345ce56615813`  
		Last Modified: Sat, 24 Jun 2017 22:44:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:f6ea9545ac44aebfe38fa855bca799a69a885268492b95bc089c6c432b416b41
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b863f34847ca8287366d1c164cd5bda64bdc47bff11b7f25c08197236b8438`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 07:23:01 GMT
ENV ROS_DISTRO=jade
# Fri, 23 Jun 2017 07:24:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 07:24:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 07:24:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 07:24:45 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 07:52:47 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9e70b25663e468221f70f9bf53c41b2778e916ff227252abf94b7d074dee54`  
		Last Modified: Sat, 24 Jun 2017 22:45:13 GMT  
		Size: 152.7 MB (152679994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419788658c92fe3efdfaa7d221d63928919b563bf5f4ec8b432345ce56615813`  
		Last Modified: Sat, 24 Jun 2017 22:44:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb8b9f687f021cbea07bd65b2c5ec3dc0eabac081c1e6417e653763f2626d53`  
		Last Modified: Sat, 24 Jun 2017 22:45:48 GMT  
		Size: 3.5 MB (3497749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:f6ea9545ac44aebfe38fa855bca799a69a885268492b95bc089c6c432b416b41
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257618280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b863f34847ca8287366d1c164cd5bda64bdc47bff11b7f25c08197236b8438`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 07:23:01 GMT
ENV ROS_DISTRO=jade
# Fri, 23 Jun 2017 07:24:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 07:24:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 07:24:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 07:24:45 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 07:52:47 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9e70b25663e468221f70f9bf53c41b2778e916ff227252abf94b7d074dee54`  
		Last Modified: Sat, 24 Jun 2017 22:45:13 GMT  
		Size: 152.7 MB (152679994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419788658c92fe3efdfaa7d221d63928919b563bf5f4ec8b432345ce56615813`  
		Last Modified: Sat, 24 Jun 2017 22:44:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb8b9f687f021cbea07bd65b2c5ec3dc0eabac081c1e6417e653763f2626d53`  
		Last Modified: Sat, 24 Jun 2017 22:45:48 GMT  
		Size: 3.5 MB (3497749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:1de6ba14ffc4a6e15809a0729aeeeb7a59aff11dff4616ded93b6cab4133e4eb
```

-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.5 MB (327501859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12874cf0775dcc48736db473686b8a3e780b2be3846304502224ff7823cf205a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 07:23:01 GMT
ENV ROS_DISTRO=jade
# Fri, 23 Jun 2017 07:24:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 07:24:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 07:24:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 07:24:45 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 07:52:47 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 07:54:09 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9e70b25663e468221f70f9bf53c41b2778e916ff227252abf94b7d074dee54`  
		Last Modified: Sat, 24 Jun 2017 22:45:13 GMT  
		Size: 152.7 MB (152679994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419788658c92fe3efdfaa7d221d63928919b563bf5f4ec8b432345ce56615813`  
		Last Modified: Sat, 24 Jun 2017 22:44:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb8b9f687f021cbea07bd65b2c5ec3dc0eabac081c1e6417e653763f2626d53`  
		Last Modified: Sat, 24 Jun 2017 22:45:48 GMT  
		Size: 3.5 MB (3497749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2bc3c2e3aeec0eee171baad95320c99043c672415872d85c26bec2a87398f5`  
		Last Modified: Sat, 24 Jun 2017 22:47:01 GMT  
		Size: 69.9 MB (69883579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:07c4d5c4dd59df89781b9c334deb7cdf3c6c5a95525c05e7039177f0f607b2a0
```

-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **529.7 MB (529676107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c790e24dc10f13ad65b735d3ede95af7b7565cbbd8439675e23a396ebb7ebf1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 06:22:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 06:22:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 06:23:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 06:23:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 06:23:34 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 06:23:44 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 07:23:01 GMT
ENV ROS_DISTRO=jade
# Fri, 23 Jun 2017 07:24:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 07:24:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 07:24:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 07:24:45 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 07:52:47 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 07:58:16 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d3c8f9644185a7f17dc4e6e6dccbe86b468d081d3d60320e9b1fa4bddfeb4a`  
		Last Modified: Sat, 24 Jun 2017 22:02:19 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733458004c0abbf4e0026219ba8a9f35d2be98d3a01be3c39b32dc29c3f0668`  
		Last Modified: Sat, 24 Jun 2017 22:02:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979adfbba7ca3b2bc6afbd2ff4ff4ee417cc28ecc93b6cf0f9401aa7bd95cebf`  
		Last Modified: Sat, 24 Jun 2017 22:02:33 GMT  
		Size: 33.5 MB (33508695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76848c94fcd101e5574552064ba2a38e39a8e45e628befeb043a09c1650ab51c`  
		Last Modified: Sat, 24 Jun 2017 22:02:21 GMT  
		Size: 730.0 KB (730007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9e70b25663e468221f70f9bf53c41b2778e916ff227252abf94b7d074dee54`  
		Last Modified: Sat, 24 Jun 2017 22:45:13 GMT  
		Size: 152.7 MB (152679994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419788658c92fe3efdfaa7d221d63928919b563bf5f4ec8b432345ce56615813`  
		Last Modified: Sat, 24 Jun 2017 22:44:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb8b9f687f021cbea07bd65b2c5ec3dc0eabac081c1e6417e653763f2626d53`  
		Last Modified: Sat, 24 Jun 2017 22:45:48 GMT  
		Size: 3.5 MB (3497749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9ef5899e675ec8a984b6bfaa92ba1bda3e2a5359c75d557298d3c1a24d90f3`  
		Last Modified: Sat, 24 Jun 2017 22:48:32 GMT  
		Size: 272.1 MB (272057827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:f5b6a8a1e0300f3b37196c7c38bc0b8ee6f1caefb6983c5e7fc496d6b69cc154
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299692259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b071208e29d38786715963d839d27b7706a309d591e23b8c62dd75b2d00bdcd5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 08:46:57 GMT
ENV ROS_DISTRO=kinetic
# Fri, 23 Jun 2017 08:48:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:48:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 08:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 08:48:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c92657f274933f21f692637b6ff1ee259990e1e0b60acc354fcacc656ca1301`  
		Last Modified: Sat, 24 Jun 2017 22:52:54 GMT  
		Size: 193.1 MB (193063795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d75b1b6b71b5e040ba60453e5ee4c0a78fcdfae29589421f1af2c56e2952a71`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:aeea0dbebdaa4c290cbb7d5f5fe6970fa32e4a681414ebf5bfbf31deaa289bd3
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.4 MB (304423089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e44014350b4466cc04f20993383a1f78a1bc5d6d3b0794654ff33539980d4d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 08:46:57 GMT
ENV ROS_DISTRO=kinetic
# Fri, 23 Jun 2017 08:48:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:48:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 08:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 08:48:28 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 08:49:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c92657f274933f21f692637b6ff1ee259990e1e0b60acc354fcacc656ca1301`  
		Last Modified: Sat, 24 Jun 2017 22:52:54 GMT  
		Size: 193.1 MB (193063795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d75b1b6b71b5e040ba60453e5ee4c0a78fcdfae29589421f1af2c56e2952a71`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a538970cb8d0484271c330ca16aa9ef568ec9befb144349f15c0fefd06cb2`  
		Last Modified: Sat, 24 Jun 2017 22:53:56 GMT  
		Size: 4.7 MB (4730830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:aeea0dbebdaa4c290cbb7d5f5fe6970fa32e4a681414ebf5bfbf31deaa289bd3
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.4 MB (304423089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e44014350b4466cc04f20993383a1f78a1bc5d6d3b0794654ff33539980d4d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 08:46:57 GMT
ENV ROS_DISTRO=kinetic
# Fri, 23 Jun 2017 08:48:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:48:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 08:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 08:48:28 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 08:49:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c92657f274933f21f692637b6ff1ee259990e1e0b60acc354fcacc656ca1301`  
		Last Modified: Sat, 24 Jun 2017 22:52:54 GMT  
		Size: 193.1 MB (193063795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d75b1b6b71b5e040ba60453e5ee4c0a78fcdfae29589421f1af2c56e2952a71`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a538970cb8d0484271c330ca16aa9ef568ec9befb144349f15c0fefd06cb2`  
		Last Modified: Sat, 24 Jun 2017 22:53:56 GMT  
		Size: 4.7 MB (4730830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:aeea0dbebdaa4c290cbb7d5f5fe6970fa32e4a681414ebf5bfbf31deaa289bd3
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.4 MB (304423089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e44014350b4466cc04f20993383a1f78a1bc5d6d3b0794654ff33539980d4d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 08:46:57 GMT
ENV ROS_DISTRO=kinetic
# Fri, 23 Jun 2017 08:48:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:48:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 08:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 08:48:28 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 08:49:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c92657f274933f21f692637b6ff1ee259990e1e0b60acc354fcacc656ca1301`  
		Last Modified: Sat, 24 Jun 2017 22:52:54 GMT  
		Size: 193.1 MB (193063795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d75b1b6b71b5e040ba60453e5ee4c0a78fcdfae29589421f1af2c56e2952a71`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a538970cb8d0484271c330ca16aa9ef568ec9befb144349f15c0fefd06cb2`  
		Last Modified: Sat, 24 Jun 2017 22:53:56 GMT  
		Size: 4.7 MB (4730830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:6970587b18a85edd5287da84c40133c50431dd649f8e8cd6a92535d47b22e3d6
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.8 MB (439808793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc25814cd63d65ad39aea05141b481b5581fb33a75e665a26057770f9693fc23`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 08:46:57 GMT
ENV ROS_DISTRO=kinetic
# Fri, 23 Jun 2017 08:48:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:48:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 08:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 08:48:28 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 08:49:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:50:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c92657f274933f21f692637b6ff1ee259990e1e0b60acc354fcacc656ca1301`  
		Last Modified: Sat, 24 Jun 2017 22:52:54 GMT  
		Size: 193.1 MB (193063795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d75b1b6b71b5e040ba60453e5ee4c0a78fcdfae29589421f1af2c56e2952a71`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a538970cb8d0484271c330ca16aa9ef568ec9befb144349f15c0fefd06cb2`  
		Last Modified: Sat, 24 Jun 2017 22:53:56 GMT  
		Size: 4.7 MB (4730830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e24ceb885b31df5f7fb868ba5a471e65f8019993af462fb31b8da515d40ca0`  
		Last Modified: Sat, 24 Jun 2017 22:55:51 GMT  
		Size: 135.4 MB (135385704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:03260ffbd4bdead9d461c1541ced283d054c388fd488c3ef9f06387c35821d24
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.6 MB (688629796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca802a50c29824a46b3e6c9bbce35a2e9204c20a84db5a46cf2da0e9169b79b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 08:46:57 GMT
ENV ROS_DISTRO=kinetic
# Fri, 23 Jun 2017 08:48:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:48:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 08:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 08:48:28 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 08:49:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:58:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c92657f274933f21f692637b6ff1ee259990e1e0b60acc354fcacc656ca1301`  
		Last Modified: Sat, 24 Jun 2017 22:52:54 GMT  
		Size: 193.1 MB (193063795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d75b1b6b71b5e040ba60453e5ee4c0a78fcdfae29589421f1af2c56e2952a71`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a538970cb8d0484271c330ca16aa9ef568ec9befb144349f15c0fefd06cb2`  
		Last Modified: Sat, 24 Jun 2017 22:53:56 GMT  
		Size: 4.7 MB (4730830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f396d86c818411f76cde4f7c625d1000a9204c8b32f43da6621c028214fa284f`  
		Last Modified: Sat, 24 Jun 2017 22:57:45 GMT  
		Size: 384.2 MB (384206707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:b8c52b06529307c5752a3fea67b60ba81b51064604f1bc673d4b2d0505ee45ea
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-core` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299673498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d7d67494029eab3b8b1cb8982b5cadd12bc3ad1e2638427178dca00d14d5f9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 09:23:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 23 Jun 2017 09:24:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 09:24:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 09:24:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 09:24:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc245c5ecd2d447a7132adf248d74d74173f32522b8712bab8f46af08f0e46`  
		Last Modified: Sat, 24 Jun 2017 23:08:21 GMT  
		Size: 193.0 MB (193045035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d115dba51f99c3014f980c4859f6f924d556c29df1b3e561befc6d65d41f091`  
		Last Modified: Sat, 24 Jun 2017 23:07:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:ed0b4012841e62ea5dcc8555429fb25d866c048a0b5939a1f84229285e0d7b51
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.5 MB (304497305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95f08c6a733c3e2eb608f8f8fe82bc5de7d1dc345e9824c8ab7f5d2797b6f0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 09:23:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 23 Jun 2017 09:24:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 09:24:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 09:24:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 09:24:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 09:25:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc245c5ecd2d447a7132adf248d74d74173f32522b8712bab8f46af08f0e46`  
		Last Modified: Sat, 24 Jun 2017 23:08:21 GMT  
		Size: 193.0 MB (193045035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d115dba51f99c3014f980c4859f6f924d556c29df1b3e561befc6d65d41f091`  
		Last Modified: Sat, 24 Jun 2017 23:07:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38468e92550333102dcb6b0b209c33f747d9a9c204c3e7d3f524fa99b6da6b9a`  
		Last Modified: Sat, 24 Jun 2017 23:08:57 GMT  
		Size: 4.8 MB (4823807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:ed0b4012841e62ea5dcc8555429fb25d866c048a0b5939a1f84229285e0d7b51
```

-	Platforms:
	-	linux; amd64

### `ros:lunar` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.5 MB (304497305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95f08c6a733c3e2eb608f8f8fe82bc5de7d1dc345e9824c8ab7f5d2797b6f0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 09:23:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 23 Jun 2017 09:24:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 09:24:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 09:24:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 09:24:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 09:25:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc245c5ecd2d447a7132adf248d74d74173f32522b8712bab8f46af08f0e46`  
		Last Modified: Sat, 24 Jun 2017 23:08:21 GMT  
		Size: 193.0 MB (193045035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d115dba51f99c3014f980c4859f6f924d556c29df1b3e561befc6d65d41f091`  
		Last Modified: Sat, 24 Jun 2017 23:07:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38468e92550333102dcb6b0b209c33f747d9a9c204c3e7d3f524fa99b6da6b9a`  
		Last Modified: Sat, 24 Jun 2017 23:08:57 GMT  
		Size: 4.8 MB (4823807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:cd6b6b717b5c664e3c147c1b9e10298da6a21d212dee564b064beac3d8f200ae
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.9 MB (439899731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15769d9abf7a1333148af616e2dddca1f9fe16adeaa9f0cfa789d0d7fad3dd5d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 09:23:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 23 Jun 2017 09:24:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 09:24:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 09:24:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 09:24:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 09:25:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 09:27:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc245c5ecd2d447a7132adf248d74d74173f32522b8712bab8f46af08f0e46`  
		Last Modified: Sat, 24 Jun 2017 23:08:21 GMT  
		Size: 193.0 MB (193045035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d115dba51f99c3014f980c4859f6f924d556c29df1b3e561befc6d65d41f091`  
		Last Modified: Sat, 24 Jun 2017 23:07:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38468e92550333102dcb6b0b209c33f747d9a9c204c3e7d3f524fa99b6da6b9a`  
		Last Modified: Sat, 24 Jun 2017 23:08:57 GMT  
		Size: 4.8 MB (4823807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a671cc4c2571d20d38cf392198d0f16a3c904e368b701fa6b0d471bf7c2f12b`  
		Last Modified: Sat, 24 Jun 2017 23:10:28 GMT  
		Size: 135.4 MB (135402426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:59b3aff67b787c32ed1e5b5efc00ade3c20afdb3de6344c889ae5ad7aa84bc88
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-perception` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.7 MB (688707283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a16c045b9ff94a8afa79e6f8d55f4c4503b798d78acf745212b634a2c3f9c4b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 09:23:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 23 Jun 2017 09:24:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 09:24:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 09:24:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 09:24:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 09:25:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 09:31:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc245c5ecd2d447a7132adf248d74d74173f32522b8712bab8f46af08f0e46`  
		Last Modified: Sat, 24 Jun 2017 23:08:21 GMT  
		Size: 193.0 MB (193045035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d115dba51f99c3014f980c4859f6f924d556c29df1b3e561befc6d65d41f091`  
		Last Modified: Sat, 24 Jun 2017 23:07:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38468e92550333102dcb6b0b209c33f747d9a9c204c3e7d3f524fa99b6da6b9a`  
		Last Modified: Sat, 24 Jun 2017 23:08:57 GMT  
		Size: 4.8 MB (4823807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848a5e356fc278031b2af694ad8fe70485c9494f6ecd1b7781b69e738e794e9`  
		Last Modified: Sat, 24 Jun 2017 23:12:33 GMT  
		Size: 384.2 MB (384209978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
