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
