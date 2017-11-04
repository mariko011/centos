## `ros:jade-robot`

```console
$ docker pull ros@sha256:dcca774f72e2755af5de1fb3f0e48eb9d354bdfca543bfdb907cb522db7773a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

```console
$ docker pull ros@sha256:32f65aa52301adb54cf9d30c0ec726f4b75e6185637b60bc8fd3e8a2770b5b6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331504663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07fd6fe0b32ce687b3246b5fbb218e5093495b985099fcf1fc477db0af2f943`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:30:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:30:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:31:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:31:06 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:31:21 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:41:28 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 19:43:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:43:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:43:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:43:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:43:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:44:42 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec518a6b532f0d235ca2c07d5fb2fb92cad0d12e8ee2dd12ad709c31d6a6a4aa`  
		Last Modified: Sat, 04 Nov 2017 20:17:54 GMT  
		Size: 16.5 MB (16499910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f49c5f1da36acffecc969e58863d3b9d7c05a61f39492433d2657e0d39fc5`  
		Last Modified: Sat, 04 Nov 2017 20:17:41 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbf817637757afa66760013a9a566efa52ebfb4cdc19ed7ee80a6fbaa8a876`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea0b3dbfdde1921a25a11d0cfd88b599d25c69c946263b3487540358f692015`  
		Last Modified: Sat, 04 Nov 2017 20:18:03 GMT  
		Size: 31.7 MB (31682043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aa5515380757fada10bd928959f578430bdaac50e68f70eabf834ff41ce6ae`  
		Last Modified: Sat, 04 Nov 2017 20:17:39 GMT  
		Size: 766.6 KB (766564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25c4c58431d4779504fcbe2c269cb39454baf2695f1386b586311c2d2709fc3`  
		Last Modified: Sat, 04 Nov 2017 20:21:24 GMT  
		Size: 150.0 MB (150045500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea76b9d369c4b21fda62ffdd1f5a1f9655c97aa82910cd7a7cccf784ac54b577`  
		Last Modified: Sat, 04 Nov 2017 20:20:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c676e44a41b8ddb7fd748c6dee2a5c9700c57005868e6ec031de4269d3faa`  
		Last Modified: Sat, 04 Nov 2017 20:21:41 GMT  
		Size: 4.0 MB (3996227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fe930e85cd8389f21b60ab50bc0877742d3ab779b26d0f606f55fd981b56c8`  
		Last Modified: Sat, 04 Nov 2017 20:22:16 GMT  
		Size: 61.3 MB (61311988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
