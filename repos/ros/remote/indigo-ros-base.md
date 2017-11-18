## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:08ebd33983c70c258b10ee1152f00ed7884c0db203853a2e566b334fc3e9d234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:ee72b53ff2127b58ac684eea2d5887e509bc5ca200d0f51fc1f1da42842d14f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270037414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70d2bad629ac729ff0bb3e497e4cb659c4f029dc7af7c8ff1d4f092965c65ba`
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
# Sat, 04 Nov 2017 19:31:22 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 19:32:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:34:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:34:20 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:34:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:330890a55bbb3da42b61a2ecf20dabe833db67665283e1ae2cc8a9641c93c570`  
		Last Modified: Sat, 04 Nov 2017 20:18:28 GMT  
		Size: 149.9 MB (149910321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868b046dbb6b1bc054e3ebb0db3924f9bd08b87deecc085ab9bcd26ef9e23821`  
		Last Modified: Sat, 04 Nov 2017 20:17:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe8f1bbdfc46b0ec2c51e8a8cd99076063022efba9b802472c10dbf740334e`  
		Last Modified: Sat, 04 Nov 2017 20:18:45 GMT  
		Size: 4.0 MB (3976142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:27d82b09aaacf4bc423376854e13a9f12adcbffb0ffe4ff4fc25c2ecf66beeb7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252022602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf957cc6a20cce28dd8947214537ba40ab504be7c8b410d6ac7253b2f2501ad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:56 GMT
ADD file:16a99c4c03e0f828d3d1f5824c796f99c24b90034db64e6ab21335559e94288c in / 
# Fri, 17 Nov 2017 22:08:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:59 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:09:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:09:00 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:30:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:31:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 17 Nov 2017 22:31:10 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 17 Nov 2017 22:32:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:32:16 GMT
ENV LANG=C.UTF-8
# Fri, 17 Nov 2017 22:32:17 GMT
ENV LC_ALL=C.UTF-8
# Fri, 17 Nov 2017 22:32:37 GMT
RUN rosdep init     && rosdep update
# Fri, 17 Nov 2017 22:32:37 GMT
ENV ROS_DISTRO=indigo
# Fri, 17 Nov 2017 22:35:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:35:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 17 Nov 2017 22:35:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 17 Nov 2017 22:35:52 GMT
CMD ["bash"]
# Fri, 17 Nov 2017 22:37:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:98ab4a8d51bcdd96e2e2ddf9b580397602ad3d0f1c1698b312ddb73efa5cb9b5`  
		Last Modified: Fri, 17 Nov 2017 22:12:14 GMT  
		Size: 66.4 MB (66364411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e535fdb12f7f2c7f5a17bef15275021c0dc8fd2b4602bd93bdced6e8745c194`  
		Last Modified: Fri, 17 Nov 2017 22:11:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e47cc03dbabaa23fd59fdade4ef1497ebb214115ad94e7ab736a6026779aa`  
		Last Modified: Fri, 17 Nov 2017 22:11:53 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4509b19277f66f4fa9d6c7fc9a652885b3e8c7cf793fb8688757179550010d4d`  
		Last Modified: Fri, 17 Nov 2017 22:11:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68f56fab19c7569cb5381e33dacccf85762e98290a65fa78469a895ea681854`  
		Last Modified: Fri, 17 Nov 2017 22:11:53 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6f0f98d94da07bf3899cda896a4bdc59000cdbcba36ce1f6e940aade89827c`  
		Last Modified: Fri, 17 Nov 2017 23:14:09 GMT  
		Size: 14.5 MB (14469654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e71bab6beca25d11379bc2ed345cdaf3c154196ee7005b2ece187995f04eded`  
		Last Modified: Fri, 17 Nov 2017 23:13:56 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8332ce494b9a9c44fe2dd06c5597e73848ebc95548db71300488f4326306603`  
		Last Modified: Fri, 17 Nov 2017 23:13:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d552fbe964792f8559d60b99f0f4eb44fa6f4c23414532bc3d43868df29a9d`  
		Last Modified: Fri, 17 Nov 2017 23:14:13 GMT  
		Size: 29.2 MB (29157488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8291a7e906dda252afc8252c40aa2a4818634feaae5c1f3541edf3a12205fde4`  
		Last Modified: Fri, 17 Nov 2017 23:13:55 GMT  
		Size: 769.1 KB (769142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2a25fb55e3c39f5bdd8e0bacecb043e1176217f36cb4c11462f2af1dd6591e`  
		Last Modified: Fri, 17 Nov 2017 23:15:35 GMT  
		Size: 137.6 MB (137565541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f7ddafceddafb36284440da544f3dead734a02e89342876944bfeb5e760802`  
		Last Modified: Fri, 17 Nov 2017 23:13:54 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d04adca31f727fba2ed0ccd08e3745d4ae4b8d8819ed08f68c519fe6fd609ac`  
		Last Modified: Fri, 17 Nov 2017 23:16:32 GMT  
		Size: 3.6 MB (3604430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
