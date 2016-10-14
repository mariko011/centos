## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:8086ad520f80f93f0d4b629813f4e6bc2bcacbe68cf0c1472ed7b2f7c51cd839
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302795104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4a564bd5d1fa830ddb372a3d6537bf35fd4d6e60ff50c398f34876d017661c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:42:16 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 13 Oct 2016 23:42:18 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Oct 2016 23:42:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Oct 2016 23:42:21 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Oct 2016 23:42:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Oct 2016 23:43:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 23:43:10 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Oct 2016 23:43:10 GMT
ENV ROS_DISTRO=kinetic
# Thu, 13 Oct 2016 23:44:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 23:44:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Oct 2016 23:44:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Oct 2016 23:44:44 GMT
CMD ["bash"]
# Fri, 14 Oct 2016 00:30:15 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 14 Oct 2016 00:30:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0806b915f4b34cb1a42120b0b6389c0fd725c08dfae1bc2a06dbc0e0d73156`  
		Last Modified: Thu, 13 Oct 2016 23:44:55 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab439ac98e6868456c61932143d2bfb6f67f743352ad4a926331c6ba1838024`  
		Last Modified: Thu, 13 Oct 2016 23:44:54 GMT  
		Size: 13.1 KB (13070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d742bde6b6cf911e1d462e0cad483e136e1ff5ca486e90120debda0f0d3e4f6f`  
		Last Modified: Thu, 13 Oct 2016 23:44:52 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da425a0a12c8354e8a6cbcf1b8fcf73ee730bf74c5b559dd8b3ac501faf18c`  
		Last Modified: Thu, 13 Oct 2016 23:45:15 GMT  
		Size: 57.6 MB (57628527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24514e2f583f01ba2f2fca8c0130e5ae5f4dd5777743bf4295757e34525d5260`  
		Last Modified: Thu, 13 Oct 2016 23:44:52 GMT  
		Size: 669.0 KB (669036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcfdb89e95beb8fc598a41f716481469247bee9087a53a95ba1e40924fea9cd`  
		Last Modified: Thu, 13 Oct 2016 23:45:45 GMT  
		Size: 189.6 MB (189631046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27f11b08719e73ddf696f0cda84268952978c17ebd49895163ecfc291eb45f7`  
		Last Modified: Thu, 13 Oct 2016 23:44:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a9ed6eebd73bec4dc9fbd514e1072a9a1e479dd9338b2a91f14f691aeda498`  
		Last Modified: Fri, 14 Oct 2016 00:30:49 GMT  
		Size: 4.6 MB (4644567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
