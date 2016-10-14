## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:7eac36efe73c98bc6abd15cebbcb85629269d47f67ed22425438d881615cd5a1
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253181621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18f15b146f7b113b193f570db9606950c78bffce9bf5dee15dfc7e668f4cf03`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:35:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 13 Oct 2016 23:35:44 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Oct 2016 23:35:44 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Oct 2016 23:35:46 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Oct 2016 23:35:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Oct 2016 23:36:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 23:36:31 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Oct 2016 23:39:24 GMT
ENV ROS_DISTRO=jade
# Thu, 13 Oct 2016 23:41:08 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 23:41:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Oct 2016 23:41:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Oct 2016 23:41:10 GMT
CMD ["bash"]
# Fri, 14 Oct 2016 00:23:23 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 14 Oct 2016 00:23:41 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358126f0869cb46d339ab66dd31c5d4fa10778598cc3992a013f1cc4ca837aa9`  
		Last Modified: Thu, 13 Oct 2016 23:38:26 GMT  
		Size: 329.2 KB (329190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abf568399ab1598a18dfaad51dbc1c16250c733974b10c5b9bd73df3bdc87c4`  
		Last Modified: Thu, 13 Oct 2016 23:38:24 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb24e042befcb1b2d15665b9f6a10771ad7742524ff38316ae8184857b26e02a`  
		Last Modified: Thu, 13 Oct 2016 23:38:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65df6f322abc4b9064d75f38bc7305aa8a872035868c35c872c163379ef4253c`  
		Last Modified: Thu, 13 Oct 2016 23:38:31 GMT  
		Size: 32.9 MB (32865532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d820ef548788b4e6becb7c982c57060fe1924de1d268e30a991dbcb4c6cdf92`  
		Last Modified: Thu, 13 Oct 2016 23:38:19 GMT  
		Size: 669.0 KB (669041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36e75daf98fea4c694d8188af21d766e2348c2a93216a3ab3b456c49cf51495`  
		Last Modified: Thu, 13 Oct 2016 23:42:03 GMT  
		Size: 150.1 MB (150091718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfafcdd2960db384a7fd24e7b988e79c911913383803308f00a5bda58629bdbd`  
		Last Modified: Thu, 13 Oct 2016 23:41:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8affa1e4a8ceb02069862effffa59cb26157f6e00e673bde4ef03ca4d4b3f287`  
		Last Modified: Fri, 14 Oct 2016 00:23:51 GMT  
		Size: 3.4 MB (3436890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
