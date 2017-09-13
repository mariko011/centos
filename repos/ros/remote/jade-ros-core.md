## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:a8ce57ba2cf36c4a7c4c270a6517fcb0ee359b3f986ba862e3d06f35fe9bfa06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3806e57f1a9c6ae51a85174f12db2d1fed9f8371df9466a58db24797d53c4b83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266229087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d3cb683583ad5c48027d5dc69d7a3c69dc6f18ba5b7fe87c3e70dd9ca37897`
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
# Wed, 13 Sep 2017 00:56:31 GMT
ENV ROS_DISTRO=jade
# Wed, 13 Sep 2017 00:58:39 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 00:58:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 13 Sep 2017 00:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 13 Sep 2017 00:58:40 GMT
CMD ["bash"]
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
	-	`sha256:acd97f78485db0bac1b9c0f34e2d6a9b384d9a7902abb51d3280b7d95389ee41`  
		Last Modified: Wed, 13 Sep 2017 01:39:52 GMT  
		Size: 150.0 MB (150043188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b073e4d13a2c87b18c66915985e3d438bc0cd8566047d7ccdde02a88ee2ea88`  
		Last Modified: Wed, 13 Sep 2017 01:39:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
