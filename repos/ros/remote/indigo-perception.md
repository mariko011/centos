## `ros:indigo-perception`

```console
$ docker pull ros@sha256:c40d03e470edbbc0f4bbcec3377aef813ab8f7409cd0ad3d221b5b1eb658103a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:1962d29e989c1773e95be625c9dda9056f688096b8cc9574b84a549dbf46acf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.7 MB (534747463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33762c11d7fa2c6fdcea4a72665c20ba72ca31f809dc425f78661300d7e8a8a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 00:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:49:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 13 Sep 2017 00:49:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 13 Sep 2017 00:50:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 00:50:33 GMT
ENV LC_ALL=C.UTF-8
# Wed, 13 Sep 2017 00:50:42 GMT
RUN rosdep init     && rosdep update
# Wed, 13 Sep 2017 00:50:42 GMT
ENV ROS_DISTRO=indigo
# Wed, 13 Sep 2017 00:52:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:52:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:52:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:52:37 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:56:29 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc572e638e344e5ccea04badc364591602e652d994d23871a76e6453750e99b3`  
		Last Modified: Wed, 13 Sep 2017 01:35:47 GMT  
		Size: 16.5 MB (16499641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fcd955a94ac99dbf014d764c222fa44de9a71a7cce995dfae8fe2de3bbfca8`  
		Last Modified: Wed, 13 Sep 2017 01:35:30 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73141ada0f0567eac16c94a47e7af882b1be5a65669afd4195b2c3be12b14f6`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d37523ad8977b0db7a446a6e1f0ef960aaf2abec602632887a68bcb8936c7c`  
		Last Modified: Wed, 13 Sep 2017 01:35:55 GMT  
		Size: 31.7 MB (31729221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7ff341ae4d631e7e21d92d46cc7c56c576526f48cc45131a6a9280436dbd0e`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 754.0 KB (753968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33afa67fdcd5067a078951fcb3284dc8a17cc82272722422f6f81668187befb4`  
		Last Modified: Wed, 13 Sep 2017 01:36:47 GMT  
		Size: 149.9 MB (149908752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70eaa96501161a23995d33af8c4eb68746b3620343fd4f30c3ba415fe49d0e5`  
		Last Modified: Wed, 13 Sep 2017 01:35:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e0a88a02014b2df9e992972928485a036994eaa84a3e59903e6a3a02c4bca2`  
		Last Modified: Wed, 13 Sep 2017 01:37:02 GMT  
		Size: 4.0 MB (3975843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f2b6523d645331c9589b4640e829232c547bf67663465fb1a2707b01a372f`  
		Last Modified: Wed, 13 Sep 2017 01:38:53 GMT  
		Size: 264.7 MB (264676967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
