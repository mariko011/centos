## `ros:lunar-perception`

```console
$ docker pull ros@sha256:d297ff86a1e37ffd4fbf146662fc11d4751b8bb656a3e1ff8c9ff4bdab5d92ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:cec200fff1aec00d5c271dd9d1bd73437f6b795bf2e402cd29c3a9db3037d37c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.8 MB (732787913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86a7a56b5db159a5897c8fd0dd544f754de05e790b1e47b2325b78ac95079e9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 19 Sep 2017 00:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 19 Sep 2017 00:17:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LANG=C.UTF-8
# Tue, 19 Sep 2017 00:17:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 19 Sep 2017 00:17:46 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:27:19 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:28:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:30:52 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:30:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:30:53 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:32:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:35:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a1be9f3d0f9ccc4ae35f9f6c278a81217bb4c083fed802e54d4f94c49d43e9`  
		Last Modified: Tue, 19 Sep 2017 00:36:27 GMT  
		Size: 5.4 MB (5362227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f318baf5651a2e4356a1ef827a80610ef573480f67480adff2cb1efe6c4414`  
		Last Modified: Tue, 19 Sep 2017 00:36:25 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf879c7195ef8ba7b579cabf06c0321642eedaee9edab4edad106bdda8a007e`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37316f534fa01d9ae8e79684948829b5b323c9026baa8b1644291c8d6e7c095d`  
		Last Modified: Tue, 19 Sep 2017 00:36:48 GMT  
		Size: 55.5 MB (55542547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e974997cb3bfbba9df52db335d48712dddcd081eb9416e479ecd7bea0ea12`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 755.0 KB (755045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fdb7289e9283a4a7923a12bd498af2a06b0531fe65152fe5a52b649a7feab3`  
		Last Modified: Tue, 19 Sep 2017 00:42:18 GMT  
		Size: 193.3 MB (193285834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd7514cb66d23883022b6025c8f1473e7a63e436d1564cfbda6e24d2ba7c679`  
		Last Modified: Tue, 19 Sep 2017 00:41:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3333de0c7ac9e332e550eed9b83a9125de4bf9edaa79e8d34aa4218180854f54`  
		Last Modified: Tue, 19 Sep 2017 00:43:03 GMT  
		Size: 81.3 MB (81257767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473aef4c3217560c7c3d5449a07d6e3192777ecf80ccce4f0498c761dda51fb6`  
		Last Modified: Tue, 19 Sep 2017 00:45:35 GMT  
		Size: 349.0 MB (349032255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:b16633f6ac4101ef3bf65e8bd0a0c50af1d1706189e532a6debbaddbf60c7fe2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.7 MB (638704807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791c4aa76c501069cd7f4f965923a9e208b058949f3cc2aed66043d4ec308207`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:13:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:32:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34198c929a1422590b2e40678771cd45bb8a2e7810f0a4688c3110387c946507`  
		Last Modified: Tue, 12 Sep 2017 21:46:49 GMT  
		Size: 73.0 MB (72988962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c50b2030c6d9b513fed17d2bd8f796377224671ff03a1e0f181eac0ebb0d66`  
		Last Modified: Tue, 12 Sep 2017 21:51:56 GMT  
		Size: 302.8 MB (302764644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:857dc7e78a0218057b469c0d9740cfc1cb9fc1864e28ac3f69f4962ec47ae9cb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.2 MB (667247120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04704a7ad543a1bee7e065805c1b6c687f3f2ce5e5e59b3b2fd4cdc5fb7646e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Tue, 19 Sep 2017 00:32:44 GMT
ENV ROS_DISTRO=lunar
# Tue, 19 Sep 2017 00:40:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:40:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:40:10 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:43:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:00:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8f1384efbc3e7ea7331178bc4061bb3a761f0ed3425217107c6f4267e0730d`  
		Last Modified: Tue, 19 Sep 2017 01:09:56 GMT  
		Size: 173.9 MB (173944945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cf1dede7ae118dc4d3ae2e46259c897be2b5be378650744bf2f30fe7d31636`  
		Last Modified: Tue, 19 Sep 2017 01:08:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8fc136e0c51a906ba8159562a941c0909a82c342db9f9d31d6693c99b182b4`  
		Last Modified: Tue, 19 Sep 2017 01:11:08 GMT  
		Size: 74.6 MB (74572695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea37150035f27d1b693732f84c9952754f07ac3341c5b1fb3ab91725d260819`  
		Last Modified: Tue, 19 Sep 2017 01:14:43 GMT  
		Size: 317.4 MB (317352633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
