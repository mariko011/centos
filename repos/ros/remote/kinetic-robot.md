## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:9d2b2664ebce6e3510208b6bb9ef6696710bb84a29744f2e491a7c7f8559f344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:c1720b7ac2d7380c78dda21fb8c8ebc8caa8aef93e4848a09a6419d966419327
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 MB (485427973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a55f61bc1bed301d952f0d6fbb1432dc0db523a1d1b75b0ce69f1f6c2af7c3`
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
# Thu, 25 Jan 2018 20:29:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6fc8b2d6f0d72ae0da0fbe3a11e1886e061dcdd861ceec9d4c7f7b39461dba8c`  
		Last Modified: Thu, 25 Jan 2018 22:48:59 GMT  
		Size: 103.6 MB (103598128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:0856b138e035dc4d7b7dd74d77eac0911154207a16c817fe7a52765134bc02bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423894175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab54708a35b0239bc479c6a683408fc62e690e73222d5e66bdfaf7418cf2203`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:39:31 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd228a7b357e4880b7b26cd7fe38762df722a4dd4d8413820b3cd7e76dfa8f9`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 90.0 MB (90021601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:845786601ad7d4176cb029e99a1878b96cd2d7cf9f34a37368b61cc722ca50c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.4 MB (441392781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706f380f8657c18ca990567455cac03bfb37b470cdf6a17f966e3761c5eeaa32`
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
# Tue, 16 Jan 2018 15:50:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7fa2dc86554dd80fba532ebcd41282b7bb65a4389f105915fd0fa5efe49c357a`  
		Last Modified: Tue, 16 Jan 2018 16:44:54 GMT  
		Size: 93.9 MB (93868117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
