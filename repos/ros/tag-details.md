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
$ docker pull ros@sha256:8a976ab703c5d33dc081963df8ccb67a36e6e3673ba40048268708f2ed420cf0
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
$ docker pull ros@sha256:8e720932bde55c9ce6d6beca00e6fb7992fb775a811669c9cce1e59e3ec34671
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.8 MB (288824298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d7078edc296932dcfa93cfc162e7a5ddf7c4752a62e309eb333b2ffde3c366`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:19:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b15fd7380749037db9d15c1afa3890b22798644f4a1638a4f19de157ca390`  
		Last Modified: Tue, 16 Jan 2018 14:50:18 GMT  
		Size: 40.3 MB (40343283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:00ddadb861ab00d137c9cdd91f82ee18f4b5e793f16d1c1513a15d9ec77bf925
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
$ docker pull ros@sha256:a2ddda19d8575a6a0aa63d85b36f7c8e0019a29f135c61e5a39db2c0b3f10ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.7 MB (500699972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a04ae67df9d1aa97ad45f73be2ade9d695ec692c200070bc2e8e589bf5299372`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:19:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:24:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b15fd7380749037db9d15c1afa3890b22798644f4a1638a4f19de157ca390`  
		Last Modified: Tue, 16 Jan 2018 14:50:18 GMT  
		Size: 40.3 MB (40343283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fcb0443fcc15d5309906c80de759995be1af3aabde0a572e710c3a853a2fa5`  
		Last Modified: Tue, 16 Jan 2018 14:51:57 GMT  
		Size: 211.9 MB (211875674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:00ddadb861ab00d137c9cdd91f82ee18f4b5e793f16d1c1513a15d9ec77bf925
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
$ docker pull ros@sha256:a2ddda19d8575a6a0aa63d85b36f7c8e0019a29f135c61e5a39db2c0b3f10ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.7 MB (500699972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a04ae67df9d1aa97ad45f73be2ade9d695ec692c200070bc2e8e589bf5299372`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:19:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:24:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b15fd7380749037db9d15c1afa3890b22798644f4a1638a4f19de157ca390`  
		Last Modified: Tue, 16 Jan 2018 14:50:18 GMT  
		Size: 40.3 MB (40343283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fcb0443fcc15d5309906c80de759995be1af3aabde0a572e710c3a853a2fa5`  
		Last Modified: Tue, 16 Jan 2018 14:51:57 GMT  
		Size: 211.9 MB (211875674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:4d5c767e602e55fa9901974df60fec41a55bae867851416d859a9b4d69906838
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
$ docker pull ros@sha256:ba159194212bee8e24f48963f065c5762a7fc7e9fe3b23acc2868048f82b3b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.5 MB (306500851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4228dc31339a478ed0004e22bb23388dafa1ee19f885cfa8235191ba1cfa2f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:19:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:20:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b15fd7380749037db9d15c1afa3890b22798644f4a1638a4f19de157ca390`  
		Last Modified: Tue, 16 Jan 2018 14:50:18 GMT  
		Size: 40.3 MB (40343283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1525178808e39196fe475210f5e4587306e441f5a3232f0f91b3984ba69d4117`  
		Last Modified: Tue, 16 Jan 2018 14:50:41 GMT  
		Size: 17.7 MB (17676553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:4d5c767e602e55fa9901974df60fec41a55bae867851416d859a9b4d69906838
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
$ docker pull ros@sha256:ba159194212bee8e24f48963f065c5762a7fc7e9fe3b23acc2868048f82b3b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.5 MB (306500851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4228dc31339a478ed0004e22bb23388dafa1ee19f885cfa8235191ba1cfa2f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:19:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:20:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b15fd7380749037db9d15c1afa3890b22798644f4a1638a4f19de157ca390`  
		Last Modified: Tue, 16 Jan 2018 14:50:18 GMT  
		Size: 40.3 MB (40343283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1525178808e39196fe475210f5e4587306e441f5a3232f0f91b3984ba69d4117`  
		Last Modified: Tue, 16 Jan 2018 14:50:41 GMT  
		Size: 17.7 MB (17676553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:8a976ab703c5d33dc081963df8ccb67a36e6e3673ba40048268708f2ed420cf0
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
$ docker pull ros@sha256:8e720932bde55c9ce6d6beca00e6fb7992fb775a811669c9cce1e59e3ec34671
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.8 MB (288824298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d7078edc296932dcfa93cfc162e7a5ddf7c4752a62e309eb333b2ffde3c366`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:19:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b15fd7380749037db9d15c1afa3890b22798644f4a1638a4f19de157ca390`  
		Last Modified: Tue, 16 Jan 2018 14:50:18 GMT  
		Size: 40.3 MB (40343283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:8a976ab703c5d33dc081963df8ccb67a36e6e3673ba40048268708f2ed420cf0
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
$ docker pull ros@sha256:8e720932bde55c9ce6d6beca00e6fb7992fb775a811669c9cce1e59e3ec34671
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.8 MB (288824298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d7078edc296932dcfa93cfc162e7a5ddf7c4752a62e309eb333b2ffde3c366`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:19:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b15fd7380749037db9d15c1afa3890b22798644f4a1638a4f19de157ca390`  
		Last Modified: Tue, 16 Jan 2018 14:50:18 GMT  
		Size: 40.3 MB (40343283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:980bebd01f16109ef4a7ddb70d20945b59f9c13e3a401c3adaebd8591374dc65
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
$ docker pull ros@sha256:99f98a7f29a3548526b97eb3db0d613dc8dd9267532b0260d51830067a3c411c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248481015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53901ba19b305ef90872f050f0244cee14376757ac747c9f6f923a3412375b8c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:980bebd01f16109ef4a7ddb70d20945b59f9c13e3a401c3adaebd8591374dc65
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
$ docker pull ros@sha256:99f98a7f29a3548526b97eb3db0d613dc8dd9267532b0260d51830067a3c411c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.5 MB (248481015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53901ba19b305ef90872f050f0244cee14376757ac747c9f6f923a3412375b8c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:467131ee9ca1672924884b5954c3fae488566fa48fa88623016f04b5b2a9cbba
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
$ docker pull ros@sha256:ac31cf9452055a96a90529b6a40bfc5da8454cd3b61a56b15b3742cfdd25dc0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252229010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7367c669b8d33baca50d4e8360b63443667023c4a03e3120e1f83d8999dd6f2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:28:53 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5eacd9345e174714079998218fc3a80d24cccde722ae62c07098d39cf2e56d`  
		Last Modified: Tue, 16 Jan 2018 14:53:23 GMT  
		Size: 3.6 MB (3626798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:b5af221c311be2921174dd010ff6acc8873e78f9df3c2fca12cc7724578436ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-perception` - linux; amd64

```console
$ docker pull ros@sha256:bcf5e052c50fb933bc4f37b6c38e6c634a6b78453aa0d5eccac1695593972781
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.5 MB (539517055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8fdeb97cb2574c9409f59b55a171ec34ab44b806686428be8d33186809aad1`
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
# Tue, 16 Jan 2018 04:20:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:cc3d23848d1412e841cff8e69351dcf27bbd05d492ac0ea9a2bc405c75551429`  
		Last Modified: Tue, 16 Jan 2018 06:19:02 GMT  
		Size: 263.5 MB (263485342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:4c8852bbb3cab3c6967163c32e5f79459e719c501c49e095ba8e822d8a7a915c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.5 MB (486482994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c1ca11285a1501569ad3fb4eeaeff01c6d92523b60a3afe16be95408388c94`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:28:53 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:32:44 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5eacd9345e174714079998218fc3a80d24cccde722ae62c07098d39cf2e56d`  
		Last Modified: Tue, 16 Jan 2018 14:53:23 GMT  
		Size: 3.6 MB (3626798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aafd419a4024f884ccd75bf408dd023beb8179a14af8c76c736db3460abcc50`  
		Last Modified: Tue, 16 Jan 2018 14:55:36 GMT  
		Size: 234.3 MB (234253984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception-trusty`

```console
$ docker pull ros@sha256:b5af221c311be2921174dd010ff6acc8873e78f9df3c2fca12cc7724578436ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:bcf5e052c50fb933bc4f37b6c38e6c634a6b78453aa0d5eccac1695593972781
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.5 MB (539517055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8fdeb97cb2574c9409f59b55a171ec34ab44b806686428be8d33186809aad1`
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
# Tue, 16 Jan 2018 04:20:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:cc3d23848d1412e841cff8e69351dcf27bbd05d492ac0ea9a2bc405c75551429`  
		Last Modified: Tue, 16 Jan 2018 06:19:02 GMT  
		Size: 263.5 MB (263485342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:4c8852bbb3cab3c6967163c32e5f79459e719c501c49e095ba8e822d8a7a915c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.5 MB (486482994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c1ca11285a1501569ad3fb4eeaeff01c6d92523b60a3afe16be95408388c94`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:28:53 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:32:44 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5eacd9345e174714079998218fc3a80d24cccde722ae62c07098d39cf2e56d`  
		Last Modified: Tue, 16 Jan 2018 14:53:23 GMT  
		Size: 3.6 MB (3626798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aafd419a4024f884ccd75bf408dd023beb8179a14af8c76c736db3460abcc50`  
		Last Modified: Tue, 16 Jan 2018 14:55:36 GMT  
		Size: 234.3 MB (234253984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:d27f2c97d8e8e84426b84e41042278101cb4f8914b98d4fa1f5a7378bbdd97c8
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
$ docker pull ros@sha256:5be192a60b25f361c42d2127ec3349a33e5c8969803ce86cd20b5f2620749824
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.2 MB (306172455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2357bbe989b5553d7320013dd851c4c0e476ba4f4dc0bfbca9741636bbb48612`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:28:53 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:30:00 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5eacd9345e174714079998218fc3a80d24cccde722ae62c07098d39cf2e56d`  
		Last Modified: Tue, 16 Jan 2018 14:53:23 GMT  
		Size: 3.6 MB (3626798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529fab112f874dd1622b3db178eefc36ccd355b30cfb02651fad8ee2f9c0266f`  
		Last Modified: Tue, 16 Jan 2018 14:54:07 GMT  
		Size: 53.9 MB (53943445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot-trusty`

```console
$ docker pull ros@sha256:d27f2c97d8e8e84426b84e41042278101cb4f8914b98d4fa1f5a7378bbdd97c8
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
$ docker pull ros@sha256:5be192a60b25f361c42d2127ec3349a33e5c8969803ce86cd20b5f2620749824
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.2 MB (306172455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2357bbe989b5553d7320013dd851c4c0e476ba4f4dc0bfbca9741636bbb48612`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:28:53 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:30:00 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5eacd9345e174714079998218fc3a80d24cccde722ae62c07098d39cf2e56d`  
		Last Modified: Tue, 16 Jan 2018 14:53:23 GMT  
		Size: 3.6 MB (3626798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529fab112f874dd1622b3db178eefc36ccd355b30cfb02651fad8ee2f9c0266f`  
		Last Modified: Tue, 16 Jan 2018 14:54:07 GMT  
		Size: 53.9 MB (53943445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:467131ee9ca1672924884b5954c3fae488566fa48fa88623016f04b5b2a9cbba
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
$ docker pull ros@sha256:ac31cf9452055a96a90529b6a40bfc5da8454cd3b61a56b15b3742cfdd25dc0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252229010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7367c669b8d33baca50d4e8360b63443667023c4a03e3120e1f83d8999dd6f2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:28:53 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5eacd9345e174714079998218fc3a80d24cccde722ae62c07098d39cf2e56d`  
		Last Modified: Tue, 16 Jan 2018 14:53:23 GMT  
		Size: 3.6 MB (3626798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base-trusty`

```console
$ docker pull ros@sha256:467131ee9ca1672924884b5954c3fae488566fa48fa88623016f04b5b2a9cbba
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
$ docker pull ros@sha256:ac31cf9452055a96a90529b6a40bfc5da8454cd3b61a56b15b3742cfdd25dc0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252229010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7367c669b8d33baca50d4e8360b63443667023c4a03e3120e1f83d8999dd6f2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:28:53 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5eacd9345e174714079998218fc3a80d24cccde722ae62c07098d39cf2e56d`  
		Last Modified: Tue, 16 Jan 2018 14:53:23 GMT  
		Size: 3.6 MB (3626798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:c6e0d0231fb2918aa878c6390a9165bf5c155c598c718fc21e5b3ea0bc2c6e1f
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
$ docker pull ros@sha256:501e6ea31a873c9e09ec2e7f49d82e1010c8f7caa9aa9424dc183105479d969e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248602212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df732685ad42bf3a82b500022da5dd0560e7af1e05f2dce7a221d9fcfc1dfd71`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core-trusty`

```console
$ docker pull ros@sha256:c6e0d0231fb2918aa878c6390a9165bf5c155c598c718fc21e5b3ea0bc2c6e1f
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
$ docker pull ros@sha256:501e6ea31a873c9e09ec2e7f49d82e1010c8f7caa9aa9424dc183105479d969e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248602212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df732685ad42bf3a82b500022da5dd0560e7af1e05f2dce7a221d9fcfc1dfd71`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:529566366f4d456df36740ffd31517a30fec46e46442e3efd436e634b81b915a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:b1ffae8b885662ddeadcc17b3165f277453388f75dc9a4a31dea42edc9ac9742
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381740444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9449466002076349932f08c9d63afa0a53d90284bc4c743ccdd6fc3733bc6789`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:40:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c83e032ec9a6697ac7afb7dd0b3098399cbcf7cce7b67557dfc76bbbe0c0968`  
		Last Modified: Tue, 16 Jan 2018 06:33:19 GMT  
		Size: 83.9 MB (83904953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:d39d5770715f59141e6ceab403d0620faa4df18449a9c3c12ded4fa5741cb7de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333838295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de053688f8add1c045ad9b8dad643dfe521c4ed41dc93baa8a4ece1f84fd3ea3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:37:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4acc72a6d851b11cbf3346644a6794012d621a0e57d7ed44829ce45d023ed4c`  
		Last Modified: Tue, 16 Jan 2018 14:57:37 GMT  
		Size: 75.1 MB (75092360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7aface51e376372df8b5f025d5437204048ae9c36e94ea60180f9ea66bd4d59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.5 MB (347524664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09242372d2159a268409d3600967b5dfe549663d3d562330b83e1286edfe7b1c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:23:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 15:23:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 15:25:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:25:38 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 15:25:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 15:26:18 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 15:26:19 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 15:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:38:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 15:38:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 15:38:02 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 15:44:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cdd9db465112266a42eb9ce2b0e9bfd45cd0c66601554c103ef521ddd5163`  
		Last Modified: Tue, 16 Jan 2018 16:41:34 GMT  
		Size: 4.8 MB (4819405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a02a175bdcc15c354fd59c7475d22ce9522bf2cb2dafa31dfbfc5e2d37c06f`  
		Last Modified: Tue, 16 Jan 2018 16:41:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158d87b5136476e090ddd9da00c734d3f1f94cd91af14c39226ae4ac529c9b6`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932f83aa8efa81e52481b970aba7def3be822319321e42f166a8e423d6350acb`  
		Last Modified: Tue, 16 Jan 2018 16:41:54 GMT  
		Size: 52.3 MB (52340932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75fcb41416a2849255413a9733f0c82e1284a96defb2699632f9a3209b748b`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 780.3 KB (780289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f409bad17e4633a223be82249f2b53186abd425359400d5c8b59fbef4950874`  
		Last Modified: Tue, 16 Jan 2018 16:42:38 GMT  
		Size: 174.0 MB (173964708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc7a8cd326c5284e83b49f2a9a1d7a5c39202f202d8f8d3bce79692ba4ac9a`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4de927de6f97fc0239f4af36c2dc111ed80cb5245b38df272dd622349622f09`  
		Last Modified: Tue, 16 Jan 2018 16:43:30 GMT  
		Size: 76.5 MB (76532933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:61de984f26c4babf55f308d1bdb68bd9061a1dc9a5ab08063918744004d6c0c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:52de7f4c377da034125b722b878c0c3e8f632208605137be91658630056da922
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.0 MB (753030493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f020eaea1b2e470c555db77219d9262e8474463a05a27ffeabc7203e44fd89`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:40:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:49:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c83e032ec9a6697ac7afb7dd0b3098399cbcf7cce7b67557dfc76bbbe0c0968`  
		Last Modified: Tue, 16 Jan 2018 06:33:19 GMT  
		Size: 83.9 MB (83904953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7953c15ea2d888cde696d2ca1d479697151d7c7080c60e47ef11972ef6e09bfb`  
		Last Modified: Tue, 16 Jan 2018 06:50:13 GMT  
		Size: 371.3 MB (371290049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:46590598e49fdbd9b2a3a2b872298ceeb0d260b5ced1713eae7c029fa2fe2c71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639935387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf4d8fc54143ebf30e054fa491a187b5251a7a957483a2ca2c3dabc2655d25`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:37:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:41:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4acc72a6d851b11cbf3346644a6794012d621a0e57d7ed44829ce45d023ed4c`  
		Last Modified: Tue, 16 Jan 2018 14:57:37 GMT  
		Size: 75.1 MB (75092360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5aa90ab781e6c041e21632c960e4b925836527fe5307536d9d237cc129a4bba`  
		Last Modified: Tue, 16 Jan 2018 15:00:12 GMT  
		Size: 306.1 MB (306097092 bytes)  
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
$ docker pull ros@sha256:61de984f26c4babf55f308d1bdb68bd9061a1dc9a5ab08063918744004d6c0c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:52de7f4c377da034125b722b878c0c3e8f632208605137be91658630056da922
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.0 MB (753030493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f020eaea1b2e470c555db77219d9262e8474463a05a27ffeabc7203e44fd89`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:40:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:49:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c83e032ec9a6697ac7afb7dd0b3098399cbcf7cce7b67557dfc76bbbe0c0968`  
		Last Modified: Tue, 16 Jan 2018 06:33:19 GMT  
		Size: 83.9 MB (83904953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7953c15ea2d888cde696d2ca1d479697151d7c7080c60e47ef11972ef6e09bfb`  
		Last Modified: Tue, 16 Jan 2018 06:50:13 GMT  
		Size: 371.3 MB (371290049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:46590598e49fdbd9b2a3a2b872298ceeb0d260b5ced1713eae7c029fa2fe2c71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639935387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf4d8fc54143ebf30e054fa491a187b5251a7a957483a2ca2c3dabc2655d25`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:37:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:41:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4acc72a6d851b11cbf3346644a6794012d621a0e57d7ed44829ce45d023ed4c`  
		Last Modified: Tue, 16 Jan 2018 14:57:37 GMT  
		Size: 75.1 MB (75092360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5aa90ab781e6c041e21632c960e4b925836527fe5307536d9d237cc129a4bba`  
		Last Modified: Tue, 16 Jan 2018 15:00:12 GMT  
		Size: 306.1 MB (306097092 bytes)  
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
$ docker pull ros@sha256:12f9726940bf3bc3deb5d1256df25b0431e838dcc41680a3362b28ef334a1870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:31686da3ebf74898c9e601ad35c04acf0c3d09a06f7e4113b26698c0cdd4e735
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.3 MB (485337038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038c11fd9b94ebd156e85daef998227fa7b18e6574b4c5b2014896d106daffd7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:40:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:41:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c83e032ec9a6697ac7afb7dd0b3098399cbcf7cce7b67557dfc76bbbe0c0968`  
		Last Modified: Tue, 16 Jan 2018 06:33:19 GMT  
		Size: 83.9 MB (83904953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b297e7d7689125497750deee9a59d1c899c551041f3ce260ab4593fa886035eb`  
		Last Modified: Tue, 16 Jan 2018 06:47:20 GMT  
		Size: 103.6 MB (103596594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:8111e465500c6a318cb8e55910e1ccddfa26022b36a2f0a17eeb3b30e0517591
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423859889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d30722b18dbc89949b44d88f0b074a4b2cc75507d767d89c694a992b53626b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:37:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:38:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4acc72a6d851b11cbf3346644a6794012d621a0e57d7ed44829ce45d023ed4c`  
		Last Modified: Tue, 16 Jan 2018 14:57:37 GMT  
		Size: 75.1 MB (75092360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95052dec522dc86de69665e50018dc83728d9de97f570ef8c947b92081d8cb1d`  
		Last Modified: Tue, 16 Jan 2018 14:58:29 GMT  
		Size: 90.0 MB (90021594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:845786601ad7d4176cb029e99a1878b96cd2d7cf9f34a37368b61cc722ca50c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.4 MB (441392781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706f380f8657c18ca990567455cac03bfb37b470cdf6a17f966e3761c5eeaa32`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:23:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 15:23:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 15:25:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:25:38 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 15:25:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 15:26:18 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 15:26:19 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 15:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:38:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 15:38:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 15:38:02 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 15:44:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:50:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cdd9db465112266a42eb9ce2b0e9bfd45cd0c66601554c103ef521ddd5163`  
		Last Modified: Tue, 16 Jan 2018 16:41:34 GMT  
		Size: 4.8 MB (4819405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a02a175bdcc15c354fd59c7475d22ce9522bf2cb2dafa31dfbfc5e2d37c06f`  
		Last Modified: Tue, 16 Jan 2018 16:41:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158d87b5136476e090ddd9da00c734d3f1f94cd91af14c39226ae4ac529c9b6`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932f83aa8efa81e52481b970aba7def3be822319321e42f166a8e423d6350acb`  
		Last Modified: Tue, 16 Jan 2018 16:41:54 GMT  
		Size: 52.3 MB (52340932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75fcb41416a2849255413a9733f0c82e1284a96defb2699632f9a3209b748b`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 780.3 KB (780289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f409bad17e4633a223be82249f2b53186abd425359400d5c8b59fbef4950874`  
		Last Modified: Tue, 16 Jan 2018 16:42:38 GMT  
		Size: 174.0 MB (173964708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc7a8cd326c5284e83b49f2a9a1d7a5c39202f202d8f8d3bce79692ba4ac9a`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4de927de6f97fc0239f4af36c2dc111ed80cb5245b38df272dd622349622f09`  
		Last Modified: Tue, 16 Jan 2018 16:43:30 GMT  
		Size: 76.5 MB (76532933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2dc86554dd80fba532ebcd41282b7bb65a4389f105915fd0fa5efe49c357a`  
		Last Modified: Tue, 16 Jan 2018 16:44:54 GMT  
		Size: 93.9 MB (93868117 bytes)  
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
$ docker pull ros@sha256:12f9726940bf3bc3deb5d1256df25b0431e838dcc41680a3362b28ef334a1870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:31686da3ebf74898c9e601ad35c04acf0c3d09a06f7e4113b26698c0cdd4e735
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.3 MB (485337038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038c11fd9b94ebd156e85daef998227fa7b18e6574b4c5b2014896d106daffd7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:40:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:41:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c83e032ec9a6697ac7afb7dd0b3098399cbcf7cce7b67557dfc76bbbe0c0968`  
		Last Modified: Tue, 16 Jan 2018 06:33:19 GMT  
		Size: 83.9 MB (83904953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b297e7d7689125497750deee9a59d1c899c551041f3ce260ab4593fa886035eb`  
		Last Modified: Tue, 16 Jan 2018 06:47:20 GMT  
		Size: 103.6 MB (103596594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:8111e465500c6a318cb8e55910e1ccddfa26022b36a2f0a17eeb3b30e0517591
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423859889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d30722b18dbc89949b44d88f0b074a4b2cc75507d767d89c694a992b53626b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:37:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:38:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4acc72a6d851b11cbf3346644a6794012d621a0e57d7ed44829ce45d023ed4c`  
		Last Modified: Tue, 16 Jan 2018 14:57:37 GMT  
		Size: 75.1 MB (75092360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95052dec522dc86de69665e50018dc83728d9de97f570ef8c947b92081d8cb1d`  
		Last Modified: Tue, 16 Jan 2018 14:58:29 GMT  
		Size: 90.0 MB (90021594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:845786601ad7d4176cb029e99a1878b96cd2d7cf9f34a37368b61cc722ca50c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.4 MB (441392781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706f380f8657c18ca990567455cac03bfb37b470cdf6a17f966e3761c5eeaa32`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:23:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 15:23:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 15:25:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:25:38 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 15:25:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 15:26:18 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 15:26:19 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 15:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:38:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 15:38:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 15:38:02 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 15:44:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:50:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cdd9db465112266a42eb9ce2b0e9bfd45cd0c66601554c103ef521ddd5163`  
		Last Modified: Tue, 16 Jan 2018 16:41:34 GMT  
		Size: 4.8 MB (4819405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a02a175bdcc15c354fd59c7475d22ce9522bf2cb2dafa31dfbfc5e2d37c06f`  
		Last Modified: Tue, 16 Jan 2018 16:41:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158d87b5136476e090ddd9da00c734d3f1f94cd91af14c39226ae4ac529c9b6`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932f83aa8efa81e52481b970aba7def3be822319321e42f166a8e423d6350acb`  
		Last Modified: Tue, 16 Jan 2018 16:41:54 GMT  
		Size: 52.3 MB (52340932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75fcb41416a2849255413a9733f0c82e1284a96defb2699632f9a3209b748b`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 780.3 KB (780289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f409bad17e4633a223be82249f2b53186abd425359400d5c8b59fbef4950874`  
		Last Modified: Tue, 16 Jan 2018 16:42:38 GMT  
		Size: 174.0 MB (173964708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc7a8cd326c5284e83b49f2a9a1d7a5c39202f202d8f8d3bce79692ba4ac9a`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4de927de6f97fc0239f4af36c2dc111ed80cb5245b38df272dd622349622f09`  
		Last Modified: Tue, 16 Jan 2018 16:43:30 GMT  
		Size: 76.5 MB (76532933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2dc86554dd80fba532ebcd41282b7bb65a4389f105915fd0fa5efe49c357a`  
		Last Modified: Tue, 16 Jan 2018 16:44:54 GMT  
		Size: 93.9 MB (93868117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:529566366f4d456df36740ffd31517a30fec46e46442e3efd436e634b81b915a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:b1ffae8b885662ddeadcc17b3165f277453388f75dc9a4a31dea42edc9ac9742
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381740444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9449466002076349932f08c9d63afa0a53d90284bc4c743ccdd6fc3733bc6789`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:40:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c83e032ec9a6697ac7afb7dd0b3098399cbcf7cce7b67557dfc76bbbe0c0968`  
		Last Modified: Tue, 16 Jan 2018 06:33:19 GMT  
		Size: 83.9 MB (83904953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:d39d5770715f59141e6ceab403d0620faa4df18449a9c3c12ded4fa5741cb7de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333838295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de053688f8add1c045ad9b8dad643dfe521c4ed41dc93baa8a4ece1f84fd3ea3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:37:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4acc72a6d851b11cbf3346644a6794012d621a0e57d7ed44829ce45d023ed4c`  
		Last Modified: Tue, 16 Jan 2018 14:57:37 GMT  
		Size: 75.1 MB (75092360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7aface51e376372df8b5f025d5437204048ae9c36e94ea60180f9ea66bd4d59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.5 MB (347524664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09242372d2159a268409d3600967b5dfe549663d3d562330b83e1286edfe7b1c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:23:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 15:23:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 15:25:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:25:38 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 15:25:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 15:26:18 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 15:26:19 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 15:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:38:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 15:38:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 15:38:02 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 15:44:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cdd9db465112266a42eb9ce2b0e9bfd45cd0c66601554c103ef521ddd5163`  
		Last Modified: Tue, 16 Jan 2018 16:41:34 GMT  
		Size: 4.8 MB (4819405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a02a175bdcc15c354fd59c7475d22ce9522bf2cb2dafa31dfbfc5e2d37c06f`  
		Last Modified: Tue, 16 Jan 2018 16:41:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158d87b5136476e090ddd9da00c734d3f1f94cd91af14c39226ae4ac529c9b6`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932f83aa8efa81e52481b970aba7def3be822319321e42f166a8e423d6350acb`  
		Last Modified: Tue, 16 Jan 2018 16:41:54 GMT  
		Size: 52.3 MB (52340932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75fcb41416a2849255413a9733f0c82e1284a96defb2699632f9a3209b748b`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 780.3 KB (780289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f409bad17e4633a223be82249f2b53186abd425359400d5c8b59fbef4950874`  
		Last Modified: Tue, 16 Jan 2018 16:42:38 GMT  
		Size: 174.0 MB (173964708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc7a8cd326c5284e83b49f2a9a1d7a5c39202f202d8f8d3bce79692ba4ac9a`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4de927de6f97fc0239f4af36c2dc111ed80cb5245b38df272dd622349622f09`  
		Last Modified: Tue, 16 Jan 2018 16:43:30 GMT  
		Size: 76.5 MB (76532933 bytes)  
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
$ docker pull ros@sha256:529566366f4d456df36740ffd31517a30fec46e46442e3efd436e634b81b915a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:b1ffae8b885662ddeadcc17b3165f277453388f75dc9a4a31dea42edc9ac9742
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381740444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9449466002076349932f08c9d63afa0a53d90284bc4c743ccdd6fc3733bc6789`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:40:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c83e032ec9a6697ac7afb7dd0b3098399cbcf7cce7b67557dfc76bbbe0c0968`  
		Last Modified: Tue, 16 Jan 2018 06:33:19 GMT  
		Size: 83.9 MB (83904953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:d39d5770715f59141e6ceab403d0620faa4df18449a9c3c12ded4fa5741cb7de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333838295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de053688f8add1c045ad9b8dad643dfe521c4ed41dc93baa8a4ece1f84fd3ea3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:37:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4acc72a6d851b11cbf3346644a6794012d621a0e57d7ed44829ce45d023ed4c`  
		Last Modified: Tue, 16 Jan 2018 14:57:37 GMT  
		Size: 75.1 MB (75092360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7aface51e376372df8b5f025d5437204048ae9c36e94ea60180f9ea66bd4d59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.5 MB (347524664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09242372d2159a268409d3600967b5dfe549663d3d562330b83e1286edfe7b1c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:23:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 15:23:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 15:25:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:25:38 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 15:25:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 15:26:18 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 15:26:19 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 15:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:38:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 15:38:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 15:38:02 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 15:44:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cdd9db465112266a42eb9ce2b0e9bfd45cd0c66601554c103ef521ddd5163`  
		Last Modified: Tue, 16 Jan 2018 16:41:34 GMT  
		Size: 4.8 MB (4819405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a02a175bdcc15c354fd59c7475d22ce9522bf2cb2dafa31dfbfc5e2d37c06f`  
		Last Modified: Tue, 16 Jan 2018 16:41:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158d87b5136476e090ddd9da00c734d3f1f94cd91af14c39226ae4ac529c9b6`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932f83aa8efa81e52481b970aba7def3be822319321e42f166a8e423d6350acb`  
		Last Modified: Tue, 16 Jan 2018 16:41:54 GMT  
		Size: 52.3 MB (52340932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75fcb41416a2849255413a9733f0c82e1284a96defb2699632f9a3209b748b`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 780.3 KB (780289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f409bad17e4633a223be82249f2b53186abd425359400d5c8b59fbef4950874`  
		Last Modified: Tue, 16 Jan 2018 16:42:38 GMT  
		Size: 174.0 MB (173964708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc7a8cd326c5284e83b49f2a9a1d7a5c39202f202d8f8d3bce79692ba4ac9a`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4de927de6f97fc0239f4af36c2dc111ed80cb5245b38df272dd622349622f09`  
		Last Modified: Tue, 16 Jan 2018 16:43:30 GMT  
		Size: 76.5 MB (76532933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:7f8546c8a2190bbe45e7b908c0a91119087e70f890c57c25f1db34013818d4e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:f25212155be33de71bcff9db48faf881ddc8b6796acdf9d4761cb4ad126453c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.8 MB (297835491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa560790bdde821d865e39434e2151b5aa6572d3a2dcb91d6794ebd080570610`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:f7c0751c8e66e674d2d6890d7a6d7be9eb8e4906b1e312086933bd9fc6343349
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258745935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e27f325a727c23fdf1ca0f599d52687edd5d120675e7f10fdde744d26ac526e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9f60800064fca3ed1a55068a1c644114684eb38868c418dd2f85104e9f0a3100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (270991731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c17a10a20f664e59b7459b562c5af50fc5592cb43e63f1266c2cd8011fdf801`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:23:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 15:23:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 15:25:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:25:38 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 15:25:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 15:26:18 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 15:26:19 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 15:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:38:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 15:38:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 15:38:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cdd9db465112266a42eb9ce2b0e9bfd45cd0c66601554c103ef521ddd5163`  
		Last Modified: Tue, 16 Jan 2018 16:41:34 GMT  
		Size: 4.8 MB (4819405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a02a175bdcc15c354fd59c7475d22ce9522bf2cb2dafa31dfbfc5e2d37c06f`  
		Last Modified: Tue, 16 Jan 2018 16:41:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158d87b5136476e090ddd9da00c734d3f1f94cd91af14c39226ae4ac529c9b6`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932f83aa8efa81e52481b970aba7def3be822319321e42f166a8e423d6350acb`  
		Last Modified: Tue, 16 Jan 2018 16:41:54 GMT  
		Size: 52.3 MB (52340932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75fcb41416a2849255413a9733f0c82e1284a96defb2699632f9a3209b748b`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 780.3 KB (780289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f409bad17e4633a223be82249f2b53186abd425359400d5c8b59fbef4950874`  
		Last Modified: Tue, 16 Jan 2018 16:42:38 GMT  
		Size: 174.0 MB (173964708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc7a8cd326c5284e83b49f2a9a1d7a5c39202f202d8f8d3bce79692ba4ac9a`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 195.0 B  
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
$ docker pull ros@sha256:7f8546c8a2190bbe45e7b908c0a91119087e70f890c57c25f1db34013818d4e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:f25212155be33de71bcff9db48faf881ddc8b6796acdf9d4761cb4ad126453c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.8 MB (297835491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa560790bdde821d865e39434e2151b5aa6572d3a2dcb91d6794ebd080570610`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f7c0751c8e66e674d2d6890d7a6d7be9eb8e4906b1e312086933bd9fc6343349
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258745935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e27f325a727c23fdf1ca0f599d52687edd5d120675e7f10fdde744d26ac526e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9f60800064fca3ed1a55068a1c644114684eb38868c418dd2f85104e9f0a3100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (270991731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c17a10a20f664e59b7459b562c5af50fc5592cb43e63f1266c2cd8011fdf801`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:23:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 15:23:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 15:25:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:25:38 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 15:25:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 15:26:18 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 15:26:19 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 15:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:38:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 15:38:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 15:38:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cdd9db465112266a42eb9ce2b0e9bfd45cd0c66601554c103ef521ddd5163`  
		Last Modified: Tue, 16 Jan 2018 16:41:34 GMT  
		Size: 4.8 MB (4819405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a02a175bdcc15c354fd59c7475d22ce9522bf2cb2dafa31dfbfc5e2d37c06f`  
		Last Modified: Tue, 16 Jan 2018 16:41:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1158d87b5136476e090ddd9da00c734d3f1f94cd91af14c39226ae4ac529c9b6`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932f83aa8efa81e52481b970aba7def3be822319321e42f166a8e423d6350acb`  
		Last Modified: Tue, 16 Jan 2018 16:41:54 GMT  
		Size: 52.3 MB (52340932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75fcb41416a2849255413a9733f0c82e1284a96defb2699632f9a3209b748b`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 780.3 KB (780289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f409bad17e4633a223be82249f2b53186abd425359400d5c8b59fbef4950874`  
		Last Modified: Tue, 16 Jan 2018 16:42:38 GMT  
		Size: 174.0 MB (173964708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bc7a8cd326c5284e83b49f2a9a1d7a5c39202f202d8f8d3bce79692ba4ac9a`  
		Last Modified: Tue, 16 Jan 2018 16:41:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:2cc832ce72c509ce0d5c4a921f7a7d17dfeddc5c14c19f6172d46d781c09924f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:b1ffae8b885662ddeadcc17b3165f277453388f75dc9a4a31dea42edc9ac9742
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381740444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9449466002076349932f08c9d63afa0a53d90284bc4c743ccdd6fc3733bc6789`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:40:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c83e032ec9a6697ac7afb7dd0b3098399cbcf7cce7b67557dfc76bbbe0c0968`  
		Last Modified: Tue, 16 Jan 2018 06:33:19 GMT  
		Size: 83.9 MB (83904953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:d39d5770715f59141e6ceab403d0620faa4df18449a9c3c12ded4fa5741cb7de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333838295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de053688f8add1c045ad9b8dad643dfe521c4ed41dc93baa8a4ece1f84fd3ea3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:34:25 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 14:35:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:35:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:35:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:35:40 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:37:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330bee58bfb1f9a8af2bffeb5d959306a15e9e6ff26042e6110f3c014b7581a6`  
		Last Modified: Tue, 16 Jan 2018 14:56:57 GMT  
		Size: 164.7 MB (164713200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a8e0c1a3fbf06d65683b622b9956210efc2f3974f3727e0fa70c5c792ba89`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4acc72a6d851b11cbf3346644a6794012d621a0e57d7ed44829ce45d023ed4c`  
		Last Modified: Tue, 16 Jan 2018 14:57:37 GMT  
		Size: 75.1 MB (75092360 bytes)  
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
$ docker pull ros@sha256:fc01b627a94feeec2664fb823fc3dd8b976e9346c03d50024818a9ba7e74ec58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:c71d05bdd62f5392d25028db3ffdb8d0759d81a7d53795e4f1befc5d197ee3ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381668445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05421776c408173f6ecf16c8c47b733fa0d2f2a2f5af371f78f2223bb7ecd5f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 05:02:36 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 05:04:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:12:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 05:12:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 05:12:20 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 05:18:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c855c12597802f043cada81897b0934ba90bd0598c0897d23a8be7fbf8dce1a`  
		Last Modified: Tue, 16 Jan 2018 07:00:00 GMT  
		Size: 193.3 MB (193334505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a695739b8b9ff087a7913737163dcd8eb1be093b1a8e72bb2e21e4795ccb`  
		Last Modified: Tue, 16 Jan 2018 06:59:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbd7660c2f7000f9ea7f59c91861f48fa6382e6ecb95add094fecd1aa8134eb`  
		Last Modified: Tue, 16 Jan 2018 07:01:13 GMT  
		Size: 83.8 MB (83833309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:a571194f7bb87117803aaec2fbf1094f3aeba644a7d555f701a867c6eda0ea2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333757236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582491cbab51bc42ac472374ad5a5642c2d12d0a5d94f00740f92f9170eb0710`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:44:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ec21c93471b7c3df9e73aa25ca76f7aa7f019e7f5f029644b88a81fc07643`  
		Last Modified: Tue, 16 Jan 2018 15:01:51 GMT  
		Size: 75.0 MB (75019727 bytes)  
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
$ docker pull ros@sha256:b6969e60c7d70de6a3405da8f92d53615bd4b6200a308a8608d15ea9e8c45aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:6f8880cfe2d55be4915bc269c4174c4ebc5273c0049fc86cba130bbed8fd84ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.0 MB (752997325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1ac7a56ecd86b497401b18c1d69190b47afbaebd26c99cc693a848f872569a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 05:02:36 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 05:04:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:12:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 05:12:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 05:12:20 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 05:18:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:36:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c855c12597802f043cada81897b0934ba90bd0598c0897d23a8be7fbf8dce1a`  
		Last Modified: Tue, 16 Jan 2018 07:00:00 GMT  
		Size: 193.3 MB (193334505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a695739b8b9ff087a7913737163dcd8eb1be093b1a8e72bb2e21e4795ccb`  
		Last Modified: Tue, 16 Jan 2018 06:59:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbd7660c2f7000f9ea7f59c91861f48fa6382e6ecb95add094fecd1aa8134eb`  
		Last Modified: Tue, 16 Jan 2018 07:01:13 GMT  
		Size: 83.8 MB (83833309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72824f55c884fefc23fdb16dcd2a800928e31b521642ea6a700a0cd851587b33`  
		Last Modified: Tue, 16 Jan 2018 07:04:49 GMT  
		Size: 371.3 MB (371328880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:67dd35d343c0235cd5b632089d35dcfb49b7009f151c701b3364d165f226e835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639872427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6d72f7bcc557ada1e0fb85b2b7638987f8711607abcf5d17aa95d565a7a711`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:44:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:48:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ec21c93471b7c3df9e73aa25ca76f7aa7f019e7f5f029644b88a81fc07643`  
		Last Modified: Tue, 16 Jan 2018 15:01:51 GMT  
		Size: 75.0 MB (75019727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401cba5c2bd55a1b8ba3fcc62f24f23539a1568a06d913feef3a9fbe32d0cdca`  
		Last Modified: Tue, 16 Jan 2018 15:04:11 GMT  
		Size: 306.1 MB (306115191 bytes)  
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
$ docker pull ros@sha256:b6969e60c7d70de6a3405da8f92d53615bd4b6200a308a8608d15ea9e8c45aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:6f8880cfe2d55be4915bc269c4174c4ebc5273c0049fc86cba130bbed8fd84ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.0 MB (752997325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1ac7a56ecd86b497401b18c1d69190b47afbaebd26c99cc693a848f872569a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 05:02:36 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 05:04:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:12:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 05:12:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 05:12:20 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 05:18:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:36:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c855c12597802f043cada81897b0934ba90bd0598c0897d23a8be7fbf8dce1a`  
		Last Modified: Tue, 16 Jan 2018 07:00:00 GMT  
		Size: 193.3 MB (193334505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a695739b8b9ff087a7913737163dcd8eb1be093b1a8e72bb2e21e4795ccb`  
		Last Modified: Tue, 16 Jan 2018 06:59:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbd7660c2f7000f9ea7f59c91861f48fa6382e6ecb95add094fecd1aa8134eb`  
		Last Modified: Tue, 16 Jan 2018 07:01:13 GMT  
		Size: 83.8 MB (83833309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72824f55c884fefc23fdb16dcd2a800928e31b521642ea6a700a0cd851587b33`  
		Last Modified: Tue, 16 Jan 2018 07:04:49 GMT  
		Size: 371.3 MB (371328880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:67dd35d343c0235cd5b632089d35dcfb49b7009f151c701b3364d165f226e835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639872427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6d72f7bcc557ada1e0fb85b2b7638987f8711607abcf5d17aa95d565a7a711`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:44:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:48:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ec21c93471b7c3df9e73aa25ca76f7aa7f019e7f5f029644b88a81fc07643`  
		Last Modified: Tue, 16 Jan 2018 15:01:51 GMT  
		Size: 75.0 MB (75019727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401cba5c2bd55a1b8ba3fcc62f24f23539a1568a06d913feef3a9fbe32d0cdca`  
		Last Modified: Tue, 16 Jan 2018 15:04:11 GMT  
		Size: 306.1 MB (306115191 bytes)  
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
$ docker pull ros@sha256:aaf6ec9abcc5f5c6ac16589c186ccf8f6634a188dd90fd0aedab1752a7222494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:ce88934b30b182de9dab7b7468fb11f1c4301fdf506bcaaffaff8795859b049b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 MB (485361501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a8028daf60a61f621eb2f529a252bbbe3415aeca45e9c920ebaa7d3bd5bcef`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 05:02:36 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 05:04:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:12:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 05:12:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 05:12:20 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 05:18:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:20:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c855c12597802f043cada81897b0934ba90bd0598c0897d23a8be7fbf8dce1a`  
		Last Modified: Tue, 16 Jan 2018 07:00:00 GMT  
		Size: 193.3 MB (193334505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a695739b8b9ff087a7913737163dcd8eb1be093b1a8e72bb2e21e4795ccb`  
		Last Modified: Tue, 16 Jan 2018 06:59:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbd7660c2f7000f9ea7f59c91861f48fa6382e6ecb95add094fecd1aa8134eb`  
		Last Modified: Tue, 16 Jan 2018 07:01:13 GMT  
		Size: 83.8 MB (83833309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c0d76d43256a6a5463b9e871193032737d2df1c79f1ae5adbced96f26c64ad`  
		Last Modified: Tue, 16 Jan 2018 07:02:34 GMT  
		Size: 103.7 MB (103693056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:18e6a7f2d259d33a4fcc9b044c9869e2171d675639bf96ed53ad73320a0daa5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423862084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969e997a25f213c90d4a265ed85ac4872f17c0dd47d9893c635480d43f50a66c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:44:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:45:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ec21c93471b7c3df9e73aa25ca76f7aa7f019e7f5f029644b88a81fc07643`  
		Last Modified: Tue, 16 Jan 2018 15:01:51 GMT  
		Size: 75.0 MB (75019727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cfd868e24b01abe5c9e64943fb4c9caf3bab4166b5050436d346fa690bde2b`  
		Last Modified: Tue, 16 Jan 2018 15:02:38 GMT  
		Size: 90.1 MB (90104848 bytes)  
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
$ docker pull ros@sha256:aaf6ec9abcc5f5c6ac16589c186ccf8f6634a188dd90fd0aedab1752a7222494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:ce88934b30b182de9dab7b7468fb11f1c4301fdf506bcaaffaff8795859b049b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 MB (485361501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a8028daf60a61f621eb2f529a252bbbe3415aeca45e9c920ebaa7d3bd5bcef`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 05:02:36 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 05:04:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:12:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 05:12:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 05:12:20 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 05:18:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:20:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c855c12597802f043cada81897b0934ba90bd0598c0897d23a8be7fbf8dce1a`  
		Last Modified: Tue, 16 Jan 2018 07:00:00 GMT  
		Size: 193.3 MB (193334505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a695739b8b9ff087a7913737163dcd8eb1be093b1a8e72bb2e21e4795ccb`  
		Last Modified: Tue, 16 Jan 2018 06:59:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbd7660c2f7000f9ea7f59c91861f48fa6382e6ecb95add094fecd1aa8134eb`  
		Last Modified: Tue, 16 Jan 2018 07:01:13 GMT  
		Size: 83.8 MB (83833309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c0d76d43256a6a5463b9e871193032737d2df1c79f1ae5adbced96f26c64ad`  
		Last Modified: Tue, 16 Jan 2018 07:02:34 GMT  
		Size: 103.7 MB (103693056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:18e6a7f2d259d33a4fcc9b044c9869e2171d675639bf96ed53ad73320a0daa5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423862084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969e997a25f213c90d4a265ed85ac4872f17c0dd47d9893c635480d43f50a66c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:44:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:45:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ec21c93471b7c3df9e73aa25ca76f7aa7f019e7f5f029644b88a81fc07643`  
		Last Modified: Tue, 16 Jan 2018 15:01:51 GMT  
		Size: 75.0 MB (75019727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cfd868e24b01abe5c9e64943fb4c9caf3bab4166b5050436d346fa690bde2b`  
		Last Modified: Tue, 16 Jan 2018 15:02:38 GMT  
		Size: 90.1 MB (90104848 bytes)  
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
$ docker pull ros@sha256:fc01b627a94feeec2664fb823fc3dd8b976e9346c03d50024818a9ba7e74ec58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:c71d05bdd62f5392d25028db3ffdb8d0759d81a7d53795e4f1befc5d197ee3ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381668445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05421776c408173f6ecf16c8c47b733fa0d2f2a2f5af371f78f2223bb7ecd5f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 05:02:36 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 05:04:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:12:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 05:12:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 05:12:20 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 05:18:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c855c12597802f043cada81897b0934ba90bd0598c0897d23a8be7fbf8dce1a`  
		Last Modified: Tue, 16 Jan 2018 07:00:00 GMT  
		Size: 193.3 MB (193334505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a695739b8b9ff087a7913737163dcd8eb1be093b1a8e72bb2e21e4795ccb`  
		Last Modified: Tue, 16 Jan 2018 06:59:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbd7660c2f7000f9ea7f59c91861f48fa6382e6ecb95add094fecd1aa8134eb`  
		Last Modified: Tue, 16 Jan 2018 07:01:13 GMT  
		Size: 83.8 MB (83833309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:a571194f7bb87117803aaec2fbf1094f3aeba644a7d555f701a867c6eda0ea2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333757236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582491cbab51bc42ac472374ad5a5642c2d12d0a5d94f00740f92f9170eb0710`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:44:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ec21c93471b7c3df9e73aa25ca76f7aa7f019e7f5f029644b88a81fc07643`  
		Last Modified: Tue, 16 Jan 2018 15:01:51 GMT  
		Size: 75.0 MB (75019727 bytes)  
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
$ docker pull ros@sha256:fc01b627a94feeec2664fb823fc3dd8b976e9346c03d50024818a9ba7e74ec58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:c71d05bdd62f5392d25028db3ffdb8d0759d81a7d53795e4f1befc5d197ee3ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381668445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05421776c408173f6ecf16c8c47b733fa0d2f2a2f5af371f78f2223bb7ecd5f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 05:02:36 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 05:04:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:12:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 05:12:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 05:12:20 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 05:18:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c855c12597802f043cada81897b0934ba90bd0598c0897d23a8be7fbf8dce1a`  
		Last Modified: Tue, 16 Jan 2018 07:00:00 GMT  
		Size: 193.3 MB (193334505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a695739b8b9ff087a7913737163dcd8eb1be093b1a8e72bb2e21e4795ccb`  
		Last Modified: Tue, 16 Jan 2018 06:59:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbd7660c2f7000f9ea7f59c91861f48fa6382e6ecb95add094fecd1aa8134eb`  
		Last Modified: Tue, 16 Jan 2018 07:01:13 GMT  
		Size: 83.8 MB (83833309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a571194f7bb87117803aaec2fbf1094f3aeba644a7d555f701a867c6eda0ea2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333757236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582491cbab51bc42ac472374ad5a5642c2d12d0a5d94f00740f92f9170eb0710`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:44:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ec21c93471b7c3df9e73aa25ca76f7aa7f019e7f5f029644b88a81fc07643`  
		Last Modified: Tue, 16 Jan 2018 15:01:51 GMT  
		Size: 75.0 MB (75019727 bytes)  
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
$ docker pull ros@sha256:2e936ee576eba7c2e80d36a356d2f42241ac3c07c8bf4262402c223e47133884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:5f2dcdb8b76aa8ddc45cd5b00cc7c264ce42fb5f771993304a60784568da91c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.8 MB (297835136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690089508dc54f4fa8250490eae1ce41e238608776d8046256f728db2c42cb9a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 05:02:36 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 05:04:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:12:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 05:12:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 05:12:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c855c12597802f043cada81897b0934ba90bd0598c0897d23a8be7fbf8dce1a`  
		Last Modified: Tue, 16 Jan 2018 07:00:00 GMT  
		Size: 193.3 MB (193334505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a695739b8b9ff087a7913737163dcd8eb1be093b1a8e72bb2e21e4795ccb`  
		Last Modified: Tue, 16 Jan 2018 06:59:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:7737a8c104b8b072391c74fc7b19605de327c704e2418dc48862d5dc5abced0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258737509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9807aadc93820c9f7e1be8da356be0bd535c9cc5ad1e2cf4fc2f3ca1e2b714`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
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
$ docker pull ros@sha256:2e936ee576eba7c2e80d36a356d2f42241ac3c07c8bf4262402c223e47133884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:5f2dcdb8b76aa8ddc45cd5b00cc7c264ce42fb5f771993304a60784568da91c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.8 MB (297835136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690089508dc54f4fa8250490eae1ce41e238608776d8046256f728db2c42cb9a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 05:02:36 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 05:04:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:12:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 05:12:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 05:12:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c855c12597802f043cada81897b0934ba90bd0598c0897d23a8be7fbf8dce1a`  
		Last Modified: Tue, 16 Jan 2018 07:00:00 GMT  
		Size: 193.3 MB (193334505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a695739b8b9ff087a7913737163dcd8eb1be093b1a8e72bb2e21e4795ccb`  
		Last Modified: Tue, 16 Jan 2018 06:59:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:7737a8c104b8b072391c74fc7b19605de327c704e2418dc48862d5dc5abced0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258737509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9807aadc93820c9f7e1be8da356be0bd535c9cc5ad1e2cf4fc2f3ca1e2b714`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:47 GMT
ADD file:8af2eeeabe67aa87ad5b729d3be85b2282bb332fc54f43d219ecf61f689dc17b in / 
# Tue, 16 Jan 2018 13:51:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:50 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:33:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:33:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:34:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:34:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:34:25 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:41:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Jan 2018 14:42:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:43:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:43:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:43:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f938a73169fe6c97ed8e79a506f0f35f29c8baeee7fc1df6d49c04c0774ba297`  
		Last Modified: Tue, 16 Jan 2018 13:53:57 GMT  
		Size: 38.0 MB (37970494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5b2324e8f886b926b1b6fb9945e6ea6d6b3286c67e7e454d2f8a5eaa387769`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a7b67bb692fdd1b63d529e074abb3f9645e93681542b4fd80b3a9120d8ef12`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd605abdd5f6deb27fe472ac145b0c2aa491c3814bc0c7776e90567ab12aa4b8`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b363e2588cbfe07b53d9136463d9d5ce56753cfda9dc1f771464b167bf48c3`  
		Last Modified: Tue, 16 Jan 2018 13:53:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7643ac8df3d86df5ec6adfb556525f44e2295e2f53aae9348c1b71dae1403`  
		Last Modified: Tue, 16 Jan 2018 14:56:09 GMT  
		Size: 4.6 MB (4614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764b47d098c902e1ad4524fbd8284a0a21cc5a84e9b8d53bb5c4a83ef1120c2`  
		Last Modified: Tue, 16 Jan 2018 14:56:08 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8773713703ca5bbf3cb3228e9e9406853fbfe42df356ff5a8f13677d945f97c`  
		Last Modified: Tue, 16 Jan 2018 14:56:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77946eaf530d8cd460b63df866620cb8ed834fed718ebf78572fff156d28b03`  
		Last Modified: Tue, 16 Jan 2018 14:56:25 GMT  
		Size: 50.7 MB (50651609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1284022e5713945eb2f53e2f6880a378589bdb9d96ebede2cd07125f5ffcb66`  
		Last Modified: Tue, 16 Jan 2018 14:56:07 GMT  
		Size: 780.4 KB (780366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2e2e79270b48ffd76c474738c1a2c632c2d2e2e70279237437e7c20db6ad8`  
		Last Modified: Tue, 16 Jan 2018 15:01:17 GMT  
		Size: 164.7 MB (164704775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d4c41ac81f7fa2130e66bdbe89bf89b746e516068d018d5ea5060d170bd099`  
		Last Modified: Tue, 16 Jan 2018 15:00:29 GMT  
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
