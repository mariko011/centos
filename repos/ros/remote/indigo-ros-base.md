## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:991cddb90361e23540d7bb1be5e5ffb2b897af9a3dca96d920bf52c42e154229
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253076419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be10adc34357557acd49a13b134855dd319defcf8c8e63dceaf14ea5ea1d937`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:53:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:53:46 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:53:47 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:53:48 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:53:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:54:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:54:33 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:54:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 30 Nov 2016 17:56:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:56:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 17:56:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 17:56:09 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:11 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eacfdf44bcd644c4245ef0cae33a65dde042610dd3b8b6f97666c70e0a44919`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfdc2861386984f1aceec9c8c8782a7ef00d9e54cb7dc3d625865d84e9c461e`  
		Last Modified: Wed, 30 Nov 2016 18:25:28 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cad3003c8e1cbd9bc3119f902f5e66057b8a926e34b6f213041d96417e3a91`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdec8d9ad390c1c895a1ed1ea7a44006b2b20cf8ec950134f7654bf90e1cff8`  
		Last Modified: Wed, 30 Nov 2016 18:25:39 GMT  
		Size: 32.9 MB (32876375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903b57e09d8634669fa41a5ac47e7761bc5a2362603446e106c5a7aa587e332`  
		Last Modified: Wed, 30 Nov 2016 18:25:25 GMT  
		Size: 685.8 KB (685806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90e1b52ea74720d0df7ff87ec4dfd041bdd6bc043dffcc3659372caef566e1f`  
		Last Modified: Wed, 30 Nov 2016 18:26:19 GMT  
		Size: 150.0 MB (149973840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1482caf0cd06ad4fd9430c001045304aa3ef1870d8bbb90e49d088a0e91ba`  
		Last Modified: Wed, 30 Nov 2016 18:25:24 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e4a834a09e105460cb96feefec185f43043e337f21ae61f5d690e3c14e55ed`  
		Last Modified: Wed, 30 Nov 2016 18:29:38 GMT  
		Size: 3.4 MB (3425490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
