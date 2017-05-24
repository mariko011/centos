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
$ docker pull ros@sha256:03f3329f461c0aa9578ef5940a95a6e999ddc91dcc491a64bdebbdebcaf0d9bc
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253031384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a948dc56a36766e14d4a8337107325de764d29e39e68fb1691393bfe6880ab5b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:13:28 GMT
ENV ROS_DISTRO=indigo
# Thu, 13 Apr 2017 17:15:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:15:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:15:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:15:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d15684f285d87afeae80d22624d250fbf3f9a6ab6bf68600f4ae0cde12247a`  
		Last Modified: Tue, 25 Apr 2017 21:29:12 GMT  
		Size: 152.6 MB (152575422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e28cedb68c77bbbfa5f40718788a8102d52dbea3e170d5bb28d7cfa6da0e7`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:e1ef202e254cfb4b4f6f753de49979cb733b4b8b3716895301a6b43ab2046e74
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256504932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fdd8d2a619af06a88d02bf40e93b893abb2bbd91cdb92ed556558d8963d609`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:13:28 GMT
ENV ROS_DISTRO=indigo
# Thu, 13 Apr 2017 17:15:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:15:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:15:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:15:59 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:24:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d15684f285d87afeae80d22624d250fbf3f9a6ab6bf68600f4ae0cde12247a`  
		Last Modified: Tue, 25 Apr 2017 21:29:12 GMT  
		Size: 152.6 MB (152575422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e28cedb68c77bbbfa5f40718788a8102d52dbea3e170d5bb28d7cfa6da0e7`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8524564f5d53e1ed3c0a52a55dc1279d2da4d92f609f157d80428c90c99dab`  
		Last Modified: Tue, 25 Apr 2017 21:30:44 GMT  
		Size: 3.5 MB (3473548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:e1ef202e254cfb4b4f6f753de49979cb733b4b8b3716895301a6b43ab2046e74
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256504932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fdd8d2a619af06a88d02bf40e93b893abb2bbd91cdb92ed556558d8963d609`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:13:28 GMT
ENV ROS_DISTRO=indigo
# Thu, 13 Apr 2017 17:15:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:15:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:15:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:15:59 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:24:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d15684f285d87afeae80d22624d250fbf3f9a6ab6bf68600f4ae0cde12247a`  
		Last Modified: Tue, 25 Apr 2017 21:29:12 GMT  
		Size: 152.6 MB (152575422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e28cedb68c77bbbfa5f40718788a8102d52dbea3e170d5bb28d7cfa6da0e7`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8524564f5d53e1ed3c0a52a55dc1279d2da4d92f609f157d80428c90c99dab`  
		Last Modified: Tue, 25 Apr 2017 21:30:44 GMT  
		Size: 3.5 MB (3473548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:2167dd4a89c332f87ceda623a7b2bab75f07218a7a55f93750f73a41d56230fe
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.4 MB (326369935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b853044eb70c65af85e7ae0dfcdb1c8a54c45565d83af1b4ef927466eb1fdd68`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:13:28 GMT
ENV ROS_DISTRO=indigo
# Thu, 13 Apr 2017 17:15:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:15:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:15:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:15:59 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:24:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:30:25 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d15684f285d87afeae80d22624d250fbf3f9a6ab6bf68600f4ae0cde12247a`  
		Last Modified: Tue, 25 Apr 2017 21:29:12 GMT  
		Size: 152.6 MB (152575422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e28cedb68c77bbbfa5f40718788a8102d52dbea3e170d5bb28d7cfa6da0e7`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8524564f5d53e1ed3c0a52a55dc1279d2da4d92f609f157d80428c90c99dab`  
		Last Modified: Tue, 25 Apr 2017 21:30:44 GMT  
		Size: 3.5 MB (3473548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc62345de65b95249c9264d3a1a95ce1cfa24151b00a6fdb59b9e1c97661ed1`  
		Last Modified: Tue, 25 Apr 2017 21:33:55 GMT  
		Size: 69.9 MB (69865003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:2a0e7f02841486dd0c32482556eb4d8745cb4afd92613f6289d01bcf314e4768
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.5 MB (528451246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14704c4f134f4907880d9e5fce21c99abbb119099fda48d11f31c834ac98e5bc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:13:28 GMT
ENV ROS_DISTRO=indigo
# Thu, 13 Apr 2017 17:15:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:15:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:15:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:15:59 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:24:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:28:54 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d15684f285d87afeae80d22624d250fbf3f9a6ab6bf68600f4ae0cde12247a`  
		Last Modified: Tue, 25 Apr 2017 21:29:12 GMT  
		Size: 152.6 MB (152575422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e28cedb68c77bbbfa5f40718788a8102d52dbea3e170d5bb28d7cfa6da0e7`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8524564f5d53e1ed3c0a52a55dc1279d2da4d92f609f157d80428c90c99dab`  
		Last Modified: Tue, 25 Apr 2017 21:30:44 GMT  
		Size: 3.5 MB (3473548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb7813853f909267e830abd6383df33c876dfef224a83c93441102fc305ff1d`  
		Last Modified: Tue, 25 Apr 2017 21:33:09 GMT  
		Size: 271.9 MB (271946314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:faca68220f65618c3c70991dddc6944ea2ef142f153ae5eb6481a692c4ef94ae
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253135656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259866bcdaccdb958d31d9841c2d02cf194411093118670491b5ba67b1d12ebc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:16:19 GMT
ENV ROS_DISTRO=jade
# Thu, 13 Apr 2017 17:18:38 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:18:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:18:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9a6d3169eb58d8ea312c168aaa582a09990a0360a363cb280b6bf8d52d087d`  
		Last Modified: Tue, 25 Apr 2017 21:30:16 GMT  
		Size: 152.7 MB (152679693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551f1d007f2f73c437dc43ccc0f045786ddb77fcde9eb009401bd5a780c943b3`  
		Last Modified: Tue, 25 Apr 2017 21:29:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:397d267ba0a6aa3f935a7636d8b09e377328c940dd5e4353d4077261079131db
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256627170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220ad7ce7a90543c8305661d12bfeeef9275936c5912d42095f496995b943836`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:16:19 GMT
ENV ROS_DISTRO=jade
# Thu, 13 Apr 2017 17:18:38 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:18:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:18:45 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:31:22 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9a6d3169eb58d8ea312c168aaa582a09990a0360a363cb280b6bf8d52d087d`  
		Last Modified: Tue, 25 Apr 2017 21:30:16 GMT  
		Size: 152.7 MB (152679693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551f1d007f2f73c437dc43ccc0f045786ddb77fcde9eb009401bd5a780c943b3`  
		Last Modified: Tue, 25 Apr 2017 21:29:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c9f04e06f928579f94ca20ed4b67ac67765303d8de19d1e8299336e5057ff`  
		Last Modified: Tue, 25 Apr 2017 21:31:28 GMT  
		Size: 3.5 MB (3491514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:397d267ba0a6aa3f935a7636d8b09e377328c940dd5e4353d4077261079131db
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256627170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220ad7ce7a90543c8305661d12bfeeef9275936c5912d42095f496995b943836`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:16:19 GMT
ENV ROS_DISTRO=jade
# Thu, 13 Apr 2017 17:18:38 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:18:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:18:45 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:31:22 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9a6d3169eb58d8ea312c168aaa582a09990a0360a363cb280b6bf8d52d087d`  
		Last Modified: Tue, 25 Apr 2017 21:30:16 GMT  
		Size: 152.7 MB (152679693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551f1d007f2f73c437dc43ccc0f045786ddb77fcde9eb009401bd5a780c943b3`  
		Last Modified: Tue, 25 Apr 2017 21:29:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c9f04e06f928579f94ca20ed4b67ac67765303d8de19d1e8299336e5057ff`  
		Last Modified: Tue, 25 Apr 2017 21:31:28 GMT  
		Size: 3.5 MB (3491514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:4a9d82526e9e81612e672bd791886ca4e52e3a1bf58636a66e091bc529196e06
```

-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.5 MB (326511756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d81057f91f1988b857348a64d788c49fee1db332694eeef96ad24e3c19a9e46`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:16:19 GMT
ENV ROS_DISTRO=jade
# Thu, 13 Apr 2017 17:18:38 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:18:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:18:45 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:31:22 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:36:29 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9a6d3169eb58d8ea312c168aaa582a09990a0360a363cb280b6bf8d52d087d`  
		Last Modified: Tue, 25 Apr 2017 21:30:16 GMT  
		Size: 152.7 MB (152679693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551f1d007f2f73c437dc43ccc0f045786ddb77fcde9eb009401bd5a780c943b3`  
		Last Modified: Tue, 25 Apr 2017 21:29:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c9f04e06f928579f94ca20ed4b67ac67765303d8de19d1e8299336e5057ff`  
		Last Modified: Tue, 25 Apr 2017 21:31:28 GMT  
		Size: 3.5 MB (3491514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c022b701dc2466ce8765d3a5ac30def64809b128e41a3e0bc7ca1de251e397`  
		Last Modified: Tue, 25 Apr 2017 21:36:06 GMT  
		Size: 69.9 MB (69884586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:c246130c582931bb74b9079d426dfaf1ae0267411bbbb479d88cfe3e788f5f92
```

-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.5 MB (528510108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3331779efb058a2726ea8f2f1930a1b6d267b74bee0583ba2a65451086df2ac0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:12:21 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Apr 2017 17:12:21 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Apr 2017 17:12:24 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Apr 2017 17:12:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Apr 2017 17:13:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:13:27 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Apr 2017 17:16:19 GMT
ENV ROS_DISTRO=jade
# Thu, 13 Apr 2017 17:18:38 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Apr 2017 17:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Apr 2017 17:18:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Apr 2017 17:18:45 GMT
CMD ["bash"]
# Tue, 25 Apr 2017 14:31:22 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 14:34:54 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c937093532942ef1415d786eff2f1cbcfb9d9674703800d0e150d9bc411ea5`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 410.5 KB (410455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27fd87a143d6b1713fefaa114b7acc03f501deff62cb53c7863de3900aea1c`  
		Last Modified: Tue, 25 Apr 2017 21:28:32 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1b33abe9752982e8b67a5373d5b63698bda877314ba563c5d1a6b473c848ec`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0107c63a636959f68334bb97943b43739ccc4d4e3be87d33ea458334a015795d`  
		Last Modified: Tue, 25 Apr 2017 21:28:45 GMT  
		Size: 33.5 MB (33504959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cace3fa4d9cc7a209c430392fd237a12816aed41f8ae251d6f19fa958332d08`  
		Last Modified: Tue, 25 Apr 2017 21:28:29 GMT  
		Size: 750.9 KB (750878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9a6d3169eb58d8ea312c168aaa582a09990a0360a363cb280b6bf8d52d087d`  
		Last Modified: Tue, 25 Apr 2017 21:30:16 GMT  
		Size: 152.7 MB (152679693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551f1d007f2f73c437dc43ccc0f045786ddb77fcde9eb009401bd5a780c943b3`  
		Last Modified: Tue, 25 Apr 2017 21:29:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c9f04e06f928579f94ca20ed4b67ac67765303d8de19d1e8299336e5057ff`  
		Last Modified: Tue, 25 Apr 2017 21:31:28 GMT  
		Size: 3.5 MB (3491514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9810b14770ba42f9ec3bed5a31a5e5ed2645c785c2c7b1d04352e4159cf736b`  
		Last Modified: Tue, 25 Apr 2017 21:35:20 GMT  
		Size: 271.9 MB (271882938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:235a72c8fbc4f2be8f74f10569f575c1e3d72aab937f9308057e642cbd4c1afb
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.5 MB (298524325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53549d1b4833d473eff834726d6389a9fefc3adc5fa37c7685cf3321fd96c68c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:00:12 GMT
RUN locale-gen en_US.UTF-8
# Tue, 28 Feb 2017 23:00:12 GMT
ENV LANG=en_US.UTF-8
# Tue, 28 Feb 2017 23:00:14 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 Feb 2017 23:00:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 Feb 2017 23:00:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:01:06 GMT
RUN rosdep init     && rosdep update
# Tue, 28 Feb 2017 23:01:06 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 Feb 2017 23:06:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 28 Feb 2017 23:06:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 Feb 2017 23:06:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddfb9aebdf97ec2fada9528c63adccc3dac5b78d475e96196462d9c3f8d988`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 339.4 KB (339413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e02147b7fbec400f0f9749bbbe7062a4528576d55099323013ea9d97770a0e`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dc4092c5d90c1607a121e316eb47bd297ce7e777ea026dcd7839ed18b14adb`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bb9a4db6811f43eded43ebc997ba4e6927c971a977bbb862cec8da5e2336c8`  
		Last Modified: Thu, 02 Mar 2017 03:50:26 GMT  
		Size: 57.4 MB (57377804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5003b0d605e2203c3e9ba8c867e714e20f8ae0eaba37475a09972699a884149`  
		Last Modified: Thu, 02 Mar 2017 03:49:55 GMT  
		Size: 725.1 KB (725058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea91dbe33db172402ef57a520781bef17085c0f26a42a7b2066880b922c93583`  
		Last Modified: Thu, 02 Mar 2017 03:51:08 GMT  
		Size: 189.6 MB (189638206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4753b19db0ec26e7b3d18884d900e5827878528783ee5ac92d1695a4ccec137`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:baf314578a1ced9a8f55a1c496648cb692ce8203401a0a41c9eb15bec17db2ce
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303166416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce91a48e2b445219bab4b3cc99d7753366aa080a83c5742e72be6adb66be7f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:00:12 GMT
RUN locale-gen en_US.UTF-8
# Tue, 28 Feb 2017 23:00:12 GMT
ENV LANG=en_US.UTF-8
# Tue, 28 Feb 2017 23:00:14 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 Feb 2017 23:00:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 Feb 2017 23:00:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:01:06 GMT
RUN rosdep init     && rosdep update
# Tue, 28 Feb 2017 23:01:06 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 Feb 2017 23:06:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 28 Feb 2017 23:06:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 Feb 2017 23:06:07 GMT
CMD ["bash"]
# Wed, 01 Mar 2017 18:20:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddfb9aebdf97ec2fada9528c63adccc3dac5b78d475e96196462d9c3f8d988`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 339.4 KB (339413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e02147b7fbec400f0f9749bbbe7062a4528576d55099323013ea9d97770a0e`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dc4092c5d90c1607a121e316eb47bd297ce7e777ea026dcd7839ed18b14adb`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bb9a4db6811f43eded43ebc997ba4e6927c971a977bbb862cec8da5e2336c8`  
		Last Modified: Thu, 02 Mar 2017 03:50:26 GMT  
		Size: 57.4 MB (57377804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5003b0d605e2203c3e9ba8c867e714e20f8ae0eaba37475a09972699a884149`  
		Last Modified: Thu, 02 Mar 2017 03:49:55 GMT  
		Size: 725.1 KB (725058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea91dbe33db172402ef57a520781bef17085c0f26a42a7b2066880b922c93583`  
		Last Modified: Thu, 02 Mar 2017 03:51:08 GMT  
		Size: 189.6 MB (189638206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4753b19db0ec26e7b3d18884d900e5827878528783ee5ac92d1695a4ccec137`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe56bbca99ef0d01cfd0a1cd244d502d2bc4a9ff1644c57f90430ef3dccfff2b`  
		Last Modified: Thu, 02 Mar 2017 03:52:59 GMT  
		Size: 4.6 MB (4642091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:baf314578a1ced9a8f55a1c496648cb692ce8203401a0a41c9eb15bec17db2ce
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303166416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce91a48e2b445219bab4b3cc99d7753366aa080a83c5742e72be6adb66be7f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:00:12 GMT
RUN locale-gen en_US.UTF-8
# Tue, 28 Feb 2017 23:00:12 GMT
ENV LANG=en_US.UTF-8
# Tue, 28 Feb 2017 23:00:14 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 Feb 2017 23:00:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 Feb 2017 23:00:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:01:06 GMT
RUN rosdep init     && rosdep update
# Tue, 28 Feb 2017 23:01:06 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 Feb 2017 23:06:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 28 Feb 2017 23:06:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 Feb 2017 23:06:07 GMT
CMD ["bash"]
# Wed, 01 Mar 2017 18:20:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddfb9aebdf97ec2fada9528c63adccc3dac5b78d475e96196462d9c3f8d988`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 339.4 KB (339413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e02147b7fbec400f0f9749bbbe7062a4528576d55099323013ea9d97770a0e`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dc4092c5d90c1607a121e316eb47bd297ce7e777ea026dcd7839ed18b14adb`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bb9a4db6811f43eded43ebc997ba4e6927c971a977bbb862cec8da5e2336c8`  
		Last Modified: Thu, 02 Mar 2017 03:50:26 GMT  
		Size: 57.4 MB (57377804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5003b0d605e2203c3e9ba8c867e714e20f8ae0eaba37475a09972699a884149`  
		Last Modified: Thu, 02 Mar 2017 03:49:55 GMT  
		Size: 725.1 KB (725058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea91dbe33db172402ef57a520781bef17085c0f26a42a7b2066880b922c93583`  
		Last Modified: Thu, 02 Mar 2017 03:51:08 GMT  
		Size: 189.6 MB (189638206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4753b19db0ec26e7b3d18884d900e5827878528783ee5ac92d1695a4ccec137`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe56bbca99ef0d01cfd0a1cd244d502d2bc4a9ff1644c57f90430ef3dccfff2b`  
		Last Modified: Thu, 02 Mar 2017 03:52:59 GMT  
		Size: 4.6 MB (4642091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:baf314578a1ced9a8f55a1c496648cb692ce8203401a0a41c9eb15bec17db2ce
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303166416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce91a48e2b445219bab4b3cc99d7753366aa080a83c5742e72be6adb66be7f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:00:12 GMT
RUN locale-gen en_US.UTF-8
# Tue, 28 Feb 2017 23:00:12 GMT
ENV LANG=en_US.UTF-8
# Tue, 28 Feb 2017 23:00:14 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 Feb 2017 23:00:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 Feb 2017 23:00:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:01:06 GMT
RUN rosdep init     && rosdep update
# Tue, 28 Feb 2017 23:01:06 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 Feb 2017 23:06:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 28 Feb 2017 23:06:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 Feb 2017 23:06:07 GMT
CMD ["bash"]
# Wed, 01 Mar 2017 18:20:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddfb9aebdf97ec2fada9528c63adccc3dac5b78d475e96196462d9c3f8d988`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 339.4 KB (339413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e02147b7fbec400f0f9749bbbe7062a4528576d55099323013ea9d97770a0e`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dc4092c5d90c1607a121e316eb47bd297ce7e777ea026dcd7839ed18b14adb`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bb9a4db6811f43eded43ebc997ba4e6927c971a977bbb862cec8da5e2336c8`  
		Last Modified: Thu, 02 Mar 2017 03:50:26 GMT  
		Size: 57.4 MB (57377804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5003b0d605e2203c3e9ba8c867e714e20f8ae0eaba37475a09972699a884149`  
		Last Modified: Thu, 02 Mar 2017 03:49:55 GMT  
		Size: 725.1 KB (725058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea91dbe33db172402ef57a520781bef17085c0f26a42a7b2066880b922c93583`  
		Last Modified: Thu, 02 Mar 2017 03:51:08 GMT  
		Size: 189.6 MB (189638206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4753b19db0ec26e7b3d18884d900e5827878528783ee5ac92d1695a4ccec137`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe56bbca99ef0d01cfd0a1cd244d502d2bc4a9ff1644c57f90430ef3dccfff2b`  
		Last Modified: Thu, 02 Mar 2017 03:52:59 GMT  
		Size: 4.6 MB (4642091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:faa17262fc5e317fa4c6b9f714a82808a11731dd05d2645c1c4cfdd72d9a8af4
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 MB (434963370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b872278448be35d83f15884a46e064077812f103960acb233570b9fdb0fa4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:00:12 GMT
RUN locale-gen en_US.UTF-8
# Tue, 28 Feb 2017 23:00:12 GMT
ENV LANG=en_US.UTF-8
# Tue, 28 Feb 2017 23:00:14 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 Feb 2017 23:00:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 Feb 2017 23:00:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:01:06 GMT
RUN rosdep init     && rosdep update
# Tue, 28 Feb 2017 23:01:06 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 Feb 2017 23:06:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 28 Feb 2017 23:06:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 Feb 2017 23:06:07 GMT
CMD ["bash"]
# Wed, 01 Mar 2017 18:20:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddfb9aebdf97ec2fada9528c63adccc3dac5b78d475e96196462d9c3f8d988`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 339.4 KB (339413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e02147b7fbec400f0f9749bbbe7062a4528576d55099323013ea9d97770a0e`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dc4092c5d90c1607a121e316eb47bd297ce7e777ea026dcd7839ed18b14adb`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bb9a4db6811f43eded43ebc997ba4e6927c971a977bbb862cec8da5e2336c8`  
		Last Modified: Thu, 02 Mar 2017 03:50:26 GMT  
		Size: 57.4 MB (57377804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5003b0d605e2203c3e9ba8c867e714e20f8ae0eaba37475a09972699a884149`  
		Last Modified: Thu, 02 Mar 2017 03:49:55 GMT  
		Size: 725.1 KB (725058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea91dbe33db172402ef57a520781bef17085c0f26a42a7b2066880b922c93583`  
		Last Modified: Thu, 02 Mar 2017 03:51:08 GMT  
		Size: 189.6 MB (189638206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4753b19db0ec26e7b3d18884d900e5827878528783ee5ac92d1695a4ccec137`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe56bbca99ef0d01cfd0a1cd244d502d2bc4a9ff1644c57f90430ef3dccfff2b`  
		Last Modified: Thu, 02 Mar 2017 03:52:59 GMT  
		Size: 4.6 MB (4642091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb49e46db5d738800ccf328f96b16c997e6fd7943e01059e318c74e602f7fc8c`  
		Last Modified: Thu, 02 Mar 2017 04:02:44 GMT  
		Size: 131.8 MB (131796954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:40d79edd6880603e04321a28ebbe7c2549c2574d322f3c84a2edf219e416690f
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **707.2 MB (707157307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d27ca4849c64410dae3bdca104a182bb3a4038916e75f2e634ba574021cd503`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:00:12 GMT
RUN locale-gen en_US.UTF-8
# Tue, 28 Feb 2017 23:00:12 GMT
ENV LANG=en_US.UTF-8
# Tue, 28 Feb 2017 23:00:14 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 Feb 2017 23:00:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 Feb 2017 23:00:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:01:06 GMT
RUN rosdep init     && rosdep update
# Tue, 28 Feb 2017 23:01:06 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 Feb 2017 23:06:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 28 Feb 2017 23:06:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 Feb 2017 23:06:07 GMT
CMD ["bash"]
# Wed, 01 Mar 2017 18:20:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 18:24:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddfb9aebdf97ec2fada9528c63adccc3dac5b78d475e96196462d9c3f8d988`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 339.4 KB (339413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e02147b7fbec400f0f9749bbbe7062a4528576d55099323013ea9d97770a0e`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dc4092c5d90c1607a121e316eb47bd297ce7e777ea026dcd7839ed18b14adb`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bb9a4db6811f43eded43ebc997ba4e6927c971a977bbb862cec8da5e2336c8`  
		Last Modified: Thu, 02 Mar 2017 03:50:26 GMT  
		Size: 57.4 MB (57377804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5003b0d605e2203c3e9ba8c867e714e20f8ae0eaba37475a09972699a884149`  
		Last Modified: Thu, 02 Mar 2017 03:49:55 GMT  
		Size: 725.1 KB (725058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea91dbe33db172402ef57a520781bef17085c0f26a42a7b2066880b922c93583`  
		Last Modified: Thu, 02 Mar 2017 03:51:08 GMT  
		Size: 189.6 MB (189638206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4753b19db0ec26e7b3d18884d900e5827878528783ee5ac92d1695a4ccec137`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe56bbca99ef0d01cfd0a1cd244d502d2bc4a9ff1644c57f90430ef3dccfff2b`  
		Last Modified: Thu, 02 Mar 2017 03:52:59 GMT  
		Size: 4.6 MB (4642091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80913e6ae77223a19a610101f9730eb2d1402064ae2cce976b8dbb1fdb3379aa`  
		Last Modified: Thu, 02 Mar 2017 04:01:31 GMT  
		Size: 404.0 MB (403990891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:fb4629d880fefc6b468a1129be073cfa657c95ff49a32c84015ca15fda39c6ba
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-core` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299441646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:270056370cea82c08882691a3b32b41053c050cd6d98ef3301d91a8bd3ca6134`
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

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:95f38abfcdd91dabc9cadc5a13f74258539527f3c879b715e3e1023d35588367
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304265361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8121d716aba53a88066e217be9ef7a2fa37920192c2ee094a399f82f173b8f3`
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

## `ros:lunar`

```console
$ docker pull ros@sha256:95f38abfcdd91dabc9cadc5a13f74258539527f3c879b715e3e1023d35588367
```

-	Platforms:
	-	linux; amd64

### `ros:lunar` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304265361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8121d716aba53a88066e217be9ef7a2fa37920192c2ee094a399f82f173b8f3`
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

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:0ef725f5eba9f3ca36808825dabbbef1043e45d2417310fbe51a21325c852af2
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.7 MB (438722560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d816ae1baafe8947349d1f7b7ed0a85c9ac4d148d914210929e7d031a81154`
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
# Wed, 24 May 2017 18:20:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:efa37fd86188451c415b9e6e4d6373d9d3b0f3c4bc7288b26d8d44cbfbb268d8`  
		Last Modified: Wed, 24 May 2017 18:26:44 GMT  
		Size: 134.5 MB (134457199 bytes)  
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
