## `ros:lunar-perception`

```console
$ docker pull ros@sha256:fece3547dcc2bb2281be1d545293404ff8c044bba9a8107c241d5ab2a9fad9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:dde1d7c252dfc96719bece011c205228838139cd092233a87c07cb0541a6e7cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.1 MB (753078012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e5a75fb30f45502c05c0306a2946a3910f1ab971604c04a7a30201621af682`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 21:17:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:36:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b5596ef55931ee6028cbb98f8cf534ad239fd901fa5664dc29021a94c37f9`  
		Last Modified: Thu, 25 Jan 2018 23:06:34 GMT  
		Size: 83.8 MB (83832408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba44e85c584beefdd438989cf7c240eb59bc218afd79144c1a0d3958837bbea`  
		Last Modified: Thu, 25 Jan 2018 23:09:53 GMT  
		Size: 371.3 MB (371323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:67dd35d343c0235cd5b632089d35dcfb49b7009f151c701b3364d165f226e835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639872427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6d72f7bcc557ada1e0fb85b2b7638987f8711607abcf5d17aa95d565a7a711`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:44:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:48:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ec21c93471b7c3df9e73aa25ca76f7aa7f019e7f5f029644b88a81fc07643`  
		Last Modified: Tue, 16 Jan 2018 15:01:51 GMT  
		Size: 75.0 MB (75019727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401cba5c2bd55a1b8ba3fcc62f24f23539a1568a06d913feef3a9fbe32d0cdca`  
		Last Modified: Tue, 16 Jan 2018 15:04:11 GMT  
		Size: 306.1 MB (306115191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:647045e85c66dd75d89ef8985715fe63dbc1652cadd53d052c380b26eec884d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.7 MB (667692547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fb9c22e0322d7531cf90394cf9da388f1cfdaf2d21d2b828f7abeef99c9e43e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:23:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 15:23:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 15:25:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:25:38 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 15:25:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 15:26:18 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 16:07:42 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 16:18:39 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 16:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 16:18:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 16:18:43 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 16:23:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 16:40:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cdd9db465112266a42eb9ce2b0e9bfd45cd0c66601554c103ef521ddd5163`  
		Last Modified: Tue, 16 Jan 2018 16:41:34 GMT  
		Size: 4.8 MB (4819405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a02a175bdcc15c354fd59c7475d22ce9522bf2cb2dafa31dfbfc5e2d37c06f`  
		Last Modified: Tue, 16 Jan 2018 16:41:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158d87b5136476e090ddd9da00c734d3f1f94cd91af14c39226ae4ac529c9b6`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932f83aa8efa81e52481b970aba7def3be822319321e42f166a8e423d6350acb`  
		Last Modified: Tue, 16 Jan 2018 16:41:54 GMT  
		Size: 52.3 MB (52340932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75fcb41416a2849255413a9733f0c82e1284a96defb2699632f9a3209b748b`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 780.3 KB (780289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019633fc79880ae9e5a273d4848892f730f8322156fe4e35cfc7912fff157cd3`  
		Last Modified: Tue, 16 Jan 2018 16:49:59 GMT  
		Size: 173.9 MB (173949698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88caae52db497b6d399157dba5cffb9fefc14dcd5069c46bc6dce47e62456d59`  
		Last Modified: Tue, 16 Jan 2018 16:48:56 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6271506f297d8a43edcd2e6025b72f8a9102ec869eac8cced9370977bc7ee3`  
		Last Modified: Tue, 16 Jan 2018 16:50:54 GMT  
		Size: 76.5 MB (76458726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11195042b5c544075855e5f0820807068b27703c31c16b959b55df9f21b69b4`  
		Last Modified: Tue, 16 Jan 2018 16:54:36 GMT  
		Size: 320.3 MB (320257101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
