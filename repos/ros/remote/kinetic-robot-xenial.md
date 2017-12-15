## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:721ad1af73b79075d7a60eb4c9cfe8bd8944723c4a5ca379357f45571164459e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:103cbfe8041541fc35f21fa7023ce814a4597bcc3ceea78a05e0a7ba67bebea3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.6 MB (482595423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7c5d1d3aaed3da7b29ac10a45b20a570b6d06083ca44caa2e9f90051ef734c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:59:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:01:24 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864a9e2117296f844b02d0dc05dc9c2d9ee7c1d47d13bd214bbac325a385bbe3`  
		Last Modified: Fri, 15 Dec 2017 01:17:37 GMT  
		Size: 81.3 MB (81331610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb45828f16a2616bc75a2e89b7cf90a201a875bc57c0a9be44f4a1ab483b201`  
		Last Modified: Fri, 15 Dec 2017 01:18:46 GMT  
		Size: 103.5 MB (103525702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:c224ed1d3957da58d3cbccfe18241da8fec43566d599515ca71a9492afbc7cc9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.8 MB (421755752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14eb2723a82012b8f73f5d5350f6c0e91a101d8a04d01d0e18c4c78e4613a0d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:34:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1d1a1a3d322aaa4840b238059da7c7cc7e06123c0b3bd0435a1ec4592a03ea`  
		Last Modified: Fri, 15 Dec 2017 14:56:10 GMT  
		Size: 90.0 MB (90007349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b0e733a7ce1ece236a61d14c3fa9e9cfbc1fded723ddfdc9ac32cf250ff36f4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.8 MB (405830010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068bdca61d54d9edf304903534bbbb7c4477793e0b8930acf4352bae67140a2e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:10:44 GMT
ADD file:d77c0d95beda43347e2aef035d8d2396f1005104427c4beac6f2cb5e2537a197 in / 
# Fri, 17 Nov 2017 22:10:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:10:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:10:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:50 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:36:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 17 Nov 2017 22:36:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 17 Nov 2017 22:38:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:38:12 GMT
ENV LANG=C.UTF-8
# Fri, 17 Nov 2017 22:38:13 GMT
ENV LC_ALL=C.UTF-8
# Fri, 17 Nov 2017 22:38:52 GMT
RUN rosdep init     && rosdep update
# Fri, 17 Nov 2017 22:38:53 GMT
ENV ROS_DISTRO=kinetic
# Fri, 17 Nov 2017 22:49:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:49:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 17 Nov 2017 22:49:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 17 Nov 2017 22:49:27 GMT
CMD ["bash"]
# Fri, 17 Nov 2017 22:50:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:00:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa17bdeb0d8abe4e2c5af98903791e6443acd93814cce9fc4313cc6b979a6790`  
		Last Modified: Fri, 17 Nov 2017 22:16:00 GMT  
		Size: 43.5 MB (43510220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de9f461273ed25acc47f2903a0486e938de1ec9d9956a698b5d1a49470cd4ef`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb43b74b44a7ee747aee5b1e61f631c79095306bcb8ce56cdc55568d7b55ddc4`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae2b3d5795087d14d671d6c2357470ef616e8976634fce128863c7db5709de`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318bffa324ea908ff39fb3751a2c5cd31ca672b49b5783b477bc4138198b0bb0`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee39e45354b4e583aa0f381e5ebb42230a145cce93412227121a03064f7422a`  
		Last Modified: Fri, 17 Nov 2017 23:56:09 GMT  
		Size: 4.8 MB (4819304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8de20f8745cd38563aadc1ae3f569cdffb87ef278b186ae1b35ad6518b5970c`  
		Last Modified: Fri, 17 Nov 2017 23:56:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8677801d0fe66a9d1de41a73283b652af8c06238d63c3d5a83639f4c1d5b8923`  
		Last Modified: Fri, 17 Nov 2017 23:56:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b3ed86135662910960b0111ab125e9bc4dc223687b4ed529fa2dad0c74eb78`  
		Last Modified: Fri, 17 Nov 2017 23:56:30 GMT  
		Size: 52.3 MB (52333997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f026b0387094d8ec4e2f7d4815b781576d174f05089672414f0aa7a084cb71`  
		Last Modified: Fri, 17 Nov 2017 23:56:06 GMT  
		Size: 769.0 KB (769022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe054c5aa4156411801159229a6e9faf078ae4df73588317c7171343f5b5bf27`  
		Last Modified: Fri, 17 Nov 2017 23:57:16 GMT  
		Size: 173.9 MB (173910025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d63772d73e6030213e7c5513da172dc21622a749702340d8f955eadff8f25`  
		Last Modified: Fri, 17 Nov 2017 23:56:05 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba08a4038b0fb11e52ee108a6e9dbd2bb9585dc0f38f794c8e68d1a2bae523d9`  
		Last Modified: Fri, 17 Nov 2017 23:58:07 GMT  
		Size: 4.8 MB (4767243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107f377552795793a372588f85cf08cc91003b3314fd4d0f28b4551c0382805f`  
		Last Modified: Sat, 18 Nov 2017 00:00:10 GMT  
		Size: 125.7 MB (125704213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
