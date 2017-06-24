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
