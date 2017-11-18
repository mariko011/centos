## `ros:lunar-ros-base-zesty`

```console
$ docker pull ros@sha256:904dd142b9b1ffea018650d5e3d690c08ca109010b5f1d30e57f791ec086252e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base-zesty` - linux; amd64

```console
$ docker pull ros@sha256:c40b657223b2ed04b9a779b6d39500b61c4b3d097de4993e883f0ea9df88bcaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.3 MB (428272490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a7bee0f9adf3fc2d91c4fcb46f79eab037f9d61b772c0877e1dc5694dd3a06`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:35 GMT
ADD file:7695c82efcabf2b3ad4c608b200c506d9a16d22ebb6a823742a83fc3b5bc1f31 in / 
# Fri, 17 Nov 2017 21:59:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:38 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:56:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:56:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 17 Nov 2017 23:56:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 17 Nov 2017 23:56:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:56:36 GMT
ENV LANG=C.UTF-8
# Fri, 17 Nov 2017 23:56:36 GMT
ENV LC_ALL=C.UTF-8
# Fri, 17 Nov 2017 23:56:47 GMT
RUN rosdep init     && rosdep update
# Fri, 17 Nov 2017 23:56:47 GMT
ENV ROS_DISTRO=lunar
# Fri, 17 Nov 2017 23:58:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:58:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 17 Nov 2017 23:58:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 17 Nov 2017 23:58:37 GMT
CMD ["bash"]
# Sat, 18 Nov 2017 00:03:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0bbeb3f34b714172c2d2a30a26bec5f9f179d3714ae36e192b66cb2c0d8d0594`  
		Last Modified: Fri, 17 Nov 2017 22:02:10 GMT  
		Size: 38.6 MB (38600735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8d5f4c517a89e3d5ad5da69592d7d67fa9fa6fff5e0d2ffb6d73b2c2436fa5`  
		Last Modified: Fri, 17 Nov 2017 22:02:06 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cd377f217253b5f29a3e014c6b5852cc5d5fbd5ffe30c6a5cf48d999e65aee`  
		Last Modified: Fri, 17 Nov 2017 22:02:04 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d05a759781ff464a9b2aa8167a99877ce8803341bff8dfc337840227f9ca4`  
		Last Modified: Fri, 17 Nov 2017 22:02:05 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f358380db9ed7655eeba0f239421be152c9140ee0aaf5d3aaeb92bcd2e065937`  
		Last Modified: Fri, 17 Nov 2017 22:02:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa35c6438077660b8fb3a2c4fd6a787636078bb781b8af5cdc49374ba1309aa5`  
		Last Modified: Sat, 18 Nov 2017 00:37:33 GMT  
		Size: 3.4 MB (3401738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d270a322ea07cfdb5fb491a028a1acdb3ef7701ee532c57ab29c478476281c0`  
		Last Modified: Sat, 18 Nov 2017 00:37:32 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c354aa29bb2726e30224d43578a63d434002b2a1880940ead28df11b7e706b29`  
		Last Modified: Sat, 18 Nov 2017 00:37:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f87836f0fe919eebca930d0192d150cdb3fe863f9bcb308427838c213ac8d`  
		Last Modified: Sat, 18 Nov 2017 00:38:06 GMT  
		Size: 58.6 MB (58604706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f14ae1eb601af65d9f77b7d22b0c68a45fa0f4cfdc881be68b4eaf1295a8e3`  
		Last Modified: Sat, 18 Nov 2017 00:37:30 GMT  
		Size: 769.0 KB (769017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f348c0ca5f9ffb4246c8cf79fbba529a661d754afb63c56074a43e38a42800`  
		Last Modified: Sat, 18 Nov 2017 00:38:37 GMT  
		Size: 252.3 MB (252315594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9428a44be43b61ea0fcc384f60ff3eb7c29bf93f57b8f6086a6701cabfa505`  
		Last Modified: Sat, 18 Nov 2017 00:37:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc8543ebf9ecb1f5bb8e0e88adb616a2568869a6ccd846b18e1a8b5fb283f7`  
		Last Modified: Sat, 18 Nov 2017 00:39:12 GMT  
		Size: 74.6 MB (74576479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
