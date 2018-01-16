<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:indigo`](#rosindigo)
-	[`ros:indigo-perception`](#rosindigo-perception)
-	[`ros:indigo-perception-trusty`](#rosindigo-perception-trusty)
-	[`ros:indigo-robot`](#rosindigo-robot)
-	[`ros:indigo-robot-trusty`](#rosindigo-robot-trusty)
-	[`ros:indigo-ros-base`](#rosindigo-ros-base)
-	[`ros:indigo-ros-base-trusty`](#rosindigo-ros-base-trusty)
-	[`ros:indigo-ros-core`](#rosindigo-ros-core)
-	[`ros:indigo-ros-core-trusty`](#rosindigo-ros-core-trusty)
-	[`ros:jade`](#rosjade)
-	[`ros:jade-perception`](#rosjade-perception)
-	[`ros:jade-perception-trusty`](#rosjade-perception-trusty)
-	[`ros:jade-robot`](#rosjade-robot)
-	[`ros:jade-robot-trusty`](#rosjade-robot-trusty)
-	[`ros:jade-ros-base`](#rosjade-ros-base)
-	[`ros:jade-ros-base-trusty`](#rosjade-ros-base-trusty)
-	[`ros:jade-ros-core`](#rosjade-ros-core)
-	[`ros:jade-ros-core-trusty`](#rosjade-ros-core-trusty)
-	[`ros:kinetic`](#roskinetic)
-	[`ros:kinetic-perception`](#roskinetic-perception)
-	[`ros:kinetic-perception-jessie`](#roskinetic-perception-jessie)
-	[`ros:kinetic-perception-xenial`](#roskinetic-perception-xenial)
-	[`ros:kinetic-robot`](#roskinetic-robot)
-	[`ros:kinetic-robot-jessie`](#roskinetic-robot-jessie)
-	[`ros:kinetic-robot-xenial`](#roskinetic-robot-xenial)
-	[`ros:kinetic-ros-base`](#roskinetic-ros-base)
-	[`ros:kinetic-ros-base-jessie`](#roskinetic-ros-base-jessie)
-	[`ros:kinetic-ros-base-xenial`](#roskinetic-ros-base-xenial)
-	[`ros:kinetic-ros-core`](#roskinetic-ros-core)
-	[`ros:kinetic-ros-core-jessie`](#roskinetic-ros-core-jessie)
-	[`ros:kinetic-ros-core-xenial`](#roskinetic-ros-core-xenial)
-	[`ros:latest`](#roslatest)
-	[`ros:lunar`](#roslunar)
-	[`ros:lunar-perception`](#roslunar-perception)
-	[`ros:lunar-perception-stretch`](#roslunar-perception-stretch)
-	[`ros:lunar-perception-xenial`](#roslunar-perception-xenial)
-	[`ros:lunar-perception-zesty`](#roslunar-perception-zesty)
-	[`ros:lunar-robot`](#roslunar-robot)
-	[`ros:lunar-robot-stretch`](#roslunar-robot-stretch)
-	[`ros:lunar-robot-xenial`](#roslunar-robot-xenial)
-	[`ros:lunar-robot-zesty`](#roslunar-robot-zesty)
-	[`ros:lunar-ros-base`](#roslunar-ros-base)
-	[`ros:lunar-ros-base-stretch`](#roslunar-ros-base-stretch)
-	[`ros:lunar-ros-base-xenial`](#roslunar-ros-base-xenial)
-	[`ros:lunar-ros-base-zesty`](#roslunar-ros-base-zesty)
-	[`ros:lunar-ros-core`](#roslunar-ros-core)
-	[`ros:lunar-ros-core-stretch`](#roslunar-ros-core-stretch)
-	[`ros:lunar-ros-core-xenial`](#roslunar-ros-core-xenial)
-	[`ros:lunar-ros-core-zesty`](#roslunar-ros-core-zesty)

## `ros:indigo`

```console
$ docker pull ros@sha256:01a8bab307449c8a73ee784fa206a45ed74e5a83e969e9613de0cad729cd17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:66ad3b7523f743ae9e346538b36362cba223837c977195719bbbb5dfa5074de9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318642122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b7bb3f0cd93d6cffcb34bcdabd7c3689974b58de1b82e93607d3980deba6da`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 03:46:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9773a1e5dab493002b3f673fbfab8a697eb3f8645c2eb8ea330492f9706079e`  
		Last Modified: Tue, 16 Jan 2018 05:58:57 GMT  
		Size: 46.7 MB (46742820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:080df71ed78d6e62b4d3644868b6938707cf68a1618f78b31239f4a8eeb955f5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252049667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a178d31f9ba94022fbd5468e014314fb49a971b9c44b0ee83b7dc1df8d030e45`
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
# Fri, 15 Dec 2017 14:16:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1e6687814498f9fde8bb5de2deb9c406b9b519cfc8f5f9e39e500148f85ef837`  
		Last Modified: Fri, 15 Dec 2017 14:49:16 GMT  
		Size: 3.6 MB (3604473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:6c51f59e68e1cfe95c47f0e5a0a75681045835ed28e41b1920975d624d2e1808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:3672242db3a0138a7e84854321156428a99bee6717ccc0a48b08d5410f8b9ad7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.0 MB (554976490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb8256a6c06b355f0e0333e239a147cdc54d8b09471f2b9a8800377e7b80785`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 03:46:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:51:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9773a1e5dab493002b3f673fbfab8a697eb3f8645c2eb8ea330492f9706079e`  
		Last Modified: Tue, 16 Jan 2018 05:58:57 GMT  
		Size: 46.7 MB (46742820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6e02f63216e33a12e09d54c7083d40a0190a631490d540c64ce6d49ba1f719`  
		Last Modified: Tue, 16 Jan 2018 06:01:40 GMT  
		Size: 236.3 MB (236334368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:56cefb94710e3675d43f05b7ab78bd99ab45959e8667bd8380c41cec3c3248d5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.5 MB (487490261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531fb72e7a55adf153864646e1cf65b4ea99d229f1158e5d036e3cb5bccb6b74`
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
# Fri, 15 Dec 2017 14:16:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:20:29 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1e6687814498f9fde8bb5de2deb9c406b9b519cfc8f5f9e39e500148f85ef837`  
		Last Modified: Fri, 15 Dec 2017 14:49:16 GMT  
		Size: 3.6 MB (3604473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb46bfe28fc58c54979a38b4dbefa52ce8876101a10127b0dab0afbc14c926a`  
		Last Modified: Fri, 15 Dec 2017 14:51:03 GMT  
		Size: 235.4 MB (235440594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:6c51f59e68e1cfe95c47f0e5a0a75681045835ed28e41b1920975d624d2e1808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:3672242db3a0138a7e84854321156428a99bee6717ccc0a48b08d5410f8b9ad7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.0 MB (554976490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb8256a6c06b355f0e0333e239a147cdc54d8b09471f2b9a8800377e7b80785`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 03:46:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:51:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9773a1e5dab493002b3f673fbfab8a697eb3f8645c2eb8ea330492f9706079e`  
		Last Modified: Tue, 16 Jan 2018 05:58:57 GMT  
		Size: 46.7 MB (46742820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6e02f63216e33a12e09d54c7083d40a0190a631490d540c64ce6d49ba1f719`  
		Last Modified: Tue, 16 Jan 2018 06:01:40 GMT  
		Size: 236.3 MB (236334368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:56cefb94710e3675d43f05b7ab78bd99ab45959e8667bd8380c41cec3c3248d5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.5 MB (487490261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531fb72e7a55adf153864646e1cf65b4ea99d229f1158e5d036e3cb5bccb6b74`
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
# Fri, 15 Dec 2017 14:16:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:20:29 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1e6687814498f9fde8bb5de2deb9c406b9b519cfc8f5f9e39e500148f85ef837`  
		Last Modified: Fri, 15 Dec 2017 14:49:16 GMT  
		Size: 3.6 MB (3604473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb46bfe28fc58c54979a38b4dbefa52ce8876101a10127b0dab0afbc14c926a`  
		Last Modified: Fri, 15 Dec 2017 14:51:03 GMT  
		Size: 235.4 MB (235440594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:2e17c204dcb79734ff0c41e4a8e034e5709615ba56b5cde69d6ac001a19b3240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:97c661b887d535c7ff58006920e2c5d3cf014bab5d8dcf0af44710b071b8c0b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337660906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8967f8f06026da8447e5312fd3a4ac385521862195a21028a5344c21da10cb5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 03:46:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:47:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9773a1e5dab493002b3f673fbfab8a697eb3f8645c2eb8ea330492f9706079e`  
		Last Modified: Tue, 16 Jan 2018 05:58:57 GMT  
		Size: 46.7 MB (46742820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800ba4bffcf5a7604fc4c0aa33230059f54267461b56c49a9472ee6e4e7a5008`  
		Last Modified: Tue, 16 Jan 2018 05:59:55 GMT  
		Size: 19.0 MB (19018784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:cccd400c6eacf6899307d10b6af9d25678dc3fcc3be13f0fd9d20064ca5835b0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.0 MB (305971471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1d170cc76eae5c3c15dbc042ee84f0cf694a05f85973c7d2213e808c2bff90`
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
# Fri, 15 Dec 2017 14:16:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:17:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1e6687814498f9fde8bb5de2deb9c406b9b519cfc8f5f9e39e500148f85ef837`  
		Last Modified: Fri, 15 Dec 2017 14:49:16 GMT  
		Size: 3.6 MB (3604473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908dc37fbdec85f8a11a3ddb429a3664d65b96429008ec0e53edb79a70796fa8`  
		Last Modified: Fri, 15 Dec 2017 14:49:43 GMT  
		Size: 53.9 MB (53921804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:2e17c204dcb79734ff0c41e4a8e034e5709615ba56b5cde69d6ac001a19b3240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:97c661b887d535c7ff58006920e2c5d3cf014bab5d8dcf0af44710b071b8c0b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337660906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8967f8f06026da8447e5312fd3a4ac385521862195a21028a5344c21da10cb5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 03:46:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:47:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9773a1e5dab493002b3f673fbfab8a697eb3f8645c2eb8ea330492f9706079e`  
		Last Modified: Tue, 16 Jan 2018 05:58:57 GMT  
		Size: 46.7 MB (46742820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800ba4bffcf5a7604fc4c0aa33230059f54267461b56c49a9472ee6e4e7a5008`  
		Last Modified: Tue, 16 Jan 2018 05:59:55 GMT  
		Size: 19.0 MB (19018784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:cccd400c6eacf6899307d10b6af9d25678dc3fcc3be13f0fd9d20064ca5835b0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.0 MB (305971471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1d170cc76eae5c3c15dbc042ee84f0cf694a05f85973c7d2213e808c2bff90`
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
# Fri, 15 Dec 2017 14:16:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:17:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1e6687814498f9fde8bb5de2deb9c406b9b519cfc8f5f9e39e500148f85ef837`  
		Last Modified: Fri, 15 Dec 2017 14:49:16 GMT  
		Size: 3.6 MB (3604473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908dc37fbdec85f8a11a3ddb429a3664d65b96429008ec0e53edb79a70796fa8`  
		Last Modified: Fri, 15 Dec 2017 14:49:43 GMT  
		Size: 53.9 MB (53921804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:01a8bab307449c8a73ee784fa206a45ed74e5a83e969e9613de0cad729cd17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:66ad3b7523f743ae9e346538b36362cba223837c977195719bbbb5dfa5074de9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318642122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b7bb3f0cd93d6cffcb34bcdabd7c3689974b58de1b82e93607d3980deba6da`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 03:46:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9773a1e5dab493002b3f673fbfab8a697eb3f8645c2eb8ea330492f9706079e`  
		Last Modified: Tue, 16 Jan 2018 05:58:57 GMT  
		Size: 46.7 MB (46742820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:080df71ed78d6e62b4d3644868b6938707cf68a1618f78b31239f4a8eeb955f5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252049667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a178d31f9ba94022fbd5468e014314fb49a971b9c44b0ee83b7dc1df8d030e45`
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
# Fri, 15 Dec 2017 14:16:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1e6687814498f9fde8bb5de2deb9c406b9b519cfc8f5f9e39e500148f85ef837`  
		Last Modified: Fri, 15 Dec 2017 14:49:16 GMT  
		Size: 3.6 MB (3604473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:01a8bab307449c8a73ee784fa206a45ed74e5a83e969e9613de0cad729cd17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:66ad3b7523f743ae9e346538b36362cba223837c977195719bbbb5dfa5074de9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318642122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b7bb3f0cd93d6cffcb34bcdabd7c3689974b58de1b82e93607d3980deba6da`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 03:46:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9773a1e5dab493002b3f673fbfab8a697eb3f8645c2eb8ea330492f9706079e`  
		Last Modified: Tue, 16 Jan 2018 05:58:57 GMT  
		Size: 46.7 MB (46742820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:080df71ed78d6e62b4d3644868b6938707cf68a1618f78b31239f4a8eeb955f5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252049667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a178d31f9ba94022fbd5468e014314fb49a971b9c44b0ee83b7dc1df8d030e45`
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
# Fri, 15 Dec 2017 14:16:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1e6687814498f9fde8bb5de2deb9c406b9b519cfc8f5f9e39e500148f85ef837`  
		Last Modified: Fri, 15 Dec 2017 14:49:16 GMT  
		Size: 3.6 MB (3604473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:c9afe31b0499c6b50986764c2f4356625e41ca4df0e2ff01164ae07229988e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:f0fbb3822977ad24fbadde207d6279be726aa5ac29833c345034d198ecedfff1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271899302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d154473a6933465697029b52268eb20cf37c5487b90a0baa88c23e54301f41e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
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

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:c9afe31b0499c6b50986764c2f4356625e41ca4df0e2ff01164ae07229988e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:f0fbb3822977ad24fbadde207d6279be726aa5ac29833c345034d198ecedfff1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271899302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d154473a6933465697029b52268eb20cf37c5487b90a0baa88c23e54301f41e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

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

## `ros:jade`

```console
$ docker pull ros@sha256:2baad953fb60651d515b052091cfa2ee9861440eb0170f794f07d224d52da18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade` - linux; amd64

```console
$ docker pull ros@sha256:6ac9138ce1bf9c2449c024f91163b2acbee140eb19566643133835eb30f2d885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276031713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a95d9bcc26602fa0c2b11d23f27dd0d7e12723adcf73504109c1b9d6e24e20d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:03:02 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 04:04:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:15:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:15:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:15:36 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:16:25 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48089f2874c54aebb20cf5e609d9f33b4af8b18bde0ff7c161f6c3a4f264c12`  
		Last Modified: Tue, 16 Jan 2018 06:03:10 GMT  
		Size: 150.0 MB (150045668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9aead38469a18ae94431c57714532779b493d29026f9db732ce96c88fb8d6`  
		Last Modified: Tue, 16 Jan 2018 06:02:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e905fd9a154d7de40f31ccce993b205ae8b77e888c867438a312d03db8b542c7`  
		Last Modified: Tue, 16 Jan 2018 06:15:55 GMT  
		Size: 4.0 MB (3996380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade` - linux; arm variant v7

```console
$ docker pull ros@sha256:928afa2a5f6768a608aaeecb97d362e665339f4bc5c7b5377eb8052ae760fc40
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252190206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85de49de1a35eeeff096a565178cf46a23b729d35b9504ce19480d0635f112d`
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
# Fri, 15 Dec 2017 14:20:36 GMT
ENV ROS_DISTRO=jade
# Fri, 15 Dec 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:22:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:22:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:22:15 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:23:02 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a8a80e2860e6ad3269c51352db48d8de1a2555bc0c44ebcef479052fef020259`  
		Last Modified: Fri, 15 Dec 2017 14:51:58 GMT  
		Size: 137.7 MB (137678670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6126e39ba65a0287e4f0b845cc491f72fcb10cc2c7d9751b564af350e71affd`  
		Last Modified: Fri, 15 Dec 2017 14:51:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f1027bed85281a7b3d516c45147b78eec83e6a29577dfa7594012217adff03`  
		Last Modified: Fri, 15 Dec 2017 14:52:09 GMT  
		Size: 3.6 MB (3626605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:7b09ac42e96655ea33b3370ad5ea1df473362d7f619e411922066858b0694821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-perception` - linux; amd64

```console
$ docker pull ros@sha256:22751c0c8c0f129a3f18ced87f5ee50598945162cbec17ce24b009791b6cf02b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.5 MB (539465408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee830fa3cc586c1bf0d365b6334223b96097ad953649b9214fda632407bac69`
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
# Thu, 14 Dec 2017 23:33:10 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Dec 2017 23:34:32 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:34:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:34:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:34:33 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:35:06 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:41:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:398b62a3b71d490a553525f797c698cd34b43b2df60127372d0f8159a888d763`  
		Last Modified: Fri, 15 Dec 2017 00:57:03 GMT  
		Size: 150.0 MB (150044553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8234bfc54397f465f165e35ea7268ff7d7fd484994ae9cba25602e67c7b36d6c`  
		Last Modified: Fri, 15 Dec 2017 00:56:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4409749425ec39b123cddde97b1494f97523d7697c4d1636d2e40617d3eb764`  
		Last Modified: Fri, 15 Dec 2017 01:05:11 GMT  
		Size: 4.0 MB (3996613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a2b76e7b034a8b1c54e2ae2370a8b2437ee2d578c400be0fb06bbbf367fafc`  
		Last Modified: Fri, 15 Dec 2017 01:07:56 GMT  
		Size: 263.5 MB (263485996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:9b559fa681c09e9a2bb70750919fa1d50aef48abad028a59cf8c8ac78abdcc83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.4 MB (486445170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e609035caf72a455e6b54ad7825728a50ba9523c4f4208ecf93e5f3af8c9d36`
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
# Fri, 15 Dec 2017 14:20:36 GMT
ENV ROS_DISTRO=jade
# Fri, 15 Dec 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:22:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:22:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:22:15 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:23:02 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:27:46 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a8a80e2860e6ad3269c51352db48d8de1a2555bc0c44ebcef479052fef020259`  
		Last Modified: Fri, 15 Dec 2017 14:51:58 GMT  
		Size: 137.7 MB (137678670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6126e39ba65a0287e4f0b845cc491f72fcb10cc2c7d9751b564af350e71affd`  
		Last Modified: Fri, 15 Dec 2017 14:51:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f1027bed85281a7b3d516c45147b78eec83e6a29577dfa7594012217adff03`  
		Last Modified: Fri, 15 Dec 2017 14:52:09 GMT  
		Size: 3.6 MB (3626605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40f1e0f071bad8f3a44e542cb91d6c3cb377ed90c9fade4c46029a50068ceb6`  
		Last Modified: Fri, 15 Dec 2017 14:53:51 GMT  
		Size: 234.3 MB (234254964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception-trusty`

```console
$ docker pull ros@sha256:7b09ac42e96655ea33b3370ad5ea1df473362d7f619e411922066858b0694821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:22751c0c8c0f129a3f18ced87f5ee50598945162cbec17ce24b009791b6cf02b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.5 MB (539465408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee830fa3cc586c1bf0d365b6334223b96097ad953649b9214fda632407bac69`
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
# Thu, 14 Dec 2017 23:33:10 GMT
ENV ROS_DISTRO=jade
# Thu, 14 Dec 2017 23:34:32 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:34:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:34:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:34:33 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:35:06 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:41:37 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:398b62a3b71d490a553525f797c698cd34b43b2df60127372d0f8159a888d763`  
		Last Modified: Fri, 15 Dec 2017 00:57:03 GMT  
		Size: 150.0 MB (150044553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8234bfc54397f465f165e35ea7268ff7d7fd484994ae9cba25602e67c7b36d6c`  
		Last Modified: Fri, 15 Dec 2017 00:56:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4409749425ec39b123cddde97b1494f97523d7697c4d1636d2e40617d3eb764`  
		Last Modified: Fri, 15 Dec 2017 01:05:11 GMT  
		Size: 4.0 MB (3996613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a2b76e7b034a8b1c54e2ae2370a8b2437ee2d578c400be0fb06bbbf367fafc`  
		Last Modified: Fri, 15 Dec 2017 01:07:56 GMT  
		Size: 263.5 MB (263485996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:9b559fa681c09e9a2bb70750919fa1d50aef48abad028a59cf8c8ac78abdcc83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.4 MB (486445170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e609035caf72a455e6b54ad7825728a50ba9523c4f4208ecf93e5f3af8c9d36`
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
# Fri, 15 Dec 2017 14:20:36 GMT
ENV ROS_DISTRO=jade
# Fri, 15 Dec 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:22:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:22:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:22:15 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:23:02 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:27:46 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a8a80e2860e6ad3269c51352db48d8de1a2555bc0c44ebcef479052fef020259`  
		Last Modified: Fri, 15 Dec 2017 14:51:58 GMT  
		Size: 137.7 MB (137678670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6126e39ba65a0287e4f0b845cc491f72fcb10cc2c7d9751b564af350e71affd`  
		Last Modified: Fri, 15 Dec 2017 14:51:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f1027bed85281a7b3d516c45147b78eec83e6a29577dfa7594012217adff03`  
		Last Modified: Fri, 15 Dec 2017 14:52:09 GMT  
		Size: 3.6 MB (3626605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40f1e0f071bad8f3a44e542cb91d6c3cb377ed90c9fade4c46029a50068ceb6`  
		Last Modified: Fri, 15 Dec 2017 14:53:51 GMT  
		Size: 234.3 MB (234254964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:c4819f1e6363649698fcec70cc822b5711c72e281e5f2d915bf98068f9c9d289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-robot` - linux; amd64

```console
$ docker pull ros@sha256:35e41217053618355f409feb2c4f2f24e20339cbe064aec25882b1134a23857b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337343727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb752ac29b122d149e261207c28c1a6321652b6805d0f03316e59baf3382aa66`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:03:02 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 04:04:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:15:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:15:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:15:36 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:16:25 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:17:22 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48089f2874c54aebb20cf5e609d9f33b4af8b18bde0ff7c161f6c3a4f264c12`  
		Last Modified: Tue, 16 Jan 2018 06:03:10 GMT  
		Size: 150.0 MB (150045668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9aead38469a18ae94431c57714532779b493d29026f9db732ce96c88fb8d6`  
		Last Modified: Tue, 16 Jan 2018 06:02:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e905fd9a154d7de40f31ccce993b205ae8b77e888c867438a312d03db8b542c7`  
		Last Modified: Tue, 16 Jan 2018 06:15:55 GMT  
		Size: 4.0 MB (3996380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe05d65a36eccd409e5d61f2211bcc476f9d3437c005974c7c24fa8b4e5f483`  
		Last Modified: Tue, 16 Jan 2018 06:17:14 GMT  
		Size: 61.3 MB (61312014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:6a1eb2708ded0b7c6b3c3904cdcadd5d6f5eaade1f1bc7d7a02e3fd09cfe0f03
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306133585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191191713e1dd2f21c51c8873a24dcf08b722ef636b719d946bc279ac90ada13`
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
# Fri, 15 Dec 2017 14:20:36 GMT
ENV ROS_DISTRO=jade
# Fri, 15 Dec 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:22:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:22:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:22:15 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:23:02 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:24:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a8a80e2860e6ad3269c51352db48d8de1a2555bc0c44ebcef479052fef020259`  
		Last Modified: Fri, 15 Dec 2017 14:51:58 GMT  
		Size: 137.7 MB (137678670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6126e39ba65a0287e4f0b845cc491f72fcb10cc2c7d9751b564af350e71affd`  
		Last Modified: Fri, 15 Dec 2017 14:51:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f1027bed85281a7b3d516c45147b78eec83e6a29577dfa7594012217adff03`  
		Last Modified: Fri, 15 Dec 2017 14:52:09 GMT  
		Size: 3.6 MB (3626605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e1f9996495c5df18be5f95bc392a589aa31c0c56143faff0a36662278aea58`  
		Last Modified: Fri, 15 Dec 2017 14:52:36 GMT  
		Size: 53.9 MB (53943379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot-trusty`

```console
$ docker pull ros@sha256:c4819f1e6363649698fcec70cc822b5711c72e281e5f2d915bf98068f9c9d289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:35e41217053618355f409feb2c4f2f24e20339cbe064aec25882b1134a23857b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337343727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb752ac29b122d149e261207c28c1a6321652b6805d0f03316e59baf3382aa66`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:03:02 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 04:04:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:15:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:15:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:15:36 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:16:25 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:17:22 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48089f2874c54aebb20cf5e609d9f33b4af8b18bde0ff7c161f6c3a4f264c12`  
		Last Modified: Tue, 16 Jan 2018 06:03:10 GMT  
		Size: 150.0 MB (150045668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9aead38469a18ae94431c57714532779b493d29026f9db732ce96c88fb8d6`  
		Last Modified: Tue, 16 Jan 2018 06:02:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e905fd9a154d7de40f31ccce993b205ae8b77e888c867438a312d03db8b542c7`  
		Last Modified: Tue, 16 Jan 2018 06:15:55 GMT  
		Size: 4.0 MB (3996380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe05d65a36eccd409e5d61f2211bcc476f9d3437c005974c7c24fa8b4e5f483`  
		Last Modified: Tue, 16 Jan 2018 06:17:14 GMT  
		Size: 61.3 MB (61312014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:6a1eb2708ded0b7c6b3c3904cdcadd5d6f5eaade1f1bc7d7a02e3fd09cfe0f03
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306133585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191191713e1dd2f21c51c8873a24dcf08b722ef636b719d946bc279ac90ada13`
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
# Fri, 15 Dec 2017 14:20:36 GMT
ENV ROS_DISTRO=jade
# Fri, 15 Dec 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:22:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:22:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:22:15 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:23:02 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:24:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a8a80e2860e6ad3269c51352db48d8de1a2555bc0c44ebcef479052fef020259`  
		Last Modified: Fri, 15 Dec 2017 14:51:58 GMT  
		Size: 137.7 MB (137678670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6126e39ba65a0287e4f0b845cc491f72fcb10cc2c7d9751b564af350e71affd`  
		Last Modified: Fri, 15 Dec 2017 14:51:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f1027bed85281a7b3d516c45147b78eec83e6a29577dfa7594012217adff03`  
		Last Modified: Fri, 15 Dec 2017 14:52:09 GMT  
		Size: 3.6 MB (3626605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e1f9996495c5df18be5f95bc392a589aa31c0c56143faff0a36662278aea58`  
		Last Modified: Fri, 15 Dec 2017 14:52:36 GMT  
		Size: 53.9 MB (53943379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:2baad953fb60651d515b052091cfa2ee9861440eb0170f794f07d224d52da18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:6ac9138ce1bf9c2449c024f91163b2acbee140eb19566643133835eb30f2d885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276031713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a95d9bcc26602fa0c2b11d23f27dd0d7e12723adcf73504109c1b9d6e24e20d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:03:02 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 04:04:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:15:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:15:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:15:36 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:16:25 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48089f2874c54aebb20cf5e609d9f33b4af8b18bde0ff7c161f6c3a4f264c12`  
		Last Modified: Tue, 16 Jan 2018 06:03:10 GMT  
		Size: 150.0 MB (150045668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9aead38469a18ae94431c57714532779b493d29026f9db732ce96c88fb8d6`  
		Last Modified: Tue, 16 Jan 2018 06:02:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e905fd9a154d7de40f31ccce993b205ae8b77e888c867438a312d03db8b542c7`  
		Last Modified: Tue, 16 Jan 2018 06:15:55 GMT  
		Size: 4.0 MB (3996380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:928afa2a5f6768a608aaeecb97d362e665339f4bc5c7b5377eb8052ae760fc40
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252190206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85de49de1a35eeeff096a565178cf46a23b729d35b9504ce19480d0635f112d`
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
# Fri, 15 Dec 2017 14:20:36 GMT
ENV ROS_DISTRO=jade
# Fri, 15 Dec 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:22:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:22:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:22:15 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:23:02 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a8a80e2860e6ad3269c51352db48d8de1a2555bc0c44ebcef479052fef020259`  
		Last Modified: Fri, 15 Dec 2017 14:51:58 GMT  
		Size: 137.7 MB (137678670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6126e39ba65a0287e4f0b845cc491f72fcb10cc2c7d9751b564af350e71affd`  
		Last Modified: Fri, 15 Dec 2017 14:51:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f1027bed85281a7b3d516c45147b78eec83e6a29577dfa7594012217adff03`  
		Last Modified: Fri, 15 Dec 2017 14:52:09 GMT  
		Size: 3.6 MB (3626605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base-trusty`

```console
$ docker pull ros@sha256:2baad953fb60651d515b052091cfa2ee9861440eb0170f794f07d224d52da18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:6ac9138ce1bf9c2449c024f91163b2acbee140eb19566643133835eb30f2d885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276031713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a95d9bcc26602fa0c2b11d23f27dd0d7e12723adcf73504109c1b9d6e24e20d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:03:02 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 04:04:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:15:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:15:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:15:36 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:16:25 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48089f2874c54aebb20cf5e609d9f33b4af8b18bde0ff7c161f6c3a4f264c12`  
		Last Modified: Tue, 16 Jan 2018 06:03:10 GMT  
		Size: 150.0 MB (150045668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9aead38469a18ae94431c57714532779b493d29026f9db732ce96c88fb8d6`  
		Last Modified: Tue, 16 Jan 2018 06:02:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e905fd9a154d7de40f31ccce993b205ae8b77e888c867438a312d03db8b542c7`  
		Last Modified: Tue, 16 Jan 2018 06:15:55 GMT  
		Size: 4.0 MB (3996380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:928afa2a5f6768a608aaeecb97d362e665339f4bc5c7b5377eb8052ae760fc40
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252190206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85de49de1a35eeeff096a565178cf46a23b729d35b9504ce19480d0635f112d`
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
# Fri, 15 Dec 2017 14:20:36 GMT
ENV ROS_DISTRO=jade
# Fri, 15 Dec 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:22:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:22:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:22:15 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:23:02 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a8a80e2860e6ad3269c51352db48d8de1a2555bc0c44ebcef479052fef020259`  
		Last Modified: Fri, 15 Dec 2017 14:51:58 GMT  
		Size: 137.7 MB (137678670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6126e39ba65a0287e4f0b845cc491f72fcb10cc2c7d9751b564af350e71affd`  
		Last Modified: Fri, 15 Dec 2017 14:51:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f1027bed85281a7b3d516c45147b78eec83e6a29577dfa7594012217adff03`  
		Last Modified: Fri, 15 Dec 2017 14:52:09 GMT  
		Size: 3.6 MB (3626605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:e87503206c2faacba02b0f7c1dfa58942f66f3666a0a459dc8f09bf0e53cbd50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:d6ee14a212a39d62272b5b4291f28113c5b57a483b4306b15850288eb5791ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272035333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8008894cc0a754ef86ed2d4476bbc71af86d2204be00f1420206b8e4ea950453`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:03:02 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 04:04:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:15:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:15:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:15:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48089f2874c54aebb20cf5e609d9f33b4af8b18bde0ff7c161f6c3a4f264c12`  
		Last Modified: Tue, 16 Jan 2018 06:03:10 GMT  
		Size: 150.0 MB (150045668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9aead38469a18ae94431c57714532779b493d29026f9db732ce96c88fb8d6`  
		Last Modified: Tue, 16 Jan 2018 06:02:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:5d2153f602541ec4b1479960198b577384b1e02c303b730e0cb9b9db037ba05a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248563601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d8ee7580dcd2589727582824e740ef29ee3fefb7314e195973404ea6f73f3`
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
# Fri, 15 Dec 2017 14:20:36 GMT
ENV ROS_DISTRO=jade
# Fri, 15 Dec 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:22:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:22:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:22:15 GMT
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
	-	`sha256:a8a80e2860e6ad3269c51352db48d8de1a2555bc0c44ebcef479052fef020259`  
		Last Modified: Fri, 15 Dec 2017 14:51:58 GMT  
		Size: 137.7 MB (137678670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6126e39ba65a0287e4f0b845cc491f72fcb10cc2c7d9751b564af350e71affd`  
		Last Modified: Fri, 15 Dec 2017 14:51:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core-trusty`

```console
$ docker pull ros@sha256:e87503206c2faacba02b0f7c1dfa58942f66f3666a0a459dc8f09bf0e53cbd50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:d6ee14a212a39d62272b5b4291f28113c5b57a483b4306b15850288eb5791ced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272035333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8008894cc0a754ef86ed2d4476bbc71af86d2204be00f1420206b8e4ea950453`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:03:02 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 04:04:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:15:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:15:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:15:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48089f2874c54aebb20cf5e609d9f33b4af8b18bde0ff7c161f6c3a4f264c12`  
		Last Modified: Tue, 16 Jan 2018 06:03:10 GMT  
		Size: 150.0 MB (150045668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9aead38469a18ae94431c57714532779b493d29026f9db732ce96c88fb8d6`  
		Last Modified: Tue, 16 Jan 2018 06:02:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:5d2153f602541ec4b1479960198b577384b1e02c303b730e0cb9b9db037ba05a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248563601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d8ee7580dcd2589727582824e740ef29ee3fefb7314e195973404ea6f73f3`
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
# Fri, 15 Dec 2017 14:20:36 GMT
ENV ROS_DISTRO=jade
# Fri, 15 Dec 2017 14:22:13 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:22:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:22:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:22:15 GMT
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
	-	`sha256:a8a80e2860e6ad3269c51352db48d8de1a2555bc0c44ebcef479052fef020259`  
		Last Modified: Fri, 15 Dec 2017 14:51:58 GMT  
		Size: 137.7 MB (137678670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6126e39ba65a0287e4f0b845cc491f72fcb10cc2c7d9751b564af350e71affd`  
		Last Modified: Fri, 15 Dec 2017 14:51:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:ed90e49f39369f4d974041f2f40a44215472e66dd2e45f234abd743acf5a5b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:ccba4049c838b798a9137d0951a086e3c79b8014db776a9e734d196932f0a9a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.1 MB (379069721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e627e09093929f6be32b2418556c7c1aa92e5082456e43bb120dba2ac83bb665`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:59:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864a9e2117296f844b02d0dc05dc9c2d9ee7c1d47d13bd214bbac325a385bbe3`  
		Last Modified: Fri, 15 Dec 2017 01:17:37 GMT  
		Size: 81.3 MB (81331610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:1925bd0a6a26df9e31442b8e757e808933ef25c82c586549ea87b95f6ffc753e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331748403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4dcd8ab4dd897657c22535fe5edd652f278157e904339a27302b61df74a97a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:42f592b2e35aebbd20b32dee9d0cc60ae688d55f764e159bc0decf36c546cc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.6 MB (345583089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48850522f160d678f29ae3459a319c4eb02233e1e74f2893bd394381f94ee18a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:96f5408f2e7490d71f1510824fa28ad5c9954b1c1bd1b24c97f97f2017353582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:576f5b06649c908183e0fcd511c23d5b9bb5023f3a0446a5b1d4ee33200b93dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.2 MB (750230738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01be0fc04ad04727b23826cf6ba2517a1ce3f45efa4800553950da7cd2ab08db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:59:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:13:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864a9e2117296f844b02d0dc05dc9c2d9ee7c1d47d13bd214bbac325a385bbe3`  
		Last Modified: Fri, 15 Dec 2017 01:17:37 GMT  
		Size: 81.3 MB (81331610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8facae1a58986f4c2dd1435d98d43c1de030099a65823fc2a77f2845d62814`  
		Last Modified: Fri, 15 Dec 2017 01:20:25 GMT  
		Size: 371.2 MB (371161017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:30cb0d45f67baa3bba380119ea4e207ae42ea29d0c04cb839a84badefb8a7fe1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.7 MB (637693085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0999641c9fa117f5e151fa1d8d85b406b0a9b5acbfff0ec8fe6855c553db77d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:36:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0b7e0766363b0d9f8e99f822a6aabcc0feebf2061f93a46f12d55659a4410a`  
		Last Modified: Fri, 15 Dec 2017 14:57:42 GMT  
		Size: 305.9 MB (305944682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1364b9b48fdbe0909f638df96a9f3f13c980cb82f5494ede79e713c7d78d77fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.7 MB (665654499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ad47e770a7f3b223477fa44a48501c450306a77e5f635be5bbe4f0f6aa8ab9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:25:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a90584dc704fd48dded2ece06780bd083c2df288117cfdd1ee404f714b826c`  
		Last Modified: Fri, 15 Dec 2017 20:29:21 GMT  
		Size: 320.1 MB (320071410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-jessie`

```console
$ docker pull ros@sha256:e44b8927f5940ad93ca5a18476a64765ce4e7a7cc31bd4bb836d8283205f35ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-perception-jessie` - linux; amd64

```console
$ docker pull ros@sha256:7bddd1c5cd99fe4763fb82789305cfbfadde4eeb46177d31aca5f75897ed4773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.8 MB (650755292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bc4133a3dd814edb740acabd78287039f55be2981fc998f66e771feb227635`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 02:51:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 02:51:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 02:52:06 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 02:52:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Dec 2017 02:53:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:53:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 02:53:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 02:53:36 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:00:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:08:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdcacb3eb2a6e14de6ff02deedf419772045e7dfca28ac49c09d65b153f39d`  
		Last Modified: Tue, 12 Dec 2017 03:31:00 GMT  
		Size: 33.8 MB (33770772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c2692ca7c2d913f8b2f578acf79acb2391a52afe02beec43c67f416dd48eeb`  
		Last Modified: Tue, 12 Dec 2017 03:30:42 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e84e13aa65d6a131bc52b118ce12e08b9355933cd5fbb6c6076385b207346b`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2789d6c07bffcfec4807025ffc451a01cae5f2518e102b07ef2d1cc3cab91bd`  
		Last Modified: Tue, 12 Dec 2017 03:31:07 GMT  
		Size: 46.4 MB (46366197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417c2abd7b6a2938769d8787425c26a428cdc4e3bb7e6d2bdd2565d32b37414`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 776.9 KB (776928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a794e02032dbbd05c006e82528474cd42e14b880c8d3fbc7694a2db7d4aa748`  
		Last Modified: Tue, 12 Dec 2017 03:31:36 GMT  
		Size: 157.3 MB (157270555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f9d9d07229ff53bcc32dd6d6a4058f0682f30d2a61d99e1fb48a20ba7d5cd`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139254201b5e0fe18542150786ef9cb1b4b3ef115063991bd12d091c72b8a84`  
		Last Modified: Tue, 12 Dec 2017 03:35:17 GMT  
		Size: 84.2 MB (84211781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d7bafcbf03393c848e93f191cccfbcf280864d35bd8f0d2d11cda80407f575`  
		Last Modified: Tue, 12 Dec 2017 03:37:00 GMT  
		Size: 275.8 MB (275757518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b7d50c13ec8057296af3ca55d66893cfab61b9d5771204a85565516af2372a45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **563.4 MB (563375625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ae309ee6cb96f881a293ebc1bda4310e1630fefb82c2ae6a6e880ecc1e2491`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:28:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 18:28:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 18:31:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 18:32:31 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:32:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 18:39:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:39:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 18:39:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 18:39:17 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:43:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:59:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3dd0875f4aee4fe8ad6a3dd9048277ecc67b31684f68dcf88250ad001f606`  
		Last Modified: Fri, 15 Dec 2017 20:29:49 GMT  
		Size: 32.1 MB (32145451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9abe37fea91e192d4c0838f7cf8485c61f282ebf6db303b4fb4ceea68f31c6`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee50035ad289c033a148db661fdf88e9ae0a40b0dab98c3e5147c0f1b72d3`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4977f1bb59857da64dc510ff11dd266329ba2fae77ed25e141d7fa953794d6`  
		Last Modified: Fri, 15 Dec 2017 20:29:56 GMT  
		Size: 44.1 MB (44074869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2d1275276e05799eda03f5a53d0da1380f36d1ab6b853211fb2765cf380d62`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 777.3 KB (777314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1091850eeb32791c2d201900c3e8e0c798ef3afb47838405060f744bd4cb6292`  
		Last Modified: Fri, 15 Dec 2017 20:30:41 GMT  
		Size: 130.6 MB (130555820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed0c4b3181d461489cd6ad3e7d239daec67d95051c54a0cc7d28aef5e55c61`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf06225b1ae881c933dae637e9ee474feb708830a66b66b4aebc92f4fb7aa78`  
		Last Modified: Fri, 15 Dec 2017 20:31:17 GMT  
		Size: 69.0 MB (69044508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f107674d22076a42cd0beed16d277cb7a48b01bbdf47a46563410773dcba97c`  
		Last Modified: Fri, 15 Dec 2017 20:33:45 GMT  
		Size: 236.8 MB (236849147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:96f5408f2e7490d71f1510824fa28ad5c9954b1c1bd1b24c97f97f2017353582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:576f5b06649c908183e0fcd511c23d5b9bb5023f3a0446a5b1d4ee33200b93dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.2 MB (750230738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01be0fc04ad04727b23826cf6ba2517a1ce3f45efa4800553950da7cd2ab08db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:59:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:13:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864a9e2117296f844b02d0dc05dc9c2d9ee7c1d47d13bd214bbac325a385bbe3`  
		Last Modified: Fri, 15 Dec 2017 01:17:37 GMT  
		Size: 81.3 MB (81331610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8facae1a58986f4c2dd1435d98d43c1de030099a65823fc2a77f2845d62814`  
		Last Modified: Fri, 15 Dec 2017 01:20:25 GMT  
		Size: 371.2 MB (371161017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:30cb0d45f67baa3bba380119ea4e207ae42ea29d0c04cb839a84badefb8a7fe1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.7 MB (637693085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0999641c9fa117f5e151fa1d8d85b406b0a9b5acbfff0ec8fe6855c553db77d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:36:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0b7e0766363b0d9f8e99f822a6aabcc0feebf2061f93a46f12d55659a4410a`  
		Last Modified: Fri, 15 Dec 2017 14:57:42 GMT  
		Size: 305.9 MB (305944682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1364b9b48fdbe0909f638df96a9f3f13c980cb82f5494ede79e713c7d78d77fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.7 MB (665654499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ad47e770a7f3b223477fa44a48501c450306a77e5f635be5bbe4f0f6aa8ab9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:25:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a90584dc704fd48dded2ece06780bd083c2df288117cfdd1ee404f714b826c`  
		Last Modified: Fri, 15 Dec 2017 20:29:21 GMT  
		Size: 320.1 MB (320071410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:449c748e5839eb60150d5563805e2c0625fd66d59e5a6069f24d3af44e16a44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:103cbfe8041541fc35f21fa7023ce814a4597bcc3ceea78a05e0a7ba67bebea3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.6 MB (482595423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7c5d1d3aaed3da7b29ac10a45b20a570b6d06083ca44caa2e9f90051ef734c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:59:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:01:24 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864a9e2117296f844b02d0dc05dc9c2d9ee7c1d47d13bd214bbac325a385bbe3`  
		Last Modified: Fri, 15 Dec 2017 01:17:37 GMT  
		Size: 81.3 MB (81331610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb45828f16a2616bc75a2e89b7cf90a201a875bc57c0a9be44f4a1ab483b201`  
		Last Modified: Fri, 15 Dec 2017 01:18:46 GMT  
		Size: 103.5 MB (103525702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:c224ed1d3957da58d3cbccfe18241da8fec43566d599515ca71a9492afbc7cc9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.8 MB (421755752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14eb2723a82012b8f73f5d5350f6c0e91a101d8a04d01d0e18c4c78e4613a0d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:34:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1d1a1a3d322aaa4840b238059da7c7cc7e06123c0b3bd0435a1ec4592a03ea`  
		Last Modified: Fri, 15 Dec 2017 14:56:10 GMT  
		Size: 90.0 MB (90007349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e004c99e528e0e9a3acc444580d2154845b1910f95b27cd2c793dbb432c32bb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.4 MB (439387728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8f028f37648d95f168d619e925e220b4f9ad23b25fc0c1fed626359c913ec8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:00:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4909b33439b19f0cbd6bca3686eb5f7cfbc0585820082bec069a69a5274d5c`  
		Last Modified: Fri, 15 Dec 2017 20:27:05 GMT  
		Size: 93.8 MB (93804639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:bb69c6e0aa39ece2342f4b9f41267cb0251530f32ac65b16ef1c97b2825dd102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:c2f172c637bd51d6a4fdbe1299e3249f0cadf8230238e620bd4dd3b59cf777bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cedd94c4314f29ce588dab8c52924efe7e81671d34677cf299cfdeff6e672a86`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 02:51:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 02:51:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 02:52:06 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 02:52:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Dec 2017 02:53:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:53:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 02:53:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 02:53:36 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:00:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:01:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdcacb3eb2a6e14de6ff02deedf419772045e7dfca28ac49c09d65b153f39d`  
		Last Modified: Tue, 12 Dec 2017 03:31:00 GMT  
		Size: 33.8 MB (33770772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c2692ca7c2d913f8b2f578acf79acb2391a52afe02beec43c67f416dd48eeb`  
		Last Modified: Tue, 12 Dec 2017 03:30:42 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e84e13aa65d6a131bc52b118ce12e08b9355933cd5fbb6c6076385b207346b`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2789d6c07bffcfec4807025ffc451a01cae5f2518e102b07ef2d1cc3cab91bd`  
		Last Modified: Tue, 12 Dec 2017 03:31:07 GMT  
		Size: 46.4 MB (46366197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417c2abd7b6a2938769d8787425c26a428cdc4e3bb7e6d2bdd2565d32b37414`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 776.9 KB (776928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a794e02032dbbd05c006e82528474cd42e14b880c8d3fbc7694a2db7d4aa748`  
		Last Modified: Tue, 12 Dec 2017 03:31:36 GMT  
		Size: 157.3 MB (157270555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f9d9d07229ff53bcc32dd6d6a4058f0682f30d2a61d99e1fb48a20ba7d5cd`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139254201b5e0fe18542150786ef9cb1b4b3ef115063991bd12d091c72b8a84`  
		Last Modified: Tue, 12 Dec 2017 03:35:17 GMT  
		Size: 84.2 MB (84211781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86af87308f0f5990e37f8ef8ac8b27691a8822c8c67b236f0b422c20bff8c5a3`  
		Last Modified: Tue, 12 Dec 2017 03:35:50 GMT  
		Size: 61.5 MB (61519538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3c821583a5e314b8a82ac21891a5c17e96809201149c56299eca37c68f4cfe3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.9 MB (383900048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62ec7c8a9b73106bf3f75a51f16a3960e9f8a85fc7c13307d07c0a6012193b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:28:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 18:28:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 18:31:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 18:32:31 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:32:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 18:39:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:39:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 18:39:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 18:39:17 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:43:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:47:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3dd0875f4aee4fe8ad6a3dd9048277ecc67b31684f68dcf88250ad001f606`  
		Last Modified: Fri, 15 Dec 2017 20:29:49 GMT  
		Size: 32.1 MB (32145451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9abe37fea91e192d4c0838f7cf8485c61f282ebf6db303b4fb4ceea68f31c6`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee50035ad289c033a148db661fdf88e9ae0a40b0dab98c3e5147c0f1b72d3`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4977f1bb59857da64dc510ff11dd266329ba2fae77ed25e141d7fa953794d6`  
		Last Modified: Fri, 15 Dec 2017 20:29:56 GMT  
		Size: 44.1 MB (44074869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2d1275276e05799eda03f5a53d0da1380f36d1ab6b853211fb2765cf380d62`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 777.3 KB (777314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1091850eeb32791c2d201900c3e8e0c798ef3afb47838405060f744bd4cb6292`  
		Last Modified: Fri, 15 Dec 2017 20:30:41 GMT  
		Size: 130.6 MB (130555820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed0c4b3181d461489cd6ad3e7d239daec67d95051c54a0cc7d28aef5e55c61`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf06225b1ae881c933dae637e9ee474feb708830a66b66b4aebc92f4fb7aa78`  
		Last Modified: Fri, 15 Dec 2017 20:31:17 GMT  
		Size: 69.0 MB (69044508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043cdedb3e449c57d35e07831ebb5d002099ef2c94e31f5b1efc85de78238ea`  
		Last Modified: Fri, 15 Dec 2017 20:31:49 GMT  
		Size: 57.4 MB (57373570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:449c748e5839eb60150d5563805e2c0625fd66d59e5a6069f24d3af44e16a44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:103cbfe8041541fc35f21fa7023ce814a4597bcc3ceea78a05e0a7ba67bebea3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.6 MB (482595423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7c5d1d3aaed3da7b29ac10a45b20a570b6d06083ca44caa2e9f90051ef734c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:59:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:01:24 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864a9e2117296f844b02d0dc05dc9c2d9ee7c1d47d13bd214bbac325a385bbe3`  
		Last Modified: Fri, 15 Dec 2017 01:17:37 GMT  
		Size: 81.3 MB (81331610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb45828f16a2616bc75a2e89b7cf90a201a875bc57c0a9be44f4a1ab483b201`  
		Last Modified: Fri, 15 Dec 2017 01:18:46 GMT  
		Size: 103.5 MB (103525702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:c224ed1d3957da58d3cbccfe18241da8fec43566d599515ca71a9492afbc7cc9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.8 MB (421755752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14eb2723a82012b8f73f5d5350f6c0e91a101d8a04d01d0e18c4c78e4613a0d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:34:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1d1a1a3d322aaa4840b238059da7c7cc7e06123c0b3bd0435a1ec4592a03ea`  
		Last Modified: Fri, 15 Dec 2017 14:56:10 GMT  
		Size: 90.0 MB (90007349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e004c99e528e0e9a3acc444580d2154845b1910f95b27cd2c793dbb432c32bb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.4 MB (439387728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8f028f37648d95f168d619e925e220b4f9ad23b25fc0c1fed626359c913ec8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:00:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4909b33439b19f0cbd6bca3686eb5f7cfbc0585820082bec069a69a5274d5c`  
		Last Modified: Fri, 15 Dec 2017 20:27:05 GMT  
		Size: 93.8 MB (93804639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:ed90e49f39369f4d974041f2f40a44215472e66dd2e45f234abd743acf5a5b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:ccba4049c838b798a9137d0951a086e3c79b8014db776a9e734d196932f0a9a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.1 MB (379069721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e627e09093929f6be32b2418556c7c1aa92e5082456e43bb120dba2ac83bb665`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:59:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864a9e2117296f844b02d0dc05dc9c2d9ee7c1d47d13bd214bbac325a385bbe3`  
		Last Modified: Fri, 15 Dec 2017 01:17:37 GMT  
		Size: 81.3 MB (81331610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:1925bd0a6a26df9e31442b8e757e808933ef25c82c586549ea87b95f6ffc753e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331748403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4dcd8ab4dd897657c22535fe5edd652f278157e904339a27302b61df74a97a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:42f592b2e35aebbd20b32dee9d0cc60ae688d55f764e159bc0decf36c546cc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.6 MB (345583089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48850522f160d678f29ae3459a319c4eb02233e1e74f2893bd394381f94ee18a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:609d6c13b7b2dcca42d87b3179f126f21654acece7f45b2590927a44e856a31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:8d2f9e842331463025165b7eed3148489b8c1448182c528d99b675a515c48d08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.0 MB (374997774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ebe00c019da0e886dae77ab256e684a24ef25e805b1cd4902f581630e97cef`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 02:51:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 02:51:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 02:52:06 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 02:52:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Dec 2017 02:53:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:53:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 02:53:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 02:53:36 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:00:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdcacb3eb2a6e14de6ff02deedf419772045e7dfca28ac49c09d65b153f39d`  
		Last Modified: Tue, 12 Dec 2017 03:31:00 GMT  
		Size: 33.8 MB (33770772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c2692ca7c2d913f8b2f578acf79acb2391a52afe02beec43c67f416dd48eeb`  
		Last Modified: Tue, 12 Dec 2017 03:30:42 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e84e13aa65d6a131bc52b118ce12e08b9355933cd5fbb6c6076385b207346b`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2789d6c07bffcfec4807025ffc451a01cae5f2518e102b07ef2d1cc3cab91bd`  
		Last Modified: Tue, 12 Dec 2017 03:31:07 GMT  
		Size: 46.4 MB (46366197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417c2abd7b6a2938769d8787425c26a428cdc4e3bb7e6d2bdd2565d32b37414`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 776.9 KB (776928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a794e02032dbbd05c006e82528474cd42e14b880c8d3fbc7694a2db7d4aa748`  
		Last Modified: Tue, 12 Dec 2017 03:31:36 GMT  
		Size: 157.3 MB (157270555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f9d9d07229ff53bcc32dd6d6a4058f0682f30d2a61d99e1fb48a20ba7d5cd`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139254201b5e0fe18542150786ef9cb1b4b3ef115063991bd12d091c72b8a84`  
		Last Modified: Tue, 12 Dec 2017 03:35:17 GMT  
		Size: 84.2 MB (84211781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:183a596bc6fe8b844828dda592568a0708432e91da825457eddc9a0689c62e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.5 MB (326526478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13df140b125045bb8222e0585fb1e0a544ad68fe3b5c908556abc51794dd0d66`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:28:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 18:28:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 18:31:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 18:32:31 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:32:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 18:39:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:39:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 18:39:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 18:39:17 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:43:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3dd0875f4aee4fe8ad6a3dd9048277ecc67b31684f68dcf88250ad001f606`  
		Last Modified: Fri, 15 Dec 2017 20:29:49 GMT  
		Size: 32.1 MB (32145451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9abe37fea91e192d4c0838f7cf8485c61f282ebf6db303b4fb4ceea68f31c6`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee50035ad289c033a148db661fdf88e9ae0a40b0dab98c3e5147c0f1b72d3`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4977f1bb59857da64dc510ff11dd266329ba2fae77ed25e141d7fa953794d6`  
		Last Modified: Fri, 15 Dec 2017 20:29:56 GMT  
		Size: 44.1 MB (44074869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2d1275276e05799eda03f5a53d0da1380f36d1ab6b853211fb2765cf380d62`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 777.3 KB (777314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1091850eeb32791c2d201900c3e8e0c798ef3afb47838405060f744bd4cb6292`  
		Last Modified: Fri, 15 Dec 2017 20:30:41 GMT  
		Size: 130.6 MB (130555820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed0c4b3181d461489cd6ad3e7d239daec67d95051c54a0cc7d28aef5e55c61`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf06225b1ae881c933dae637e9ee474feb708830a66b66b4aebc92f4fb7aa78`  
		Last Modified: Fri, 15 Dec 2017 20:31:17 GMT  
		Size: 69.0 MB (69044508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:ed90e49f39369f4d974041f2f40a44215472e66dd2e45f234abd743acf5a5b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:ccba4049c838b798a9137d0951a086e3c79b8014db776a9e734d196932f0a9a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.1 MB (379069721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e627e09093929f6be32b2418556c7c1aa92e5082456e43bb120dba2ac83bb665`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:59:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864a9e2117296f844b02d0dc05dc9c2d9ee7c1d47d13bd214bbac325a385bbe3`  
		Last Modified: Fri, 15 Dec 2017 01:17:37 GMT  
		Size: 81.3 MB (81331610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:1925bd0a6a26df9e31442b8e757e808933ef25c82c586549ea87b95f6ffc753e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331748403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4dcd8ab4dd897657c22535fe5edd652f278157e904339a27302b61df74a97a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:42f592b2e35aebbd20b32dee9d0cc60ae688d55f764e159bc0decf36c546cc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.6 MB (345583089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48850522f160d678f29ae3459a319c4eb02233e1e74f2893bd394381f94ee18a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:1601ec04b9354e9598f2057a3fe81b2e81a0d74c81704b65be4f67087af4f531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:fc70930fc536675a1d2b42085e81335417b8aa8d4707f4bc16b2d6d9c665aca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297738111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83de4876098428eeb47cc8dcd086cb9c3c25e28a67fa3aec0bc3ea8a4fe5117a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:b46de4b027aecc4bc8b10848bf1cb3fab0e17a5ab2a8162f136cde9d1b69c9c4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258682816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e296b9a5f3d6869db435c24d6d982235a933f9753567516515d2d1afe7a17e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6e5ac3f1f9bffd5139a48ebfcd18f42a27183be48233dbf33f4ca83806d18e43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270919665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70835d6ee818c7e8be96ef263de1f58bbc55428f4712a023df8e2d05675f5d3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:3cd0fd0f3ed4d85173f79c601db9d9c56900bc6e86abd55405c9ff9941ec84db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:9c7ed2ad39c8e023295234a76f798e41ea6dd81a77d0ea626c6909509fb1d755
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.8 MB (290785993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e646882f480109c697b88ec75bc39c233c3db202f6cc155299e5698ae7512f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 02:51:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 02:51:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 02:52:06 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 02:52:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Dec 2017 02:53:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:53:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 02:53:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 02:53:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdcacb3eb2a6e14de6ff02deedf419772045e7dfca28ac49c09d65b153f39d`  
		Last Modified: Tue, 12 Dec 2017 03:31:00 GMT  
		Size: 33.8 MB (33770772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c2692ca7c2d913f8b2f578acf79acb2391a52afe02beec43c67f416dd48eeb`  
		Last Modified: Tue, 12 Dec 2017 03:30:42 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e84e13aa65d6a131bc52b118ce12e08b9355933cd5fbb6c6076385b207346b`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2789d6c07bffcfec4807025ffc451a01cae5f2518e102b07ef2d1cc3cab91bd`  
		Last Modified: Tue, 12 Dec 2017 03:31:07 GMT  
		Size: 46.4 MB (46366197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417c2abd7b6a2938769d8787425c26a428cdc4e3bb7e6d2bdd2565d32b37414`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 776.9 KB (776928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a794e02032dbbd05c006e82528474cd42e14b880c8d3fbc7694a2db7d4aa748`  
		Last Modified: Tue, 12 Dec 2017 03:31:36 GMT  
		Size: 157.3 MB (157270555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f9d9d07229ff53bcc32dd6d6a4058f0682f30d2a61d99e1fb48a20ba7d5cd`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13efd1c5c773251f1a90b2d1b6918fb3cd5976cf18d7e4b03dfd633bc30607c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257481970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c212dda672fb91d458e1f935888aa31e459371344eff16ce86464758eab11`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:28:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 18:28:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 18:31:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 18:32:31 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:32:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 18:39:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:39:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 18:39:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 18:39:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3dd0875f4aee4fe8ad6a3dd9048277ecc67b31684f68dcf88250ad001f606`  
		Last Modified: Fri, 15 Dec 2017 20:29:49 GMT  
		Size: 32.1 MB (32145451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9abe37fea91e192d4c0838f7cf8485c61f282ebf6db303b4fb4ceea68f31c6`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee50035ad289c033a148db661fdf88e9ae0a40b0dab98c3e5147c0f1b72d3`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4977f1bb59857da64dc510ff11dd266329ba2fae77ed25e141d7fa953794d6`  
		Last Modified: Fri, 15 Dec 2017 20:29:56 GMT  
		Size: 44.1 MB (44074869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2d1275276e05799eda03f5a53d0da1380f36d1ab6b853211fb2765cf380d62`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 777.3 KB (777314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1091850eeb32791c2d201900c3e8e0c798ef3afb47838405060f744bd4cb6292`  
		Last Modified: Fri, 15 Dec 2017 20:30:41 GMT  
		Size: 130.6 MB (130555820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed0c4b3181d461489cd6ad3e7d239daec67d95051c54a0cc7d28aef5e55c61`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:1601ec04b9354e9598f2057a3fe81b2e81a0d74c81704b65be4f67087af4f531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:fc70930fc536675a1d2b42085e81335417b8aa8d4707f4bc16b2d6d9c665aca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297738111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83de4876098428eeb47cc8dcd086cb9c3c25e28a67fa3aec0bc3ea8a4fe5117a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:b46de4b027aecc4bc8b10848bf1cb3fab0e17a5ab2a8162f136cde9d1b69c9c4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258682816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e296b9a5f3d6869db435c24d6d982235a933f9753567516515d2d1afe7a17e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6e5ac3f1f9bffd5139a48ebfcd18f42a27183be48233dbf33f4ca83806d18e43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270919665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70835d6ee818c7e8be96ef263de1f58bbc55428f4712a023df8e2d05675f5d3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:ed90e49f39369f4d974041f2f40a44215472e66dd2e45f234abd743acf5a5b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:ccba4049c838b798a9137d0951a086e3c79b8014db776a9e734d196932f0a9a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.1 MB (379069721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e627e09093929f6be32b2418556c7c1aa92e5082456e43bb120dba2ac83bb665`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Dec 2017 23:49:59 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Dec 2017 23:51:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:51:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 14 Dec 2017 23:51:18 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Dec 2017 23:51:18 GMT
CMD ["bash"]
# Thu, 14 Dec 2017 23:59:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025e77046d90a52c70652596372dbfe5395298bd9ee6964ffe06b920ae37f79`  
		Last Modified: Fri, 15 Dec 2017 01:09:25 GMT  
		Size: 193.3 MB (193339420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece5e27ee341ce8d3db368d0e59299e4c6022441a998b76fd8b7976f37cb0299`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864a9e2117296f844b02d0dc05dc9c2d9ee7c1d47d13bd214bbac325a385bbe3`  
		Last Modified: Fri, 15 Dec 2017 01:17:37 GMT  
		Size: 81.3 MB (81331610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:1925bd0a6a26df9e31442b8e757e808933ef25c82c586549ea87b95f6ffc753e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331748403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4dcd8ab4dd897657c22535fe5edd652f278157e904339a27302b61df74a97a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:42f592b2e35aebbd20b32dee9d0cc60ae688d55f764e159bc0decf36c546cc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.6 MB (345583089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48850522f160d678f29ae3459a319c4eb02233e1e74f2893bd394381f94ee18a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:d6d69b85a5e01cf8ee6c0a8658153965513bb78d6b133f74cf57fdbeac4e0dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:89c939f643468d32f1cf6d645e6363630926f41bbba33f3a24a0c89e7c31b926
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.0 MB (379001786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94d8333bab583a69fd6cede6f558e9ca125cac6bf37e5d28dd02e25aa235f0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:23:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3689978da433bf51f6c4242da81dc0a7c795829f2b1615de2e510ccca47a8e`  
		Last Modified: Fri, 15 Dec 2017 01:29:53 GMT  
		Size: 81.3 MB (81262815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:c2cfef47094ac8d3b0775f471e7952d571f566e72bd507553b45ab49acfb07d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331670152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad255bfd7422c9a350883094c54abd43a713ff954fe534d3fbd98b67aa3bd55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:43:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35beaf3660587096e791a1c8b2d53d33713956e145f11d805eb66f2297f41ec`  
		Last Modified: Fri, 15 Dec 2017 14:59:11 GMT  
		Size: 73.0 MB (73000075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e3055ca0f2a48c5c6862d68b79638d65be1d3fa5c315ba731daa1bf46e34196d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.5 MB (345490854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b60ada6db1d5a04f80c272ee2a51d73fdcd1a0cb425ab14120d770dec01dfe2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:59:33 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:09:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:09:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:09:20 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:16:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011739a5d2226ab6449a95a6895a8fa8ef37cfb4a44031ced07777dd0b99de13`  
		Last Modified: Fri, 15 Dec 2017 20:35:02 GMT  
		Size: 174.0 MB (173958271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52ed0e1f7324cb048d55430fce817f8036e971088993c7cec616e97fa49849b`  
		Last Modified: Fri, 15 Dec 2017 20:33:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf2f2c475652cdade8aac360d7813408042827bd9b64dd23f93cde5e2dda4e6`  
		Last Modified: Fri, 15 Dec 2017 20:35:46 GMT  
		Size: 74.6 MB (74579033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:5f1240772e545951582dc18e9bbe42ebafbf72adf8554dfed471f5347cad8113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:57fc536ce631cb6e034dc282098a3f6c317d0a950a0ef6cd7b3df05ebab1023f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.2 MB (750181472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468e7910628b82c11d489da94912b5cd0d899b55c59e1c16d6f185dac311ffe3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:23:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:27:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3689978da433bf51f6c4242da81dc0a7c795829f2b1615de2e510ccca47a8e`  
		Last Modified: Fri, 15 Dec 2017 01:29:53 GMT  
		Size: 81.3 MB (81262815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7825aafaebe35d8ff04bc73fafac94f517614e5564d29c6c07ac2996f9ead6`  
		Last Modified: Fri, 15 Dec 2017 01:32:39 GMT  
		Size: 371.2 MB (371179686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:6b60d8fe6c3d690cf808265e060fdd453d396cfa71c0d8f3b788210116207863
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.6 MB (637613669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729b9f5ed01b1b72ce939a49012f97db6bff40196d6c2af780837d3ec0a36912`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:43:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:47:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35beaf3660587096e791a1c8b2d53d33713956e145f11d805eb66f2297f41ec`  
		Last Modified: Fri, 15 Dec 2017 14:59:11 GMT  
		Size: 73.0 MB (73000075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51fde654f798bdc3cc453b4695a0d9f8deed2ed83eef0dc4f63115b14d2f435`  
		Last Modified: Fri, 15 Dec 2017 15:01:19 GMT  
		Size: 305.9 MB (305943517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1dd40e86a0b7abe3cebac57b2aed312901f87a14166dd71e854c65364ff2db47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.6 MB (665586237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcaeb1b1a2a63b9c5b25c44480cb7733dca94747af8ba3e242feb73e1d7bf5c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:59:33 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:09:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:09:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:09:20 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:16:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011739a5d2226ab6449a95a6895a8fa8ef37cfb4a44031ced07777dd0b99de13`  
		Last Modified: Fri, 15 Dec 2017 20:35:02 GMT  
		Size: 174.0 MB (173958271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52ed0e1f7324cb048d55430fce817f8036e971088993c7cec616e97fa49849b`  
		Last Modified: Fri, 15 Dec 2017 20:33:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf2f2c475652cdade8aac360d7813408042827bd9b64dd23f93cde5e2dda4e6`  
		Last Modified: Fri, 15 Dec 2017 20:35:46 GMT  
		Size: 74.6 MB (74579033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2968477be74a262c55e88bdd4ff6bbeee26e69fc6c1b9f9951491fd1afb2393c`  
		Last Modified: Fri, 15 Dec 2017 20:39:06 GMT  
		Size: 320.1 MB (320095383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:e03078fed7107692073b2424934346a1aaa2c883d46248bc01ff1e30afb1bf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:99766956998446cd53158d335cb700ce79102178f0c13a44be39a8386eceaa56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **925.3 MB (925251984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5444ad6dd506b9ecf389967f6f0293c4537099859ba929d5f21a7c51145aa4d2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 03:13:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 03:13:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 03:14:11 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 03:14:11 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Dec 2017 03:15:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 03:18:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 03:18:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:21:36 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:24:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881311a949618a7b1e5e6fcc5ee40340c97e2ce833a339ca47330a014716907`  
		Last Modified: Tue, 12 Dec 2017 03:41:26 GMT  
		Size: 7.2 MB (7218465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4137cdb5caae38d5f6e3463a8a0be788367f21f852025381993bcd2309392`  
		Last Modified: Tue, 12 Dec 2017 03:41:01 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f75c4c738a4dc486e37a888e46f7e60fc014548ee29999da793fc77aefb0873`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af68fa55b53e1208ae0047849fa9a111526a9ca5341c17dbde48e909bcf40c6a`  
		Last Modified: Tue, 12 Dec 2017 03:41:43 GMT  
		Size: 64.7 MB (64683160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6c0293ad8b6fec5fc330f2be37b9f622e3cd91cef923f6acccd5227f0dfab9`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 776.9 KB (776927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4155bf28eba98aca7db6cc872e5f9b59664574ed6d177c681a4518d729e0e6`  
		Last Modified: Tue, 12 Dec 2017 03:42:22 GMT  
		Size: 251.8 MB (251798957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631f111cca06ac2e4c33f685be0aaa629fb0565b34e2d7fa73fe6cef76f9e3d1`  
		Last Modified: Tue, 12 Dec 2017 03:40:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0899d2d2f85ee842982298f2daa6af5703269277e0ad0c32d53c9d500c6a328`  
		Last Modified: Tue, 12 Dec 2017 03:48:28 GMT  
		Size: 122.2 MB (122210316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fbc8eae5732648016999331066b7028ee50bf9710ea6bd02924317817dc9d`  
		Last Modified: Tue, 12 Dec 2017 03:50:53 GMT  
		Size: 433.4 MB (433440734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5bd3f14e0af146ea2745dae22ac38923e0952a096de3ab200b9ca65989e59963
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **808.7 MB (808676416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34649457cb77697e528dda66c6b7f80ab6e361c7ee36429893a153d6c95eb6a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 20:02:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:22:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645eb3ea882edb3f22ca411234a79187bc609fe3016dbe4b4db17f50f580e5e7`  
		Last Modified: Fri, 15 Dec 2017 20:41:39 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376de498fa77216683e6ce7bcc969b0269214050bfa143fce9529c6e448094f4`  
		Last Modified: Fri, 15 Dec 2017 20:44:36 GMT  
		Size: 373.6 MB (373638126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:5f1240772e545951582dc18e9bbe42ebafbf72adf8554dfed471f5347cad8113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:57fc536ce631cb6e034dc282098a3f6c317d0a950a0ef6cd7b3df05ebab1023f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.2 MB (750181472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468e7910628b82c11d489da94912b5cd0d899b55c59e1c16d6f185dac311ffe3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:23:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:27:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3689978da433bf51f6c4242da81dc0a7c795829f2b1615de2e510ccca47a8e`  
		Last Modified: Fri, 15 Dec 2017 01:29:53 GMT  
		Size: 81.3 MB (81262815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7825aafaebe35d8ff04bc73fafac94f517614e5564d29c6c07ac2996f9ead6`  
		Last Modified: Fri, 15 Dec 2017 01:32:39 GMT  
		Size: 371.2 MB (371179686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:6b60d8fe6c3d690cf808265e060fdd453d396cfa71c0d8f3b788210116207863
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.6 MB (637613669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729b9f5ed01b1b72ce939a49012f97db6bff40196d6c2af780837d3ec0a36912`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:43:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:47:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35beaf3660587096e791a1c8b2d53d33713956e145f11d805eb66f2297f41ec`  
		Last Modified: Fri, 15 Dec 2017 14:59:11 GMT  
		Size: 73.0 MB (73000075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51fde654f798bdc3cc453b4695a0d9f8deed2ed83eef0dc4f63115b14d2f435`  
		Last Modified: Fri, 15 Dec 2017 15:01:19 GMT  
		Size: 305.9 MB (305943517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1dd40e86a0b7abe3cebac57b2aed312901f87a14166dd71e854c65364ff2db47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.6 MB (665586237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcaeb1b1a2a63b9c5b25c44480cb7733dca94747af8ba3e242feb73e1d7bf5c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:59:33 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:09:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:09:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:09:20 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:16:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011739a5d2226ab6449a95a6895a8fa8ef37cfb4a44031ced07777dd0b99de13`  
		Last Modified: Fri, 15 Dec 2017 20:35:02 GMT  
		Size: 174.0 MB (173958271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52ed0e1f7324cb048d55430fce817f8036e971088993c7cec616e97fa49849b`  
		Last Modified: Fri, 15 Dec 2017 20:33:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf2f2c475652cdade8aac360d7813408042827bd9b64dd23f93cde5e2dda4e6`  
		Last Modified: Fri, 15 Dec 2017 20:35:46 GMT  
		Size: 74.6 MB (74579033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2968477be74a262c55e88bdd4ff6bbeee26e69fc6c1b9f9951491fd1afb2393c`  
		Last Modified: Fri, 15 Dec 2017 20:39:06 GMT  
		Size: 320.1 MB (320095383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-zesty`

```console
$ docker pull ros@sha256:e204d0b49b48b9e74cabf5aabb333b5dd955a41df29bffce79cd5d69cb68c8f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-perception-zesty` - linux; amd64

```console
$ docker pull ros@sha256:6213b1f7e0b814f129aa969d085207c99c4d10d89d3547dbbffe55a0cbc06526
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **798.9 MB (798877931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e0ef99b711daa83d802b25b80a445ab0b5f760745eb4016c0076b051416086`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 21:00:08 GMT
ADD file:796db5dd87a82ef3448e235015cbe46f6e917199753ab9fa0a7fc03d14da91b0 in / 
# Thu, 14 Dec 2017 21:00:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 21:00:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 21:00:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 21:00:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 21:00:11 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 00:35:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:35:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 00:35:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 00:35:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 00:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 00:36:09 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:36:10 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:37:33 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:37:34 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:37:34 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:40:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:44:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2ca09a1934b951505ecc4d6b2e4ab7f9bf27bcdfb8999d0181deca74daf7683`  
		Last Modified: Thu, 14 Dec 2017 21:02:52 GMT  
		Size: 38.6 MB (38640200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c3619d2153ffdefa4a9c19f15c5d566ce271b397a84537baa9ee45b24178f2`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe07335a049e6afcd757db2d17ba37a12b717eb807acb03ddf3cd756b9fc2a`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1bb01b3a3b72463ae8ac5666d57b28f1a21d5256271910ac8df841aa04ecd1`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a98c1873995475a895f3d79f405232ef5230076b3f610c949c2e8341743af7`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958e293e8d212e746220de636cfc44ea3777f0a80da9786b69ab4c3023836d6a`  
		Last Modified: Fri, 15 Dec 2017 01:40:06 GMT  
		Size: 3.4 MB (3401794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd13b70540dd557227051ca6fd7808df3e82b4eae6ada8f140185776d3ad976e`  
		Last Modified: Fri, 15 Dec 2017 01:40:04 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfc6d18fd53ecc49441d4ede34fb5d0bf8131971a357ae6949a78eaa652165f`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97f20576c44f7c898bc3faadb2d8073694bff467215e6712a0714d4c9bbefe5`  
		Last Modified: Fri, 15 Dec 2017 01:40:30 GMT  
		Size: 58.6 MB (58604058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2f39f91c1098c94638519aaf6e082d58be338d4248bb19a2726c5d9e222cdd`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 777.3 KB (777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d44e95bee15d9f13c2441d054135581cb57ef9ffbc095d611d1a558c402146`  
		Last Modified: Fri, 15 Dec 2017 01:41:08 GMT  
		Size: 252.3 MB (252316009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bba08ce8e7022fd49ba67af8c1aa9103c1410dfb0f047f7253e58c030d5699`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c4c2c898badb31810dd8af543e3c153cab1e9ad54e6fc93ddd83528e7837f4`  
		Last Modified: Fri, 15 Dec 2017 01:41:44 GMT  
		Size: 74.6 MB (74580887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288c9c93b9118fc03bb12dcbda1f3c4fbf7be738d028859026e117ce2a9e9f6f`  
		Last Modified: Fri, 15 Dec 2017 01:45:04 GMT  
		Size: 370.6 MB (370553452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:1a160fc13292cb83593a7837b61e1cbb06a6d65e87cd856ccef20b98a772013b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:fcd09a981b38706ebb75533d5976299276d20c8487204000e563de5f229ccf8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.6 MB (482646540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:977a86fcea1b2bfe604257bfb66acb5ec1e61951bbf4929267f46dfbed68eb1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:23:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:24:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3689978da433bf51f6c4242da81dc0a7c795829f2b1615de2e510ccca47a8e`  
		Last Modified: Fri, 15 Dec 2017 01:29:53 GMT  
		Size: 81.3 MB (81262815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b04ead9cc82b522cf2709e9d0161aeb6317affcdd07e92bfe6179276e732b9`  
		Last Modified: Fri, 15 Dec 2017 01:30:55 GMT  
		Size: 103.6 MB (103644754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:ae74e18ef21565ddad88506891ca03605b2345393d94000eb64fbbf562809a66
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.8 MB (421761678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6a486e183ab6aa4d8a4b184c7ab95d497cf9c9f8913c96c15b24361fce652f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:43:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:45:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35beaf3660587096e791a1c8b2d53d33713956e145f11d805eb66f2297f41ec`  
		Last Modified: Fri, 15 Dec 2017 14:59:11 GMT  
		Size: 73.0 MB (73000075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bc119a05036bf547988b7c174ffa8c88e9a036e8b07749f16ab48d932c4321`  
		Last Modified: Fri, 15 Dec 2017 14:59:48 GMT  
		Size: 90.1 MB (90091526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c34e64cc83335482adfbe257bfe8097cde86d95289f33c1fa11359317f9d493d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.4 MB (439394506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b9a7942436b6aa396d7ba6b174ce873af786e24fa87d2c8fe2a2d1ba3fe24d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:59:33 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:09:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:09:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:09:20 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:16:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:25:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011739a5d2226ab6449a95a6895a8fa8ef37cfb4a44031ced07777dd0b99de13`  
		Last Modified: Fri, 15 Dec 2017 20:35:02 GMT  
		Size: 174.0 MB (173958271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52ed0e1f7324cb048d55430fce817f8036e971088993c7cec616e97fa49849b`  
		Last Modified: Fri, 15 Dec 2017 20:33:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf2f2c475652cdade8aac360d7813408042827bd9b64dd23f93cde5e2dda4e6`  
		Last Modified: Fri, 15 Dec 2017 20:35:46 GMT  
		Size: 74.6 MB (74579033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b4461c37c28f2cd4b90059599885c3cbad1d4524cc09570422d1ff57984b8`  
		Last Modified: Fri, 15 Dec 2017 20:36:50 GMT  
		Size: 93.9 MB (93903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:025c404c0a2a6e6e0e10559b61136392e0aa6efd8a1b92f528be099db9c11933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:2f99700325e9a211d9f1f955fb54bf32b3c24076fd9378669544d36976c8d252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.2 MB (552232363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55773e9a8d08621029d67c7fa31edba39c92dc3d74e08f9beb3be363e88009ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 03:13:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 03:13:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 03:14:11 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 03:14:11 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Dec 2017 03:15:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 03:18:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 03:18:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:21:36 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:22:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881311a949618a7b1e5e6fcc5ee40340c97e2ce833a339ca47330a014716907`  
		Last Modified: Tue, 12 Dec 2017 03:41:26 GMT  
		Size: 7.2 MB (7218465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4137cdb5caae38d5f6e3463a8a0be788367f21f852025381993bcd2309392`  
		Last Modified: Tue, 12 Dec 2017 03:41:01 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f75c4c738a4dc486e37a888e46f7e60fc014548ee29999da793fc77aefb0873`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af68fa55b53e1208ae0047849fa9a111526a9ca5341c17dbde48e909bcf40c6a`  
		Last Modified: Tue, 12 Dec 2017 03:41:43 GMT  
		Size: 64.7 MB (64683160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6c0293ad8b6fec5fc330f2be37b9f622e3cd91cef923f6acccd5227f0dfab9`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 776.9 KB (776927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4155bf28eba98aca7db6cc872e5f9b59664574ed6d177c681a4518d729e0e6`  
		Last Modified: Tue, 12 Dec 2017 03:42:22 GMT  
		Size: 251.8 MB (251798957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631f111cca06ac2e4c33f685be0aaa629fb0565b34e2d7fa73fe6cef76f9e3d1`  
		Last Modified: Tue, 12 Dec 2017 03:40:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0899d2d2f85ee842982298f2daa6af5703269277e0ad0c32d53c9d500c6a328`  
		Last Modified: Tue, 12 Dec 2017 03:48:28 GMT  
		Size: 122.2 MB (122210316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5aac166e7891d0b5a64bf698ed1a34949c457ae381f3e255a1e9095476e55a8`  
		Last Modified: Tue, 12 Dec 2017 03:49:05 GMT  
		Size: 60.4 MB (60421113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:afc0dd12e1d8ecc9743533b6d07ad5c6151f93b48b2f3f0cea686f61ef4c2b82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.5 MB (492537217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359517d50ffc19ab84049b5c55cca1e4d78580cd4d2850a7fd47bfa61a4d62c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 20:02:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:05:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645eb3ea882edb3f22ca411234a79187bc609fe3016dbe4b4db17f50f580e5e7`  
		Last Modified: Fri, 15 Dec 2017 20:41:39 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb8962fce1bd9df59c74a224d844ef6e32ed6cda3dfa3a7338403c9a4a533ec`  
		Last Modified: Fri, 15 Dec 2017 20:42:11 GMT  
		Size: 57.5 MB (57498927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:1a160fc13292cb83593a7837b61e1cbb06a6d65e87cd856ccef20b98a772013b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:fcd09a981b38706ebb75533d5976299276d20c8487204000e563de5f229ccf8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.6 MB (482646540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:977a86fcea1b2bfe604257bfb66acb5ec1e61951bbf4929267f46dfbed68eb1a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:23:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:24:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3689978da433bf51f6c4242da81dc0a7c795829f2b1615de2e510ccca47a8e`  
		Last Modified: Fri, 15 Dec 2017 01:29:53 GMT  
		Size: 81.3 MB (81262815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b04ead9cc82b522cf2709e9d0161aeb6317affcdd07e92bfe6179276e732b9`  
		Last Modified: Fri, 15 Dec 2017 01:30:55 GMT  
		Size: 103.6 MB (103644754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:ae74e18ef21565ddad88506891ca03605b2345393d94000eb64fbbf562809a66
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.8 MB (421761678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6a486e183ab6aa4d8a4b184c7ab95d497cf9c9f8913c96c15b24361fce652f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:43:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:45:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35beaf3660587096e791a1c8b2d53d33713956e145f11d805eb66f2297f41ec`  
		Last Modified: Fri, 15 Dec 2017 14:59:11 GMT  
		Size: 73.0 MB (73000075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bc119a05036bf547988b7c174ffa8c88e9a036e8b07749f16ab48d932c4321`  
		Last Modified: Fri, 15 Dec 2017 14:59:48 GMT  
		Size: 90.1 MB (90091526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c34e64cc83335482adfbe257bfe8097cde86d95289f33c1fa11359317f9d493d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.4 MB (439394506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b9a7942436b6aa396d7ba6b174ce873af786e24fa87d2c8fe2a2d1ba3fe24d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:59:33 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:09:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:09:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:09:20 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:16:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:25:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011739a5d2226ab6449a95a6895a8fa8ef37cfb4a44031ced07777dd0b99de13`  
		Last Modified: Fri, 15 Dec 2017 20:35:02 GMT  
		Size: 174.0 MB (173958271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52ed0e1f7324cb048d55430fce817f8036e971088993c7cec616e97fa49849b`  
		Last Modified: Fri, 15 Dec 2017 20:33:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf2f2c475652cdade8aac360d7813408042827bd9b64dd23f93cde5e2dda4e6`  
		Last Modified: Fri, 15 Dec 2017 20:35:46 GMT  
		Size: 74.6 MB (74579033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b4461c37c28f2cd4b90059599885c3cbad1d4524cc09570422d1ff57984b8`  
		Last Modified: Fri, 15 Dec 2017 20:36:50 GMT  
		Size: 93.9 MB (93903652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-zesty`

```console
$ docker pull ros@sha256:e674732fd0eba03967095ac4d7870561d388b1e57fc65a772591c5e39e5e18d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-robot-zesty` - linux; amd64

```console
$ docker pull ros@sha256:3daabdac3ebb1a4e8aecef6459de1e65a67262dc614b0b69e4c441efa0d126b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.7 MB (472724702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f9ddd7ad1adf65c6baa924b935da8bfdfbb8fdc4be3d4eda4d5501bd619545`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 21:00:08 GMT
ADD file:796db5dd87a82ef3448e235015cbe46f6e917199753ab9fa0a7fc03d14da91b0 in / 
# Thu, 14 Dec 2017 21:00:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 21:00:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 21:00:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 21:00:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 21:00:11 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 00:35:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:35:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 00:35:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 00:35:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 00:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 00:36:09 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:36:10 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:37:33 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:37:34 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:37:34 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:40:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:41:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2ca09a1934b951505ecc4d6b2e4ab7f9bf27bcdfb8999d0181deca74daf7683`  
		Last Modified: Thu, 14 Dec 2017 21:02:52 GMT  
		Size: 38.6 MB (38640200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c3619d2153ffdefa4a9c19f15c5d566ce271b397a84537baa9ee45b24178f2`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe07335a049e6afcd757db2d17ba37a12b717eb807acb03ddf3cd756b9fc2a`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1bb01b3a3b72463ae8ac5666d57b28f1a21d5256271910ac8df841aa04ecd1`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a98c1873995475a895f3d79f405232ef5230076b3f610c949c2e8341743af7`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958e293e8d212e746220de636cfc44ea3777f0a80da9786b69ab4c3023836d6a`  
		Last Modified: Fri, 15 Dec 2017 01:40:06 GMT  
		Size: 3.4 MB (3401794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd13b70540dd557227051ca6fd7808df3e82b4eae6ada8f140185776d3ad976e`  
		Last Modified: Fri, 15 Dec 2017 01:40:04 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfc6d18fd53ecc49441d4ede34fb5d0bf8131971a357ae6949a78eaa652165f`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97f20576c44f7c898bc3faadb2d8073694bff467215e6712a0714d4c9bbefe5`  
		Last Modified: Fri, 15 Dec 2017 01:40:30 GMT  
		Size: 58.6 MB (58604058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2f39f91c1098c94638519aaf6e082d58be338d4248bb19a2726c5d9e222cdd`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 777.3 KB (777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d44e95bee15d9f13c2441d054135581cb57ef9ffbc095d611d1a558c402146`  
		Last Modified: Fri, 15 Dec 2017 01:41:08 GMT  
		Size: 252.3 MB (252316009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bba08ce8e7022fd49ba67af8c1aa9103c1410dfb0f047f7253e58c030d5699`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c4c2c898badb31810dd8af543e3c153cab1e9ad54e6fc93ddd83528e7837f4`  
		Last Modified: Fri, 15 Dec 2017 01:41:44 GMT  
		Size: 74.6 MB (74580887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9096cb483737a34e0896631134133d1c25855e5a723ad853cec440f3cfd050f4`  
		Last Modified: Fri, 15 Dec 2017 01:43:36 GMT  
		Size: 44.4 MB (44400223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:d6d69b85a5e01cf8ee6c0a8658153965513bb78d6b133f74cf57fdbeac4e0dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:89c939f643468d32f1cf6d645e6363630926f41bbba33f3a24a0c89e7c31b926
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.0 MB (379001786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94d8333bab583a69fd6cede6f558e9ca125cac6bf37e5d28dd02e25aa235f0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:23:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3689978da433bf51f6c4242da81dc0a7c795829f2b1615de2e510ccca47a8e`  
		Last Modified: Fri, 15 Dec 2017 01:29:53 GMT  
		Size: 81.3 MB (81262815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:c2cfef47094ac8d3b0775f471e7952d571f566e72bd507553b45ab49acfb07d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331670152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad255bfd7422c9a350883094c54abd43a713ff954fe534d3fbd98b67aa3bd55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:43:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35beaf3660587096e791a1c8b2d53d33713956e145f11d805eb66f2297f41ec`  
		Last Modified: Fri, 15 Dec 2017 14:59:11 GMT  
		Size: 73.0 MB (73000075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e3055ca0f2a48c5c6862d68b79638d65be1d3fa5c315ba731daa1bf46e34196d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.5 MB (345490854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b60ada6db1d5a04f80c272ee2a51d73fdcd1a0cb425ab14120d770dec01dfe2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:59:33 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:09:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:09:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:09:20 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:16:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011739a5d2226ab6449a95a6895a8fa8ef37cfb4a44031ced07777dd0b99de13`  
		Last Modified: Fri, 15 Dec 2017 20:35:02 GMT  
		Size: 174.0 MB (173958271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52ed0e1f7324cb048d55430fce817f8036e971088993c7cec616e97fa49849b`  
		Last Modified: Fri, 15 Dec 2017 20:33:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf2f2c475652cdade8aac360d7813408042827bd9b64dd23f93cde5e2dda4e6`  
		Last Modified: Fri, 15 Dec 2017 20:35:46 GMT  
		Size: 74.6 MB (74579033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:a54334d9c69f236d13fb0427c4d3255f0adf6cf1e46dd932cdba3f612e109846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e49297cef76f2c1374c72dbe9ca77d713fea08d913721e5e18b0bd1532115786
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.8 MB (491811250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9e2b3194a38cceda687b552c45fdc77b08f12e16df5a806e4c99ba7ff69fbc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 03:13:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 03:13:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 03:14:11 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 03:14:11 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Dec 2017 03:15:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 03:18:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 03:18:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:21:36 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881311a949618a7b1e5e6fcc5ee40340c97e2ce833a339ca47330a014716907`  
		Last Modified: Tue, 12 Dec 2017 03:41:26 GMT  
		Size: 7.2 MB (7218465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4137cdb5caae38d5f6e3463a8a0be788367f21f852025381993bcd2309392`  
		Last Modified: Tue, 12 Dec 2017 03:41:01 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f75c4c738a4dc486e37a888e46f7e60fc014548ee29999da793fc77aefb0873`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af68fa55b53e1208ae0047849fa9a111526a9ca5341c17dbde48e909bcf40c6a`  
		Last Modified: Tue, 12 Dec 2017 03:41:43 GMT  
		Size: 64.7 MB (64683160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6c0293ad8b6fec5fc330f2be37b9f622e3cd91cef923f6acccd5227f0dfab9`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 776.9 KB (776927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4155bf28eba98aca7db6cc872e5f9b59664574ed6d177c681a4518d729e0e6`  
		Last Modified: Tue, 12 Dec 2017 03:42:22 GMT  
		Size: 251.8 MB (251798957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631f111cca06ac2e4c33f685be0aaa629fb0565b34e2d7fa73fe6cef76f9e3d1`  
		Last Modified: Tue, 12 Dec 2017 03:40:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0899d2d2f85ee842982298f2daa6af5703269277e0ad0c32d53c9d500c6a328`  
		Last Modified: Tue, 12 Dec 2017 03:48:28 GMT  
		Size: 122.2 MB (122210316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fc85ba8d23d1dc4c67dd11bedb4cba5b6e45c0b9c3dade630b19a7b9f454158e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 MB (435038290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4c05ac254ae628e601fb724d91d894af70523d365352964f391a149dfc9f00`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 20:02:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645eb3ea882edb3f22ca411234a79187bc609fe3016dbe4b4db17f50f580e5e7`  
		Last Modified: Fri, 15 Dec 2017 20:41:39 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:d6d69b85a5e01cf8ee6c0a8658153965513bb78d6b133f74cf57fdbeac4e0dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:89c939f643468d32f1cf6d645e6363630926f41bbba33f3a24a0c89e7c31b926
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.0 MB (379001786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94d8333bab583a69fd6cede6f558e9ca125cac6bf37e5d28dd02e25aa235f0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:23:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3689978da433bf51f6c4242da81dc0a7c795829f2b1615de2e510ccca47a8e`  
		Last Modified: Fri, 15 Dec 2017 01:29:53 GMT  
		Size: 81.3 MB (81262815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:c2cfef47094ac8d3b0775f471e7952d571f566e72bd507553b45ab49acfb07d3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331670152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad255bfd7422c9a350883094c54abd43a713ff954fe534d3fbd98b67aa3bd55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:43:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35beaf3660587096e791a1c8b2d53d33713956e145f11d805eb66f2297f41ec`  
		Last Modified: Fri, 15 Dec 2017 14:59:11 GMT  
		Size: 73.0 MB (73000075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e3055ca0f2a48c5c6862d68b79638d65be1d3fa5c315ba731daa1bf46e34196d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.5 MB (345490854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b60ada6db1d5a04f80c272ee2a51d73fdcd1a0cb425ab14120d770dec01dfe2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:59:33 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:09:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:09:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:09:20 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:16:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011739a5d2226ab6449a95a6895a8fa8ef37cfb4a44031ced07777dd0b99de13`  
		Last Modified: Fri, 15 Dec 2017 20:35:02 GMT  
		Size: 174.0 MB (173958271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52ed0e1f7324cb048d55430fce817f8036e971088993c7cec616e97fa49849b`  
		Last Modified: Fri, 15 Dec 2017 20:33:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf2f2c475652cdade8aac360d7813408042827bd9b64dd23f93cde5e2dda4e6`  
		Last Modified: Fri, 15 Dec 2017 20:35:46 GMT  
		Size: 74.6 MB (74579033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-zesty`

```console
$ docker pull ros@sha256:62df9606ae911dbff8d1054b389306f44d77c09dabe3af6fa1e4125106d4dbbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base-zesty` - linux; amd64

```console
$ docker pull ros@sha256:57888b788058076d93999c92b9fb541d0dcea29cc11c54e6bba5a15de7c3bd37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.3 MB (428324479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64dbc6bba9e1f79b0988a37da72c709b4807727580e4c939e865805768a37b2b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 21:00:08 GMT
ADD file:796db5dd87a82ef3448e235015cbe46f6e917199753ab9fa0a7fc03d14da91b0 in / 
# Thu, 14 Dec 2017 21:00:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 21:00:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 21:00:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 21:00:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 21:00:11 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 00:35:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:35:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 00:35:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 00:35:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 00:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 00:36:09 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:36:10 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:37:33 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:37:34 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:37:34 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 00:40:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2ca09a1934b951505ecc4d6b2e4ab7f9bf27bcdfb8999d0181deca74daf7683`  
		Last Modified: Thu, 14 Dec 2017 21:02:52 GMT  
		Size: 38.6 MB (38640200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c3619d2153ffdefa4a9c19f15c5d566ce271b397a84537baa9ee45b24178f2`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe07335a049e6afcd757db2d17ba37a12b717eb807acb03ddf3cd756b9fc2a`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1bb01b3a3b72463ae8ac5666d57b28f1a21d5256271910ac8df841aa04ecd1`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a98c1873995475a895f3d79f405232ef5230076b3f610c949c2e8341743af7`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958e293e8d212e746220de636cfc44ea3777f0a80da9786b69ab4c3023836d6a`  
		Last Modified: Fri, 15 Dec 2017 01:40:06 GMT  
		Size: 3.4 MB (3401794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd13b70540dd557227051ca6fd7808df3e82b4eae6ada8f140185776d3ad976e`  
		Last Modified: Fri, 15 Dec 2017 01:40:04 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfc6d18fd53ecc49441d4ede34fb5d0bf8131971a357ae6949a78eaa652165f`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97f20576c44f7c898bc3faadb2d8073694bff467215e6712a0714d4c9bbefe5`  
		Last Modified: Fri, 15 Dec 2017 01:40:30 GMT  
		Size: 58.6 MB (58604058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2f39f91c1098c94638519aaf6e082d58be338d4248bb19a2726c5d9e222cdd`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 777.3 KB (777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d44e95bee15d9f13c2441d054135581cb57ef9ffbc095d611d1a558c402146`  
		Last Modified: Fri, 15 Dec 2017 01:41:08 GMT  
		Size: 252.3 MB (252316009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bba08ce8e7022fd49ba67af8c1aa9103c1410dfb0f047f7253e58c030d5699`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c4c2c898badb31810dd8af543e3c153cab1e9ad54e6fc93ddd83528e7837f4`  
		Last Modified: Fri, 15 Dec 2017 01:41:44 GMT  
		Size: 74.6 MB (74580887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:e9859d72d809288697e3ba32883ba0dc94a90c7d2f45eaef0931c167c728c8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:2df8a8745d7906ebd149c1e1e6a08cfe464f1ec03aa903ed3881e61998db8cb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297738971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11d66e51d95396f6239f1ad50c3cc03ceffebb9068ee46de7c6231464306b10`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:75b42f8a2bc8f6466fb590d75715b6295ebb3ca1ddb0aca5ffdc58f988b86a46
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258670077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4e4b841df73528f5a68a45f6dbb26e550cc0be90ddc7fcbf7d4d47c9d7f0eb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4349b7bba757f21a12e4c8af5afa403ac6d937bf9ea17f43adb980025f59cb12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270911821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ae65928481ac62ceafaa360dc3c15991ff6c56c774e1ae0f822c7578e8d2b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:59:33 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:09:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:09:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:09:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011739a5d2226ab6449a95a6895a8fa8ef37cfb4a44031ced07777dd0b99de13`  
		Last Modified: Fri, 15 Dec 2017 20:35:02 GMT  
		Size: 174.0 MB (173958271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52ed0e1f7324cb048d55430fce817f8036e971088993c7cec616e97fa49849b`  
		Last Modified: Fri, 15 Dec 2017 20:33:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:da8c2330af1ce1608a457186a07286e84aae07d0676c6f19ef9655b04a358c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:71916fa9971bb308dd19d729531a7659fd6d992f8bc823a5a6df5fd33fa10d71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.6 MB (369600934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ffb7e96d543b7d54dd102324e08370f7de53e015e31a5db301e67f0be329e9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 03:13:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 03:13:59 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 03:13:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 03:14:11 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 03:14:11 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Dec 2017 03:15:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:18:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 03:18:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 03:18:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881311a949618a7b1e5e6fcc5ee40340c97e2ce833a339ca47330a014716907`  
		Last Modified: Tue, 12 Dec 2017 03:41:26 GMT  
		Size: 7.2 MB (7218465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b4137cdb5caae38d5f6e3463a8a0be788367f21f852025381993bcd2309392`  
		Last Modified: Tue, 12 Dec 2017 03:41:01 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f75c4c738a4dc486e37a888e46f7e60fc014548ee29999da793fc77aefb0873`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af68fa55b53e1208ae0047849fa9a111526a9ca5341c17dbde48e909bcf40c6a`  
		Last Modified: Tue, 12 Dec 2017 03:41:43 GMT  
		Size: 64.7 MB (64683160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6c0293ad8b6fec5fc330f2be37b9f622e3cd91cef923f6acccd5227f0dfab9`  
		Last Modified: Tue, 12 Dec 2017 03:40:59 GMT  
		Size: 776.9 KB (776927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4155bf28eba98aca7db6cc872e5f9b59664574ed6d177c681a4518d729e0e6`  
		Last Modified: Tue, 12 Dec 2017 03:42:22 GMT  
		Size: 251.8 MB (251798957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631f111cca06ac2e4c33f685be0aaa629fb0565b34e2d7fa73fe6cef76f9e3d1`  
		Last Modified: Tue, 12 Dec 2017 03:40:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bb80da4301529d5050c1ca70b29a2733a02ae9420ed079dbd218af7957e5c452
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.0 MB (319014875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddbe902637c8c5d9e710f812a64b045d7976a1b9d976e492fee6a4e040155731`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:e9859d72d809288697e3ba32883ba0dc94a90c7d2f45eaef0931c167c728c8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:2df8a8745d7906ebd149c1e1e6a08cfe464f1ec03aa903ed3881e61998db8cb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297738971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11d66e51d95396f6239f1ad50c3cc03ceffebb9068ee46de7c6231464306b10`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Dec 2017 23:49:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Dec 2017 23:49:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 23:49:47 GMT
ENV LANG=C.UTF-8
# Thu, 14 Dec 2017 23:49:48 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Dec 2017 23:49:58 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:20:34 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:21:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:22:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:22:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:22:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52df6a7e4d51042c69b7a73c0f8c2dc2d74a1787c2869dcc32413b0647d7e4f`  
		Last Modified: Fri, 15 Dec 2017 01:08:26 GMT  
		Size: 5.4 MB (5362326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228b76794c30a7736372b6967bad2d865c51f53dbc9532996b211375cab87ac4`  
		Last Modified: Fri, 15 Dec 2017 01:08:24 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d087cc35cc390561c2c4d51b7163d9ab89307eb56d6b2d12a03547a1a9459100`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4542d296bd339e3d8fc93b9829c4a329623ebad970205fe7f68b53adae4de19f`  
		Last Modified: Fri, 15 Dec 2017 01:08:51 GMT  
		Size: 55.5 MB (55499858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6bc80b2f5ba21c67f737bc2a9a9ef0869e1a938cc1c69ffa1909a814207fa0`  
		Last Modified: Fri, 15 Dec 2017 01:08:22 GMT  
		Size: 777.3 KB (777312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19afdc105943f49c2351dcad7f38f28bbb6fab8bf5f4b889aca594b8dc3d6d0`  
		Last Modified: Fri, 15 Dec 2017 01:29:05 GMT  
		Size: 193.3 MB (193340280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57513374e03384cbfc4ddb6c2d8e92e25988cd9c5e20af7c30d82db37d84c13`  
		Last Modified: Fri, 15 Dec 2017 01:28:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:75b42f8a2bc8f6466fb590d75715b6295ebb3ca1ddb0aca5ffdc58f988b86a46
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258670077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4e4b841df73528f5a68a45f6dbb26e550cc0be90ddc7fcbf7d4d47c9d7f0eb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:37:08 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 14:42:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:42:37 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:42:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:42:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301290862c95c08e9912162d72850208634c01485b61afa6ce91c85d8869d46`  
		Last Modified: Fri, 15 Dec 2017 14:58:42 GMT  
		Size: 164.7 MB (164707619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ecc695ea1c45daaeb2a8a58957ecf7337a184e6ddf53fd8e8621e4db01154`  
		Last Modified: Fri, 15 Dec 2017 14:57:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4349b7bba757f21a12e4c8af5afa403ac6d937bf9ea17f43adb980025f59cb12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270911821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ae65928481ac62ceafaa360dc3c15991ff6c56c774e1ae0f822c7578e8d2b2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:59:33 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:09:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:09:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:09:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011739a5d2226ab6449a95a6895a8fa8ef37cfb4a44031ced07777dd0b99de13`  
		Last Modified: Fri, 15 Dec 2017 20:35:02 GMT  
		Size: 174.0 MB (173958271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52ed0e1f7324cb048d55430fce817f8036e971088993c7cec616e97fa49849b`  
		Last Modified: Fri, 15 Dec 2017 20:33:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-zesty`

```console
$ docker pull ros@sha256:e3d6d6227736a7883d09842be8cb8244c19d37cf77b50a81f63d795fb1f7f138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-core-zesty` - linux; amd64

```console
$ docker pull ros@sha256:b2c495c9325f0623070602961a016c7ea120789a7cdfb00303ce0a2990808ad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.7 MB (353743592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8501e18b6bbfd63dbcf9fa979fde00fbb4811a75310e79c1a0694d454a9c586e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Dec 2017 21:00:08 GMT
ADD file:796db5dd87a82ef3448e235015cbe46f6e917199753ab9fa0a7fc03d14da91b0 in / 
# Thu, 14 Dec 2017 21:00:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 21:00:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 21:00:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 21:00:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 21:00:11 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 00:35:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:35:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 00:35:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 00:35:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:35:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 00:35:59 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 00:36:09 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 00:36:10 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 00:37:33 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 00:37:34 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 00:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 00:37:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c2ca09a1934b951505ecc4d6b2e4ab7f9bf27bcdfb8999d0181deca74daf7683`  
		Last Modified: Thu, 14 Dec 2017 21:02:52 GMT  
		Size: 38.6 MB (38640200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c3619d2153ffdefa4a9c19f15c5d566ce271b397a84537baa9ee45b24178f2`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe07335a049e6afcd757db2d17ba37a12b717eb807acb03ddf3cd756b9fc2a`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1bb01b3a3b72463ae8ac5666d57b28f1a21d5256271910ac8df841aa04ecd1`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a98c1873995475a895f3d79f405232ef5230076b3f610c949c2e8341743af7`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958e293e8d212e746220de636cfc44ea3777f0a80da9786b69ab4c3023836d6a`  
		Last Modified: Fri, 15 Dec 2017 01:40:06 GMT  
		Size: 3.4 MB (3401794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd13b70540dd557227051ca6fd7808df3e82b4eae6ada8f140185776d3ad976e`  
		Last Modified: Fri, 15 Dec 2017 01:40:04 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfc6d18fd53ecc49441d4ede34fb5d0bf8131971a357ae6949a78eaa652165f`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97f20576c44f7c898bc3faadb2d8073694bff467215e6712a0714d4c9bbefe5`  
		Last Modified: Fri, 15 Dec 2017 01:40:30 GMT  
		Size: 58.6 MB (58604058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2f39f91c1098c94638519aaf6e082d58be338d4248bb19a2726c5d9e222cdd`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 777.3 KB (777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d44e95bee15d9f13c2441d054135581cb57ef9ffbc095d611d1a558c402146`  
		Last Modified: Fri, 15 Dec 2017 01:41:08 GMT  
		Size: 252.3 MB (252316009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bba08ce8e7022fd49ba67af8c1aa9103c1410dfb0f047f7253e58c030d5699`  
		Last Modified: Fri, 15 Dec 2017 01:40:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
