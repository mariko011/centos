## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:d0d2e7b2b46de12e87a1f54eb1afbd8b73a8065b292fbd35cf13ea63b8f74ff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:34a2c6401e88a880f79e5632c83f9a2a13668259ff17b9d3ba2b896d74acb536
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.0 MB (337034836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae5dbb0d9acc076f03a4d30fa07aac0f9928e83ef6bb62c59c54407557499410`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:56:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:56:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 17 Nov 2017 22:56:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 17 Nov 2017 22:57:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:57:20 GMT
ENV LANG=C.UTF-8
# Fri, 17 Nov 2017 22:57:21 GMT
ENV LC_ALL=C.UTF-8
# Fri, 17 Nov 2017 22:57:30 GMT
RUN rosdep init     && rosdep update
# Fri, 17 Nov 2017 22:57:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 17 Nov 2017 23:00:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:00:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 17 Nov 2017 23:00:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 17 Nov 2017 23:00:07 GMT
CMD ["bash"]
# Fri, 17 Nov 2017 23:02:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:03:13 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2b1b81aa3c8e35a389187059e11aba44e68f8ee952b215452bf202e829bfff`  
		Last Modified: Sat, 18 Nov 2017 00:10:57 GMT  
		Size: 16.5 MB (16500398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caaad2a3f84bccec83382b02a682cc733ed88ed608ca41927fdfe8af7e2e0420`  
		Last Modified: Sat, 18 Nov 2017 00:10:44 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0294f67a1fe21b514428079aef22eba6b72ff65b723b05d96d3d33ee26893720`  
		Last Modified: Sat, 18 Nov 2017 00:10:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee427a961a3c1b2513d21bcd711ed1e9499e54b34de2937957df4c4f5a258412`  
		Last Modified: Sat, 18 Nov 2017 00:11:05 GMT  
		Size: 31.7 MB (31682274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263fb6006bb55131ef81c74fa49d36f3b67c4b5105b5a33a63746467eddac410`  
		Last Modified: Sat, 18 Nov 2017 00:10:43 GMT  
		Size: 769.0 KB (769001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9d9a96a27b5dc629851679fd39ab183cf3793031e578e4263327eeec1e01ec`  
		Last Modified: Sat, 18 Nov 2017 00:11:33 GMT  
		Size: 149.9 MB (149910312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ddc2f50a07f000ed92a17851ee73f87ace9813a660a50ff1ef056ac8ea352c`  
		Last Modified: Sat, 18 Nov 2017 00:10:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8110069e9ecd914479965729cf1350ea86fdc5f97dbf773adf6de23612bec1de`  
		Last Modified: Sat, 18 Nov 2017 00:12:17 GMT  
		Size: 4.0 MB (3976642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a556544ff73bea33d50fd0ba57f4f7627b4e7be546f5857ac68865539434e6`  
		Last Modified: Sat, 18 Nov 2017 00:12:58 GMT  
		Size: 61.3 MB (61283351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:8eb857cdf1f3b1a8c5578925dcefa460ec923abe9299fa8a72d3b50e98acce74
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.9 MB (305944288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8edbe8f73811e957fa36aa6fbc625977732f848abeb8fdc8f52ed2b9458e58`
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
# Fri, 17 Nov 2017 22:38:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:16a6e2e1108a4e98a31f2fa49b9d38be7071a78a38c80d95e9c76e5c48450ea4`  
		Last Modified: Fri, 17 Nov 2017 23:17:33 GMT  
		Size: 53.9 MB (53921686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
