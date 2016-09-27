## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:13e60fbb2c885a00569a5e89da3d4d0daf882714b455e75c31a033578d90838f
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.4 MB (706403073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7febbac33cbbb0c8a40a0b282a266cb93d4057963c4ff81c46d3ca3702161a74`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:19 GMT
ADD file:cd937b840fff16e04e1f59d56f4424d08544b0bb8ac30d9804d25e28fb15ded3 in / 
# Mon, 26 Sep 2016 21:26:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:23 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:34:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:34:32 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:34:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:34:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:35:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:35:17 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:35:17 GMT
ENV ROS_DISTRO=kinetic
# Mon, 26 Sep 2016 22:36:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:36:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:36:34 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:16:15 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:16:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 23:17:11 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:19:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cad964aed91d2ace084302c587dfc502b5869c5b1d15a1f0e458a45e3cadfaa6`  
		Last Modified: Mon, 26 Sep 2016 21:29:04 GMT  
		Size: 49.8 MB (49830405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a80a22fea63572c387efb1943e6095587f9ea8343af129934d4c81e593374a4`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de990d7957c304603ac78d094f3acf634c1261a3a5a89229fa81d18cdb7945`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e032b8f2cb04e7a2d4efa83eb6837c6b92bd1553cbe46cffa76121091d8301`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ce1741bf604c84258a4c4f1dc98cc35aebdd76c14ed4ffeb6bc3584c1f9b`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a7596f11be20786fde11d756936ea0bd54e86641c3fba9ab2a2f55f87fa7af`  
		Last Modified: Mon, 26 Sep 2016 22:36:46 GMT  
		Size: 339.4 KB (339412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd497f3412bcf8dc397d90b70ffb87fb64856f0aa5ec3c4dddc18597cd9ec4a4`  
		Last Modified: Mon, 26 Sep 2016 22:36:45 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2805e2df98418ff4f8004d1ad0769fb90ee5413d3cfb33b73334a0f567ba55a5`  
		Last Modified: Mon, 26 Sep 2016 22:36:42 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bd9f04f625c89067295cc4ff04310914bc15a5d1359c86cc480da6344488f1`  
		Last Modified: Mon, 26 Sep 2016 22:37:03 GMT  
		Size: 57.6 MB (57630574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53abe103be4262448591b5b06fe502c9f0652bbd7c9a9412a9daab99b1fdf05e`  
		Last Modified: Mon, 26 Sep 2016 22:36:43 GMT  
		Size: 664.2 KB (664159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeba6bc5cc01cd19686cb2fee8123e51297a438f156d166d1cc71745db1771c`  
		Last Modified: Mon, 26 Sep 2016 22:37:35 GMT  
		Size: 189.6 MB (189608265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b29c7b9a18bb5792f45d58b04d142c229c32afa099ef325680d2474ca57309`  
		Last Modified: Mon, 26 Sep 2016 22:36:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518223d05310aa9fb4f71afa0f1d45efc068cb1f775e31eff39a3bf9229f94b9`  
		Last Modified: Mon, 26 Sep 2016 23:16:45 GMT  
		Size: 4.6 MB (4636422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a185c9f9e15518f6d27508d2748b536a7acc7a839d1318bdb96065c58c33dcf`  
		Last Modified: Mon, 26 Sep 2016 23:23:11 GMT  
		Size: 403.7 MB (403678231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
