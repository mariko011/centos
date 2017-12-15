## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:225c482dfaa8c74b3d3de50086aaf7f88988c3405b1d491c7cd6d867b9b0472e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:7dadd2b74d3d0e1599f0fd880677c6490ea990d496a1b5fec935868002db36e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271848336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c4eed1fa293a1b1a66f19f0a05b30ff402fb6530b0bccc7a0a3d621d63690d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:13:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:13:32 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:14:06 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:14:06 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:14:16 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:14:18 GMT
ENV ROS_DISTRO=indigo
# Thu, 14 Dec 2017 23:15:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:15:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:15:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:15:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c269f106d1bf469e04ef2927a4511ad51522d7ac01d7b15519d003eb1f50dc4`  
		Last Modified: Fri, 15 Dec 2017 00:52:30 GMT  
		Size: 16.5 MB (16500633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c3316cbefa2b9063b55b9df0dd8496f7ce59e65b41d8a1a26f0c5ac3ca8632`  
		Last Modified: Fri, 15 Dec 2017 00:52:19 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ea622af677f4e92cbac044dcf9e15908837ff67349d0396ef6565b4a0f0cf7`  
		Last Modified: Fri, 15 Dec 2017 00:52:16 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2324822bad3f5a275d116b095bdde8f2d607d4f01e962cfcc6f2547c5df2cd52`  
		Last Modified: Fri, 15 Dec 2017 00:52:37 GMT  
		Size: 31.7 MB (31683785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad1f2c6d23e269c0228dfc6433cfd43224d2904652b853fa5a6dfb22962ab2e`  
		Last Modified: Fri, 15 Dec 2017 00:52:17 GMT  
		Size: 777.3 KB (777288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd9fb868690c66348eb41c2335d12ad694c863fd27e575501574f9fc48319fc`  
		Last Modified: Fri, 15 Dec 2017 00:53:10 GMT  
		Size: 149.9 MB (149910089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf25c76c8b56276be855e6e0870fe021d42b5aeadd83d10a5303733f7f585584`  
		Last Modified: Fri, 15 Dec 2017 00:52:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:8e5719ac99a3bb157ed31fc6f90ba49bdd19eae358e4e662f9191f8936bc7337
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.4 MB (248445194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1772bd6dfff3bce6d2b6035902650081f78f26b73c970e706c3109a59eed447f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:37 GMT
ADD file:dd1487cabc9f8e2188e6103671470ce7f41c66710ed2696ec8e26bd5047c5b47 in / 
# Fri, 15 Dec 2017 13:51:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:51:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:51:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:51:41 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:10:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:10:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:12:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:12:46 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:12:46 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:13:05 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:13:06 GMT
ENV ROS_DISTRO=indigo
# Fri, 15 Dec 2017 14:15:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:15:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:15:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:15:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:50e2643b13d6ea73d22c1b004246a2bff43a5c025fcfbbc755748127e28c3e78`  
		Last Modified: Fri, 15 Dec 2017 13:53:11 GMT  
		Size: 66.4 MB (66404695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f428909f2234cd44a20cf86c0d66eba3f5c1a55afb113882878461edbad6b7`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443904308a1cee3b77fa8c25a3d53350efdd954e5a5f31baa343d655914e2753`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355edca5c4b0e249be5f4e3014d4e533bb8ff090178d51c0b2b06a42aecf8e76`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378c801492144c7285209c23d67c82b19b651fdb9eb1dfd3fd4c520db719d54d`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eceec97f48b73d5cc3edf74293b66b2c31e3465c65be448a22159dc2f7e3f57e`  
		Last Modified: Fri, 15 Dec 2017 14:48:24 GMT  
		Size: 14.5 MB (14470026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c28da72e326eb71ba4c24ad0cb074cadb68faf2dfc5adcde2a99f20ce434cc7`  
		Last Modified: Fri, 15 Dec 2017 14:48:19 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be64c537b5bf09defc288d312ab09a620d52087cb10e1209c3f34ec35a9b834`  
		Last Modified: Fri, 15 Dec 2017 14:48:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2b762c7e68c320eb3a8d1d7783f853fbfa18a58b1e5a9897d9e42bb797fa77`  
		Last Modified: Fri, 15 Dec 2017 14:48:31 GMT  
		Size: 29.1 MB (29140842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a29b02954542388599a3dcc746162e35ef90c686c124c12a8d95ac1c0523aff`  
		Last Modified: Fri, 15 Dec 2017 14:48:19 GMT  
		Size: 777.4 KB (777433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b7b225ebbcbb456e7322acc9ce00b864b8d06b0b67c67b6a7acda6f5e787ae`  
		Last Modified: Fri, 15 Dec 2017 14:49:04 GMT  
		Size: 137.6 MB (137560263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81297f123c0d53a0373614aea9305a02580e884452688d77782b5d427e3e49a1`  
		Last Modified: Fri, 15 Dec 2017 14:48:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
