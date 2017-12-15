## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:ed90e49f39369f4d974041f2f40a44215472e66dd2e45f234abd743acf5a5b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:ccba4049c838b798a9137d0951a086e3c79b8014db776a9e734d196932f0a9a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.1 MB (379069721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e627e09093929f6be32b2418556c7c1aa92e5082456e43bb120dba2ac83bb665`
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

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:1925bd0a6a26df9e31442b8e757e808933ef25c82c586549ea87b95f6ffc753e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331748403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4dcd8ab4dd897657c22535fe5edd652f278157e904339a27302b61df74a97a`
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

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:42f592b2e35aebbd20b32dee9d0cc60ae688d55f764e159bc0decf36c546cc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.6 MB (345583089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48850522f160d678f29ae3459a319c4eb02233e1e74f2893bd394381f94ee18a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
