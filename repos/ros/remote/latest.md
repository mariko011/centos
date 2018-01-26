## `ros:latest`

```console
$ docker pull ros@sha256:901b4f8cfe11ff4369a545cc961c431a54d0e8ec1c608178f0f756c5f875d03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:8eaa67fedf4dbd22c9d2713fc53c8ac148c916ca40f5f944869cc62905f8f499
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381829845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a674644c9bd3adb2ac77d07290f5df29487eddb4876f6e6c8273b5f37fdc69fd`
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
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 20:17:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2cc5251033e85f0b548cc936cb4d21ace1bd64f708e77e0f8aa6b0f17c4b8`  
		Last Modified: Thu, 25 Jan 2018 22:47:21 GMT  
		Size: 83.9 MB (83906138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:d39d5770715f59141e6ceab403d0620faa4df18449a9c3c12ded4fa5741cb7de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333838295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de053688f8add1c045ad9b8dad643dfe521c4ed41dc93baa8a4ece1f84fd3ea3`
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
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:37:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4acc72a6d851b11cbf3346644a6794012d621a0e57d7ed44829ce45d023ed4c`  
		Last Modified: Tue, 16 Jan 2018 14:57:37 GMT  
		Size: 75.1 MB (75092360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7aface51e376372df8b5f025d5437204048ae9c36e94ea60180f9ea66bd4d59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.5 MB (347524664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09242372d2159a268409d3600967b5dfe549663d3d562330b83e1286edfe7b1c`
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
# Tue, 16 Jan 2018 15:26:19 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 15:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:38:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 15:38:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 15:38:02 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 15:44:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:4f409bad17e4633a223be82249f2b53186abd425359400d5c8b59fbef4950874`  
		Last Modified: Tue, 16 Jan 2018 16:42:38 GMT  
		Size: 174.0 MB (173964708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc7a8cd326c5284e83b49f2a9a1d7a5c39202f202d8f8d3bce79692ba4ac9a`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4de927de6f97fc0239f4af36c2dc111ed80cb5245b38df272dd622349622f09`  
		Last Modified: Tue, 16 Jan 2018 16:43:30 GMT  
		Size: 76.5 MB (76532933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
